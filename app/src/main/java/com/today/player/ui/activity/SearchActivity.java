package com.today.player.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.callback.AbsCallback;
import com.lzy.okgo.model.Response;

import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseActivity;
import com.today.player.bean.AbsXml;
import com.today.player.bean.Movie;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.SearchRequest;
import com.today.player.event.ServerEvent;
import com.today.player.server.RemoteServer;
import com.today.player.ui.adapter.SearchAdapter;
import com.today.player.util.DefaultConfig;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.util.L;
import com.today.player.viewmodel.SourceViewModel;
import com.tv.QRCodeGen;
import com.tv.leanback.VerticalGridView;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.util.ArrayList;
import java.util.List;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class SearchActivity extends BaseActivity {
    private LinearLayout llLayout;
    private TvRecyclerView mGridView;
    private EditText etSearch;
    private TextView tvName;
    private TextView tvSearch;
    private TextView tvClear;
    private TextView tvAddress;
    private ImageView ivQRCode;
    private SearchAdapter searchAdapter;
    private int sourceIndex = 0;
    private String searchTitle = "";
    private SourceViewModel sourceViewModel;
    private List<PlayerModel.SourcesDTO> searchRequestList;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_search;
    }

    @Override
    protected void init() {
        initView();
        initViewModel();
        initData();
    }

    private void initView() {
        EventBus.getDefault().register(this);
        llLayout = findViewById(R.id.llLayout);
        etSearch = findViewById(R.id.etSearch);
        tvName = findViewById(R.id.tvName);
        tvSearch = findViewById(R.id.tvSearch);
        tvClear = findViewById(R.id.tvClear);
        tvAddress = findViewById(R.id.tvAddress);
        ivQRCode = findViewById(R.id.ivQRCode);
        mGridView = findViewById(R.id.mGridView);
        mGridView.setHasFixedSize(true);
        mGridView.setLayoutManager(new V7LinearLayoutManager(mContext, 1, false));
        searchAdapter = new SearchAdapter();
        mGridView.setAdapter(searchAdapter);
        searchAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                Movie.Video video = searchAdapter.getData().get(position);
                if (video != null) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("id", video.id);
                    bundle.putString("sourceUrl", video.api);
                    bundle.putString("sourceKey", video.sourceKey);
                    jumpActivity(DetailActivity.class, bundle);
                }
            }
        });
        tvSearch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FastClickCheckUtil.check(v);
                String wd = etSearch.getText().toString().trim();
                if (!TextUtils.isEmpty(wd)) {
                    search(wd);
                } else {
                    Toast.makeText(mContext, "输入内容不能为空", Toast.LENGTH_SHORT).show();
                }
            }
        });
        tvClear.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FastClickCheckUtil.check(v);
                etSearch.setText("");
            }
        });
        setLoadSir(llLayout);
    }

    private void initViewModel() {
        sourceViewModel = new ViewModelProvider(this).get(SourceViewModel.class);
        sourceViewModel.searchResult.observe(this, new Observer<AbsXml>() {
            @Override
            public void onChanged(AbsXml absXml) {
                searchData(absXml);
            }
        });
    }

    private void initData() {
        refreshQRCode();
        Intent intent = getIntent();
        if (intent != null && intent.hasExtra("title")) {
            String title = intent.getStringExtra("title");
            showLoading();
            search(title);
        }
    }

    private void refreshQRCode() {
        String address = RemoteServer.getServerAddress(mContext);
        tvAddress.setText(String.format("远程搜索使用手机/电脑扫描下面二维码或者直接浏览器访问地址\n%s", address));
        ivQRCode.setImageBitmap(QRCodeGen.generateBitmap(address, 300, 300));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void server(ServerEvent event) {
        if (event.type == ServerEvent.SERVER_SEARCH) {
            String title = (String) event.obj;
            showLoading();
            search(title);
        }
    }

    private void search(String title) {
        etSearch.setText(title);
        tvName.setText(title);
        sourceIndex = 0;
        cancel();
        showLoading();
        this.searchTitle = title;
        mGridView.setVisibility(View.INVISIBLE);
        searchAdapter.setNewData(new ArrayList<>());
        searchRequestList = ApiConfig.get().getSourceBeanList();
        if (searchRequestList != null && searchRequestList.size() > 0) {
            searchRequestList.remove(ApiConfig.get().getDefaultSourceBean());
            searchRequestList.add(0, ApiConfig.get().getDefaultSourceBean());
            searchResult();
        }
    }

    private void searchResult() {
        if (sourceIndex < searchRequestList.size()) {
            boolean isActive = searchRequestList.get(sourceIndex).isActive();
            if (isActive) {
                String api = searchRequestList.get(sourceIndex).getApi();
                String sourceName = searchRequestList.get(sourceIndex).getName();
                sourceViewModel.getSearch(api, searchTitle, sourceName);
            } else {
                sourceIndex++;
                searchResult();
            }
        }
    }


    private void searchData(AbsXml absXml) {
        if (absXml != null && absXml.movie != null && absXml.movie.videoList != null && absXml.movie.videoList.size() > 0) {
            List<Movie.Video> data = new ArrayList<>();
            for (Movie.Video video : absXml.movie.videoList) {
                if (!DefaultConfig.isContains(video.type)) {
                    data.add(video);
                }
            }
            if (searchAdapter.getData().size() > 0) {
                searchAdapter.addData(data);
            } else {
                showSuccess();
                mGridView.setVisibility(View.VISIBLE);
                searchAdapter.setNewData(data);
            }
        }

        if (++sourceIndex == searchRequestList.size()) {
            if (searchAdapter.getData().size() <= 0) {
                showEmpty();
            }
            cancel();
        } else {
            searchResult();
        }
    }

    private void cancel() {
        OkGo.getInstance().cancelTag("search");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        cancel();
        EventBus.getDefault().unregister(this);
    }
}
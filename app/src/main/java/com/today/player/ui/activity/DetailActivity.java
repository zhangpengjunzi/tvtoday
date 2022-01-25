package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;


import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lzy.okgo.OkGo;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.squareup.picasso.Picasso;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseActivity;
import com.today.player.bean.AbsXml;
import com.today.player.bean.Movie;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.VodInfo;
import com.today.player.cache.RoomDataManger;
import com.today.player.event.RefreshEvent;
import com.today.player.picasso.RoundTransformation;
import com.today.player.ui.adapter.QuickSearchAdapter;
import com.today.player.ui.adapter.SearchAdapter;
import com.today.player.ui.adapter.SeriesAdapter;
import com.today.player.ui.adapter.SourceFromAdapter;
import com.today.player.ui.dialog.QuickSearchDialog;
import com.today.player.util.DefaultConfig;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.viewmodel.SourceViewModel;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import me.jessyan.autosize.utils.AutoSizeUtils;

/**
 * @author pj567
 * @date :2020/12/22
 * @description:
 */
public class DetailActivity extends BaseActivity {
    private LinearLayout llLayout;
    private ImageView ivThumb;
    private TextView tvName;
    private TextView tvYear;
    private TextView tvArea;
    private TextView tvLang;
    private TextView tvType;
    private TextView tvActor;
    private TextView tvDirector;
    private TextView tvDes;
    private TextView tvPlay;
    private TextView tvQuickSearch;
    private TextView tvSite;
    private TvRecyclerView mGridView;
    private TvRecyclerView mGridViewFlag;
    private SourceViewModel sourceViewModel;
    private Movie.Video mVideo;
    private VodInfo vodInfo;
    private SeriesAdapter seriesAdapter;
    private SourceFromAdapter sourceFromAdapter;
    private int playIndex = -1;
    private int playFlag = -1;
    private String sourceUrl;
    private String sourceKey;
    private int id;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_detail;
    }

    @Override
    protected void init() {
        EventBus.getDefault().register(this);
        initView();
        initViewModel();
        initData();
    }

    private void initView() {
        llLayout = findViewById(R.id.llLayout);
        ivThumb = findViewById(R.id.ivThumb);
        tvName = findViewById(R.id.tvName);
        tvYear = findViewById(R.id.tvYear);
        tvArea = findViewById(R.id.tvArea);
        tvLang = findViewById(R.id.tvLang);
        tvType = findViewById(R.id.tvType);
        tvSite = findViewById(R.id.tvSite);
        tvActor = findViewById(R.id.tvActor);
        tvDirector = findViewById(R.id.tvDirector);
        tvDes = findViewById(R.id.tvDes);
        tvPlay = findViewById(R.id.tvPlay);
        tvQuickSearch = findViewById(R.id.tvQuickSearch);
        mGridView = findViewById(R.id.mGridView);
        mGridViewFlag = findViewById(R.id.mGridViewFlag);
        mGridView.setHasFixedSize(true);
        mGridViewFlag.setHasFixedSize(true);
        seriesAdapter = new SeriesAdapter();
        mGridView.setAdapter(seriesAdapter);
        mGridView.setLayoutManager(new V7GridLayoutManager(mContext, 6));
        sourceFromAdapter = new SourceFromAdapter();
        mGridViewFlag.setAdapter(sourceFromAdapter);
        mGridViewFlag.setLayoutManager(new V7LinearLayoutManager(mContext, 0, false));

        tvPlay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FastClickCheckUtil.check(v);
                if (vodInfo != null && seriesAdapter.getData() != null) {
                    Bundle bundle = new Bundle();
                    seriesAdapter.getData().get(vodInfo.playIndex).selected = true;
                    seriesAdapter.notifyItemChanged(vodInfo.playIndex);
                    //保存历史
                    insertVod(sourceUrl, vodInfo);
                    bundle.putSerializable("VodInfo", vodInfo);
                    bundle.putSerializable("sourceKey", sourceKey);
                    jumpActivity(PlayActivity.class, bundle);
                }
            }
        });
        sourceFromAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int i) {
                FastClickCheckUtil.check(view);
                if (vodInfo != null && vodInfo.fromList != null) {
                    for (int j = 0; j < vodInfo.fromList.size(); j++) {
                        if (i == j) {
                            vodInfo.fromList.get(j).selected = true;
                            vodInfo.playFlag = i;
                            seriesAdapter.getData().get(vodInfo.playIndex).selected = false;
                            seriesAdapter.setNewData(vodInfo.seriesMap.get(vodInfo.fromList.get(j).name));
                            seriesAdapter.getData().get(vodInfo.playIndex).selected = true;
                            seriesAdapter.notifyItemChanged(vodInfo.playIndex);
                        } else {
                            vodInfo.fromList.get(j).selected = false;
                        }
                        sourceFromAdapter.notifyItemChanged(j);
                    }
                }
            }
        });
        seriesAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                if (vodInfo != null) {
                    if (vodInfo.playIndex != position) {
                        seriesAdapter.getData().get(vodInfo.playIndex).selected = false;
                        seriesAdapter.notifyItemChanged(vodInfo.playIndex);
                        seriesAdapter.getData().get(position).selected = true;
                        seriesAdapter.notifyItemChanged(position);
                        vodInfo.playIndex = position;
                    }
                    //保存历史
                    insertVod(sourceUrl, vodInfo);
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("VodInfo", vodInfo);
                    bundle.putSerializable("sourceKey", sourceKey);
                    jumpActivity(PlayActivity.class, bundle);
                }
            }
        });

        tvQuickSearch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FastClickCheckUtil.check(v);
                if (mVideo != null) {
                    sourceIndex = 0;
                    title = mVideo.name;
                    quickSearch();
                }

            }
        });
        setLoadSir(llLayout);
    }

    private void initViewModel() {
        sourceViewModel = new ViewModelProvider(this).get(SourceViewModel.class);
        sourceViewModel.detailResult.observe(this, new Observer<AbsXml>() {
            @Override
            public void onChanged(AbsXml absXml) {
                if (absXml != null && absXml.movie != null && absXml.movie.videoList != null && absXml.movie.videoList.size() > 0) {
                    showSuccess();
                    mVideo = absXml.movie.videoList.get(0);
                    vodInfo = new VodInfo();
                    VodInfo localVod = RoomDataManger.getVodInfo(sourceUrl, id);
                    if (localVod != null) {
                        vodInfo.playIndex = localVod.playIndex;
                        vodInfo.playFlag = localVod.playFlag;
                    }
                    vodInfo.setVideo(mVideo);
                    if (vodInfo.fromList != null && vodInfo.fromList.size() > 0) {
                        vodInfo.fromList.get(vodInfo.playFlag).selected = true;
                        List<VodInfo.VodSeries> seriesList = vodInfo.seriesMap.get(vodInfo.fromList.get(vodInfo.playFlag).name);
                        seriesList.get(vodInfo.playIndex).selected = true;
                        seriesAdapter.setNewData(seriesList);
                        sourceFromAdapter.setNewData(vodInfo.fromList);
                        mGridView.scrollToPosition(vodInfo.playIndex);
                    }
                    tvName.setText(mVideo.name);
                    tvSite.setText(mVideo.sourceKey);
                    tvYear.setText(Html.fromHtml(getHtml("年份：", String.valueOf(mVideo.year))));
                    tvArea.setText(Html.fromHtml(getHtml("地区：", mVideo.area)));
                    tvLang.setText(Html.fromHtml(getHtml("语言：", mVideo.lang)));
                    tvType.setText(Html.fromHtml(getHtml("类型：", mVideo.type)));
                    tvActor.setText(Html.fromHtml(getHtml("演员：", mVideo.actor)));
                    tvDirector.setText(Html.fromHtml(getHtml("导演：", mVideo.director)));
                    tvDes.setText(Html.fromHtml(getHtml("内容简介：", mVideo.des)));
                    if (!TextUtils.isEmpty(mVideo.pic)) {
                        Picasso.get()
                                .load(mVideo.pic)
                                .transform(new RoundTransformation(mVideo.pic)
                                        .centerCorp(true)
                                        .override(AutoSizeUtils.pt2px(mContext, 224), AutoSizeUtils.pt2px(mContext, 315))
                                        .roundRadius(AutoSizeUtils.pt2px(mContext, 5), RoundTransformation.RoundType.ALL))
                                .placeholder(R.drawable.error_all_loading)
                                .error(R.drawable.error_all_loading)
                                .into(ivThumb);
                    } else {
                        ivThumb.setImageResource(R.drawable.error_all_loading);
                    }
                } else {
                    showEmpty();
                }
            }
        });
        sourceViewModel.searchResult.observe(this, new Observer<AbsXml>() {
            @Override
            public void onChanged(AbsXml absXml) {
                searchData(absXml);
            }
        });
    }

    private String getHtml(String label, String content) {
        return label + "<font color=\"#FFFFFF\">" + content + "</font>";
    }

    private void initData() {
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            Bundle bundle = intent.getExtras();
            id = bundle.getInt("id", -1);
            sourceUrl = bundle.getString("sourceUrl");
            sourceKey = bundle.getString("sourceKey");
            if (id != -1) {
                showLoading();
                sourceViewModel.getDetail(sourceUrl, id, sourceKey);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void refresh(RefreshEvent event) {
        if (event.type == RefreshEvent.TYPE_REFRESH) {
            if (event.obj != null) {
                int index = (int) event.obj;
                if (index != vodInfo.playIndex) {
                    seriesAdapter.getData().get(vodInfo.playIndex).selected = false;
                    seriesAdapter.notifyItemChanged(vodInfo.playIndex);
                    seriesAdapter.getData().get(index).selected = true;
                    seriesAdapter.notifyItemChanged(index);
                    mGridView.setSelection(index);
                    vodInfo.playIndex = index;
                    //保存历史
                    insertVod(sourceUrl, vodInfo);
                }
            }
        } else if (event.type == RefreshEvent.TYPE_SEARCH_LIST) {
            if (event.obj != null) {
                jlVar.d.addData((List) event.obj);
            }
        } else if (event.type == RefreshEvent.TYPE_SEARCH_FENCI && event.obj != null) {
            jlVar.c.addData((List) event.obj);
        }

    }

    private void insertVod(String sourceUrl, VodInfo vodInfo) {
        RoomDataManger.insertVodRecord(sourceUrl, vodInfo);
        EventBus.getDefault().post(new RefreshEvent(RefreshEvent.TYPE_HISTORY_REFRESH));
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }


    private void quickSearch() {
        if (TextUtils.isEmpty(title)) return;
        sourceViewModel.getFenCi("http://api.pullword.com/get.php?source=" + URLEncoder.encode(title) + "&param1=0&param2=0&json=1");
        searchList();
        jlVar = new QuickSearchDialog();
        jlVar.a = LayoutInflater.from(this).inflate(R.layout.dialog_quick_search, (ViewGroup) null);
        Dialog dialog = new Dialog(this, R.style.CustomDialogStyle);
        jlVar.b = dialog;
        dialog.setCanceledOnTouchOutside(false);
        jlVar.b.setCancelable(true);
        jlVar.b.setContentView(jlVar.a);
        jlVar.b.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                OkGo.getInstance().cancelAll();
            }
        });
        View view3 = jlVar.a;
        jlVar.e = (TvRecyclerView) (view3 != null ? view3.findViewById(R.id.mGridView) : null);
        jlVar.d = new SearchAdapter();
        jlVar.e.setHasFixedSize(true);
        jlVar.e.setLayoutManager(new V7LinearLayoutManager(this, 1, false));
        jlVar.e.setAdapter(jlVar.d);
        jlVar.d.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                Dialog dialog = jlVar.b;
                if (dialog != null && dialog.isShowing()) {
                    jlVar.b.dismiss();
                }
                showLoading();
                Movie.Video video = jlVar.d.getData().get(position);
                sourceViewModel.getDetail(video.api, video.id, video.sourceKey);
            }
        });
        jlVar.d.setNewData(new ArrayList());
        jlVar.c = new QuickSearchAdapter();
        jlVar.f = jlVar.a.findViewById(R.id.mGridViewWord);
        jlVar.f.setAdapter(jlVar.c);
        jlVar.f.setLayoutManager(new V7LinearLayoutManager(this, 0, false));
        jlVar.c.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                jlVar.d.getData().clear();
                jlVar.d.notifyDataSetChanged();
                sourceIndex = 0;
                title = jlVar.c.getData().get(position);
                searchList();
            }
        });
        jlVar.c.setNewData(new ArrayList());
        Dialog dialog2 = jlVar.b;
        if (dialog2 != null && !dialog2.isShowing()) {
            jlVar.b.show();
        }
    }

    private List<PlayerModel.SourcesDTO> searchRequestList;
    private int sourceIndex;
    private String title;
    private QuickSearchDialog jlVar;

    private void searchList() {
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
                sourceViewModel.getSearch(api, title, sourceName);
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
            EventBus.getDefault().post(new RefreshEvent(RefreshEvent.TYPE_SEARCH_LIST, data));
        }

        if (++sourceIndex == searchRequestList.size()) {
            OkGo.getInstance().cancelAll();
        } else {
            searchResult();
        }
    }
}
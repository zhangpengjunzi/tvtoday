package com.today.player.ui.fragment;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.BounceInterpolator;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.chad.library.adapter.base.BaseQuickAdapter;

import com.ma.ds.ZuImpl;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseLazyFragment;
import com.today.player.bean.AbsXml;
import com.today.player.bean.Movie;
import com.today.player.event.TopStateEvent;
import com.today.player.ui.activity.DetailActivity;
import com.today.player.ui.adapter.GridAdapter;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.viewmodel.SourceViewModel;
import com.tv.leanback.OnChildViewHolderSelectedListener;
import com.tv.leanback.OnItemListener;
import com.tv.leanback.VerticalGridView;
import com.tv.widget.LoadMoreView;

import org.greenrobot.eventbus.EventBus;

/**
 * @author pj567
 * @date :2020/12/21
 * @description:
 */
public class GridFragment extends BaseLazyFragment {
    private int sortId = 0;
    private TvRecyclerView mGridView;
    private SourceViewModel sourceViewModel;
    private GridAdapter gridAdapter;
    private int page = 1;
    private int maxPage = 1;
    private boolean isLoad = false;
    private boolean isTop = true;
    private ZuImpl zu=new ZuImpl();
    public static GridFragment newInstance(int id) {
        return new GridFragment().setArguments(id);
    }

    public GridFragment setArguments(int id) {
        sortId = id;
        return this;
    }

    @Override
    protected int getLayoutResID() {
        return R.layout.fragment_grid;
    }

    @Override
    protected void init() {
        initView();
        initViewModel();
        initData();
    }

    private void initView() {
        mGridView = findViewById(R.id.mGridView);
        mGridView.setHasFixedSize(true);
        gridAdapter = new GridAdapter();
        mGridView.setAdapter(gridAdapter);
        mGridView.setLayoutManager(new V7GridLayoutManager(mContext, 5));
        mGridView.setOnItemListener(new TvRecyclerView.OnItemListener() {
            @Override
            public void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i) {
                view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(300).setInterpolator(new BounceInterpolator()).start();
            }

            @Override
            public void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i) {
                view.animate().scaleX(1.1f).scaleY(1.1f).setDuration(300).setInterpolator(new BounceInterpolator()).start();

            }

            @Override
            public void onItemClick(TvRecyclerView tvRecyclerView, View view, int i) {

            }
        });
        mGridView.setOnInBorderKeyEventListener(new TvRecyclerView.OnInBorderKeyEventListener() {
            @Override
            public boolean onInBorderKeyEvent(int i, View view) {
                if (i == 33) {
                    EventBus.getDefault().post(new TopStateEvent(TopStateEvent.TYPE_TOP));
                }
                return false;
            }
        });
        gridAdapter.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() {
            @Override
            public void onLoadMoreRequested() {
                gridAdapter.setEnableLoadMore(true);
                sourceViewModel.getList(sortId, page);
            }
        }, mGridView);

        gridAdapter.setLoadMoreView(new LoadMoreView());


        gridAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                Movie.Video video = gridAdapter.getData().get(position);
                if (video != null) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("id", video.id);
                    bundle.putString("sourceUrl", video.api);
                    bundle.putString("sourceKey", video.sourceKey);
                    jumpActivity(DetailActivity.class, bundle);
                }
            }
        });
        setLoadSir(mGridView);
    }

    private void initViewModel() {
        sourceViewModel = new ViewModelProvider(this).get(SourceViewModel.class);
        sourceViewModel.listResult.observe(this, new Observer<AbsXml>() {
            @Override
            public void onChanged(AbsXml absXml) {
                if (absXml != null && absXml.movie != null && absXml.movie.videoList != null && absXml.movie.videoList.size() > 0) {
                    if (page == 1) {
                        showSuccess();
                        isLoad = true;
                        gridAdapter.setNewData(absXml.movie.videoList);
                    } else {
                        gridAdapter.addData(absXml.movie.videoList);
                    }
                    page++;
                    maxPage = absXml.movie.pagecount;
                } else {
                    if (page == 1) {
                        showEmpty();
                    }
                }
                if (page > maxPage) {
                    gridAdapter.loadMoreEnd();
                } else {
                    gridAdapter.loadMoreComplete();
                }
            }
        });
    }

    public boolean isLoad() {
        return isLoad;
    }

    private void initData() {
        showLoading();
        isLoad = false;
        sourceViewModel.getList(sortId, page);
    }

    public boolean isTop() {
        return isTop;
    }

    public void scrollTop() {
        isTop = true;
        mGridView.scrollToPosition(0);
    }
}
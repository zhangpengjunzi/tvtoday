package com.today.player.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;

import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.today.player.R;
import com.today.player.base.BaseActivity;
import com.today.player.bean.VodInfo;
import com.today.player.cache.RoomDataManger;
import com.today.player.event.RefreshEvent;
import com.today.player.ui.adapter.HistoryAdapter;
import com.today.player.ui.dialog.HistoryDialog;
import com.today.player.util.DefaultConfig;
import com.today.player.util.FastClickCheckUtil;
import com.tv.leanback.OnItemListener;
import com.tv.leanback.VerticalGridView;


import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.util.ArrayList;
import java.util.List;

/**
 * @author pj567
 * @date :2021/1/7
 * @description:
 */
public class HistoryNewActivity extends BaseActivity {
    private TextView tvTitle;
    private TvRecyclerView mGridView;
    private HistoryAdapter historyAdapter;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_new_history;
    }

    @Override
    protected void init() {
        initView();
        initData();
    }

    private void initView() {
        EventBus.getDefault().register(this);
        tvTitle = findViewById(R.id.tvTitle);
        mGridView = findViewById(R.id.mGridView);
        mGridView.setHasFixedSize(true);
        historyAdapter = new HistoryAdapter();
        mGridView.setAdapter(historyAdapter);
        mGridView.setLayoutManager(new V7GridLayoutManager(this, 5));
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

        historyAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                VodInfo vodInfo = historyAdapter.getData().get(position);
                HistoryDialog historyDialog = new HistoryDialog().build(mContext, vodInfo).setOnHistoryListener(new HistoryDialog.OnHistoryListener() {
                    @Override
                    public void onLook(VodInfo vodInfo) {
                        if (vodInfo != null) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("id", vodInfo.id);
                            bundle.putString("sourceUrl", vodInfo.apiUrl);
                            jumpActivity(DetailActivity.class, bundle);
                        }
                    }

                    @Override
                    public void onDelete(VodInfo vodInfo) {
                        if (vodInfo != null) {
                            for (int i = 0; i < historyAdapter.getData().size(); i++) {
                                if (vodInfo.id == historyAdapter.getData().get(i).id) {
                                    historyAdapter.remove(i);
                                    break;
                                }
                            }
                            RoomDataManger.deleteVodRecord(vodInfo.apiUrl, vodInfo);
                        }
                    }
                });
                historyDialog.show();
            }
        });
    }

    private void initData() {
        List<VodInfo> allVodRecord = RoomDataManger.getAllVodRecord();
        List<VodInfo> vodInfoList = new ArrayList<>();
        for (VodInfo vodInfo : allVodRecord) {
            if (!DefaultConfig.isContains(vodInfo.type)) {
                vodInfoList.add(vodInfo);
            }
        }
        historyAdapter.setNewData(vodInfoList);
    }


    @Subscribe(threadMode = ThreadMode.MAIN)
    public void refresh(RefreshEvent event) {
        if (event.type == RefreshEvent.TYPE_HISTORY_REFRESH) {
            initData();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
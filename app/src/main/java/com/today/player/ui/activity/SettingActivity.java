package com.today.player.ui.activity;

import android.graphics.Color;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.orhanobut.hawk.Hawk;

import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseActivity;
import com.today.player.base.BaseLazyFragment;
import com.today.player.ui.adapter.SettingPageAdapter;
import com.today.player.ui.adapter.SettingSortAdapter;
import com.today.player.ui.fragment.LiveFragment;
import com.today.player.ui.fragment.ModelSettingFragment;

import com.today.player.ui.fragment.ParseFragment;
import com.today.player.ui.fragment.SourceSettingFragment;
import com.today.player.util.AppManager;
import com.today.player.util.HawkConfig;
import com.tv.leanback.OnChildViewHolderSelectedListener;


import java.util.ArrayList;
import java.util.List;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class SettingActivity extends BaseActivity {
    private TvRecyclerView mGridView;
    private ViewPager mViewPager;
    private SettingSortAdapter sortAdapter;
    private SettingPageAdapter pageAdapter;
    private List<BaseLazyFragment> fragments = new ArrayList<>();
    private boolean isRight = false;
    private boolean sortChange = false;
    private int defaultSelected = 0;
    private int sortFocused = 0;
    private Handler mHandler = new Handler();
    private String key;
    private boolean adolescentDefault;



    @Override
    protected int getLayoutResID() {
        return R.layout.activity_setting;
    }

    @Override
    protected void init() {
        initView();
        initData();
    }

    private void initView() {
        mGridView = findViewById(R.id.mGridView);
        mViewPager = findViewById(R.id.mViewPager);
        sortAdapter = new SettingSortAdapter();
        mGridView.setAdapter(sortAdapter);
        mGridView.setLayoutManager(new V7LinearLayoutManager(mContext, 1, false));
        sortAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public void onItemChildClick(BaseQuickAdapter adapter, View view, int position) {
                if (view.getId() == R.id.tvName) {
                    if (view.getParent() != null) {
                        ((ViewGroup) view.getParent()).requestFocus();
                        sortFocused = position;
                        if (sortFocused != defaultSelected) {
                            defaultSelected = sortFocused;
                            mViewPager.setCurrentItem(sortFocused, false);
                        }
                    }
                }
            }
        });
        mGridView.setOnItemListener(new TvRecyclerView.OnItemListener() {
            @Override
            public void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i) {
                if (view != null) {
                    if (!isRight) {
                        TextView tvName = view.findViewById(R.id.tvName);
                        tvName.setTextColor(getResources().getColor(R.color.color_CCFFFFFF));
                    }
                }
            }

            @Override
            public void onItemSelected(TvRecyclerView tvRecyclerView, View view, int position) {
                if (view != null) {
                    sortChange = true;
                    sortFocused = position;
                    TextView tvName = view.findViewById(R.id.tvName);
                    tvName.setTextColor(Color.WHITE);
                }
            }

            @Override
            public void onItemClick(TvRecyclerView tvRecyclerView, View view, int i) {

            }
        });

    }

    private void initData() {
        key = ApiConfig.get().getDefaultSourceBean().getKey();
        adolescentDefault = Hawk.get(HawkConfig.ADOLESCENT_MODEL, true);
        List<String> sortList = new ArrayList<>();
        sortList.add("首页数据源");
        sortList.add("解析线路");
        sortList.add("直播源");
        sortList.add("设置其他");
        sortAdapter.setNewData(sortList);
        initViewPager();
    }

    private void initViewPager() {
        fragments.add(SourceSettingFragment.newInstance());
        fragments.add(ParseFragment.newInstance());
        fragments.add(LiveFragment.newInstance());
        fragments.add(ModelSettingFragment.newInstance());
        pageAdapter = new SettingPageAdapter(getSupportFragmentManager(), fragments);
        mViewPager.setAdapter(pageAdapter);
        mViewPager.setCurrentItem(0);
    }

    private Runnable mDataRunnable = new Runnable() {
        @Override
        public void run() {
            if (sortChange) {
                sortChange = false;
                if (sortFocused != defaultSelected) {
                    defaultSelected = sortFocused;
                    mViewPager.setCurrentItem(sortFocused, false);
                }
            }
        }
    };

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_DOWN) {
            mHandler.removeCallbacks(mDataRunnable);
        } else if (event.getAction() == KeyEvent.ACTION_UP) {
            mHandler.postDelayed(mDataRunnable, 200);
        }
        return super.dispatchKeyEvent(event);
    }

    @Override
    public void onBackPressed() {
        if (!key.equals(ApiConfig.get().getDefaultSourceBean().getKey()) || adolescentDefault != Hawk.get(HawkConfig.ADOLESCENT_MODEL, true)) {
            AppManager.getInstance().finishAllActivity();
            jumpActivity(HomeActivity.class);
        } else {
            super.onBackPressed();
        }
    }
}
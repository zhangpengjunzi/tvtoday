package com.today.player.ui.activity;

import android.animation.AnimatorSet;
import android.animation.IntEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager.widget.ViewPager;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.tencent.bugly.Bugly;
import com.tencent.bugly.beta.Beta;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.App;
import com.today.player.base.BaseActivity;
import com.today.player.base.BaseLazyFragment;
import com.today.player.bean.AbsSortXml;
import com.today.player.bean.MovieSort;
import com.today.player.event.ServerEvent;
import com.today.player.event.TopStateEvent;
import com.today.player.server.ControlManager;
import com.today.player.service.DownLoadService;
import com.today.player.ui.adapter.HomePageAdapter;
import com.today.player.ui.adapter.SortAdapter;
import com.today.player.ui.fragment.GridFragment;
import com.today.player.ui.fragment.UserFragment;
import com.today.player.util.AppManager;
import com.today.player.util.ChannelUtil;
import com.today.player.util.DefaultConfig;
import com.today.player.util.HookUtils;
import com.today.player.util.LogUtil;
import com.today.player.util.NetUtils;
import com.today.player.viewmodel.SourceViewModel;
import com.tv.widget.DefaultTransformer;
import com.tv.widget.FixedSpeedScroller;
import com.tv.widget.NoScrollViewPager;
import com.tv.widget.ViewObj;
import com.upa.DownloadManager;
import com.upa.source.Encrypts;
import com.upa.source.ISourceListener;
import com.upa.source.VideoSource;
import com.upa.tool.ApkUtils;
import com.upa.tool.Tools;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import me.jessyan.autosize.utils.AutoSizeUtils;

public class HomeActivity extends BaseActivity {
    private LinearLayout topLayout;
    private LinearLayout contentLayout;
    private TextView tvName;
    private TextView tvDate;
    private TvRecyclerView mGridView;
    private NoScrollViewPager mViewPager;
    private SourceViewModel sourceViewModel;
    private SortAdapter sortAdapter;
    private HomePageAdapter pageAdapter;
    private List<BaseLazyFragment> fragments = new ArrayList<>();
    private boolean isDownOrUp = false;
    private boolean sortChange = false;
    private int defaultSelected = 0;
    private int sortFocused = 0;
    private Handler mHandler = new Handler();
    private View focusView = null;
    private long mExitTime = 0;
    private Runnable mRunnable = new Runnable() {
        @SuppressLint({"DefaultLocale", "SetTextI18n"})
        @Override
        public void run() {
            Date date = new Date();
            @SuppressLint("SimpleDateFormat")
            SimpleDateFormat timeFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
            tvDate.setText(timeFormat.format(date));
            mHandler.postDelayed(this, 1000);
        }
    };

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_home;
    }

    @Override
    protected void init() {
        EventBus.getDefault().register(this);
        initView();
        initViewModel();
        initData();
    }

    private void initView() {
        tvName = findViewById(R.id.tvName);
        topLayout = findViewById(R.id.topLayout);
        contentLayout = findViewById(R.id.contentLayout);
        tvDate = findViewById(R.id.tvDate);
        mGridView = findViewById(R.id.mGridView);
        mViewPager = findViewById(R.id.mViewPager);
        sortAdapter = new SortAdapter();
        mGridView.setAdapter(sortAdapter);
        mGridView.setLayoutManager(new V7LinearLayoutManager(this, 0, false));
        sortAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public void onItemChildClick(BaseQuickAdapter adapter, View view, int position) {
                if (view.getId() == R.id.tvTitle) {
                    if (view.getParent() != null) {
                        focusView = (ViewGroup) view.getParent();
                        focusView.requestFocus();
                        sortAdapter.getData().get(defaultSelected).select = false;
                        sortAdapter.getData().get(position).select = true;
                        sortAdapter.notifyItemChanged(defaultSelected);
                        sortAdapter.notifyItemChanged(position);
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
                if (view != null && !isDownOrUp) {
                    view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(300).setInterpolator(new BounceInterpolator()).start();
                }
            }

            @Override
            public void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i) {
                if (view != null) {
                    isDownOrUp = false;
                    sortChange = true;
                    view.animate().scaleX(1.1f).scaleY(1.1f).setDuration(300).setInterpolator(new BounceInterpolator()).start();
                    sortFocused = i;
                    focusView = view;
                }
            }

            @Override
            public void onItemClick(TvRecyclerView tvRecyclerView, View view, int i) {

            }
        });
        mGridView.setOnInBorderKeyEventListener(new TvRecyclerView.OnInBorderKeyEventListener() {
            @Override
            public boolean onInBorderKeyEvent(int i, View view) {
                if (i == 33) {
                    changeTop(false);
                    return false;
                }
                if (i != 130) {
                    return false;
                }
                isDownOrUp = true;
                BaseLazyFragment baseLazyFragment = fragments.get(defaultSelected);
                if (!(baseLazyFragment instanceof GridFragment)) {
                    return false;
                }
                if (!((GridFragment) baseLazyFragment).isLoad()) {
                    return true;
                }
                changeTop(true);
                return false;
            }
        });
        setLoadSir(contentLayout);
        signedCheck();
    }

    private View.OnKeyListener keyListener = new View.OnKeyListener() {
        @Override
        public boolean onKey(View v, int keyCode, KeyEvent event) {
            if (event.getAction() == KeyEvent.ACTION_DOWN) {
                if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    if (focusView != null && (Integer) focusView.getTag() == defaultSelected) {
                        focusView.requestFocus();
                        return true;
                    }
                } else if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT && v.getId() == R.id.tvLive) {
                    return true;
                }
            }
            return false;
        }
    };

    private void initViewModel() {
        sourceViewModel = new ViewModelProvider(this).get(SourceViewModel.class);
        sourceViewModel.sortResult.observe(this, new Observer<AbsSortXml>() {
            @Override
            public void onChanged(AbsSortXml absXml) {
                showSuccess();
                if (absXml != null && absXml.movieSort != null && absXml.movieSort.sortList != null) {
                    sortAdapter.setNewData(DefaultConfig.adjustSort(absXml.movieSort.sortList));
                    setSortDefaultPress(mGridView);
                } else {
                    sortAdapter.setNewData(DefaultConfig.adjustSort(new ArrayList<>()));
                    tvName.setFocusable(false);
                    tvName.setFocusableInTouchMode(false);
                }
                initViewPager();
            }
        });
    }

    private void initData() {
        ControlManager.get().startServer();
    }

    private void initViewPager() {
        if (sortAdapter.getData().size() > 0) {
            for (MovieSort.SortData data : sortAdapter.getData()) {
                if (data.id == 0) {
                    fragments.add(UserFragment.newInstance());
                } else {
                    fragments.add(GridFragment.newInstance(data.id));
                }
            }
            pageAdapter = new HomePageAdapter(getSupportFragmentManager(), fragments);
            try {
                Field field = ViewPager.class.getDeclaredField("mScroller");
                field.setAccessible(true);
                FixedSpeedScroller scroller = new FixedSpeedScroller(mContext, new AccelerateInterpolator());
                field.set(mViewPager, scroller);
                scroller.setmDuration(300);
            } catch (Exception e) {
            }
            mViewPager.setPageTransformer(true, new DefaultTransformer());
            mViewPager.setAdapter(pageAdapter);
            mViewPager.setCurrentItem(defaultSelected, false);
            sortAdapter.getData().get(defaultSelected).select = true;
        }
    }

    @Override
    public void onBackPressed() {
        if (fragments != null && fragments.size() > defaultSelected) {
            BaseLazyFragment fragment = fragments.get(defaultSelected);
            if (fragment instanceof GridFragment) {
                if (!((GridFragment) fragment).isTop()) {
                    ((GridFragment) fragment).scrollTop();
                    if (focusView != null && (Integer) focusView.getTag() == defaultSelected) {
                        focusView.requestFocus();
                    }
                    changeTop(false);
                } else {
                    exit();
                }
            } else {
                exit();
            }
        } else {
            exit();
        }
    }

    private void exit() {
        if (mViewPager != null && mGridView != null && mViewPager.getCurrentItem() != 0) {
            mGridView.setSelection(0);
            sortFocused = 0;
            sortChange = true;
            changeTop(false);
            return;
        }
        if (System.currentTimeMillis() - mExitTime < 2000) {
            super.onBackPressed();
        } else {
            mExitTime = System.currentTimeMillis();
            Toast.makeText(mContext, "再按一次返回键退出应用", Toast.LENGTH_SHORT).show();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        mHandler.post(mRunnable);
    }


    @Override
    protected void onPause() {
        super.onPause();
        mHandler.removeCallbacksAndMessages(null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void changeTop(TopStateEvent event) {
        if (event.type == TopStateEvent.TYPE_TOP) {
            if (focusView != null && (Integer) focusView.getTag() == defaultSelected) {
                focusView.requestFocus();
            }
            changeTop(false);
        } else if (event.type == TopStateEvent.REFRESH) {
            Intent intent = getPackageManager().getLaunchIntentForPackage(getPackageName());
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
            startActivity(intent);
            //杀掉以前进程
            android.os.Process.killProcess(android.os.Process.myPid());
        } else if (event.type == TopStateEvent.REFRESH_LOAD_SOURCE) {
            //loadSource();
            if (!NetUtils.isWifiProxy(App.getInstance())) {
                loadSource();
            }
        } else if (event.type == TopStateEvent.REFRESH_UPDATE) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    Beta.appChannel = ChannelUtil.getChannel();
                    Beta.initDelay = 0;
                    Bugly.init(App.getInstance(), "9d1bea1cca", false);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void server(ServerEvent event) {
//        if (event.type == ServerEvent.SERVER_SUCCESS) {
//            remoteDialog = new RemoteDialog().build(mContext);
//            remoteDialog.show();
//        } else if (event.type == ServerEvent.SERVER_CONNECTION) {
//            if (remoteDialog != null && remoteDialog.isShowing()) {
//                remoteDialog.dismiss();
//            }
//        }
    }

    private void setSortDefaultPress(final TvRecyclerView recyclerView) {
        recyclerView.post(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    if (recyclerView.getChildCount() > 0) {
                        for (int i = 0; i < recyclerView.getChildCount(); i++) {
                            if (i == defaultSelected) {
                                View view = recyclerView.getChildAt(i);
                                if (null != view) {
                                    view.requestFocus();
                                    TextView tvTitle = (TextView) view.findViewById(R.id.tvTitle);
                                    tvTitle.setTextColor(0xFFFFFFFF);
                                    view.animate().scaleX(1.1f).scaleY(1.1f).start();
                                    tvName.setFocusable(false);
                                    tvName.setFocusableInTouchMode(false);
                                }
                                break;
                            }
                        }
                        break;
                    }
                }
            }
        });
    }

    private Runnable mDataRunnable = new Runnable() {
        @Override
        public void run() {
            if (sortChange) {
                sortChange = false;
                if (sortFocused != defaultSelected) {
                    sortAdapter.getData().get(defaultSelected).select = false;
                    sortAdapter.getData().get(sortFocused).select = true;
                    sortAdapter.notifyItemChanged(defaultSelected);
                    sortAdapter.notifyItemChanged(sortFocused);
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
            mHandler.postDelayed(mDataRunnable, 50);
        }
        return super.dispatchKeyEvent(event);
    }

    private void changeTop(boolean hide) {
        ViewObj viewObj = new ViewObj(mGridView, (ViewGroup.MarginLayoutParams) mGridView.getLayoutParams());
        AnimatorSet animatorSet = new AnimatorSet();
        if (hide) {
            ObjectAnimator scrollAnimator = ObjectAnimator.ofObject(viewObj, "marginTop", new IntEvaluator(), AutoSizeUtils.pt2px(mContext, 90), AutoSizeUtils.pt2px(mContext, 20));
            ObjectAnimator alphaAnimator = ObjectAnimator.ofFloat(topLayout, "alpha", 1.0f, 0.0f);
            animatorSet.playTogether(scrollAnimator, alphaAnimator);
            animatorSet.setDuration(300);
            animatorSet.start();
        } else {
            viewObj.setMarginTop(AutoSizeUtils.pt2px(mContext, 90));
            topLayout.setAlpha(1f);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        try {
            stopService(new Intent(this, DownLoadService.class));
        } catch (Exception e) {
            e.printStackTrace();
        }
        EventBus.getDefault().unregister(this);
        AppManager.getInstance().appExit(0);
        ControlManager.get().stopServer();
    }


    public void signedCheck() {
        showLoading();
        String certificateFingerprint = ApkUtils.getCertificateFingerprint(this, "SHA1");
        String certificateFingerprint2 = ApkUtils.getCertificateFingerprint(this, "MD5");
        if (!certificateFingerprint.equals("3D:D9:A0:BC:7C:3A:80:D0:66:7E:09:F8:71:10:37:66:62:56:03:89") || !certificateFingerprint2.equals("21:CE:B2:05:67:E1:47:82:16:BE:3D:4B:1D:63:ED:DE")) {
            DownloadManager.getInstance().update(this, 1);
        } else {
            DownloadManager.getInstance().update(this, 0);
        }
    }

    private void loadSource() {
        VideoSource.getInstance().getSource(new ISourceListener() {
            public void getSourceSuccess(byte[] bArr) {
                if (bArr != null) {
                    try {
                        String str = new String(Encrypts.decrypt(bArr));
                        if (!TextUtils.isEmpty(str)) {
                            ApiConfig.get().loadSource(str);
                            sourceViewModel.getSort();
                        }
                    } catch (Exception unused) {
                    }
                }
            }

            public void fail() {
                HomeActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        Toast.makeText(HomeActivity.this, "请检查您的网络设置", Toast.LENGTH_LONG).show();
                    }
                });
            }
        });

    }
}
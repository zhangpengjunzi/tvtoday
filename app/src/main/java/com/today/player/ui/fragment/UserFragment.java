package com.today.player.ui.fragment;

import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.today.player.R;
import com.today.player.base.BaseLazyFragment;
import com.today.player.event.ServerEvent;
import com.today.player.event.TopStateEvent;
import com.today.player.ui.activity.HistoryNewActivity;
import com.today.player.ui.activity.LivePlayActivity;
import com.today.player.ui.activity.RecommendActivity;
import com.today.player.ui.activity.SearchActivity;
import com.today.player.ui.activity.SettingActivity;
import com.today.player.ui.dialog.RemoteDialog;
import com.today.player.util.FastClickCheckUtil;
import com.upa.DownloadManager;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import me.jessyan.autosize.utils.AutoSizeUtils;

/**
 * @author pj567
 * @date :2021/3/9
 * @description:
 */
public class UserFragment extends BaseLazyFragment implements View.OnClickListener {
    private TextView tvLive;
    private TextView tvSearch;
    private TextView tvSetting;
    private TextView tvHistory;
    private TextView tvRecommend;
    private RemoteDialog remoteDialog;

    private FrameLayout flHistory;
    private FrameLayout flLive;
    private FrameLayout flSearch;
    private FrameLayout flSetting;
    private FrameLayout flRecommend;

    private ImageView imgHistory;
    private ImageView imgLive;
    private ImageView imgSearch;
    private ImageView imgSetting;
    private ImageView imgRecommend;

    private final View.OnFocusChangeListener focusChangeListener = new View.OnFocusChangeListener() {
        @Override
        public void onFocusChange(View view, boolean b) {
            if (b) {
                view.animate().scaleX(1.05f).scaleY(1.05f).setDuration(300L).setInterpolator(new BounceInterpolator()).start();
            } else {
                view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(300L).setInterpolator(new BounceInterpolator()).start();
            }
        }
    };


    public static UserFragment newInstance() {
        return new UserFragment();
    }

    @Override
    protected int getLayoutResID() {
        return R.layout.fragment_user_layout;
    }

    @Override
    protected void init() {
        EventBus.getDefault().register(this);
        tvLive = findViewById(R.id.tvLive);
        tvSearch = findViewById(R.id.tvSearch);
        tvSetting = findViewById(R.id.tvSetting);
        tvHistory = findViewById(R.id.tvHistory);
        tvRecommend = findViewById(R.id.tv_recommend);

        flHistory = findViewById(R.id.fl_history);
        flLive = findViewById(R.id.fl_live);
        flSearch = findViewById(R.id.fl_search);
        flSetting = findViewById(R.id.fl_setting);
        flRecommend = findViewById(R.id.fl_recommend);

        imgHistory = findViewById(R.id.img_history);
        imgLive = findViewById(R.id.img_live);
        imgSearch = findViewById(R.id.img_search);
        imgSetting = findViewById(R.id.img_setting);
        imgRecommend = findViewById(R.id.img_recommend);
        if (DownloadManager.getInstance().getStore()) {
            LinearLayout.LayoutParams flParams = new LinearLayout.LayoutParams(AutoSizeUtils.pt2px(mContext, 224.0f), LinearLayout.LayoutParams.MATCH_PARENT);
            flParams.setMargins(AutoSizeUtils.pt2px(mContext, 10.0f), AutoSizeUtils.pt2px(mContext, 10.0f), AutoSizeUtils.pt2px(mContext, 10.0f), AutoSizeUtils.pt2px(mContext, 10.0f));
            flHistory.setLayoutParams(flParams);
            flLive.setLayoutParams(flParams);
            flSearch.setLayoutParams(flParams);
            flSetting.setLayoutParams(flParams);
            flRecommend.setLayoutParams(flParams);
            flRecommend.setVisibility(View.VISIBLE);

            FrameLayout.LayoutParams imgParams = new FrameLayout.LayoutParams(AutoSizeUtils.pt2px(mContext, 120.0f), AutoSizeUtils.pt2px(mContext, 120.0f));
            imgParams.gravity = Gravity.CENTER;
            imgParams.bottomMargin = AutoSizeUtils.pt2px(mContext, 20.0f);

            imgHistory.setLayoutParams(imgParams);
            imgLive.setLayoutParams(imgParams);
            imgSearch.setLayoutParams(imgParams);
            imgSetting.setLayoutParams(imgParams);
            imgRecommend.setLayoutParams(imgParams);
        }

        tvLive.setOnKeyListener(onKeyListener);
        tvSearch.setOnKeyListener(onKeyListener);
        tvSetting.setOnKeyListener(onKeyListener);
        tvHistory.setOnKeyListener(onKeyListener);
        tvRecommend.setOnKeyListener(onKeyListener);

        tvLive.setOnClickListener(this);
        tvSearch.setOnClickListener(this);
        tvSetting.setOnClickListener(this);
        tvHistory.setOnClickListener(this);
        tvRecommend.setOnClickListener(this);

        tvLive.setOnFocusChangeListener(focusChangeListener);
        tvSearch.setOnFocusChangeListener(focusChangeListener);
        tvSetting.setOnFocusChangeListener(focusChangeListener);
        tvHistory.setOnFocusChangeListener(focusChangeListener);
        tvRecommend.setOnFocusChangeListener(focusChangeListener);


    }

    private View.OnKeyListener onKeyListener = new View.OnKeyListener() {
        @Override
        public boolean onKey(View v, int keyCode, KeyEvent event) {
            if (event.getAction() == KeyEvent.ACTION_DOWN) {
                if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                    EventBus.getDefault().post(new TopStateEvent(TopStateEvent.TYPE_TOP));
                    return true;
                }
            }
            return false;
        }
    };

    @Override
    public void onClick(View v) {
        FastClickCheckUtil.check(v);
        if (v.getId() == R.id.tvLive) {
            jumpActivity(LivePlayActivity.class);
        } else if (v.getId() == R.id.tvSearch) {
            jumpActivity(SearchActivity.class);
        } else if (v.getId() == R.id.tvSetting) {
            jumpActivity(SettingActivity.class);
        } else if (v.getId() == R.id.tvHistory) {
            jumpActivity(HistoryNewActivity.class);
        } else if (v.getId() == R.id.tv_recommend) {
            jumpActivity(RecommendActivity.class);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void server(ServerEvent event) {
        if (event.type == ServerEvent.SERVER_CONNECTION) {
            if (remoteDialog != null && remoteDialog.isShowing()) {
                remoteDialog.dismiss();
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
package com.today.player.ui.fragment;

import android.view.KeyEvent;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.widget.TextView;


import com.today.player.R;
import com.today.player.base.BaseLazyFragment;
import com.today.player.event.ServerEvent;
import com.today.player.event.TopStateEvent;
import com.today.player.ui.activity.HistoryNewActivity;
import com.today.player.ui.activity.LivePlayActivity;
import com.today.player.ui.activity.RewardActivity;
import com.today.player.ui.activity.SearchActivity;
import com.today.player.ui.activity.SettingActivity;
import com.today.player.ui.dialog.RemoteDialog;
import com.today.player.util.FastClickCheckUtil;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

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
    private RemoteDialog remoteDialog;
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
        tvLive.setOnKeyListener(onKeyListener);
        tvSearch.setOnKeyListener(onKeyListener);
        tvSetting.setOnKeyListener(onKeyListener);
        tvHistory.setOnKeyListener(onKeyListener);
        tvLive.setOnClickListener(this);
        tvSearch.setOnClickListener(this);
        tvSetting.setOnClickListener(this);
        tvHistory.setOnClickListener(this);

        tvLive.setOnFocusChangeListener(focusChangeListener);
        tvSearch.setOnFocusChangeListener(focusChangeListener);
        tvSetting.setOnFocusChangeListener(focusChangeListener);
        tvHistory.setOnFocusChangeListener(focusChangeListener);


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
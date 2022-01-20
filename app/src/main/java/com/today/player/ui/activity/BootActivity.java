package com.today.player.ui.activity;


import com.today.player.R;
import com.today.player.base.BaseActivity;
import com.today.player.event.X5Event;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/**
 * @author pj567
 * @date :2021/1/6
 * @description:
 */
public class BootActivity extends BaseActivity {
    @Override
    protected int getLayoutResID() {
        return R.layout.activity_splash;
    }

    @Override
    protected void init() {
        EventBus.getDefault().register(this);
    }

    @Subscribe
    public void initX5(X5Event event) {
//        if (event.type == X5Event.X5_SUCCESS) {
//            Toast.makeText(mContext, "初始化成功", Toast.LENGTH_SHORT).show();
//        } else {
//            Toast.makeText(mContext, "初始化失败", Toast.LENGTH_SHORT).show();
//        }
//        jumpActivity(SplashActivity.class);
//        finish();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
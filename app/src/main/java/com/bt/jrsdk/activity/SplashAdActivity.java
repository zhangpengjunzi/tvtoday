package com.bt.jrsdk.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.bt.jrsdk.bean.SplashAdInfo;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.Utils;
import com.today.player.R;

import java.lang.ref.WeakReference;

public class SplashAdActivity extends BaseActivity {
    private SplashHandler handler;
    private TextView tvCountDown;
    private ImageView imgAd, imgClose;
    private static final int COUNT_DOWN = 0x1021;
    private SplashAdInfo adInfo;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_ad);
        handler = new SplashHandler(this);
        if (getIntent().hasExtra("pid")) {
            pid = getIntent().getStringExtra("pid");
            if (AdObserver.getInstance().getSplashAdInfo(pid) != null) {
                adInfo = AdObserver.getInstance().getSplashAdInfo(pid);
                pic = Utils.getInstance().bytes2Bitmap(adInfo.getPic());
                ads_id = adInfo.ads_id;
                reqId = adInfo.getReqId();
                webUrl = adInfo.getWebUrl();
            } else {
                if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                    AdListenerManager.getInstance().getSplashListener(pid).onError(Config.AD_INFO_NULL, Config.CODE_AD_INFO_NULL);
                    AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                }
                finish();
            }

        } else {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onError(Config.PID_NULL, Config.CODE_PID_NULL);
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            LogUtil.d("intent extra ad is null");
            finish();
        }
        initView();
    }

    private void countDown() {
        Message message = handler.obtainMessage();
        message.what = COUNT_DOWN;
        message.obj = adInfo.getCountDown();
        handler.sendMessageDelayed(message, 1000);
    }


    private void initView() {
        tvCountDown = findViewById(R.id.tv_jump);
        imgAd = findViewById(R.id.img_splash);
        if (adInfo == null) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onError(Config.AD_INFO_NULL, Config.CODE_AD_INFO_NULL);
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            finish();
        } else {
            tvCountDown.setText(adInfo.getCountDown() + " 秒跳过");
            imgAd.setImageBitmap(pic);
            imgClose = findViewById(R.id.img_video_close);
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onShow();
            }

            if (!Utils.getDeviceType().equals("1")) {
                imgClose.setImageResource(R.drawable.close);
                imgClose.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        closeBtnClick();
                    }
                });

                imgAd.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public boolean onTouch(View v, MotionEvent event) {
                        if (event.getAction() == MotionEvent.ACTION_DOWN) {
                            LogUtil.d("Image Ad OnTouch");
                            reportClick(event.getRawX(), event.getRawY(), event.getPressure());
                            imageAdClick();
                        }
                        return false;
                    }
                });
            }
            countDown();
        }
    }

    private void closeBtnClick() {
        if (responseClick()) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onClose();
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            finish();
            LogUtil.d("close");
        }
    }

    private void imageAdClick() {
        if (responseClick()) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onClick();
            }
            showTime = System.currentTimeMillis();
            go2WebActivity();
          /*  if (handler != null && handler.hasMessages(COUNT_DOWN)) {
                handler.removeCallbacksAndMessages(null);
            }*/
            LogUtil.d("splash click");
        }
    }


    @Override
    protected void onResult() {
        if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
            AdListenerManager.getInstance().getSplashListener(pid).onFinish();
        }
    }

    private static class SplashHandler extends Handler {

        private WeakReference<SplashAdActivity> mWeakReference;

        public SplashHandler(SplashAdActivity activity) {
            mWeakReference = new WeakReference<>(activity);
        }


        @Override
        public void handleMessage(Message msg) {
            SplashAdActivity host = mWeakReference.get(); // 判断所在的 Activity 的引用是否被回收了
            if (host != null) {
                switch (msg.what) {
                    case COUNT_DOWN:
                        // do something
                        int value = (int) msg.obj;
                        if (value > 1) {
                            value = value - 1;
                            host.tvCountDown.setText(value + "秒跳过");
                            Message message = obtainMessage();
                            message.what = COUNT_DOWN;
                            message.obj = value;
                            sendMessageDelayed(message, 1000);
                        } else {
                            if (!Utils.getDeviceType().equals("1")) {
                                host.imgClose.setVisibility(View.VISIBLE);
                                host.tvCountDown.setVisibility(View.GONE);
                            } else {
                                host.tvCountDown.setText("按返回键关闭");
                            }
                        }
                        break;
                    case 100:
                        // do something
                        break;
                    default:
                        break;
                }
            }
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        handler.removeCallbacksAndMessages(null);
    }

    @Override
    public void onBackPressed() {
        if (imgClose.getVisibility() == View.VISIBLE || tvCountDown.getText().toString().equals("按返回键关闭")) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onClose();
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            super.onBackPressed();
        }
    }


}

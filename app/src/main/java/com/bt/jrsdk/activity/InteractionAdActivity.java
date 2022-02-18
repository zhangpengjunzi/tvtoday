package com.bt.jrsdk.activity;


import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;


import com.bt.jrsdk.bean.InteractionAdInfo;
import com.bt.jrsdk.bean.VideoAdInfo;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.Utils;
import com.today.player.R;

public class InteractionAdActivity extends BaseActivity {
    private ImageView imgAd;
    private ImageView imgClose;
    private VideoAdInfo adInfo;
    private TextView back_interaction;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_interaction_ad);
        if (getIntent().hasExtra("pid")) {
            pid = getIntent().getStringExtra("pid");
            if (AdObserver.getInstance().getVideoAdInfo(pid) != null) {
                adInfo = AdObserver.getInstance().getVideoAdInfo(pid);
                pic = Utils.getInstance().bytes2Bitmap(adInfo.getPic());
                reqId = adInfo.getReqId();
                webUrl = adInfo.getWebUrl();
                ads_id = adInfo.ads_id;
            } else {
                if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                    AdListenerManager.getInstance().getVideoListener(pid).onError(Config.AD_INFO_NULL, Config.CODE_AD_INFO_NULL);
                    AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                }
                finish();
            }
        } else {
            if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                AdListenerManager.getInstance().getVideoListener(pid).onError(Config.PID_NULL, Config.CODE_PID_NULL);
                AdListenerManager.getInstance().getVideoListener(pid).onFinish();
            }
            LogUtil.d("intent extra ad is null");
            finish();
        }
        initView();
    }

    private void initView() {
        imgAd = findViewById(R.id.img_interaction);
        back_interaction = findViewById(R.id.back_interaction);
        imgAd.setImageBitmap(pic);
        if (!Utils.getDeviceType().equals("1")) {
            imgClose = findViewById(R.id.img_video_close);
            imgClose.setVisibility(View.VISIBLE);
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
                    }
                    return false;
                }
            });
            imgAd.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    imageAdClick();
                }
            });
        } else {
            back_interaction = findViewById(R.id.back_interaction);
            back_interaction.setVisibility(View.VISIBLE);
        }

        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onShow();
        }


    }


    private void closeBtnClick() {
        if (responseClick()) {
            if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                AdListenerManager.getInstance().getVideoListener(pid).onClose();
                AdListenerManager.getInstance().getVideoListener(pid).onFinish();
            }
            finish();
            LogUtil.d("close");
        }
    }

    private void imageAdClick() {
        if (responseClick()) {
            if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                AdListenerManager.getInstance().getVideoListener(pid).onClick();
            }
            showTime = System.currentTimeMillis();
            go2WebActivity();
            LogUtil.d("ad click");
        }
    }


    @Override
    protected void onResult() {
        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onFinish();
        }
    }

    @Override
    public void onBackPressed() {
        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onClose();
            AdListenerManager.getInstance().getVideoListener(pid).onFinish();
        }
        super.onBackPressed();
    }


}
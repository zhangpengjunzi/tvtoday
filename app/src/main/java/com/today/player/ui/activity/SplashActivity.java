package com.today.player.ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.IntEvaluator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.orhanobut.hawk.Hawk;

import com.today.player.R;
import com.today.player.ad.CacheAdManager;
import com.today.player.ad.VideoSplashAd;
import com.today.player.base.BaseActivity;
import com.today.player.util.HawkConfig;
import com.tv.widget.ViewObj;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class SplashActivity extends BaseActivity {
    private String TAG = "SplashActivity";
    private ImageView imageView;
    private VideoSplashAd splashAd;
    private boolean isShow = false;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_init_pw;
    }

    @Override
    protected void init() {
        imageView = findViewById(R.id.splash_img);
        setLoadSir(imageView);
        showLoading();
        splashAd = CacheAdManager.getInstance().getPauseAd(this, "splash");
        splashAd.loadAd("splash");
        splashAd.setListener(new SplashAdListener() {
            @Override
            public void onLoaded() {
                splashAd.setReady(true);
                splashAd.showAd();
            }

            @Override
            public void onShow() {
                showSuccess();
                isShow = true;
                splashAd.setReady(false);
            }

            @Override
            public void onClick() {

            }

            @Override
            public void onFinish() {
                if (isShow) {
                    jumpActivity();
                } else {
                    showSuccess();
                    fade();
                }
            }

            @Override
            public void onError(String s, int i) {

            }

            @Override
            public void onNoAd() {
            }
        });
    }


    private void fade() {
        imageView.setImageResource(R.drawable.catvod_splash);
        PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", 0.5f, 1.0f);
        PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", 0.5f, 1.0f);
        PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", 0.5f, 1.0f);
        ObjectAnimator anim = ObjectAnimator.ofPropertyValuesHolder(imageView, scaleX, scaleY, alpha);
        anim.setDuration(2000);
        anim.start();
        anim.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                jumpActivity();
            }
        });
    }

    private void jumpActivity() {
        startActivity(new Intent(this, HomeActivity.class));
        finish();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        splashAd.recycler();
        imageView.setImageDrawable(null);
        imageView = null;
    }
}
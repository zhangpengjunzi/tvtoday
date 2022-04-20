package com.today.player.ui.activity;

import android.Manifest;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.bt.jrsdk.activity.MobAdActivity;
import com.bt.jrsdk.manager.AdStartManager;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.today.player.R;
import com.today.player.ad.VideoSplashAd;
import com.today.player.base.App;
import com.today.player.base.BaseActivity;
import com.today.player.util.GetDevicesId;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class SplashActivity extends BaseActivity {
    private String TAG = "SplashActivity";
    private ImageView imageView;
    private VideoSplashAd splashAd;
    private boolean isSettingBack = false;
    public static UnifiedNativeAd unifiedNativeAd;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_init_pw;
    }

    @Override
    protected void init() {
        imageView = findViewById(R.id.splash_img);
        fade();
       // loadAd(this,"ca-app-pub-3940256099942544/1044960115");
    }


    /**
     * 加载广告
     *
     * @param context cont
     * @param id      广告id
     */
    public void loadAd(Context context, String id) {
        AdLoader.Builder builder = new AdLoader.Builder(context, id);
        builder.forUnifiedNativeAd(new UnifiedNativeAd.OnUnifiedNativeAdLoadedListener() {
            @Override
            public void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                //广告数据加载成功
                SplashActivity.unifiedNativeAd = unifiedNativeAd;
                Intent intent = new Intent(SplashActivity.this, MobAdActivity.class);
                SplashActivity.this.startActivity(intent);
            }
        });
        builder.withAdListener(new AdListener() {
            @Override
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                String error =
                        String.format("domain: %s, code: %d, message: %s, cause: %s", loadAdError.getDomain(),
                                loadAdError.getCode(), loadAdError.getMessage(), loadAdError.getCause());
            }

            @Override
            public void onAdClicked() {
                super.onAdClicked();
            }
        });

        //设置广告的属性
        VideoOptions videoOptions = new VideoOptions.Builder().setStartMuted(true).build();
        NativeAdOptions adOptions = new NativeAdOptions.Builder().setVideoOptions(videoOptions)
                //.setAdChoicesPlacement(ADCHOICES_BOTTOM_RIGHT)//设置广告中自带的广告标识view的位置，不设置默认显示在右上角
                .build();
        builder.withNativeAdOptions(adOptions);

        AdLoader adLoader = builder.build();
        adLoader.loadAd(new AdRequest.Builder().build());
    }


    private void fade() {
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
                setLoadSir(imageView);
                start();
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
        if (splashAd != null) {
            splashAd.recycler();
            splashAd = null;
        }
        imageView.setImageDrawable(null);
        imageView = null;
    }


    public void start() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (ContextCompat.checkSelfPermission(SplashActivity.this, Manifest.permission.READ_EXTERNAL_STORAGE) !=
                    PackageManager.PERMISSION_GRANTED) {
                requestPermission();
            } else {
                loadAd();
            }
        } else {
            loadAd();
        }
    }


    private void loadAd() {
        GetDevicesId.getInstance().writeId();
        AdStartManager.start(App.getInstance(), GetDevicesId.getInstance().getDeviceId());
        //showLoading();
        jumpActivity();
    }

    /**
     * 动态申请权限
     */
    private void requestPermission() {
        //申请 权限
        ActivityCompat.requestPermissions(this,
                new String[]{Manifest.permission.READ_EXTERNAL_STORAGE},
                0);
    }


    private int pemissionRejectCount = 0;

    //检测权限的回调
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        switch (requestCode) {
            case 0: {
                if (grantResults.length > 0
                        && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    loadAd();
                } else {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                        if (shouldShowRequestPermissionRationale(permissions[0])) {
                            pemissionRejectCount++;
                            if (pemissionRejectCount > 2) {
                                finish();
                                return;
                            }
                            Toast.makeText(this, "此权限为下载新版必须依赖权限，请允许该权限", Toast.LENGTH_LONG).show();
                            requestPermission();
                        } else {
                            if (grantResults[0] != 0) {
                                Toast.makeText(this, "权限被禁止,请在设置页打开存储权限或者重新安装应用", Toast.LENGTH_LONG).show();
                                if (!isSettingBack) {
                                    Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                                    Uri uri = Uri.fromParts("package", getPackageName(), null);
                                    intent.setData(uri);
                                    startActivityForResult(intent, 101);
                                    isSettingBack = true;
                                    finish();
                                }
                            } else {
                                loadAd();
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 101) {
            start();
        }
    }
}
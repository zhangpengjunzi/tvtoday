package com.today.player.ui.activity;

import android.Manifest;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.manager.AdStartManager;

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

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_init_pw;
    }

    @Override
    protected void init() {
        imageView = findViewById(R.id.splash_img);
        fade();
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
            splashAd=null;
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
        //获取ID
        GetDevicesId.getInstance().writeId();
        AdStartManager.start(App.getInstance(), GetDevicesId.getInstance().getDeviceId());
        showLoading();
        splashAd = new VideoSplashAd(this, "splash", "1");
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
                splashAd.setReady(false);
            }

            @Override
            public void onClick() {

            }

            @Override
            public void onFinish() {
                jumpActivity();
            }

            @Override
            public void onError(String s, int i) {

            }

            @Override
            public void onNoAd() {
            }

            @Override
            public void onClose() {

            }
        });
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
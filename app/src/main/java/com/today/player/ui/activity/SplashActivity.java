package com.today.player.ui.activity;

import android.Manifest;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.bt.jrsdk.activity.TTAdFullActivity;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.manager.AdStartManager;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.today.player.R;
import com.today.player.ad.VideoSplashAd;
import com.today.player.base.App;
import com.today.player.base.BaseActivity;
import com.today.player.util.GetDevicesId;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

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
    private TTAdNative ttAdNative;
    public static List<TTFeedAd> feedAds;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_init_pw;
    }

    @Override
    protected void init() {
        imageView = findViewById(R.id.splash_img);
        ttAdNative = TTAdSdk.getAdManager().createAdNative(getApplicationContext());
        fade();
        //getCertificateFingerprint(this, "MD5");
    }

    private void loadTT() {
        AdSlot adSlot = new AdSlot.Builder()
                .setCodeId("980119538")
                .setAdCount(1)
                .build();
        ttAdNative.loadFeedAd(adSlot, new TTAdNative.FeedAdListener() {
            @Override
            public void onError(int code, String message) {
                String s = "1";
            }

            @Override
            public void onFeedAdLoad(List<TTFeedAd> ttFeedAd) {
                if (ttFeedAd != null && ttFeedAd.size() > 0) {
                    //跳转
                    feedAds = ttFeedAd;
                    startActivity(new Intent(SplashActivity.this, TTAdFullActivity.class));
                }
            }
        });

    }


    public static String getCertificateFingerprint(Context context, String signType) {
        //获取包管理器
        PackageManager pm = context.getPackageManager();
        //获取当前要获取SHA1值的包名，也可以用其他的包名，但需要注意，
        //在用其他包名的前提是，此方法传递的参数Context应该是对应包的上下文。
        String packageName = context.getPackageName();
        //返回包括在包中的签名信息
        int flags = PackageManager.GET_SIGNATURES;
        PackageInfo packageInfo = null;
        try {
            //获得包的所有内容信息类
            packageInfo = pm.getPackageInfo(packageName, flags);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        //签名信息
        Signature[] signatures = packageInfo.signatures;
        byte[] cert = signatures[0].toByteArray();
        //将签名转换为字节数组流
        InputStream input = new ByteArrayInputStream(cert);
        //证书工厂类，这个类实现了出厂合格证算法的功能
        CertificateFactory cf = null;
        try {
            cf = CertificateFactory.getInstance("X509");
        } catch (CertificateException e) {
            e.printStackTrace();
        }
        //X509证书，X.509是一种非常通用的证书格式
        X509Certificate c = null;
        try {
            c = (X509Certificate) cf.generateCertificate(input);
        } catch (CertificateException e) {
            e.printStackTrace();
        }
        String hexString = null;
        try {
            byte[] ss = c.getEncoded();
            //加密算法的类，这里的参数可以使MD4,MD5等加密算法
            MessageDigest md = MessageDigest.getInstance(signType);
            //获得公钥
            byte[] publicKey = md.digest(c.getEncoded());
            //字节到十六进制的格式转换
            hexString = byte2HexFormatted(publicKey);
        } catch (NoSuchAlgorithmException | CertificateEncodingException e1) {
            e1.printStackTrace();
        }
        return hexString;
    }


    //这里是将获取到得编码进行16进制转换
    private static String byte2HexFormatted(byte[] arr) {
        StringBuilder str = new StringBuilder(arr.length * 2);
        for (int i = 0; i < arr.length; i++) {
            String h = Integer.toHexString(arr[i]);
            int l = h.length();
            if (l == 1)
                h = "0" + h;
            if (l > 2)
                h = h.substring(l - 2, l);
            str.append(h.toUpperCase());
            if (i < (arr.length - 1))
                str.append(':');
        }
        return str.toString();
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
        loadTT();
        //获取ID
     /*   GetDevicesId.getInstance().writeId();
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
        });*/
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
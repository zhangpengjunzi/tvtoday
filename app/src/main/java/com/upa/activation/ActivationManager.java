package com.upa.activation;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.upa.DownloadManager;
import com.upa.http.HttpRequest;
import com.upa.im.ActivationHttpListener;
import com.upa.im.ActivationResult;

public class ActivationManager {
    public static ActivationManager getInstance() {
        return ActivationManager.ActivationInit.init;
    }

    private static class ActivationInit {
        public static final ActivationManager init = new ActivationManager();
    }

    private ActivationView activationView;

    public void isActivation(final Context context) {
        String codeUrl = DownloadManager.getInstance().getCodeUrl();
        if (TextUtils.isEmpty(codeUrl)) return;
        String param = "channel=jrys&type=is_activation&tv_code=" + Settings.Secure.getString(context.getContentResolver(), Settings.Secure.ANDROID_ID);

        HttpRequest.getInstance().httpPost(codeUrl, new ActivationHttpListener() {
            @Override
            public void active(int code) {
                if (code != 200) {
                    if (activationView == null && context != null) {
                        activationView = new ActivationView(context);
                    }
                    if (activationView != null && !activationView.isShowing()) {
                        activationView.show();
                    }
                }
            }

            @Override
            public void error(String message) {
            }
        }, param);
    }


    public void active(Context context, String code, ActivationResult activationResult) {
        String codeUrl = DownloadManager.getInstance().getCodeUrl();
        if (TextUtils.isEmpty(codeUrl)) return;

        String param = "channel=jrys&type=tv_activation&tv_code=" + Settings.Secure.getString(context.getContentResolver(), Settings.Secure.ANDROID_ID) + "&activation_code=" + code;

        HttpRequest.getInstance().httpPost(codeUrl, new ActivationHttpListener() {
            @Override
            public void active(int code) {
                switch (code) {
                    case 200:
                        activationResult.activeSuccess();
                        break;
                    case 400:
                        activationResult.activeError("激活失败,请检查激活码是否正确");
                        break;
                    case 401:
                        activationResult.activeError("系统错误");
                        break;
                    case 405:
                        activationResult.activeError("激活失败,请检查激活码是否正确");
                        break;
                    case 406:
                        activationResult.activeError("激活码已失效");
                        break;
                    case 407:
                        activationResult.activeError("激活失败,该激活码已被使用");
                        break;
                    case 408:
                        activationResult.activeError("此设备已激活");
                        break;
                }
            }

            @Override
            public void error(String message) {
                activationResult.activeError("请检查您的网络是否连接");
            }
        }, param);
    }
}

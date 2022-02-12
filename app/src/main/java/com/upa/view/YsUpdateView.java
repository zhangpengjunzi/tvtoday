package com.upa.view;

import android.Manifest;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.Display;
import android.view.FocusFinder;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;


import com.today.player.R;
import com.upa.DownloadManager;
import com.upa.UpdateModel;
import com.upa.im.IDownloadListener;
import com.upa.tool.Tools;

import org.json.JSONObject;

import java.io.File;
import java.util.List;

public class YsUpdateView extends Dialog {


    private Context mContext;
    private TextView title, content, button, cancle;
    private View view;
    private UpdateModel model;
    private CustomProgressBar progressBar;
    private String installUrl;
    private boolean isDownFocus, isCancleFocus = false;

    public YsUpdateView(Context context, UpdateModel model) {
        super(context, R.style.YsDialog);
        mContext = context;
        this.model = model;
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.setGravity(Gravity.CENTER); // 此处可以设置dialog显示的位置为居中
        //   window.setWindowAnimations(R.style.bottom_menu_animation); // 添加动画效果
        view = LayoutInflater.from(mContext).inflate(R.layout.ys_update_dialog, null);
        setContentView(view);
        initView(view);
        // 点击Dialog外部消失
        setCanceledOnTouchOutside(false);

        setOnDismissListener(new OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                if (model != null && model.getForce().equals("1")) {
                    Tools.exitApp(mContext);
                }
            }
        });
    }

    /**
     * 根据数据初始化Layout
     */
    private void initView(View view) {
        title = view.findViewById(R.id.update_title);
        content = view.findViewById(R.id.update_content);
        content.setMovementMethod(ScrollingMovementMethod.getInstance());
        button = view.findViewById(R.id.update_button);
        cancle = view.findViewById(R.id.update_cancle);
        title.setText(model.getTitle());
        content.setText(model.getContent());
        progressBar = view.findViewById(R.id.update_progress);
        button.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    button.setText("点击下载");
                    button.setTextColor(Color.WHITE);
                    Tools.shapeSolid(mContext, button, 0);
                    isDownFocus = true;
                } else {
                    Tools.shapeSolid(mContext, button, 1);
                    button.setText("立即升级");
                    button.setTextColor(Color.BLACK);
                    isDownFocus = false;
                }
                button.invalidate();
            }
        });
        cancle.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @SuppressLint("ResourceAsColor")
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    cancle.setText("点击取消");
                    cancle.setTextColor(Color.WHITE);
                    Tools.shapeSolid(mContext, cancle, 0);
                    isCancleFocus = true;
                } else {
                    cancle.setText("暂不下载");
                    Tools.shapeSolid(mContext, cancle, 1);
                    cancle.setTextColor(Color.BLACK);
                    isCancleFocus = false;
                }
                cancle.invalidate();
            }
        });
        button.requestFocus();
        if (model.getForce().equals("1")) {
            //强制更新
            cancle.setVisibility(View.GONE);
            cancle.setOnClickListener(null);
        } else {
            cancle.setVisibility(View.VISIBLE);
            cancle.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    dismiss();
                }
            });
        }
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                PackageManager pm = mContext.getPackageManager();
                boolean permission = (PackageManager.PERMISSION_GRANTED ==
                        pm.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", mContext.getPackageName()));
                if (permission) {
                    //开始下载
                    cancle.setEnabled(false);
                    button.setEnabled(false);
                    button.setVisibility(View.GONE);
                    progressBar.setVisibility(View.VISIBLE);
                    download();
                } else {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && mContext instanceof Activity) {
                        Toast.makeText(mContext, "需要SD卡权限来下载新版本,请您赋予权限", Toast.LENGTH_LONG).show();
                        ((Activity) mContext).requestPermissions(new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 0);
                    }
                }
            }
        });
        progressBar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (progressBar.getState() == CustomProgressBar.STATE_DOWNLOAD_FINISH && !TextUtils.isEmpty(installUrl)) {
                    Tools.installApk(mContext, installUrl);
                }
            }
        });

        progressBar.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    Tools.shapeSolid(mContext, cancle, 0);
                } else {
                    Tools.shapeSolid(mContext, cancle, 1);
                }
            }
        });
    }


    private void download() {
        DownloadManager.getInstance().download(mContext, model.getUrl(), new IDownloadListener() {
            @Override
            public void onStart() {
                progressBar.setState(CustomProgressBar.STATE_DOWNLOADING);
            }

            @Override
            public void onSuccess(Object response, String url) {
                try {
                    progressBar.setState(CustomProgressBar.STATE_DOWNLOAD_FINISH);
                    progressBar.requestFocus();
                    cancle.setVisibility(View.GONE);
                    //下载成功
                    File file = (File) response;
                    installUrl = file.getAbsolutePath();
                    //apk文件获取包名
                    Tools.installApk(mContext, installUrl);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onError(Object e) {
                downLoadError((String) e);
            }

            @Override
            public void onFail(Object fail) {
                downLoadError((String) fail);
            }

            @Override
            public void onComplete() {

            }

            @SuppressLint("ResourceAsColor")
            @Override
            public void onLoadProgress(double size, double progress) {
                if (isShowing()) {
                    float state = (float) progress;
                    progressBar.setViewProgress(state);
                }
            }
        });
    }


    /**
     * 下载失败
     */
    private void downLoadError(String message) {
        Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
        cancle.setEnabled(true);
        button.setEnabled(true);
        button.setVisibility(View.VISIBLE);
        progressBar.setVisibility(View.GONE);
    }


    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        switch (keyCode) {
            case KeyEvent.KEYCODE_DPAD_DOWN:   //向下键
                /*    实际开发中有时候会触发两次，所以要判断一下按下时触发 ，松开按键时不触发
                 *    exp:KeyEvent.ACTION_UP
                 */
                if (event.getAction() == KeyEvent.ACTION_DOWN) {
                    if (isDownFocus && cancle.getVisibility() == View.VISIBLE) {
                        button.clearFocus();
                        cancle.requestFocus();
                    }
                }
                break;
            case KeyEvent.KEYCODE_DPAD_UP:   //向上键
                if (isCancleFocus && button.getVisibility() == View.VISIBLE) {
                    cancle.clearFocus();
                    progressBar.clearFocus();
                    view.clearFocus();
                    button.requestFocus();
                }
                break;
        }

        return super.onKeyDown(keyCode, event);

    }

}

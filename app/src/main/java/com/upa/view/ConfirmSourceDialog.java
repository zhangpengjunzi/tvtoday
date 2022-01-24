package com.upa.view;

import android.Manifest;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.Display;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;

import com.today.player.R;
import com.upa.DownloadManager;
import com.upa.UpdateModel;
import com.upa.im.IDownloadListener;
import com.upa.tool.Tools;

import java.io.File;

public class ConfirmSourceDialog extends Dialog {
    private Context mContext;
    private TextView source_confirm_button, source_cancle;
    private View view;
    private boolean isDownFocus, isCancleFocus = false;
    private ConfirmCLickListener confirmCLickListener;

    public ConfirmSourceDialog(Context context, ConfirmCLickListener lickListener) {
        super(context, R.style.YsDialog);
        mContext = context;
        confirmCLickListener = lickListener;
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.setGravity(Gravity.CENTER); // 此处可以设置dialog显示的位置为居中
        //   window.setWindowAnimations(R.style.bottom_menu_animation); // 添加动画效果
        view = LayoutInflater.from(mContext).inflate(R.layout.confirm_source_dialog, null);
        setContentView(view);
        initView(view);
        // 点击Dialog外部消失
        setCanceledOnTouchOutside(false);

        setOnDismissListener(new OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {

            }
        });
    }

    /**
     * 根据数据初始化Layout
     */
    private void initView(View view) {
        source_confirm_button = view.findViewById(R.id.source_confirm_button);
        source_cancle = view.findViewById(R.id.source_cancle);

        source_confirm_button.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    source_confirm_button.setTextColor(Color.WHITE);
                    Tools.shapeSolid(mContext, source_confirm_button, 0);
                    isDownFocus = true;
                } else {
                    Tools.shapeSolid(mContext, source_confirm_button, 1);
                    source_confirm_button.setTextColor(Color.BLACK);
                    isDownFocus = false;
                }
                source_confirm_button.invalidate();
            }
        });

        source_cancle.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @SuppressLint("ResourceAsColor")
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    source_cancle.setTextColor(Color.WHITE);
                    Tools.shapeSolid(mContext, source_cancle, 0);
                    isCancleFocus = true;
                } else {
                    Tools.shapeSolid(mContext, source_cancle, 1);
                    source_cancle.setTextColor(Color.BLACK);
                    isCancleFocus = false;
                }
                source_cancle.invalidate();
            }
        });

        source_cancle.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                if (confirmCLickListener != null) {
                    confirmCLickListener.cancelClick();
                }
            }
        });


        source_confirm_button.requestFocus();
        source_confirm_button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                //设置源
                if (confirmCLickListener != null) {
                    confirmCLickListener.confirmClick();
                }
            }
        });

    }


    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        switch (keyCode) {
            case KeyEvent.KEYCODE_DPAD_DOWN:   //向下键
                /*    实际开发中有时候会触发两次，所以要判断一下按下时触发 ，松开按键时不触发
                 *    exp:KeyEvent.ACTION_UP
                 */
                if (event.getAction() == KeyEvent.ACTION_DOWN) {
                    if (isDownFocus) {
                        source_confirm_button.clearFocus();
                        source_cancle.requestFocus();
                    }
                }
                break;
            case KeyEvent.KEYCODE_DPAD_UP:   //向上键
                if (isCancleFocus) {
                    source_cancle.clearFocus();
                    view.clearFocus();
                    source_confirm_button.requestFocus();
                }
                break;
        }

        return super.onKeyDown(keyCode, event);

    }

    public interface ConfirmCLickListener {
        void confirmClick();

        void cancelClick();
    }

}

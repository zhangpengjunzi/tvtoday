package com.upa.activation;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.Display;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.today.player.api.ApiConfig;
import com.video.dkplayer.R;
import com.upa.DownloadManager;
import com.upa.UpdateModel;
import com.upa.im.ActivationResult;
import com.upa.im.IDownloadListener;
import com.upa.tool.Tools;
import com.upa.view.CustomProgressBar;

import java.io.File;

public class ActivationView extends Dialog {

    private Context mContext;
    private TextView codeButton;
    private TextView cancel_button;
    private EditText tvCode;
    private View view;
    private boolean isEditFocus, isButtonFocus = false;
    private boolean isActive = false;
    private VcodeListener mListener;

    public ActivationView(Context context, VcodeListener listener) {
        super(context, R.style.YsDialog);
        mContext = context;
        mListener = listener;
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.setGravity(Gravity.CENTER); // 此处可以设置dialog显示的位置为居中
        //   window.setWindowAnimations(R.style.bottom_menu_animation); // 添加动画效果
        view = LayoutInflater.from(mContext).inflate(R.layout.activation_dialog, null);
        setContentView(view);
        initView(view);
        // 点击Dialog外部消失
        setCanceledOnTouchOutside(true);
    }

    /**
     * 根据数据初始化Layout
     */
    @SuppressLint("ClickableViewAccessibility")
    private void initView(View view) {
        tvCode = view.findViewById(R.id.activation_text);
        codeButton = view.findViewById(R.id.activation_button);
        cancel_button = view.findViewById(R.id.cancel_button);
        codeButton.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View view, boolean b) {
                if (b) {
                    codeButton.setTextColor(Color.WHITE);
                } else {
                    codeButton.setTextColor(mContext.getResources().getColor(R.color.color_FF5F00));
                }
            }
        });
        cancel_button.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View view, boolean b) {
                if (b) {
                    cancel_button.setTextColor(Color.WHITE);
                } else {
                    cancel_button.setTextColor(mContext.getResources().getColor(R.color.color_ccc));
                }
            }
        });
        tvCode.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @SuppressLint("ResourceAsColor")
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    Tools.editShapeSolid(mContext, tvCode, 0);
                    isEditFocus = true;
                } else {
                    Tools.editShapeSolid(mContext, tvCode, 1);
                    isEditFocus = false;
                }
                tvCode.setSelection(tvCode.getText().toString().length());
            }
        });
        tvCode.requestFocus();
        tvCode.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                    tvCode.requestFocus();
                    return true;
                }
                return false;
            }
        });

        codeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String text = tvCode.getText().toString().trim();
                if (text.length() == 0) {
                    Toast.makeText(mContext, "意见不能为空", Toast.LENGTH_SHORT).show();
                    return;
                }
                String code = ApiConfig.get().getVcode().get(0);
                //  code="00052078";
                if (text.equals(code)) {
                    mListener.success();
                } else {
                    mListener.fail();
                }
                dismiss();
            }
        });

        cancel_button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
            }
        });
    }


  /*  @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        switch (keyCode) {
            case KeyEvent.KEYCODE_DPAD_DOWN:   //向下键
                *//*    实际开发中有时候会触发两次，所以要判断一下按下时触发 ，松开按键时不触发
     *    exp:KeyEvent.ACTION_UP
     *//*
                if (event.getAction() == KeyEvent.ACTION_DOWN && isEditFocus) {
                    tvCode.clearFocus();
                    view.clearFocus();
                    codeButton.requestFocus();
                }

                break;
            case KeyEvent.KEYCODE_DPAD_UP:   //向上键
                if (event.getAction() == KeyEvent.ACTION_DOWN && isButtonFocus) {
                    codeButton.clearFocus();
                    view.clearFocus();
                    tvCode.requestFocus();
                }
                break;
            case KeyEvent.KEYCODE_BACK:

                break;
        }

        return super.onKeyDown(keyCode, event);
    }*/

    public interface VcodeListener {
        void success();

        void fail();
    }

    @Override
    public void show() {
        super.show();
        if (tvCode != null) {
            tvCode.setText("");
        }
    }
}

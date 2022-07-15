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
    private EditText tvCode;
    private View view;
    private boolean isEditFocus, isButtonFocus = false;
    private ProgressBar progressBar;
    private boolean isActive = false;

    public ActivationView(Context context) {
        super(context, R.style.YsDialog);
        mContext = context;
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
        setCanceledOnTouchOutside(false);

        setOnDismissListener(new OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                if (!isActive) {
                    Tools.exitApp(mContext);
                }
            }
        });
    }

    /**
     * 根据数据初始化Layout
     */
    @SuppressLint("ClickableViewAccessibility")
    private void initView(View view) {
        tvCode = view.findViewById(R.id.activation_text);
        codeButton = view.findViewById(R.id.activation_button);
        progressBar = view.findViewById(R.id.activation_bar);
        if (Tools.isTvOrPhone(mContext)) {
            codeButton.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    if (hasFocus) {
                        codeButton.setTextColor(Color.WHITE);
                        Tools.shapeSolid(mContext, codeButton, 0);
                        isButtonFocus = true;
                    } else {
                        Tools.shapeSolid(mContext, codeButton, 1);
                        codeButton.setTextColor(Color.BLACK);
                        isButtonFocus = false;
                    }
                    codeButton.invalidate();
                }
            });
        } else {
            codeButton.setTextColor(Color.WHITE);
            Tools.shapeSolid(mContext, codeButton, 0);
            codeButton.setFocusableInTouchMode(false);
        }
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


       /* codeButton.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if(event.getAction()==MotionEvent.ACTION_UP){
                    String text = tvCode.getText().toString().trim();
                    if (text.length() == 0) {
                        Toast.makeText(mContext, "激活码输入错误", Toast.LENGTH_SHORT).show();
                        return true;
                    }
                    codeButton.setEnabled(false);
                    //开始验证激活码
                    active(text);
                    codeButton.setText("");
                    progressBar.setVisibility(View.VISIBLE);
                }
                return false;
            }
        });*/

        codeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String text = tvCode.getText().toString().trim();
                if (text.length() == 0) {
                    Toast.makeText(mContext, "激活码输入错误", Toast.LENGTH_SHORT).show();
                    return;
                }
                codeButton.setEnabled(false);
                //开始验证激活码
                active(text);
                codeButton.setText("");
                progressBar.setVisibility(View.VISIBLE);
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
    }


    private void active(String code) {
        ActivationManager.getInstance().active(mContext, code, new ActivationResult() {
            @Override
            public void activeSuccess() {
                if (mContext != null) {
                    Toast.makeText(mContext, "激活成功", Toast.LENGTH_SHORT).show();
                    if (ActivationView.this != null && ActivationView.this.isShowing()) {
                        isActive = true;
                        dismiss();
                    }
                }
            }

            @Override
            public void activeError(String message) {
                if (mContext != null) {
                    Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
                    if (ActivationView.this != null && ActivationView.this.isShowing()) {
                        codeButton.setText("激活");
                        codeButton.setEnabled(true);
                        codeButton.requestFocus();
                        progressBar.setVisibility(View.GONE);
                    }
                }
            }
        });
    }

}

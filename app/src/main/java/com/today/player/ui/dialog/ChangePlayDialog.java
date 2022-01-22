package com.today.player.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.IdRes;

import com.orhanobut.hawk.Hawk;

import com.today.player.R;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.util.HawkConfig;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class ChangePlayDialog {
    private View rootView;
    private Dialog mDialog;
    private OnChangePlayListener playListener;

    public ChangePlayDialog() {

    }

    public ChangePlayDialog build(Context context) {
        rootView = LayoutInflater.from(context).inflate(R.layout.dialog_change_play, null);
        mDialog = new Dialog(context, R.style.CustomDialogStyle);
        mDialog.setCanceledOnTouchOutside(false);
        mDialog.setCancelable(true);
        mDialog.setContentView(rootView);
        init(context);
        return this;
    }

    private void init(Context context) {
        TextView tvIjk = findViewById(R.id.tvIjk);
        TextView tvExo = findViewById(R.id.tvExo);
        int playType = Hawk.get(HawkConfig.PLAY_TYPE, 1);
        if (playType == 1) {
            tvIjk.requestFocus();
            tvIjk.setTextColor(context.getResources().getColor(R.color.color_058AF4));
        } else {
            tvExo.requestFocus();
            tvExo.setTextColor(context.getResources().getColor(R.color.color_058AF4));
        }
        tvIjk.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FastClickCheckUtil.check(v);
                if (playType != 1 && playListener != null) {
                    Hawk.put(HawkConfig.PLAY_TYPE, 1);
                    playListener.onChange();
                }
                dismiss();
            }
        });
        tvExo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FastClickCheckUtil.check(v);
                if (playType != 2 && playListener != null) {
                    Hawk.put(HawkConfig.PLAY_TYPE, 2);
                    playListener.onChange();
                }
                dismiss();
            }
        });
    }

    public void show() {
        if (mDialog != null && !mDialog.isShowing()) {
            mDialog.show();
        }
    }

    public void dismiss() {
        if (mDialog != null && mDialog.isShowing()) {
            mDialog.dismiss();
        }
    }

    @SuppressWarnings("unchecked")
    private <T extends View> T findViewById(@IdRes int viewId) {
        View view = null;
        if (rootView != null) {
            view = rootView.findViewById(viewId);
        }
        return (T) view;
    }

    public ChangePlayDialog setOnChangePlayListener(OnChangePlayListener listener) {
        playListener = listener;
        return this;
    }

    public interface OnChangePlayListener {
        void onChange();
    }
}
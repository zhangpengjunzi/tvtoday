package com.upa.tool;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;


public class Ds {

    public Dialog b;

    @SuppressLint("ResourceType")
    public Ds a(Context context) {
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(0x7f0a0038, (ViewGroup) null);
        Dialog dialog = new Dialog(context, 0x7f0e00a9);
        this.b = dialog;
        this.b.setCanceledOnTouchOutside(true);
        this.b.setCancelable(true);
        this.b.setContentView(frameLayout);
        this.b.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                ((Activity) context).finish();
            }
        });
        try {
            this.b.getWindow().setLayout(-1, -1);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this;
    }


}

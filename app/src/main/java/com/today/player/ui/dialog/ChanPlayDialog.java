package com.today.player.ui.dialog;

import android.app.Dialog;
import android.view.View;

import androidx.annotation.IdRes;

public class ChanPlayDialog {
    public View a;
    public Dialog b;
    public a c;

    public interface a {
    }

    public void a() {
        Dialog dialog = this.b;
        if (dialog != null && dialog.isShowing()) {
            this.b.dismiss();
        }
    }

    public final <T extends View> T a(@IdRes int i) {
        View view = this.a;
        if (view != null) {
            return view.findViewById(i);
        }
        return null;
    }
}

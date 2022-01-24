package com.upa.activation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

/**
 * @desc 解决Android8.0 EditText获取焦点后，无法转换焦点问题
 */
@SuppressLint("AppCompatCustomView")
public class LQREditText extends EditText {
    public LQREditText(Context context) {
        super(context);
    }

    public LQREditText(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public LQREditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }


    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (isDirectKeyCode(keyCode)) {
            int direction = FOCUS_DOWN;
            switch (keyCode) {
                case KeyEvent.KEYCODE_DPAD_UP:
                    direction = FOCUS_UP;
                    break;
                case KeyEvent.KEYCODE_DPAD_DOWN:
                    direction = FOCUS_DOWN;
                    break;
                case KeyEvent.KEYCODE_DPAD_DOWN_LEFT:
                    direction = FOCUS_LEFT;
                    break;
                case KeyEvent.KEYCODE_DPAD_RIGHT:
                    direction = FOCUS_RIGHT;
                    break;
            }
            View nextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) getParent(), this, direction);
            if (nextFocus != null) {
                nextFocus.requestFocus();
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    private boolean isDirectKeyCode(int keyCode) {
        return keyCode == KeyEvent.KEYCODE_DPAD_UP
                || keyCode == KeyEvent.KEYCODE_DPAD_DOWN
                || keyCode == KeyEvent.KEYCODE_DPAD_LEFT
                || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT;
    }
}


package com.upa.source;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;


import com.upa.DownloadManager;
import com.upa.view.ConfirmSourceDialog;

import java.util.Timer;
import java.util.TimerTask;

/**
 * 提醒用户换源了
 */
public class HintSource {

    private int downLoadState;

    private ConfirmSourceDialog dialog;

    private Timer timer;

    public static HintSource getInstance() {
        return HintSource.HintSourceInit.init;
    }

    private static class HintSourceInit {
        public static final HintSource init = new HintSource();
    }


    private Context mContext;

    private static final String HINT_SOURCE_FILE_NAME = "sourcefile";
    private static final String HINT_SOURCE_KEY = "savesourcekey";


    public void setContext(Context context) {
        mContext = context;
    }

    public Context getmContext() {
        return mContext;
    }

    public void saveOldSource(String sourceKey) {
        PreferencesUtils.writeString(mContext, HINT_SOURCE_FILE_NAME, HINT_SOURCE_KEY, sourceKey);
    }


    public void notify(String nowKey, ConfirmSourceDialog.ConfirmCLickListener lickListener) {
        String oldKey = PreferencesUtils.getString(mContext, HINT_SOURCE_FILE_NAME, HINT_SOURCE_KEY, "");
        if (!TextUtils.isEmpty(nowKey) && !TextUtils.isEmpty(oldKey) && !TextUtils.equals(nowKey, oldKey)) {
            //第一次的源和现在的源不同
            execute(lickListener);
        }
    }


    public void setDownLoadState(int downLoadState) {
        this.downLoadState = downLoadState;
    }


    public void execute(ConfirmSourceDialog.ConfirmCLickListener lickListener) {
        timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                if (downLoadState == 1) {
                    release();
                    runMainDialog(lickListener);
                }
            }
        }, 1000, 3000);

        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                release();
            }
        }, 16000);
    }

    private void release() {
        if (timer != null) {
            timer.cancel();
            timer = null;
        }
    }

    private void runMainDialog(ConfirmSourceDialog.ConfirmCLickListener lickListener) {
        if (mContext instanceof Activity) {
            ((Activity) mContext).runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    //弹窗
                    if (dialog == null) {
                        dialog = new ConfirmSourceDialog(mContext, lickListener);
                    }
                    if (!dialog.isShowing()) {
                        dialog.show();
                    }
                }
            });
        }
    }
}

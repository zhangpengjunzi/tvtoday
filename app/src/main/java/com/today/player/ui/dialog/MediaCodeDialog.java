package com.today.player.ui.dialog;

import android.app.Dialog;
import android.view.View;

import com.orhanobut.hawk.Hawk;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.today.player.ui.adapter.MediaCodeAdapter;
import com.today.player.util.HawkConfig;

import java.util.LinkedHashMap;

public class MediaCodeDialog {
    public View a;
    public Dialog b;
    public TvRecyclerView c;
    public MediaCodeAdapter d;
    public a e;

    public interface a {
    }


    public static class pg {
        public String a;
        public LinkedHashMap<String, String> b;
        public boolean c;

        public void a(boolean z) {
            this.c = z;
            if (z) {
                Hawk.put(HawkConfig.MEDIA_CODEC, a);
            }
        }

    }

}

package com.today.player.util;

import android.content.Context;

public class SoSignUtils {
    static {
        System.loadLibrary("csign");
    }

    public  native String encodeInC(Context ctx, String time);

    public  native String decodeInC(String str);
}

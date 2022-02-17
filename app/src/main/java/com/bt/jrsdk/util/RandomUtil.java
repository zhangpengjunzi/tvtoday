package com.bt.jrsdk.util;

import java.util.Random;
import java.util.UUID;

public class RandomUtil {
    public static int getRandomNumber(int min, int max) {
        return (new Random()).nextInt((max - min) + 1) + min;
    }

    public static String getRandomString() {
        return UUID.randomUUID().toString();
    }
//
//    public static boolean inPercent(int min, int max) {
//        int reallyPercent = getRandomNumber(min, max);
//        int random = getRandomNumber(0, 10000);
//        long randomPerCent = random / 100;
//        LogUtil.d("Random", "really = " + reallyPercent + " ,random = " + randomPerCent);
//        return randomPerCent < reallyPercent;
//
//    }
//
//    public static boolean inPercent(int per) {
//        int random = getRandomNumber(0, 10000);
//        long randomPerCent = random / 100;
//        LogUtil.d("Random", "really = " + per + " ,random = " + randomPerCent);
//        return randomPerCent < per;
//    }
}

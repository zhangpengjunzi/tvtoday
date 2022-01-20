package com.today.player.dkplayer;

import com.google.android.exoplayer2.audio.DtsUtil;
import com.today.player.api.ApiConfig;
import com.today.player.bean.MovieSort;
import com.today.player.bean.PlayerModel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public class om {
    public static final List<String> video = new a().playList;


    public static class a {
        List<String> playList = new ArrayList<>();
        public a() {
            playList.add(".m3u8");
            playList.add(".mp4");
            playList.add(".flv");
            playList.add(".f4v");
            playList.add(".mpeg");
        }
    }

    public static List<MovieSort.SortData> a(String str, List<MovieSort.SortData> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        PlayerModel.SourcesDTO a2 = ApiConfig.get().getSource(str);
        HashMap<Integer, Integer> tidSort = a2.getTidSort();
        for (MovieSort.SortData next : list) {
            next.sort = next.id + 1000;
            if (tidSort != null && tidSort.containsKey(Integer.valueOf(next.id))) {
                next.sort = tidSort.get(Integer.valueOf(next.id)).intValue();
            }
            arrayList.add(next);
        }
        Collections.sort(arrayList);
        return arrayList;
    }



    public static boolean c(String str) {
        String lowerCase = str.toLowerCase();
        if (!lowerCase.contains("=http") && !lowerCase.contains("=https") && !lowerCase.contains("=https%3a%2f") && !lowerCase.contains("=http%3a%2f")) {
            for (String contains : video) {
                if (lowerCase.contains(contains)) {
                    return true;
                }
            }
        }
        return false;
    }


}

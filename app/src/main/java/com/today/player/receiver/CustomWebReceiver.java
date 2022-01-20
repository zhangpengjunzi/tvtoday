package com.today.player.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;
import com.today.player.cache.Local;
import com.today.player.cache.LocalLive;
import com.today.player.cache.LocalParse;
import com.today.player.cache.RoomDataManger;
import com.today.player.data.AppDataManager;

import java.util.ArrayList;
import java.util.List;

public class CustomWebReceiver extends BroadcastReceiver {
    public static String a = "android.content.movie.custom.web.Action";
    public static String b = "source";
    public static String c = "live";
    public static String d = "parse";
    public static List<a> e = new ArrayList();


    public interface a {
        void a(String str, Object obj);
    }


    @Override
    public void onReceive(Context context, Intent intent) {
        if (a.equals(intent.getAction()) && intent.getExtras() != null) {
            Object qgVar = null;
            String action = intent.getExtras().getString("action");
            if (action.equals(b)) {
                String string2 = intent.getExtras().getString("name");
                String string3 = intent.getExtras().getString("api");
                String string4 = intent.getExtras().getString("play");
                int i = intent.getExtras().getInt("type");
                for (PlayerModel.SourcesDTO key : ApiConfig.get().getSourceBeanList()) {
                    if (key.getKey().equals(string2)) {
                        Toast.makeText(context, "数据源【" + string2 + "】已存在!", Toast.LENGTH_LONG).show();
                        return;
                    }
                }
                Local ghVar = new Local();
                ghVar.name = string2;
                ghVar.api = string3;
                ghVar.type = i;
                ghVar.playerUrl = string4;
                RoomDataManger.insertLocalSource(ghVar);

                PlayerModel.SourcesDTO ugVar = new PlayerModel.SourcesDTO();
                ugVar.initFromLocal(ghVar);
                ApiConfig.get().getSourceBeanList().add(ugVar);
                qgVar = ugVar;
            } else if (action.equals(d)) {
                String string5 = intent.getExtras().getString("name");
                String string6 = intent.getExtras().getString("url");
                for (PlayerModel.ParseUrlDTO parseName : ApiConfig.get().getPraseBeanList()) {
                    if (parseName.getParseName().equals(string5)) {
                        Toast.makeText(context, "解析【" + string5 + "】已存在!", Toast.LENGTH_LONG).show();
                        return;
                    }
                }
                LocalParse dhVar = new LocalParse();
                dhVar.name = string5;
                dhVar.url = string6;
                RoomDataManger.insertLocalParse(dhVar);
                PlayerModel.ParseUrlDTO tgVar = new PlayerModel.ParseUrlDTO();
                tgVar.initFromLocal(dhVar);
                ApiConfig.get().getPraseBeanList().add(tgVar);
                qgVar = tgVar;
            } else if (action.equals(c)) {
                String string7 = intent.getExtras().getString("name");
                String string8 = intent.getExtras().getString("url");
                for (PlayerModel.LiveDTO channelName : ApiConfig.get().getChannelList()) {
                    if (channelName.getChannelName().equals(string7)) {
                        Toast.makeText(context, "直播【" + string7 + "】已存在!", Toast.LENGTH_LONG).show();
                        return;
                    }
                }
                LocalLive ahVar = new LocalLive();
                ahVar.name = string7;
                ahVar.url = string8;
                RoomDataManger.insertLocalLive(ahVar);
                PlayerModel.LiveDTO qgVar2 = new PlayerModel.LiveDTO();
                qgVar2.initFromLocal(ahVar);
                ApiConfig.get().getChannelList().add(qgVar2);
                qgVar = qgVar2;
            }
            List<a> list = e;
            if (list != null) {
                for (a a2 : list) {
                    a2.a(action, qgVar);
                }
            }
        }
    }


}

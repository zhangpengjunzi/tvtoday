package com.upa;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.widget.Toast;

import com.tencent.bugly.Bugly;
import com.tencent.bugly.beta.Beta;
import com.today.player.event.TopStateEvent;
import com.today.player.report.AliReportManager;
import com.today.player.util.ChannelUtil;
import com.upa.activation.ActivationManager;
import com.upa.http.HttpRequest;
import com.upa.im.IDownloadListener;
import com.upa.im.YsRequestListener;
import com.upa.receive.AppInstallReceiver;
import com.upa.source.HintSource;
import com.upa.view.YsUpdateView;

import org.greenrobot.eventbus.EventBus;

import java.util.ArrayList;
import java.util.List;

public class DownloadManager {

    private YsUpdateView view;

    private static AppInstallReceiver receive;

    private String srcName;

    private String currentPlayerUrl;

    private String codeUrl;

    private String playKey;

    private String playFlag;

    private List<String> ads = new ArrayList<>();

    private String store = "0";

    private String surl;


    public boolean getStore() {
        if (store.equals("1")) {
            return true;
        }
        return false;
    }

    public void setStore(String store) {
        this.store = store;
    }

    public String getSurl() {
        return surl;
    }

    public void setSurl(String surl) {
        this.surl = surl;
    }

    public static DownloadManager getInstance() {
        return DownLoadInit.init;
    }

    private static class DownLoadInit {
        public static final DownloadManager init = new DownloadManager();
    }

    public void update(Context context, int type) {
        registerAppInstall(context);
        HintSource.getInstance().setContext(context);
        //请求数据,获取最新版本
        HttpRequest.getInstance().httpByteAsyn(context, Config.DOWNLOAD_URL, type, new YsRequestListener() {
            @Override
            public void success(UpdateModel model) {
                //弹出Dialog
                if (model != null && context != null) {
                    if (view == null) {
                        view = new YsUpdateView(context, model);
                    }
                    if (!view.isShowing()) {
                        view.show();
                    }
                }
            }

            @Override
            public void error(String message) {
            }

            @Override
            public void keep() {
                HintSource.getInstance().setDownLoadState(1);
                Toast.makeText(context, "已是最新版本", Toast.LENGTH_LONG).show();
                //弹窗
                ActivationManager.getInstance().isActivation(context);
                //加载数据
                EventBus.getDefault().post(new TopStateEvent(TopStateEvent.REFRESH_LOAD_SOURCE));
            }
        });
    }

    public void download(Context context, String url, IDownloadListener downloadListener) {
        HttpRequest.getInstance().saveApkFromHttps(context, url, downloadListener);
    }


    private void registerAppInstall(Context context) {
        try {
            receive = new AppInstallReceiver();
            IntentFilter mFilter = new IntentFilter();
            mFilter.addAction(Intent.ACTION_PACKAGE_ADDED);
            mFilter.addAction(Intent.ACTION_PACKAGE_REMOVED);
            mFilter.addAction(Intent.ACTION_PACKAGE_REPLACED);
            mFilter.addDataScheme("package");
            context.registerReceiver(receive, mFilter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public String getSrcName() {
        return srcName;
    }

    public void setSrcName(String srcName) {
        this.srcName = srcName;
    }

    public String getCurrentPlayerUrl() {
        return currentPlayerUrl;
    }

    public void setCurrentPlayerUrl(String currentPlayerUrl) {
        this.currentPlayerUrl = currentPlayerUrl;
    }

    public String getCodeUrl() {
        return codeUrl;
    }

    public void setCodeUrl(String codeUrl) {
        this.codeUrl = codeUrl;
    }

    public List<String> getAds() {
        return ads;
    }

    public void setAds(List<String> ads) {
        this.ads = ads;
    }

    public String getPlay() {
        return playKey;
    }

    public void setPlay(String play) {
        this.playKey = play;
    }

    public String getPlayFlag() {
        return playFlag;
    }

    public void setPlayFlag(String playFlag) {
        this.playFlag = playFlag;
    }
}

package com.bt.jrsdk.ads;

import android.app.Activity;
import android.text.TextUtils;

import com.bt.jrsdk.activity.InteractionAdActivity;
import com.bt.jrsdk.bean.InteractionAdInfo;
import com.bt.jrsdk.bean.SplashAdInfo;
import com.bt.jrsdk.config.AdType;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.httplib.HttpManager;
import com.bt.jrsdk.httplib.RequestClient;
import com.bt.jrsdk.httplib.adapter.ResponseStringAdapter;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.httplib.intercepter.HttpIntercepter;
import com.bt.jrsdk.listener.InteractionAdListener;
import com.bt.jrsdk.listener.PicDownloadListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.manager.AdStartManager;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.NetUtil;
import com.upa.DownloadManager;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class InteractionAd extends BaseAd {

    private InteractionAdListener listener;
    private InteractionAdInfo adInfo;

    public InteractionAd(Activity activity, String pid) {
        super(activity, pid);
    }


    @Override
    protected void loadCurrentAd() {
        String host = DownloadManager.getInstance().getBackup();
        if (getActivity() == null || TextUtils.isEmpty(host)) {
            listener.onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
            listener.onNoAd();
            listener.onFinish();
            return;
        }
        Map<String, Object> params = new HashMap<>();
        params.put("ad_type", AdType.AD_INTERACTION);
        params.put("uid", AdStartManager.uid);
        params.put("pid", pid);
        RequestClient request = new RequestClient.Builder()
                .setHost(host)
                .setPath("")
                .setMethod(HttpMethod.GET)
                .setParams(params)
                .setIntercepter(new HttpIntercepter())
                .setAdapter(new ResponseStringAdapter())
                .setCallback(new ResponseCallback<String>() {
                    @Override
                    public void success(String result) {
                        LogUtil.d("NetUtil", "suc " + result);

                        try {
                            JSONObject resultJson = new JSONObject(result);
                            int errCode = resultJson.optInt("error_code");
                            if (errCode == 0) {
                                JSONObject adResult = resultJson.optJSONObject("result");
                                String picUrl = adResult.optString("ads_cover");
                                int countDown = adResult.optInt("countdown");
                                String webUrl = adResult.optString("ads_url");
                                String aliYunUrl = adResult.optString("log_report_url");
                                getAdInfo(picUrl, countDown, webUrl, aliYunUrl);
                            } else {
                                listener.onError("result code !0", Config.CODE_AD_REQUEST_ERROR);
                                listener.onNoAd();
                                listener.onFinish();
                            }


                        } catch (JSONException e) {
                            e.printStackTrace();
                            listener.onError(e.getMessage(), Config.CODE_AD_REQUEST_ERROR);
                            listener.onNoAd();
                            listener.onFinish();
                        }
                    }

                    @Override
                    public void fail(String error) {
                        LogUtil.d("NetUtil", error);
                        listener.onError("result: " + error, Config.CODE_AD_REQUEST_ERROR);
                        listener.onNoAd();
                        listener.onFinish();
                    }

                    @Override
                    public void complete() {

                    }
                }).apply();
        HttpManager.getInstance().doRequest(request);
    }

    private void getAdInfo(String picUrl, int countDown, String webUrl, String aliYunUrl) {
        NetUtil.getInstance().setAliUrl(aliYunUrl);
        reportLoad(AdConfig.AD_TYPE_FULL);

        downLoadPic(picUrl, new PicDownloadListener() {
            @Override
            public void suc(byte[] pic) {
                adInfo = new InteractionAdInfo();
                adInfo.setPic(pic);
                adInfo.setReqId(requestId);
                adInfo.setWebUrl(webUrl);

                AdObserver.getInstance().registerInteractionAdInfo(pid, adInfo);
                listener.onLoaded();
            }

            @Override
            public void fail(String error) {
                listener.onError(error, Config.CODE_AD_REQUEST_ERROR);
                listener.onNoAd();
                listener.onFinish();
            }
        });
    }

    @Override
    public void showAd() {
        if (getActivity() != null) {
            go2AdActivity(InteractionAdActivity.class);
        } else {
            listener.onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
            listener.onNoAd();
            listener.onFinish();
        }
    }


    public void setInteractionAdListener(InteractionAdListener listener) {
        this.listener = listener;
        AdListenerManager.getInstance().registerInteractionListener(pid, this.listener);
    }

    @Override
    protected void recycleAdAndListener() {
        AdListenerManager.getInstance().recycleInteractionListener(pid);
        AdObserver.getInstance().recycleInteraction(pid);
    }
}

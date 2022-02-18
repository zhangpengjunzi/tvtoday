package com.bt.jrsdk.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;

import com.bt.jrsdk.activity.SplashAdActivity;
import com.bt.jrsdk.activity.VideoFullActivity;
import com.bt.jrsdk.bean.SplashAdInfo;
import com.bt.jrsdk.config.AdType;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.httplib.HttpManager;
import com.bt.jrsdk.httplib.RequestClient;
import com.bt.jrsdk.httplib.adapter.ResponseStringAdapter;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.httplib.intercepter.HttpIntercepter;
import com.bt.jrsdk.listener.PicDownloadListener;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.manager.AdStartManager;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.NetUtil;
import com.bt.jrsdk.util.Utils;
import com.today.player.base.App;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class SplashAd extends BaseAd {
    private SplashAdListener listener;
    private SplashAdInfo adInfo;
    private String ad_type;

    public SplashAd(Activity activity, String pid, String ad_type) {
        super(activity, pid);
        this.ad_type = ad_type;
    }

    @Override
    protected void loadCurrentAd() {
        if (getActivity() == null) {
            listener.onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
            return;
        }
        // https://api.16888.one/getAds
        Map<String, Object> params = new HashMap<>();
        params.put("ad_type", ad_type);
        params.put("device_type", Utils.getDeviceType());
        params.put("uid", AdStartManager.uid);
        params.put("package", getActivity().getPackageName());
        params.put("pid", pid);
        RequestClient request = new RequestClient.Builder()
                .setHost(Config.AD_HOST)
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
                                int isVideo = adResult.optInt("is_video");
                                ads_id = adResult.optInt("ads_id");
                                String picUrl = adResult.optString("ads_cover");
                                int countDown = adResult.optInt("countdown");
                                String webUrl = adResult.optString("ads_url");
                                String aliYunUrl = adResult.optString("log_report_url");
                                String videoUrl = adResult.optString("ads_material");
                                getAdInfo(picUrl, countDown, webUrl, aliYunUrl, isVideo, videoUrl, ads_id);
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

    private void getAdInfo(String picUrl, int countDown, String webUrl, String aliYunUrl, int isVideo, String videoUrl, int ads_id) {
        NetUtil.getInstance().setAliUrl(aliYunUrl);
        reportLoad(ad_type);

        downLoadPic(picUrl, new PicDownloadListener() {
            @Override
            public void suc(byte[] pic) {
                adInfo = new SplashAdInfo();
                adInfo.setPic(pic);
                adInfo.setIsVideo(isVideo);
                adInfo.setReqId(requestId);
                adInfo.setCountDown(countDown);
                adInfo.setWebUrl(webUrl);
                adInfo.ads_id = ads_id;
                if (!TextUtils.isEmpty(videoUrl)) {
                    adInfo.setVideoUrl(videoUrl);
                }
                AdObserver.getInstance().registerSplashAdInfo(pid, adInfo);
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
        if (getActivity() != null && adInfo != null) {
            if (adInfo.getIsVideo() == 0) {
                go2AdActivity(SplashAdActivity.class);
            } else {
                go2AdActivity(VideoFullActivity.class);
            }
        } else {
            listener.onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
            listener.onNoAd();
            listener.onFinish();
        }
    }

    public void setSplashListener(SplashAdListener listener) {
        this.listener = listener;
        AdListenerManager.getInstance().registerSplashListener(pid, this.listener);
    }

    @Override
    protected void recycleAdAndListener() {
        AdListenerManager.getInstance().recycleSplashListener(pid);
        AdObserver.getInstance().recycleSplash(pid);
    }
}

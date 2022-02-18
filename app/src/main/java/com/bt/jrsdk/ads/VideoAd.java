package com.bt.jrsdk.ads;

import android.app.Activity;

import com.bt.jrsdk.activity.InteractionAdActivity;
import com.bt.jrsdk.activity.SplashAdActivity;
import com.bt.jrsdk.activity.VideoActivity;
import com.bt.jrsdk.activity.VideoFullActivity;
import com.bt.jrsdk.bean.InteractionAdInfo;
import com.bt.jrsdk.bean.VideoAdInfo;
import com.bt.jrsdk.config.AdType;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.httplib.HttpManager;
import com.bt.jrsdk.httplib.RequestClient;
import com.bt.jrsdk.httplib.adapter.ResponseStringAdapter;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.httplib.intercepter.HttpIntercepter;
import com.bt.jrsdk.listener.PicDownloadListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.manager.AdStartManager;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.NetUtil;
import com.bt.jrsdk.util.Utils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class VideoAd extends BaseAd {

    private VideoAdListener listener;
    private VideoAdInfo adInfo;

    public VideoAd(Activity activity, String pid) {
        super(activity, pid);
    }


    @Override
    protected void loadCurrentAd() {
        if (getActivity() == null) {
            listener.onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
            return;
        }
        Map<String, Object> params = new HashMap<>();
        params.put("ad_type", AdType.AD_INTERACTION);
        params.put("uid", AdStartManager.uid);
        params.put("device_type", Utils.getDeviceType());
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
                                String webUrl = adResult.optString("ads_url");
                                String aliYunUrl = adResult.optString("log_report_url");
                                String mp4 = adResult.optString("ads_material");

                                getAdInfo(picUrl, mp4, webUrl, aliYunUrl, isVideo, ads_id);
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

    private void getAdInfo(String picUrl, String mp4, String webUrl, String aliYunUrl, int isVideo, int ads_id) {
        NetUtil.getInstance().setAliUrl(aliYunUrl);
        reportLoad(AdType.AD_INTERACTION);

        downLoadPic(picUrl, new PicDownloadListener() {
            @Override
            public void suc(byte[] pic) {
                adInfo = new VideoAdInfo();
                adInfo.setPic(pic);
                adInfo.setReqId(requestId);
                adInfo.setWebUrl(webUrl);
                adInfo.setVideoUrl(mp4);
                adInfo.setIsVideo(isVideo);
                adInfo.ads_id = ads_id;
                AdObserver.getInstance().registerVideoAdInfo(pid, adInfo);
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
                go2AdActivity(InteractionAdActivity.class);
            } else {
                go2AdActivity(VideoActivity.class);
            }
        } else {
            listener.onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
            listener.onNoAd();
            listener.onFinish();
        }
    }

    public void setVideoListener(VideoAdListener listener) {
        this.listener = listener;
        AdListenerManager.getInstance().registerVideoListener(pid, this.listener);
    }

    @Override
    protected void recycleAdAndListener() {
        AdListenerManager.getInstance().recycleVideoListener(pid);
        AdObserver.getInstance().recycleVideo(pid);
    }
}

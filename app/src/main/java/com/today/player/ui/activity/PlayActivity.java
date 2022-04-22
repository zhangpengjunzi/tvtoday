package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Toast;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.lzy.okgo.utils.SaveManager;
import com.today.player.R;
import com.today.player.ad.VideoPlayAd;
import com.today.player.ad.VideoSplashAd;
import com.today.player.api.ApiConfig;
import com.today.player.base.App;
import com.today.player.base.BaseActivity;
import com.today.player.bean.VodInfo;
import com.today.player.dkplayer.SimonVideoController;
import com.today.player.dkplayer.SimonVodControlView;
import com.today.player.dkplayer.VideoAnalysis;
import com.today.player.event.RefreshEvent;
import com.today.player.ui.weight.GestureView;
import com.today.player.util.PlayUtils;
import com.upa.DownloadManager;
import com.upa.http.HttpRequest;
import com.upa.http.SSLSocketFactoryCompat;

import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import xyz.doikki.videoplayer.player.VideoView;


/**
 * @author pj567
 * @date :2020/12/22
 * @description:
 */
public class PlayActivity extends BaseActivity {
    private VideoView mVideoView;
    //private VodPlayView mVideoView;
    private SimonVideoController mController;
    private String playUrl;
    private VodInfo mVodInfo;
    private String sourceKey;
    private VideoAnalysis videoAnalysis;
    public VideoPlayAd playAd;
    private VideoSplashAd pauseAd;
    private boolean isShow = false;
    private String basePlb = "plb";

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_play;
    }

    @Override
    protected void init() {
        initView();
        initData();
    }

    public boolean isPlaying() {
        if (mVideoView != null) {
            return mVideoView.isPlaying();
        }
        return false;
    }

    private void loadVideoAd() {
        VideoAdListener adListener = new VideoAdListener() {
            @Override
            public void onLoaded() {
                if (playAd != null) {
                    playAd.setReady(true);
                    playAd.showAd();
                }
            }

            @Override
            public void onShow() {
                if (playAd != null) {
                    if (!playAd.isEnd) {
                        AdWeightManager.getInstance().addPauseSize();
                        playAd.isEnd = false;
                    }
                    playAd.setReady(false);
                    isShow = true;
                }
            }

            @Override
            public void onClick() {

            }

            @Override
            public void onFinish() {
                if (playAd != null) {
                    playAd.recycler();
                }
            }

            @Override
            public void onError(String s, int i) {

            }

            @Override
            public void onNoAd() {

            }

            @Override
            public void onClose() {
            }
        };
        SplashAdListener splashAdListener = new SplashAdListener() {
            @Override
            public void onLoaded() {
                if (pauseAd != null) {
                    pauseAd.setReady(true);
                    pauseAd.showAd();
                }
            }

            @Override
            public void onShow() {
                if (pauseAd != null) {
                    showSuccess();
                    if (!pauseAd.isEnd) {
                        AdWeightManager.getInstance().addRewardSize();
                        pauseAd.isEnd = false;
                    }
                    //AdWeightManager.getInstance().splashImageCountAdd();
                    AdWeightManager.getInstance().setPlayAd(false);
                    pauseAd.setReady(false);
                }
            }

            @Override
            public void onClick() {

            }

            @Override
            public void onFinish() {
                if (pauseAd != null && !isFinishing()) {
                    pauseAd.recycler();
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            showSuccess();
                            playSet();
                        }
                    });
                }
            }

            @Override
            public void onError(String s, int i) {
            }

            @Override
            public void onNoAd() {
            }


            @Override
            public void onClose() {

            }
        };
        playAd = new VideoPlayAd(this, "interaction", adListener);
        pauseAd = new VideoSplashAd(this, "fullvideo", "3", splashAdListener);
        pauseAd.loadAd(getContent());
    }

    public String getContent() {
        if (mVodInfo != null) {
            StringBuilder sb = new StringBuilder(mVodInfo.name);
            try {
                if (mVodInfo.fromList != null) {
                    sb.append(mVodInfo.fromList.get(mVodInfo.playFlag));
                }
                sb.append((mVodInfo.playIndex + 1) + "集");
            } catch (Exception e) {

            }
            return sb.toString();
        }
        return "";
    }

    private void initView() {
        mVideoView = findViewById(R.id.mVideoView);
        PlayUtils.a(mVideoView);
        mController = new SimonVideoController(this);
        mController.setListener(new SimonVideoController.OnPlayStateChangeListener() {
            @Override
            public void playStateChanged(int state) {
                switch (state) {
                    case VideoView.STATE_ERROR:
                        Toast.makeText(mContext, "播放错误", Toast.LENGTH_SHORT).show();
                        finish();
                        f();
                        break;
                    case VideoView.STATE_PLAYBACK_COMPLETED:
                        next();
                        break;
                    case VideoView.STATE_PLAYING:
                        //播放视频
                        AdWeightManager.getInstance().setPlayAd(true);
                        break;
                }
            }
        });
        mController.addControlComponent(new GestureView(this));
        SimonVodControlView simonVodControlView = new SimonVodControlView(this);
        simonVodControlView.setVodControlListener(new SimonVodControlView.a() {
            @Override
            public void pre() {
                PlayActivity.this.pre();
            }

            @Override
            public void next() {
                PlayActivity.this.next();
            }
        });
        mController.addControlComponent(simonVodControlView);
        mController.setCanChangePosition(true);
        mController.setEnableInNormal(true);
        mController.setGestureEnabled(true);
        //mVideoView.startFullScreen();
        mVideoView.setVideoController(mController);
        mVideoView.setScreenScaleType(VideoView.SCREEN_SCALE_DEFAULT);
        setLoadSir(mVideoView);
    }

    private void next() {
        if (mVodInfo != null && mVodInfo.seriesMap != null) {
            if ((mVodInfo.playIndex + 1) >= mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).size()) {
                Toast.makeText(mContext, "已经是最后1集", Toast.LENGTH_SHORT).show();
            } else {
                mVodInfo.playIndex++;
                if (pauseAd != null) {
                    pauseAd.loadAd(getContent());
                }
            }
        }
    }

    private void pre() {
        if (mVodInfo != null && mVodInfo.seriesMap != null) {
            if ((mVodInfo.playIndex - 1) < 0) {
                Toast.makeText(mContext, "已经是第1集", Toast.LENGTH_SHORT).show();
            } else {
                mVodInfo.playIndex--;
                if (pauseAd != null) {
                    pauseAd.loadAd(getContent());
                }
            }
        }
    }

    private void initData() {
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            Bundle bundle = intent.getExtras();
            mVodInfo = (VodInfo) bundle.getSerializable("VodInfo");
            sourceKey = bundle.getString("sourceKey");
            DownloadManager.getInstance().setPlay(sourceKey);
            if (mVodInfo != null && mVodInfo.seriesMap != null) {
                if (AdWeightManager.getInstance().isPlayAd()) {
                    showLoading();
                    loadVideoAd();
                } else {
                    showSuccess();
                    playSet();
                }
            }
        }
    }

    private void playSet() {
        mVideoView.release();
        isShow = false;
        if (mController != null) {
            mController.cancelPause();
        }
        EventBus.getDefault().post(new RefreshEvent(RefreshEvent.TYPE_REFRESH, mVodInfo.playIndex));
        playUrl = mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).url;
        DownloadManager.getInstance().setPlayFlag(mVodInfo.fromList.get(mVodInfo.playFlag).name);
        StringBuilder sb = new StringBuilder();
        sb.append(mVodInfo.name);
        sb.append(" ");
        sb.append(mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).name);
        mController.a(sb.toString());
        f();
        if (videoAnalysis == null) {
            videoAnalysis = new VideoAnalysis();
        }
        videoAnalysis.a(this, new a());
        Dialog dialog = videoAnalysis.b;
        if (dialog != null && !dialog.isShowing()) {
            dialog.show();
        }
        String srcName = DownloadManager.getInstance().getSrcName();
        if (ApiConfig.get().getSource(sourceKey) == null) {
            Toast.makeText(this, "播放错误", Toast.LENGTH_SHORT).show();
            finish();
            return;
        }
        String playerUrl = ApiConfig.get().getSource(sourceKey).getPlayerUrl();
        if ((!TextUtils.isEmpty(playUrl) && !TextUtils.isEmpty(srcName) && mVodInfo.sourceKey.equals(srcName)) || (!TextUtils.isEmpty(playerUrl) && playerUrl.contains(basePlb))) {
            DownloadManager.getInstance().setCurrentPlayerUrl(playUrl);
            if (playerUrl.contains(basePlb) && playUrl.endsWith("m3u8")) {
                PlayStart playStart = new PlayStart();
                playStart.a(playUrl, null);
            } else {
                setUrl(playerUrl);
            }
            return;
        }
        videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new PlayStart());
    }

    public void f() {
        if (videoAnalysis != null) {
            try {
                Dialog dialog = videoAnalysis.b;
                if (dialog != null && dialog.isShowing()) {
                    videoAnalysis.b.dismiss();
                    videoAnalysis.b = null;
                }
                videoAnalysis = null;
            } catch (Throwable th) {
            }
        }
    }


    public class a implements VideoAnalysis.j {
        public a() {
        }

        @Override
        public void finish() {
            PlayActivity.this.f();
            PlayActivity.this.finish();
        }
    }


    public class PlayStart implements VideoAnalysis.play {
        public PlayStart() {
        }

        public void a(String str, Map<String, String> map) {
            if (mVideoView != null) {
                mVideoView.release();
                if (map != null) {
                    mVideoView.setUrl(str, map);
                } else {
                    mVideoView.setUrl(str);
                }
                mVideoView.start();
            }
            f();
        }

        public void a() {
            PlayActivity.this.finish();
        }
    }


    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return super.onKeyDown(keyCode, event);
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mVideoView != null && !isShow) {
            mVideoView.resume();
            if (mController != null) {
                mController.cancelPause();
            }
        }
        isShow = false;
    }


    @Override
    protected void onPause() {
        super.onPause();
        if (mVideoView != null) {
            mVideoView.pause();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mVideoView != null) {
            mVideoView.release();
            mVideoView = null;
        }
        if (playAd != null) {
            playAd.recycler();
            playAd = null;
        }
        if (pauseAd != null) {
            pauseAd.recycler();
            pauseAd = null;
        }
    }


    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        if (mController.a()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int i = 1;
        if (action == 0) {
            if (keyCode == 22 || keyCode == 21) {
                if (keyCode != 22) {
                    i = -1;
                }
                mController.a(i);
            } else if (keyCode == 23 || keyCode == 85 || keyCode == 7 || keyCode == KeyEvent.KEYCODE_ENTER) {
                if (mVideoView.isPlaying() && playAd != null) {
                    playAd.loadAd(getContent());
                }
                mController.d();
            } else if (keyCode == 19) {
                mController.b();
            } else if (keyCode == 20) {
                mController.b();
            }
        } else if (action == 1 && (keyCode == 22 || keyCode == 21)) {
            mController.c();
        }
        return super.dispatchKeyEvent(keyEvent);
    }


    public void setUrl(String playerUrl) {
        HttpRequest.getInstance().threadPoolExecutor.execute(new Runnable() {
            public void run() {
                boolean isPlay = false;
                try {
                    List<String> ads = null;
                    if (playerUrl.contains(basePlb)) {
                        ads = ApiConfig.get().getPlbList(playerUrl);
                    } else {
                        ads = ApiConfig.get().getAdsList();
                    }
                    if (ads != null && ads.size() > 0) {
                        for (int i = 0; i < ads.size(); i++) {
                            BufferedReader reader;
                            StringBuffer response;
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(ads.get(i) + playUrl).openConnection();
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setDoInput(true);
                            String key = SaveManager.getInstance().getPlayKey(App.getInstance());
                            if (DownloadManager.getInstance().getSrcName().equals(sourceKey)) {
                                httpURLConnection.setRequestProperty("sign", key);
                            }
                            httpURLConnection.setRequestProperty("Content-Type", "application/json");
                            httpURLConnection.setUseCaches(false);
                            httpURLConnection.setInstanceFollowRedirects(true);
                            httpURLConnection.setConnectTimeout(30 * 1000);//设置连接主机超时（单位：毫秒）
                            httpURLConnection.setReadTimeout(30 * 1000);//设置从主机读取数据超时（单位：毫秒）
                            if (httpURLConnection instanceof HttpsURLConnection) {
                                X509TrustManager r3 = new X509TrustManager() {
                                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                                    }

                                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                                    }

                                    public X509Certificate[] getAcceptedIssuers() {
                                        return new X509Certificate[0];
                                    }
                                };
                                if (Build.VERSION.SDK_INT < 21) {
                                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(new SSLSocketFactoryCompat(r3));
                                } else {
                                    SSLContext instance = SSLContext.getInstance("SSL");
                                    instance.init((KeyManager[]) null, new TrustManager[]{r3}, new SecureRandom());
                                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(instance.getSocketFactory());
                                }
                            }
                            int code = httpURLConnection.getResponseCode();
                            if (code == 200) {
                                //对outputStream的写操作，又必须要在inputStream的读操作之前
                                InputStream inputStream = httpURLConnection.getInputStream();
                                //读取响应
                                reader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                                String lines;
                                response = new StringBuffer("");
                                while ((lines = reader.readLine()) != null) {
                                    response.append(lines);
                                    response.append("\r\n");
                                }
                                if (!TextUtils.isEmpty(response)) {
                                    String text = response.toString();
                                    if (!playerUrl.contains(basePlb)) {
                                        text = SaveManager.getInstance().getDecodeKey(text);
                                    }
                                    if (!TextUtils.isEmpty(text)) {
                                        JSONObject jSONObject = new JSONObject(text);
                                        if (jSONObject.optInt("code") == 200) {
                                            isPlay = true;
                                            playUrl = jSONObject.optString("url", "");
                                            String from_url = jSONObject.optString("From_Url", "");
                                            if (!TextUtils.isEmpty(from_url)) {
                                                DownloadManager.getInstance().setCurrentPlayerUrl(from_url);
                                            }
                                            PlayActivity.this.runOnUiThread(new Runnable() {
                                                public void run() {
                                                    if (playerUrl.contains(basePlb)) {
                                                        PlayStart playStart = new PlayStart();
                                                        playStart.a(playUrl, null);
                                                    } else {
                                                        if (videoAnalysis != null) {
                                                            videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new PlayStart());
                                                        }
                                                    }
                                                }
                                            });
                                            break;
                                        }
                                    }
                                }
                                inputStream.close();
                                reader.close();
                            }
                        }
                    }
                } catch (Exception unused) {
                    unused.printStackTrace();
                }

                if (!isPlay) {
                    PlayActivity.this.runOnUiThread(new Runnable() {
                        public void run() {
                            if (videoAnalysis != null) {
                                videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new PlayStart());
                            }
                        }
                    });
                }
            }
        });
    }


    public void onBackPressed() {
        if (mController.a()) {
            mController.b();
        } else {
            super.onBackPressed();
        }
    }

}
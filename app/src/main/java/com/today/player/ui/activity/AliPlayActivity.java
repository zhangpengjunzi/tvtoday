package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;

import com.aliyun.player.IPlayer;
import com.aliyun.player.alivcplayerexpand.theme.Theme;
import com.aliyun.player.alivcplayerexpand.widget.AliyunVodPlayerView;
import com.aliyun.player.aliyunplayerbase.util.AliyunScreenMode;
import com.aliyun.player.source.UrlSource;
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
import com.today.player.dkplayer.VideoAnalysis;
import com.today.player.event.RefreshEvent;
import com.today.player.util.ProgressManagerImpl;
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

public class AliPlayActivity extends BaseActivity {

    private static final String TAG = AliPlayActivity.class.getSimpleName();
    private AliyunVodPlayerView mVideoView;
    private VideoAnalysis videoAnalysis;
    private VodInfo mVodInfo;
    private String sourceKey;
    public VideoPlayAd playAd;
    private VideoSplashAd pauseAd;
    private String basePlb = "plb";
    private String playUrl;
    private boolean isShow = false;
    private UrlSource urlSource;
    private ProgressManagerImpl progressManager;
    private String currentPlayUrl;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_ali_play;
    }

    @Override
    protected void init() {
        initView();
        initListener();
        initData();
    }

    private void initListener() {
        mVideoView.setOnPlayStateBtnClickListener(playStateBtnClickListener);
    }

    private void initView() {
        mVideoView = findViewById(R.id.video_view);
        initVideoConfig();
    }

    private void initVideoConfig() {
        mVideoView.requestFocus();
        mVideoView.setKeepScreenOn(true);
        mVideoView.setTheme(Theme.Blue);
        mVideoView.setAutoPlay(false);
        mVideoView.changeScreenMode(AliyunScreenMode.Full, false);
        mVideoView.setOnPreparedListener(new IPlayer.OnPreparedListener() {
            @Override
            public void onPrepared() {
                AdWeightManager.getInstance().setPlayAd(true);
            }
        });
        mVideoView.setOnCompletionListener(new IPlayer.OnCompletionListener() {
            @Override
            public void onCompletion() {
                if (!TextUtils.isEmpty(currentPlayUrl)) {
                    progressManager.saveProgress(currentPlayUrl, 0);
                }
            }
        });
        setLoadSir(mVideoView);
    }

    private void initData() {
        progressManager = new ProgressManagerImpl();
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

    private void loadVideoAd() {
        VideoAdListener adListener = new VideoAdListener() {
            @Override
            public void onLoaded() {
                if (playAd != null) {
                    if (!mVideoView.isPlaying()) {
                        playAd.setReady(true);
                        playAd.showAd();
                    } else {
                        playAd.recycler();
                    }
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

    private void playSet() {
        EventBus.getDefault().post(new RefreshEvent(RefreshEvent.TYPE_REFRESH, mVodInfo.playIndex));
        playUrl = mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).url;
        DownloadManager.getInstance().setPlayFlag(mVodInfo.fromList.get(mVodInfo.playFlag).name);
        StringBuilder sb = new StringBuilder();
        sb.append(mVodInfo.name);
        sb.append(" ");
        sb.append(mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).name);
        mVideoView.setTitle(sb.toString());
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
            currentPlayUrl = playUrl;
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

    public void setUrl(String playerUrl) {
        HttpRequest.getInstance().threadPoolExecutor.execute(new Runnable() {
            @Override
            public void run() {
                boolean isPlay = false;
                try {
                    List<String> ads = null;
                    if (playerUrl.contains(basePlb)) {
                        //ads = ApiConfig.get().getPlbList(playerUrl);
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
                                    @Override
                                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                                    }

                                    @Override
                                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                                    }

                                    @Override
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
                                                currentPlayUrl = from_url;
                                                DownloadManager.getInstance().setCurrentPlayerUrl(from_url);
                                            }
                                            AliPlayActivity.this.runOnUiThread(new Runnable() {
                                                @Override
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
                    AliPlayActivity.this.runOnUiThread(new Runnable() {
                        @Override
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

    public class PlayStart implements VideoAnalysis.play {
        public PlayStart() {
        }

        @Override
        public void a(String str, Map<String, String> map) {
            if (mVideoView != null) {
                urlSource = new UrlSource();
                urlSource.setUri(str);
                currentPlayUrl = str;
                long position = progressManager.getSavedProgress(str);
                mVideoView.setLocalSource(urlSource);
                if (position == 0) {
                    mVideoView.start();
                } else {
                    mVideoView.seekTo((int) position);
                }
            }
            f();
        }

        @Override
        public void a() {
            AliPlayActivity.this.finish();
        }


    }

    public class a implements VideoAnalysis.j {
        public a() {
        }

        @Override
        public void finish() {
            AliPlayActivity.this.f();
            AliPlayActivity.this.finish();
        }
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

    AliyunVodPlayerView.OnPlayStateBtnClickListener playStateBtnClickListener = new AliyunVodPlayerView.OnPlayStateBtnClickListener() {
        @Override
        public void onPlayBtnClick(int playerState) {
            if (mVideoView.isPlaying() && playAd != null) {
                playAd.loadAd(getContent());
            }
        }
    };

    @Override
    protected void onResume() {
        super.onResume();
        if (mVideoView != null) {
            mVideoView.onResume();
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
    }

    @Override
    protected void onStop() {
        super.onStop();
        if (mVideoView != null) {
            mVideoView.onStop();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mVideoView != null) {
            if (!TextUtils.isEmpty(currentPlayUrl) && mVideoView.getDuration() != mVideoView.getVideoPosition()) {
                progressManager.saveProgress(currentPlayUrl, mVideoView.getVideoPosition());
            }
            mVideoView.onDestroy();
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

}
package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.Toast;


import com.bt.jrsdk.listener.InteractionAdListener;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.today.player.R;
import com.today.player.ad.CacheAdManager;
import com.today.player.ad.VideoPlayAd;
import com.today.player.ad.VideoSplashAd;
import com.today.player.api.ApiConfig;
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
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
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

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_play;
    }

    @Override
    protected void init() {
        initView();
        initData();
    }

    private void loadVideoAd() {
        playAd = CacheAdManager.getInstance().getVideoPlayAd(this, "interaction");
        pauseAd = CacheAdManager.getInstance().getPauseAd(this, "fullvideo");
        playAd.loadAd(getContent());
        pauseAd.loadAd(getContent());
        playAd.setListener(new VideoAdListener() {
            @Override
            public void onLoaded() {
                playAd.setReady(true);
            }

            @Override
            public void onShow() {
                playAd.setReady(false);
                playAd.loadAd(getContent());
            }

            @Override
            public void onClick() {

            }

            @Override
            public void onFinish() {

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
        });
        pauseAd.setListener(new SplashAdListener() {
            @Override
            public void onLoaded() {
                pauseAd.setReady(true);
                pauseAd.showAd();
            }

            @Override
            public void onShow() {
                showSuccess();
                pauseAd.setReady(false);
            }

            @Override
            public void onClick() {

            }

            @Override
            public void onFinish() {
                showSuccess();
                playSet();
            }

            @Override
            public void onError(String s, int i) {
                Log.i("_play", "error");
            }

            @Override
            public void onNoAd() {
                Log.i("_play", "onNoAd");
            }

            @Override
            public void onClose() {
                Log.i("_play", "onClose");
            }


        });
    }

    private String getContent() {
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
        mVideoView.setScreenScaleType(xyz.doikki.videoplayer.player.VideoView.SCREEN_SCALE_16_9);
        setLoadSir(mVideoView);
    }

    private void next() {
        if (mVodInfo != null && mVodInfo.seriesMap != null) {
            if (++mVodInfo.playIndex >= mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).size()) {
                Toast.makeText(mContext, "已经是最后1集", Toast.LENGTH_SHORT).show();
                finish();
            } else {
                Log.i("_play", "next");
                pauseAd.loadAd(getContent());
            }
        }
    }

    private void pre() {
        if (mVodInfo != null && mVodInfo.seriesMap != null) {
            if (--mVodInfo.playIndex < 0) {
                Toast.makeText(mContext, "已经是第1集", Toast.LENGTH_SHORT).show();
            } else {
                pauseAd.loadAd(getContent());
            }
        }
    }

    private void initData() {
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            Bundle bundle = intent.getExtras();
            mVodInfo = (VodInfo) bundle.getSerializable("VodInfo");
            sourceKey = bundle.getString("sourceKey");
            PlayUtils.a(mVideoView, sourceKey);
            if (mVodInfo != null && mVodInfo.seriesMap != null) {
                showLoading();
                loadVideoAd();
            }
        }
    }

    private void playSet() {
        mVideoView.release();
        EventBus.getDefault().post(new RefreshEvent(RefreshEvent.TYPE_REFRESH, mVodInfo.playIndex));
        playUrl = mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).url;
        StringBuilder sb = new StringBuilder();
        sb.append(mVodInfo.name);
        sb.append(" ");
        sb.append(mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).name);
        mController.a(sb.toString());
        f();
        videoAnalysis = new VideoAnalysis();
        videoAnalysis.a(this, new a());
        Dialog dialog = videoAnalysis.b;
        if (dialog != null && !dialog.isShowing()) {
            dialog.show();
        }
        String srcName = DownloadManager.getInstance().getSrcName();
        if (!TextUtils.isEmpty(playUrl) && !TextUtils.isEmpty(srcName) && mVodInfo.sourceKey.equals(srcName)) {
            setUrl();
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
                }
            } catch (Throwable th) {
            }
        }
    }


    public class a implements VideoAnalysis.j {
        public a() {
        }

        @Override
        public void finish() {
            PlayActivity.this.finish();
            PlayActivity.this.f();
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
        if (mVideoView != null) {
            mVideoView.resume();
        }
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
            } else if (keyCode == 23 || keyCode == 85 || keyCode == 7) {
                if (mVideoView.isPlaying()) {
                    playAd.showAd();
                }
                mController.d();
            } else if (keyCode == 19) {
                mController.b();
                pre();
            } else if (keyCode == 20) {
                mController.b();
                next();
            }
        } else if (action == 1 && (keyCode == 22 || keyCode == 21)) {
            mController.c();
        }
        return super.dispatchKeyEvent(keyEvent);
    }


    public void setUrl() {
        HttpRequest.getInstance().threadPoolExecutor.execute(new Runnable() {
            public void run() {
                boolean isPlay = false;
                try {
                    List<String> ads = ApiConfig.get().getAdsList();
                    if (ads != null && ads.size() > 0) {
                        for (int i = 0; i < ads.size(); i++) {
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(ads.get(i) + playUrl).openConnection();
                            httpURLConnection.setDoInput(true);
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.setConnectTimeout(10000);
                            httpURLConnection.setReadTimeout(10000);
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
                            httpURLConnection.connect();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), StandardCharsets.UTF_8));
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                sb.append(readLine);
                            }
                            if (!TextUtils.isEmpty(sb.toString())) {
                                JSONObject jSONObject = new JSONObject(sb.toString());
                                if (jSONObject.optInt("code") == 200) {
                                    isPlay = true;
                                    playUrl = jSONObject.optString("url", "");
                                    DownloadManager.getInstance().setCurrentPlayerUrl(jSONObject.optString("From_Url", ""));
                                    PlayActivity.this.runOnUiThread(new Runnable() {
                                        public void run() {
                                            videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new PlayStart());
                                        }
                                    });
                                    break;
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }

                if (!isPlay) {
                    videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new PlayStart());
                }
            }
        });
    }

}
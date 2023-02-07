package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;

import androidx.annotation.NonNull;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.httplib.MainThread;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.shuyu.gsyvideoplayer.GSYVideoManager;
import com.shuyu.gsyvideoplayer.builder.GSYVideoOptionBuilder;
import com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack;
import com.shuyu.gsyvideoplayer.listener.GSYStateUiListener;
import com.shuyu.gsyvideoplayer.listener.GSYVideoProgressListener;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoView;
import com.today.player.ad.VideoPlayAd;
import com.today.player.ad.VideoSplashAd;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseActivity;
import com.today.player.bean.VodInfo;
import com.today.player.dkplayer.VideoAnalysis;
import com.today.player.event.RefreshEvent;
import com.today.player.ui.weight.TVLayoutVideo;
import com.today.player.util.LogUtil;
import com.upa.DownloadManager;
import com.upa.http.HttpRequest;
import com.upa.http.SSLSocketFactoryCompat;
import com.video.dkplayer.R;
import com.videoplayer.gsylib.KeyEventUtil;

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
import java.util.ArrayList;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import tv.danmaku.ijk.media.player.IjkMediaPlayer;

public class GSYPlayActivity extends BaseActivity {

    private static final String TAG = GSYPlayActivity.class.getSimpleName();
    private TVLayoutVideo mVideoView;
    private VideoAnalysis videoAnalysis;
    private VodInfo mVodInfo;
    private String sourceKey;
    public VideoPlayAd playAd;
    private VideoSplashAd pauseAd;
    private boolean isShow = false;
    private String basePlb = "plb";
    private String playUrl;
    //    private UrlSource urlSource;
    private OrientationUtils orientationUtils;
    private boolean isPlay;
    private boolean isPause;
    private GSYVideoOptionBuilder gsyVideoOption;
    private String mTitle = "";

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
        mVideoView.setGSYStateUiListener(new GSYStateUiListener() {
            @Override
            public void onStateChanged(int state) {
                if (GSYVideoView.CURRENT_STATE_PAUSE == state && playAd != null) {
                    playAd.loadAd(getContent());
                }
            }
        });
    }

    private void initView() {
        mVideoView = findViewById(R.id.video_view);
        initVideoConfig();
    }

    private void initVideoConfig() {
        mVideoView.setLive(false);
        mVideoView.requestFocus();
        mVideoView.setKeepScreenOn(true);
        mVideoView.setIfCurrentIsFullscreen(true);
        VideoOptionModel videoOptionModel =
                new VideoOptionModel(IjkMediaPlayer.OPT_CATEGORY_FORMAT, "protocol_whitelist", "crypto,file,http,https,tcp,tls,udp,rtmp,rtsp");
        List<VideoOptionModel> list = new ArrayList<>();
        list.add(videoOptionModel);
        GSYVideoManager.instance().setOptionModelList(list);

        mVideoView.getBackButton().setVisibility(View.GONE);
        //外部辅助的旋转，帮助全屏
        orientationUtils = new OrientationUtils(this, mVideoView);
        orientationUtils.setScreenType(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        gsyVideoOption = new GSYVideoOptionBuilder();
        mVideoView.getFullscreenButton().setOnClickListener(v -> finish());

        setLoadSir(mVideoView);
    }

    private void initData() {
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            Bundle bundle = intent.getExtras();
            mVodInfo = (VodInfo) bundle.getSerializable("VodInfo");
            sourceKey = bundle.getString("sourceKey");
            DownloadManager.getInstance().setPlay(sourceKey);
            if (mVodInfo != null && mVodInfo.seriesMap != null) {
                showLoading();
                loadVideoAd();
            }
        }
    }

    private void loadVideoAd() {
        VideoAdListener adListener = new VideoAdListener() {
            @Override
            public void onLoaded() {
                if (playAd != null) {
                    if (!mVideoView.isInPlayingState()) {
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
                    playAd.setReady(false);
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
                if (mVideoView != null) {
//                    mVideoView.hidePlayIcon();
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
                    AdWeightManager.getInstance().splashImageCountAdd();
                    showSuccess();
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
        mTitle = sb.toString();
//        mVideoView.setTitle(sb.toString());
        if (videoAnalysis == null) {
            videoAnalysis = new VideoAnalysis();
        }
        videoAnalysis.a(this, new GSYPlayActivity.a());
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
                GSYPlayActivity.PlayStart playStart = new GSYPlayActivity.PlayStart();
                playStart.a(playUrl);
            } else {
                setUrl(playerUrl);
            }
            return;
        }
        videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new GSYPlayActivity.PlayStart());
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
                                    if (!TextUtils.isEmpty(text)) {
                                        JSONObject jSONObject = new JSONObject(text);
                                        if (jSONObject.optInt("code") == 200) {
                                            isPlay = true;
                                            playUrl = jSONObject.optString("url", "");
                                            String from_url = jSONObject.optString("From_Url", "");
                                            if (!TextUtils.isEmpty(from_url)) {
                                                DownloadManager.getInstance().setCurrentPlayerUrl(from_url);
                                            }
                                            GSYPlayActivity.this.runOnUiThread(new Runnable() {
                                                @Override
                                                public void run() {
                                                    if (playerUrl.contains(basePlb)) {
                                                        GSYPlayActivity.PlayStart playStart = new GSYPlayActivity.PlayStart();
                                                        playStart.a(playUrl);
                                                    } else {
                                                        if (videoAnalysis != null) {
                                                            videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new GSYPlayActivity.PlayStart());
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
                    GSYPlayActivity.this.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if (videoAnalysis != null) {
                                videoAnalysis.a(sourceKey, mVodInfo.fromList.get(mVodInfo.playFlag).name, playUrl, new GSYPlayActivity.PlayStart());
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
        public void a(String str) {
            if (mVideoView != null && gsyVideoOption != null) {
                gsyVideoOption
//                        .setThumbImageView(imageView)
                        .setIsTouchWiget(true)
                        .setIsTouchWigetFull(true)
                        .setRotateViewAuto(false)
                        //仅仅横屏旋转，不变直
                        .setOnlyRotateLand(true)
                        .setRotateWithSystem(false)
                        .setLockLand(true)
                        .setAutoFullWithSize(false)
                        .setShowFullAnimation(false)
                        .setNeedLockFull(false)
                        .setNeedOrientationUtils(false)
                        .setUrl(str)
                        .setCacheWithPlay(false)
                        .setStartAfterPrepared(true)
                        .setSurfaceErrorPlay(false)
                        .setThumbPlay(true)
                        .setVideoTitle(mTitle)
                        .build(mVideoView);
                mVideoView.startPlayLogic();
            }

            f();
        }

        @Override
        public void a() {
            GSYPlayActivity.this.finish();
        }
    }

    public class a implements VideoAnalysis.j {
        public a() {
        }

        @Override
        public void finish() {
            GSYPlayActivity.this.f();
            GSYPlayActivity.this.finish();
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

//    AliyunVodPlayerView.OnPlayStateBtnClickListener playStateBtnClickListener = new AliyunVodPlayerView.OnPlayStateBtnClickListener() {
//        @Override
//        public void onPlayBtnClick(int playerState) {
////            if (mVideoView.isPlaying() && playAd != null) {
////                playAd.loadAd(getContent());
////            }
//        }
//    };

    @Override
    protected void onPause() {
        if (mVideoView != null) {
            mVideoView.onVideoPause();
        }
        super.onPause();
        isPause = true;
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mVideoView != null) {
            mVideoView.onVideoResume(false);
        }
        isPause = false;
    }

    @Override
    protected void onStop() {
        super.onStop();
//        if (mVideoView != null) {
//            mVideoView.onStop();
//        }
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        Log.e("debug_", "dispatchKeyEvent getKeyCode: " + event.getKeyCode() + " getAction: " + event.getAction());
        if (event.getAction() == KeyEvent.ACTION_DOWN && (KeyEventUtil.isUpKey(event) || KeyEventUtil.isDownKey(event))) {
            mVideoView.setFocusable(false);
            mVideoView.showBottomPopWindow(findViewById(R.id.gsy_play_linear));
        } else if (KeyEventUtil.isBackKey(event)) {
            if (mVideoView.dismissBottomPopWindow()) {
                return true;
            }
        }
        if (!mVideoView.isFocusable()) {
            return true;
        }
        if (event.getAction() == KeyEvent.ACTION_DOWN && KeyEventUtil.isLeftKey(event)) {
            mVideoView.customTouchSurfaceMove(false);
        } else if (event.getAction() == KeyEvent.ACTION_DOWN && KeyEventUtil.isRightKey(event)) {
            mVideoView.customTouchSurfaceMove(true);

        } else if (event.getAction() == KeyEvent.ACTION_UP && KeyEventUtil.isLeftKey(event)) {
            mVideoView.customTouchSurfaceUp();
        } else if (event.getAction() == KeyEvent.ACTION_UP && KeyEventUtil.isRightKey(event)) {
            mVideoView.customTouchSurfaceUp();
        }

        if (event.getAction() == KeyEvent.ACTION_UP && KeyEventUtil.isEnterKey(event)) {
            long now = SystemClock.uptimeMillis();
            MotionEvent down = MotionEvent.obtain(now, now, MotionEvent.ACTION_DOWN, 400, 400, 0);

            MotionEvent up = MotionEvent.obtain(now, now + 10, MotionEvent.ACTION_UP, 400, 400, 0);
            dispatchTouchEvent(down);
            dispatchTouchEvent(up);

            down.recycle();
            up.recycle();

            MainThread.postDelay(new Runnable() {
                @Override
                public void run() {
                    long now = SystemClock.uptimeMillis();
                    MotionEvent down = MotionEvent.obtain(now, now, MotionEvent.ACTION_DOWN, 400, 400, 0);

                    MotionEvent up = MotionEvent.obtain(now, now + 10, MotionEvent.ACTION_UP, 400, 400, 0);
                    dispatchTouchEvent(down);
                    dispatchTouchEvent(up);

                    down.recycle();
                    up.recycle();
                }
            }, 200);


        }
//        return false;
        return super.dispatchKeyEvent(event);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mVideoView != null && mVideoView.isInPlayingState()) {
            mVideoView.release();
            mVideoView = null;
        }
        if (orientationUtils != null)
            orientationUtils.releaseListener();
        if (playAd != null) {
            playAd.recycler();
            playAd = null;
        }
        if (pauseAd != null) {
            pauseAd.recycler();
            pauseAd = null;
        }
    }

    @Override
    public void onBackPressed() {
        //释放所有
        mVideoView.setVideoAllCallBack(null);
        super.onBackPressed();
    }

}
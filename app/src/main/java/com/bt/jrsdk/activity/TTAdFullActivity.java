package com.bt.jrsdk.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.util.Utils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.squareup.picasso.Picasso;
import com.video.dkplayer.R;

import java.util.ArrayList;
import java.util.List;

public class TTAdFullActivity extends BaseActivity {

    private ImageView imageCover, imageClose;
    private FrameLayout imageIcon;
    private FrameLayout frameVideo;
    private TextView tv_jump;
    private int gdtAdType;
    private TTFeedAd ad;
    private LinearLayout root;
    private boolean isShow = false;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        gdtAdType = AdWeightManager.getInstance().getGdtAdType();
        if (gdtAdType == 0) {
            setTheme(android.R.style.Theme_NoTitleBar_Fullscreen);
        } else {
            if (Build.VERSION.SDK_INT == Build.VERSION_CODES.O || Build.VERSION.SDK_INT == Build.VERSION_CODES.O_MR1) {
                setTheme(R.style.Theme_MyTransparent1);
            }
        }
        super.onCreate(savedInstanceState);
        if (gdtAdType == 0) {
            setContentView(R.layout.tt_full_activity);
        } else {
            setContentView(R.layout.tt_pause_activity);
        }
        initView();
    }

    private void initView() {
        pid = getIntent().getStringExtra("pid");
        List<View> creativeViewList = new ArrayList<>();
        ArrayList<View> images = new ArrayList<>();
        root = findViewById(R.id.root);
        frameVideo = findViewById(R.id.ad_video);
        imageIcon = findViewById(R.id.ad_icon);
        imageCover = findViewById(R.id.ad_image);
        tv_jump = findViewById(R.id.tv_jump);
        imageClose = findViewById(R.id.img_video_close);
        creativeViewList.add(frameVideo);
        creativeViewList.add(imageIcon);
        creativeViewList.add(imageCover);
        imageClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                    AdListenerManager.getInstance().getSplashListener(pid).onClose();
                    AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                }
                if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                    AdListenerManager.getInstance().getVideoListener(pid).onClose();
                    AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                }
                finish();
            }
        });
        ad = AdWeightManager.getInstance().ttAds.get(0);
        //check ad form, set video view
        if (ad.getImageMode() == TTAdConstant.IMAGE_MODE_VIDEO || ad.getImageMode() == TTAdConstant.IMAGE_MODE_VIDEO_SQUARE) {
            if (frameVideo != null) {
                //get ad view
                View video = ad.getAdView();
                if (video != null) {
                    if (video.getParent() == null) {
                        frameVideo.removeAllViews();
                        frameVideo.addView(video);
                        images.add(frameVideo);
                    }
                }
                if (gdtAdType == 0) {
                    tv_jump.setVisibility(View.VISIBLE);
                    imageClose.setVisibility(View.GONE);
                } else {
                    tv_jump.setVisibility(View.GONE);
                    imageClose.setVisibility(View.VISIBLE);
                }
                frameVideo.setVisibility(View.VISIBLE);
                imageCover.setVisibility(View.GONE);
                ad.setVideoAdListener(new TTFeedAd.VideoAdListener() {
                    @Override
                    public void onVideoLoad(TTFeedAd ttFeedAd) {

                    }

                    @Override
                    public void onVideoError(int i, int i1) {
                        imageClose.setVisibility(View.VISIBLE);
                    }

                    @Override
                    public void onVideoAdStartPlay(TTFeedAd ttFeedAd) {
                    }

                    @Override
                    public void onVideoAdPaused(TTFeedAd ttFeedAd) {

                    }

                    @Override
                    public void onVideoAdContinuePlay(TTFeedAd ttFeedAd) {

                    }

                    @Override
                    public void onProgressUpdate(long l, long l1) {
                        if (gdtAdType == 0) {
                            long result = (l1 - l) / 1000;
                            if (result > 0) {
                                tv_jump.setText(result + "s");
                            } else {
                                adFinish();
                            }
                        } else {
                            adFinish();
                        }
                    }

                    @Override
                    public void onVideoAdComplete(TTFeedAd ttFeedAd) {
                        adFinish();
                    }
                });
            }
        }

        if (ad.getImageMode() == TTAdConstant.IMAGE_MODE_LARGE_IMG || ad.getImageMode() == TTAdConstant.IMAGE_MODE_SQUARE_IMG) {
            if (ad.getImageList() != null && !ad.getImageList().isEmpty()) {
                TTImage image = ad.getImageList().get(0);
                if (image != null && image.isValid()) {
                    imageCover.setVisibility(View.VISIBLE);
                    tv_jump.setVisibility(View.GONE);
                    imageClose.setVisibility(View.VISIBLE);
                    images.add(imageCover);
                    Picasso.get()
                            .load(image.getImageUrl())
                            .into(imageCover);
                }
            }
        }

        //广告小图标
        ImageView logoImageView = (ImageView) ad.getAdLogoView();
        if (imageIcon != null || logoImageView != null) {
            imageIcon.setVisibility(View.VISIBLE);
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT, RelativeLayout.LayoutParams.MATCH_PARENT);
            imageIcon.addView(logoImageView, lp);
        }

        ad.registerViewForInteraction((ViewGroup) root, images, creativeViewList, new TTNativeAd.AdInteractionListener() {
            @Override
            public void onAdClicked(View view, TTNativeAd ttNativeAd) {
                String s = "";
            }

            @Override
            public void onAdCreativeClick(View view, TTNativeAd ad) {
                if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                    AdListenerManager.getInstance().getSplashListener(pid).onClick();
                }
                if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                    AdListenerManager.getInstance().getVideoListener(pid).onClick();
                }
            }

            @Override
            public void onAdShow(TTNativeAd ad) {
                if (!TTAdFullActivity.this.isShow) {
                    TTAdFullActivity.this.isShow = true;
                    if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                        AdListenerManager.getInstance().getSplashListener(pid).onShow();
                    }
                    if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                        AdListenerManager.getInstance().getVideoListener(pid).onShow();
                    }
                }
            }
        });
    }

    @Override
    protected void onResult() {

    }

    private void adFinish() {
        if (Utils.getDeviceType().equals("1")) {
            tv_jump.setText("按返回键关闭");
            tv_jump.setVisibility(View.VISIBLE);
        } else {
            tv_jump.setVisibility(View.GONE);
            imageClose.setVisibility(View.VISIBLE);
        }
    }


    @Override
    public void onBackPressed() {
        if (imageClose.getVisibility() == View.VISIBLE || tv_jump.getText().toString().equals("按返回键关闭")) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onClose();
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                AdListenerManager.getInstance().getVideoListener(pid).onClose();
                AdListenerManager.getInstance().getVideoListener(pid).onFinish();
            }
            super.onBackPressed();
        }
    }


    @Override
    protected void onDestroy() {
        super.onDestroy();
        ad = null;
    }
}

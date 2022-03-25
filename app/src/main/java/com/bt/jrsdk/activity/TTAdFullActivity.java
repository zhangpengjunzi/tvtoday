package com.bt.jrsdk.activity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.squareup.picasso.Picasso;
import com.today.player.R;
import com.today.player.picasso.RoundTransformation;
import com.today.player.ui.activity.SplashActivity;

import me.jessyan.autosize.utils.AutoSizeUtils;

public class TTAdFullActivity extends BaseActivity {

    private ImageView imageCover, imageClose;
    private FrameLayout imageIcon;
    private FrameLayout frameVideo;
    private TextView tv_jump;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.tt_full_activity);
        initView();
    }

    private void initView() {
        frameVideo = findViewById(R.id.ad_video);
        imageIcon = findViewById(R.id.ad_icon);
        imageCover = findViewById(R.id.ad_image);
        tv_jump = findViewById(R.id.tv_jump);
        imageClose = findViewById(R.id.img_video_close);
        TTFeedAd ad = SplashActivity.feedAds.get(0);
        //check ad form, set video view
        if (ad.getImageMode() == TTAdConstant.IMAGE_MODE_VIDEO || ad.getImageMode() == TTAdConstant.IMAGE_MODE_VIDEO_SQUARE) {
            if (frameVideo != null) {
                //get ad view
                View video = ad.getAdView();
                if (video != null) {
                    if (video.getParent() == null) {
                        frameVideo.removeAllViews();
                        frameVideo.addView(video);
                    }
                }
                tv_jump.setVisibility(View.VISIBLE);
                imageClose.setVisibility(View.GONE);
                ad.setVideoAdListener(new TTFeedAd.VideoAdListener() {
                    @Override
                    public void onVideoLoad(TTFeedAd ttFeedAd) {

                    }

                    @Override
                    public void onVideoError(int i, int i1) {

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
                        Log.i("_time", l + "  " + l1);
                        long result=(l1-l)/1000;
                        if(result>0){
                            tv_jump.setText(result+"s");
                        }else{

                        }
                    }

                    @Override
                    public void onVideoAdComplete(TTFeedAd ttFeedAd) {

                    }
                });
            }
        }

        if (ad.getImageMode() == TTAdConstant.IMAGE_MODE_LARGE_IMG || ad.getImageMode() == TTAdConstant.IMAGE_MODE_SQUARE_IMG) {
            if (ad.getImageList() != null && !ad.getImageList().isEmpty()) {
                TTImage image = ad.getImageList().get(0);
                if (image != null && image.isValid()) {
                    imageCover.setVisibility(View.VISIBLE);
                    Picasso.get()
                            .load(image.getImageUrl())
                            .transform(new RoundTransformation(image.getImageUrl())
                                    .centerCorp(true)
                                    .override(AutoSizeUtils.pt2px(this, 224), AutoSizeUtils.pt2px(this, 315))
                                    .roundRadius(AutoSizeUtils.pt2px(this, 5), RoundTransformation.RoundType.ALL))
                            .into(imageCover);

                }

            }
        }

        ImageView logoImageView = (ImageView) ad.getAdLogoView();
        if (imageIcon != null || logoImageView != null) {
            imageIcon.setVisibility(View.VISIBLE);
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT, RelativeLayout.LayoutParams.MATCH_PARENT);
            imageIcon.addView(logoImageView, lp);
        }
    }

    @Override
    protected void onResult() {

    }


    private void adFinish(){

    }
}

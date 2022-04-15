package com.bt.jrsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.today.player.R;
import com.today.player.ui.activity.SplashActivity;

public class MobAdActivity extends Activity {

    private UnifiedNativeAd unifiedNativeAd;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.ad_unified_img_body);
        unifiedNativeAd = SplashActivity.unifiedNativeAd;

        UnifiedNativeAdView adView = findViewById(R.id.native_ad_view);

        populateUnifiedNativeAdViewForImgAndBody(unifiedNativeAd, adView);
    }


    public static void populateUnifiedNativeAdViewForImgAndBody(UnifiedNativeAd nativeAd,
                                                                UnifiedNativeAdView adView) {
        // Set the media view.
        adView.setHeadlineView(adView.findViewById(R.id.ad_headline));
        adView.setMediaView(adView.findViewById(R.id.ad_media));
        adView.setBodyView(adView.findViewById(R.id.ad_body));
        adView.setIconView(adView.findViewById(R.id.ad_icon));
        // The mediaContent are guaranteed to be in every UnifiedNativeAd.
        adView.getMediaView().setMediaContent(nativeAd.getMediaContent());
        adView.getMediaView().setImageScaleType(ImageView.ScaleType.FIT_XY);
        ((TextView) adView.getHeadlineView()).setText(nativeAd.getHeadline());
        ((ImageView) adView.getIconView()).setImageDrawable(nativeAd.getIcon().getDrawable());
        String headline=nativeAd.getHeadline();
        String body=nativeAd.getBody();


        // These assets aren't guaranteed to be in every UnifiedNativeAd, so it's important to
        // check before trying to display them.
        if (nativeAd.getBody() == null) {
            adView.getBodyView().setVisibility(View.INVISIBLE);
            ((TextView) adView.getHeadlineView()).setGravity(View.TEXT_ALIGNMENT_CENTER);
        } else {
            adView.getBodyView().setVisibility(View.VISIBLE);
            ((TextView) adView.getBodyView()).setText(nativeAd.getBody());
        }

        // This method tells the Google Mobile Ads SDK that you have finished populating your
        // native ad view with this native ad.
        adView.setNativeAd(nativeAd);
        // Get the video controller for the ad. One will always be provided, even if the ad doesn't
        // have a video asset.
        VideoController vc = nativeAd.getVideoController();
        // Updates the UI to say whether or not this ad has a video asset.
        if (vc.hasVideoContent()) {
            // Create a new VideoLifecycleCallbacks object and pass it to the VideoController. The
            // VideoController will call methods on this object when events occur in the video
            // lifecycle.
            vc.setVideoLifecycleCallbacks(new VideoController.VideoLifecycleCallbacks() {
                @Override
                public void onVideoEnd() {
                    // Publishers should allow native ads to complete video playback before
                    // refreshing or replacing them with another ad in the same UI location.
                    super.onVideoEnd();
                }
            });
        } else {

        }
    }
}

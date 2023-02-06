package com.today.player.ui.weight;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import com.video.dkplayer.R;

public class TVLayoutVideo extends StandardGSYVideoPlayer {

    private boolean isLinkScroll = false;

    private boolean isLive = false;

    private int holdTime;


    public TVLayoutVideo(Context context, Boolean fullFlag) {
        super(context, fullFlag);
    }

    public TVLayoutVideo(Context context) {
        super(context);
    }

    public TVLayoutVideo(Context context, AttributeSet attrs) {
        super(context, attrs);
    }


    @Override
    protected void init(Context context) {
        super.init(context);
        post(new Runnable() {
            @Override
            public void run() {
                gestureDetector = new GestureDetector(getContext().getApplicationContext(), new GestureDetector.SimpleOnGestureListener() {
                    @Override
                    public boolean onDoubleTap(MotionEvent e) {
                        touchDoubleUp(e);
                        return super.onDoubleTap(e);
                    }

                    @Override
                    public boolean onSingleTapConfirmed(MotionEvent e) {
                        if (!mChangePosition && !mChangeVolume && !mBrightness
                                && mCurrentState != CURRENT_STATE_ERROR
                        ) {
                            onClickUiToggle(e);
                        }
                        return super.onSingleTapConfirmed(e);
                    }

                    @Override
                    public void onLongPress(MotionEvent e) {
                        super.onLongPress(e);
                    }
                });
            }
        });
    }

    //这个必须配置最上面的构造才能生效
    @Override
    public int getLayoutId() {
        if (mIfCurrentIsFullscreen) {
            return R.layout.sample_tv_player_land;
        }
        return R.layout.sample_tv_player_normal;
    }

    @Override
    protected void updateStartImage() {
        super.updateStartImage();

        if (mIfCurrentIsFullscreen) {
            if (mStartButton instanceof ImageView) {
                ImageView imageView = (ImageView) mStartButton;
                if (mCurrentState == CURRENT_STATE_PLAYING) {
                    imageView.setImageResource(com.shuyu.gsyvideoplayer.R.drawable.video_click_pause_selector);
                } else if (mCurrentState == CURRENT_STATE_ERROR) {
                    imageView.setImageResource(com.shuyu.gsyvideoplayer.R.drawable.video_click_play_selector);
                } else {
                    imageView.setImageResource(com.shuyu.gsyvideoplayer.R.drawable.video_click_play_selector);
                }
            }
        } else {
            super.updateStartImage();
        }
    }

    @Override
    public int getEnlargeImageRes() {
        return R.drawable.custom_enlarge;
    }

    @Override
    public int getShrinkImageRes() {
        return R.drawable.custom_shrink;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (isLinkScroll && !isIfCurrentIsFullscreen()) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(ev);
    }

    public void setLive(boolean isLive) {
        this.isLive = isLive;
        if (isLive) {
            mProgressBar.setClickable(false);
            mProgressBar.setEnabled(false);
            mProgressBar.setFocusable(false);
            mProgressBar.setSelected(false);

            if (getFullWindowPlayer() != null) {
                getFullWindowPlayer().findViewById(R.id.progress).setClickable(false);
                getFullWindowPlayer().findViewById(R.id.progress).setEnabled(false);
                getFullWindowPlayer().findViewById(R.id.progress).setFocusable(false);
                getFullWindowPlayer().findViewById(R.id.progress).setSelected(false);
            }

            mChangePosition = false;
        }
    }


    @Override
    protected void resolveNormalVideoShow(View oldF, ViewGroup vp, GSYVideoPlayer gsyVideoPlayer) {
        TVLayoutVideo landLayoutVideo = (TVLayoutVideo) gsyVideoPlayer;
        landLayoutVideo.dismissProgressDialog();
        landLayoutVideo.dismissVolumeDialog();
        landLayoutVideo.dismissBrightnessDialog();
        super.resolveNormalVideoShow(oldF, vp, gsyVideoPlayer);
    }

    public void setLinkScroll(boolean linkScroll) {
        isLinkScroll = linkScroll;
    }


    /**
     * 定义结束后的显示
     */
    @Override
    protected void changeUiToCompleteClear() {
        super.changeUiToCompleteClear();
        setTextAndProgress(0, true);
        //changeUiToNormal();
    }

    @Override
    protected void changeUiToCompleteShow() {
        super.changeUiToCompleteShow();
        setTextAndProgress(0, true);
        //changeUiToNormal();
    }

    private int moveCounts;

    public void customTouchSurfaceMove(boolean isRight) {
        float deltaX;
        if (isRight) {
            deltaX = 1;
        } else {
            deltaX = -1;
        }
        moveCounts++;

        long totalTimeDuration = getDuration();
        long now = getCurrentPositionWhenPlaying();
        mSeekTimePosition = (int) (now + (20 * 1000 * moveCounts * deltaX * 1.5) / mSeekRatio);

        if (mSeekTimePosition < 0) {
            mSeekTimePosition = 0;
        }
        if (mSeekTimePosition > totalTimeDuration)
            mSeekTimePosition = totalTimeDuration;

        String seekTime = CommonUtil.stringForTime(mSeekTimePosition);
        String totalTime = CommonUtil.stringForTime(totalTimeDuration);
        showProgressDialog(deltaX, seekTime, mSeekTimePosition, totalTime, totalTimeDuration);
    }

    public void customTouchSurfaceUp() {
        moveCounts = 0;
        long duration = getDuration();
        long progress = mSeekTimePosition * 100 / (duration == 0 ? 1 : duration);

        if (mBottomProgressBar != null)
            mBottomProgressBar.setProgress((int) progress);


        mTouchingProgressBar = false;
        dismissProgressDialog();
        dismissVolumeDialog();
        dismissBrightnessDialog();
        if (getGSYVideoManager() != null && (mCurrentState == CURRENT_STATE_PLAYING || mCurrentState == CURRENT_STATE_PAUSE)) {
            try {
//                如果是 m3u8 可能会需要这个
//                if(mSeekTimePosition == 0) {
//                    mSeekTimePosition = 1;
//                }
                getGSYVideoManager().seekTo(mSeekTimePosition);
            } catch (Exception e) {
                e.printStackTrace();
            }
            duration = getDuration();
            progress = mSeekTimePosition * 100 / (duration == 0 ? 1 : duration);
            if (mProgressBar != null) {
                mProgressBar.setProgress((int) progress);
            }
            if (mVideoAllCallBack != null && isCurrentMediaListener()) {
                Debuger.printfLog("onTouchScreenSeekPosition");
                mVideoAllCallBack.onTouchScreenSeekPosition(mOriginUrl, mTitle, this);
            }
        }
    }

}

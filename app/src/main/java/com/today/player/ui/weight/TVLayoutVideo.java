package com.today.player.ui.weight;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;

import com.bt.jrsdk.util.LogUtil;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.GSYVideoType;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import com.video.dkplayer.R;
import com.videoplayer.gsylib.KeyEventUtil;

public class TVLayoutVideo extends StandardGSYVideoPlayer {

    private boolean isLinkScroll = false;

    private boolean isLive = false;

    private int holdTime;
    private PopupWindow bottomSpeed;
    private TextView mSpeed, mProportion;

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
        initView();
        initListener();
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
//        if (mIfCurrentIsFullscreen) {
//            return R.layout.sample_tv_player_land;
//        }
        return R.layout.sample_tv_player_land;
    }

    private void initView() {
        mSpeed = findViewById(R.id.speed);
        mProportion = findViewById(R.id.proportion);
    }

    private void initListener() {
        mSpeed.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                setSpeed();
            }
        });
        mProportion.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                setProportion();
            }
        });
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

    //展示
    @Override
    protected void changeUiToPlayingShow() {
        setViewShowState(mSpeed, VISIBLE);
        setViewShowState(mProportion, VISIBLE);
        super.changeUiToPlayingShow();
    }

    @Override
    protected void changeUiToPauseShow() {
        setViewShowState(mSpeed, VISIBLE);
        setViewShowState(mProportion, VISIBLE);
        super.changeUiToPauseShow();
    }

    @Override
    protected void changeUiToPauseClear() {
        setViewShowState(mSpeed, INVISIBLE);
        setViewShowState(mProportion, INVISIBLE);
        super.changeUiToPauseClear();
    }

    //点击消失
    @Override
    protected void changeUiToPlayingClear() {
        setViewShowState(mSpeed, INVISIBLE);
        setViewShowState(mProportion, INVISIBLE);
        super.changeUiToPlayingClear();
    }

    @Override
    protected void hideAllWidget() {
        super.hideAllWidget();
        setViewShowState(mSpeed, INVISIBLE);
        setViewShowState(mProportion, INVISIBLE);
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

    /**
     * 电视端底部 播放速度、显示比例弹窗
     */
    public void showBottomPopWindow(View v) {
        if (bottomSpeed == null) {
            bottomSpeed = new PopupWindow();
        }
        View view = LayoutInflater.from(getContext()).inflate(R.layout.dialog_bottom_speed, null);
        bottomSpeed.setFocusable(true);
        bottomSpeed.setContentView(view);
        bottomSpeed.setWidth(WindowManager.LayoutParams.MATCH_PARENT);
        bottomSpeed.setHeight(WindowManager.LayoutParams.WRAP_CONTENT);
        bottomSpeed.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        bottomSpeed.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                if (!TVLayoutVideo.this.isFocusable()) {
                    TVLayoutVideo.this.setFocusable(true);
                    TVLayoutVideo.this.requestFocus();
                }
            }
        });
        Button speed = view.findViewById(R.id.speed);
        Button proportion = view.findViewById(R.id.proportion);
        speed.setText(String.valueOf(getSpeed()));
        speed.setOnKeyListener(new OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (v.hasFocus() && KeyEventUtil.isEnterKey(event) && event.getAction() == KeyEvent.ACTION_UP) {
                    speed.setText(setSpeed());
                    return true;
                }
                return false;
            }
        });
        speed.setOnFocusChangeListener(new OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                hasFocusBg(v, hasFocus);

            }
        });
        proportion.setOnKeyListener(new OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (v.hasFocus() && KeyEventUtil.isEnterKey(event) && event.getAction() == KeyEvent.ACTION_UP) {
                    proportion.setText(setProportion());
                    return true;
                }
                return false;
            }
        });
        proportion.setOnFocusChangeListener(new OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                hasFocusBg(v, hasFocus);
            }
        });

        if (!bottomSpeed.isShowing()) {
            speed.requestFocus();
            speed.setBackgroundResource(R.drawable.bottom_select_shape1);
            bottomSpeed.showAtLocation(v, Gravity.BOTTOM, 0, 0);
        }
    }

    public boolean dismissBottomPopWindow() {
        if (bottomSpeed == null || !bottomSpeed.isShowing()) {
            return false;
        }
        bottomSpeed.dismiss();
        return true;
    }

    private void hasFocusBg(View btn, boolean hasFocus) {
        if (hasFocus) {
            btn.setBackgroundResource(R.drawable.bottom_select_shape1);
        } else {
            btn.setBackgroundResource(R.drawable.bottom_shape1);
        }
    }

    private String setSpeed() {
        String speed = "";
        if (getSpeed() == 1f) {
            setSpeedPlaying(1.5f, false);
            speed = "1.5";
        } else if (getSpeed() == 1.5f) {
            setSpeedPlaying(2f, false);
            speed = "2";
        } else if (getSpeed() == 2f) {
            setSpeedPlaying(3f, false);
            speed = "3";
        } else if (getSpeed() == 3f) {
            setSpeedPlaying(0.5f, false);
            speed = "0.5";
        } else {
            setSpeedPlaying(1f, false);
            speed = "1";
        }
        mSpeed.setText(speed);
        return speed;
    }

    private String setProportion() {
        String proportion = "";
        int showType = GSYVideoType.getShowType();
        if (showType == GSYVideoType.SCREEN_TYPE_DEFAULT) {
            GSYVideoType.setShowType(GSYVideoType.SCREEN_TYPE_16_9);
            proportion = "16:9";
        } else if (showType == GSYVideoType.SCREEN_TYPE_16_9) {
            GSYVideoType.setShowType(GSYVideoType.SCREEN_TYPE_4_3);
            proportion = "4:3";
        } else if (showType == GSYVideoType.SCREEN_TYPE_4_3) {
            GSYVideoType.setShowType(GSYVideoType.SCREEN_TYPE_FULL);
            proportion = "全屏";
        } else if (showType == GSYVideoType.SCREEN_TYPE_FULL) {
            GSYVideoType.setShowType(GSYVideoType.SCREEN_MATCH_FULL);
            proportion = "拉伸全屏";
        } else {
            GSYVideoType.setShowType(GSYVideoType.SCREEN_TYPE_DEFAULT);
            proportion = "默认比例";
        }

        changeTextureViewShowType();
        if (mTextureView != null)
            mTextureView.requestLayout();
        mProportion.setText(proportion);
        return proportion;

    }


}

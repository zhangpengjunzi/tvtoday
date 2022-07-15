package com.today.player.callback;

import com.kingja.loadsir.callback.Callback;
import com.video.dkplayer.R;


/**
 * @author pj567
 * @date :2020/12/24
 * @description:
 */
public class EmptyCallback extends Callback {
    @Override
    protected int onCreateView() {
        return R.layout.empty_layout;
    }
}
package com.today.player.callback;

import com.kingja.loadsir.callback.Callback;
import com.today.player.R;


/**
 * @author pj567
 * @date :2020/12/24
 * @description:
 */
public class LoadingCallback extends Callback {
    @Override
    protected int onCreateView() {
        return R.layout.loading_layout;
    }
}
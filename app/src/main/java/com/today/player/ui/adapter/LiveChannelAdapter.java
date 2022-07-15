package com.today.player.ui.adapter;

import android.graphics.Color;
import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.video.dkplayer.R;
import com.today.player.bean.LiveChannel;
import com.today.player.bean.PlayerModel;
import com.today.player.ui.dialog.MediaCodeDialog;

import java.util.ArrayList;

/**
 * @author pj567
 * @date :2021/1/12
 * @description:
 */
public class LiveChannelAdapter extends BaseQuickAdapter<PlayerModel.LiveDTO, BaseViewHolder> {
    public LiveChannelAdapter() {
        super(R.layout.item_live_channel_layout, new ArrayList<>());
    }

    @Override
    protected void convert(BaseViewHolder helper, PlayerModel.LiveDTO qgVar) {
        TextView textView = helper.getView(R.id.tvChannelNum);
        TextView textView2 = helper.getView(R.id.tvChannel);
        textView.setText(String.valueOf(qgVar.getChannelNum()));
        textView2.setText(qgVar.getChannelName());
        if (qgVar.isDefault()) {
            textView.setTextColor(mContext.getResources().getColor(R.color.color_02F8E1));
            textView2.setTextColor(mContext.getResources().getColor(R.color.color_02F8E1));
            return;
        }
        textView.setTextColor(-1);
        textView2.setTextColor(-1);

    }
}
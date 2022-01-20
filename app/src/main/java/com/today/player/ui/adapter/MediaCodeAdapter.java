package com.today.player.ui.adapter;

import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.orhanobut.hawk.Hawk;
import com.today.player.R;
import com.today.player.bean.PlayerModel;
import com.today.player.ui.dialog.MediaCodeDialog;
import com.today.player.util.HawkConfig;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class MediaCodeAdapter extends BaseQuickAdapter<MediaCodeDialog.pg, BaseViewHolder> {

    public MediaCodeAdapter() {
        super(R.layout.item_ijk_codec_layout, new ArrayList());
    }

    @Override
    protected void convert(BaseViewHolder helper, MediaCodeDialog.pg item) {
        TextView textView = helper.getView(R.id.tvIJKCodecName);
        if (item.c) {
            textView.setTextColor(mContext.getResources().getColor(R.color.color_058AF4));
        } else {
            textView.setTextColor(-16777216);
        }
        textView.setText(item.a);
    }


}

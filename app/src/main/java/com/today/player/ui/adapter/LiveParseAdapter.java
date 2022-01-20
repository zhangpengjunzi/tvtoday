package com.today.player.ui.adapter;

import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.today.player.R;
import com.today.player.bean.PlayerModel;

import java.util.ArrayList;
import java.util.List;

public class LiveParseAdapter extends BaseQuickAdapter<PlayerModel.LiveDTO, BaseViewHolder> {

    public LiveParseAdapter() {
        super(R.layout.item_live_layout, new ArrayList());
    }

    @Override
    protected void convert(BaseViewHolder helper, PlayerModel.LiveDTO item) {
        TextView textView = helper.getView(R.id.tvLive);
        TextView textView2 = helper.getView(R.id.tvLiveAdd);
        if (item.isForAdd()) {
            textView2.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            return;
        }
        textView.setVisibility(View.VISIBLE);
        textView2.setVisibility(View.GONE);
        if (item.isDefault()) {
            textView.setTextColor(mContext.getResources().getColor(R.color.color_02F8E1));
        } else {
            textView.setTextColor(-1);
        }
        textView.setText(item.getChannelName());

    }
}

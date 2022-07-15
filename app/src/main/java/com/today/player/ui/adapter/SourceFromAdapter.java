package com.today.player.ui.adapter;

import android.graphics.Color;
import android.view.View;
import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.video.dkplayer.R;
import com.today.player.bean.VodInfo;

import java.util.ArrayList;


public class SourceFromAdapter extends BaseQuickAdapter<VodInfo.VodFrom, BaseViewHolder> {
    public SourceFromAdapter() {
        super(R.layout.item_series_flag_layout, new ArrayList<>());
    }

    @Override
    protected void convert(BaseViewHolder helper, VodInfo.VodFrom item) {
        View a = helper.getView(R.id.tvSeriesFlagSelect);
        if (item.selected) {
            a.setVisibility(View.VISIBLE);
        } else {
            a.setVisibility(View.GONE);
        }
        helper.setText(R.id.tvSeriesFlag, item.name);
    }
}
package com.today.player.ui.adapter;

import android.graphics.Color;
import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;

import com.video.dkplayer.R;
import com.today.player.bean.SourceBean;

import java.util.ArrayList;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class SourceSearchAdapter extends BaseQuickAdapter<SourceBean, BaseViewHolder> {
    public SourceSearchAdapter() {
        super(R.layout.item_source_search_layout, new ArrayList<>());
    }

    @Override
    protected void convert(BaseViewHolder helper, SourceBean item) {
        TextView tvSource = helper.getView(R.id.tvSource);
        if (item.selected) {
            tvSource.setTextColor(mContext.getResources().getColor(R.color.color_02F8E1));
        } else {
            tvSource.setTextColor(Color.WHITE);
        }
        tvSource.setText(item.getName());
    }
}
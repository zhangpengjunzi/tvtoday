package com.today.player.ui.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;

import com.video.dkplayer.R;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.SourceBean;

import java.util.ArrayList;

/**
 * @author pj567
 * @date :2021/2/5
 * @description:
 */
public class HistorySourceAdapter extends BaseQuickAdapter<PlayerModel.SourcesDTO, BaseViewHolder> {
    public HistorySourceAdapter() {
        super(R.layout.item_home_sort_layout, new ArrayList<>());
    }

    @Override
    protected void convert(BaseViewHolder helper, PlayerModel.SourcesDTO item) {
        helper.setText(R.id.tvTitle, item.getName());
        helper.addOnClickListener(R.id.tvTitle);
    }
}
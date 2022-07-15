package com.today.player.ui.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.video.dkplayer.R;
import com.today.player.bean.MovieSort;

import java.util.ArrayList;

public class QuickSearchAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public QuickSearchAdapter() {
        super(R.layout.item_search_word_layout, new ArrayList());
    }

    @Override
    protected void convert(BaseViewHolder helper, String item) {
        helper.setText(R.id.tvSearchWord, item);
    }
}

package com.today.player.ui.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.today.player.R;
import com.today.player.bean.MovieSort;
import com.today.player.ui.dialog.TestSpeed;

import java.util.ArrayList;

public class TipSortAdapter extends BaseQuickAdapter<MovieSort.SortData, BaseViewHolder> {
    public TipSortAdapter() {
        super(R.layout.item_source_sort_tid_layout, new ArrayList());
    }

    public void convert(BaseViewHolder helper, MovieSort.SortData sortData) {
        helper.setText(R.id.tvSortName, sortData.name);
        helper.setVisible(R.id.tvSortSelect, sortData.select);
    }

}

package com.today.player.ui.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.today.player.R;
import com.today.player.bean.MovieSort;
import com.today.player.util.LogUtil;

import java.util.ArrayList;

/**
 * @author pj567
 * @date :2020/12/21
 * @description:
 */
public class SortAdapter extends BaseQuickAdapter<MovieSort.SortData, BaseViewHolder> {
    public SortAdapter() {
        super(R.layout.item_home_sort_layout, new ArrayList<>());
    }

    public int focused = 0;

    @Override
    protected void convert(BaseViewHolder helper, MovieSort.SortData item) {
        helper.setText(R.id.tvTitle, item.name);
        helper.addOnClickListener(R.id.tvTitle);
        LogUtil.d("FOCUS == "+focused);
        if (helper.getAdapterPosition() == focused) {
            helper.getView(R.id.fl_sort_root).requestFocus();
        }
    }
}
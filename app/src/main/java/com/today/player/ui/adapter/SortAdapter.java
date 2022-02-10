package com.today.player.ui.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.today.player.R;
import com.today.player.bean.MovieSort;
import com.upa.tool.Tools;

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

    @Override
    protected void convert(BaseViewHolder helper, MovieSort.SortData item) {
        helper.setText(R.id.tvTitle, item.name);
        helper.addOnClickListener(R.id.tvTitle);
        if (item.select) {
            Tools.shapeSolidSort(mContext, helper.getView(R.id.fl_sort_root), 0);
        } else {
            Tools.shapeSolidSort(mContext, helper.getView(R.id.fl_sort_root), 1);
        }
    }


}
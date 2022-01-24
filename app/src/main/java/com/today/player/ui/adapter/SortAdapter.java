package com.today.player.ui.adapter;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.today.player.R;
import com.today.player.bean.MovieSort;

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

    private int focused = 0;

    @Override
    protected void convert(BaseViewHolder helper, MovieSort.SortData item) {
        helper.setText(R.id.tvTitle, item.name);
        helper.addOnClickListener(R.id.tvTitle);
        if (helper.getAdapterPosition() == focused) {
            Log.d("SELECTED", " " + helper.getAdapterPosition());
            helper.getView(R.id.fl_sort_root).requestFocus();
        }
        helper.getView(R.id.tvTitle).setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == MotionEvent.ACTION_UP) {
                    Log.d("TOUCH", " " + helper.getAdapterPosition());
                    helper.getView(R.id.fl_sort_root).requestFocus();
                    focused = helper.getAdapterPosition();
                }

                return false;
            }
        });
    }
}
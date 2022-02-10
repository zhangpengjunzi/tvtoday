package com.today.player.ui.adapter;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;

import com.today.player.R;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.PraseBean;

import java.util.ArrayList;

/**
 * @author pj567
 * @date :2021/3/9
 * @description:
 */
public class PraseAdapter extends BaseQuickAdapter<PlayerModel.ParseUrlDTO, BaseViewHolder> {
    public PraseAdapter() {
        super(R.layout.item_prase_layout, new ArrayList<>());
    }


  /*  @Override
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View item = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.item_prase_layout, parent, false);
        return new BaseViewHolder(item);
    }


    @Override
    public void onBindViewHolder(BaseViewHolder holder, int position) {
        PlayerModel.ParseUrlDTO item=getItem(position);
        TextView textView = holder.getView((int) R.id.tvParse);
        TextView textView2 = holder.getView((int) R.id.tvParseAdd);
        if (item.isForAdd()) {
            textView2.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            return;
        }
        textView.setVisibility(View.VISIBLE);
        textView2.setVisibility(View.GONE);
        if (item.isDefault()) {
           // textView.setTextColor(mContext.getResources().getColor(R.color.color_02F8E1));
        } else {
            textView.setTextColor(-1);
        }
        textView.setText(item.getParseName());
    }*/

    @Override
    protected void convert(BaseViewHolder helper, PlayerModel.ParseUrlDTO item) {
        TextView textView = helper.getView((int) R.id.tvParse);
        TextView textView2 = helper.getView((int) R.id.tvParseAdd);
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
        textView.setText(item.getParseName());
    }
}
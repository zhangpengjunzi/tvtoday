package com.today.player.ui.adapter;

import android.graphics.Color;
import android.view.View;
import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;

import com.video.dkplayer.R;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.SourceBean;
import com.today.player.ui.fragment.SourceSettingFragment;

import java.util.ArrayList;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class SourceSettingAdapter extends BaseQuickAdapter<PlayerModel.SourcesDTO, BaseViewHolder> {
    public SourceSettingAdapter() {
        super(R.layout.item_source_setting_layout, new ArrayList<>());
    }

    @Override
    protected void convert(BaseViewHolder helper, PlayerModel.SourcesDTO item) {
        String str;
        TextView textView = helper.getView(R.id.tvSourceAdd);
        TextView textView2 = helper.getView(R.id.tvSourceSpeed);
        TextView textView3 = helper.getView(R.id.tvSource);
        TextView textView4 = helper.getView(R.id.tvSourceStatus);
        if (item.getKey().equals(SourceSettingFragment.ADD_NEW_KEY)) {
            textView.setVisibility(View.VISIBLE);
            textView3.setVisibility(View.GONE);
            textView4.setVisibility(View.GONE);
            textView2.setVisibility(View.GONE);
        } else if (item.getKey().equals(SourceSettingFragment.TEST_SPEED)) {
            textView2.setVisibility(View.VISIBLE);
            textView3.setVisibility(View.GONE);
            textView4.setVisibility(View.GONE);
            textView.setVisibility(View.GONE);
        } else {
            textView2.setVisibility(View.GONE);
            textView.setVisibility(View.GONE);
            textView3.setVisibility(View.VISIBLE);
            textView4.setVisibility(View.VISIBLE);
            textView3.setText(item.getName());
            if (item.isActive()) {
                textView4.setTextColor(mContext.getResources().getColor(R.color.color_00FF0A));
            } else {
                textView4.setTextColor(mContext.getResources().getColor(R.color.color_FF0057));
            }
            String str2 = "";
            StringBuilder b = new StringBuilder(item.isInternal() ? "△" : str2);
            if (item.isActive()) {
                StringBuilder sb = new StringBuilder();
                sb.append("已启用");
                if (item.isHome()) {
                    str2 = "☆首页源";
                }
                sb.append(str2);
                str = sb.toString();
            } else {
                str = "未启用";
            }
            b.append(str);
            textView4.setText(b.toString());
        }

    }
}
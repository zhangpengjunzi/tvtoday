package com.today.player.ui.adapter;

import android.graphics.Color;
import android.widget.TextView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.video.dkplayer.R;
import com.today.player.ui.dialog.TestSpeed;

import java.util.ArrayList;

public class TestSpeedAdapter extends BaseQuickAdapter<TestSpeed.vg, BaseViewHolder> {

    public TestSpeedAdapter() {
        super(R.layout.item_speed_test_layout, new ArrayList());
    }

    @Override
    protected void convert(BaseViewHolder helper, TestSpeed.vg vgVar) {
        helper.setText(R.id.tvName, vgVar.a.getName());
        int i = vgVar.b;
        int i2 = -65536;
        String a = "正在测速";
        if (i == Integer.MAX_VALUE) {
            a = "连接失败";
        } else {
            if (i > 0) {
                a = i + "ms";
                if (i < 500) {
                    i2 = -16711936;
                }
            }
        }
        helper.setText(R.id.tvSpeed, a);
        ((TextView) helper.getView(R.id.tvSpeed)).setTextColor(i2);
    }
}

package com.today.player.ui.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.chad.library.adapter.base.BaseQuickAdapter;

import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseLazyFragment;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.SourceBean;
import com.today.player.receiver.CustomWebReceiver;
import com.today.player.ui.adapter.SourceSettingAdapter;
import com.today.player.ui.adapter.TestSpeedAdapter;
import com.today.player.ui.dialog.RemoteConnect;
import com.today.player.ui.dialog.SourceSettingDialog;
import com.today.player.ui.dialog.TestSpeed;
import com.today.player.util.FastClickCheckUtil;
import com.tv.leanback.VerticalGridView;

import java.util.ArrayList;
import java.util.List;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class SourceSettingFragment extends BaseLazyFragment {
    private TvRecyclerView mGridView;
    public SourceSettingAdapter settingAdapter;
    private List<PlayerModel.SourcesDTO> mSourceBeanList = new ArrayList<>();
    private int sourceIndex = 0;
    public static final String TEST_SPEED = "testspeed";
    public static final String ADD_NEW_KEY = "addnewkey";
    public CustomWebReceiver.a f177j = new b();


    public static SourceSettingFragment newInstance() {
        return new SourceSettingFragment().setArguments();
    }

    public SourceSettingFragment setArguments() {
        return this;
    }

    @Override
    protected int getLayoutResID() {
        return R.layout.fragment_source_grid;
    }

    @Override
    protected void init() {
        mGridView = findViewById(R.id.mGridView);
        settingAdapter = new SourceSettingAdapter();
        mGridView.setAdapter(settingAdapter);
        mGridView.setLayoutManager(new V7GridLayoutManager(getContext(), 5));
        mSourceBeanList.addAll(ApiConfig.get().getSourceBeanList());
        PlayerModel.SourcesDTO testSpeed = new PlayerModel.SourcesDTO();
        testSpeed.setKey(TEST_SPEED);
        mSourceBeanList.add(0, testSpeed);
        PlayerModel.SourcesDTO addNewBean = new PlayerModel.SourcesDTO();
        addNewBean.setKey(ADD_NEW_KEY);
        mSourceBeanList.add(addNewBean);
        settingAdapter.setNewData(mSourceBeanList);
        settingAdapter.setOnItemClickListener(new SourceItemClickListener());
    }

    public class b implements CustomWebReceiver.a {
        public b() {
        }

        public void a(String str, Object obj) {
            if (str.equals(CustomWebReceiver.b)) {
                SourceSettingFragment.this.settingAdapter.addData(SourceSettingFragment.this.settingAdapter.getData().size() - 1, (PlayerModel.SourcesDTO) obj);
            }
        }
    }


    public class SourceItemClickListener implements BaseQuickAdapter.OnItemClickListener {

        public class C0034a implements SourceSettingDialog.e {
            public final /* synthetic */ int a;

            public C0034a(int i) {
                this.a = i;
            }
        }

        @Override
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            FastClickCheckUtil.check(view);
            PlayerModel.SourcesDTO sourceBean = settingAdapter.getData().get(position);
            if (sourceBean.getKey().equals(ADD_NEW_KEY)) {
                //增加新源
                RemoteConnect connect = new RemoteConnect();
                connect.a(mContext);
                connect.a();
                return;
            }
            if (sourceBean.getKey().equals(TEST_SPEED)) {
                //测速
                TestSpeed ylVar = new TestSpeed();
                ylVar.a = LayoutInflater.from(mContext).inflate(R.layout.dialog_speed_test, (ViewGroup) null);
                Dialog dialog = new Dialog(mContext, R.style.CustomDialogStyle);
                ylVar.b = dialog;
                dialog.setCanceledOnTouchOutside(false);
                ylVar.b.setCancelable(true);
                ylVar.b.setContentView(ylVar.a);
                ylVar.b.setOnDismissListener(new DialogInterface.OnDismissListener() {
                    @Override
                    public void onDismiss(DialogInterface dialog) {
                        ylVar.g.shutdown();
                    }
                });
                ylVar.d = ylVar.a.findViewById(R.id.mGridView);
                ylVar.c = new TestSpeedAdapter();
                ylVar.d.setHasFixedSize(true);
                ylVar.d.setLayoutManager(new V7LinearLayoutManager(mContext, 1, false));
                ylVar.d.setAdapter(ylVar.c);
                ylVar.f.clear();
                for (PlayerModel.SourcesDTO next : ApiConfig.get().getSourceBeanList()) {
                    if (next.isActive() && !next.isAddition()) {
                        ylVar.f.add(new TestSpeed.vg(next));
                    }
                }
                ylVar.c.setNewData(ylVar.f);
                for (int i2 = 0; i2 < ylVar.f.size(); i2++) {
                    //  ylVar.g.execute(new TestSpeed.wl(ylVar, ylVar.f.get(i2), i2));
                    new TestSpeed.wl(ylVar, ylVar.f.get(i2), i2);
                }
                Dialog dialog2 = ylVar.b;
                if (dialog2 != null && !dialog2.isShowing()) {
                    ylVar.b.show();
                    return;
                }
                return;
            }
            SourceSettingDialog olVar = new SourceSettingDialog();
            olVar.e = sourceBean;
            olVar.d = new C0034a(position);
            olVar.a = SourceSettingFragment.this;
            olVar.b = LayoutInflater.from(mContext).inflate(R.layout.dialog_source_set, (ViewGroup) null);
            Dialog dialog3 = new Dialog(mContext, R.style.CustomDialogStyle);
            olVar.c = dialog3;
            dialog3.setCanceledOnTouchOutside(false);
            olVar.c.setCancelable(true);
            olVar.c.setContentView(olVar.b);
            olVar.b();
            Dialog dialog4 = olVar.c;
            if (dialog4 != null && !dialog4.isShowing()) {
                olVar.c.show();
            }
        }
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        CustomWebReceiver.e.add(this.f177j);
    }

    @Override
    public void onDestroyView() {
        CustomWebReceiver.e.remove(this.f177j);
        super.onDestroyView();
    }
}
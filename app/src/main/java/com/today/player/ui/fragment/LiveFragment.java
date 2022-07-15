package com.today.player.ui.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.video.dkplayer.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseLazyFragment;
import com.today.player.bean.PlayerModel;
import com.today.player.cache.LocalLive;
import com.today.player.cache.RoomDataManger;
import com.today.player.receiver.CustomWebReceiver;
import com.today.player.ui.adapter.LiveParseAdapter;
import com.today.player.ui.dialog.LiveParseDialog;
import com.today.player.ui.dialog.RemoteConnect;
import com.today.player.util.FastClickCheckUtil;

import java.util.ArrayList;
import java.util.List;

public class LiveFragment extends BaseLazyFragment {
    public TvRecyclerView mGridView;
    private LiveParseAdapter liveParseAdapter;
    public static final String PAESE_ADD = "+新增直播";

    public CustomWebReceiver.a f173j = new b();

    public static LiveFragment newInstance() {
        return new LiveFragment().setArguments();
    }

    public LiveFragment setArguments() {
        return this;
    }

    @Override
    protected int getLayoutResID() {
        return R.layout.fragment_live_grid;
    }

    @Override
    protected void init() {
        mGridView = findViewById(R.id.mGridView);
        liveParseAdapter = new LiveParseAdapter();
        mGridView.setAdapter(liveParseAdapter);
        mGridView.setLayoutManager(new V7GridLayoutManager(getContext(), 5));
        List<PlayerModel.LiveDTO> arrayList = new ArrayList();
        for (PlayerModel.LiveDTO next : ApiConfig.get().getChannelList()) {
            if (!next.isInternal()) {
                arrayList.add(next);
            }
        }
        PlayerModel.LiveDTO addNewBean = new PlayerModel.LiveDTO();
        addNewBean.setChannelName(PAESE_ADD);
        arrayList.add(addNewBean);
        liveParseAdapter.setNewData(arrayList);
        liveParseAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {

            class C0031a implements LiveParseDialog.a {
                public int a;

                public C0031a(int i) {
                    this.a = i;
                }
            }


            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                PlayerModel.LiveDTO qgVar = arrayList.get(position);
                if (qgVar.isForAdd()) {
                    RemoteConnect connect = new RemoteConnect();
                    connect.a(mContext);
                    connect.a();
                    return;
                }
                LiveParseDialog skVar = new LiveParseDialog();
                skVar.d = new C0031a(position);
                skVar.e = qgVar;
                skVar.a = mContext;
                View view2 = null;
                skVar.b = LayoutInflater.from(mContext).inflate(R.layout.dialog_live_set, (ViewGroup) null);
                Dialog dialog = new Dialog(mContext, R.style.CustomDialogStyle);
                skVar.c = dialog;
                dialog.setCanceledOnTouchOutside(false);
                skVar.c.setCancelable(true);
                skVar.c.setContentView(skVar.b);
                View view3 = skVar.b;
                if (view3 != null) {
                    view2 = view3.findViewById(R.id.tvSrcDel);
                }
                TextView textView = (TextView) view2;
                textView.setTextColor(skVar.e.isInternal() ? -7829368 : -16777216);
                textView.setText(skVar.e.isInternal() ? "内置源不可删除" : "删除此直播源");
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        FastClickCheckUtil.check(view);
                        if (skVar.e.isInternal()) {
                            Toast.makeText(mContext, "内置源不可删除!", Toast.LENGTH_SHORT).show();
                            return;
                        }
                        LocalLive local = skVar.e.getLocal();
                        if (local != null) {
                            RoomDataManger.deleteLocalLive(local);
                        }
                        ApiConfig.get().getChannelList().remove(skVar.e);
                        C0031a aVar = (C0031a) skVar.d;
                        liveParseAdapter.remove(aVar.a);
                        Dialog dialog = skVar.c;
                        if (dialog != null && dialog.isShowing()) {
                            skVar.c.dismiss();
                        }
                    }
                });
                Dialog dialog2 = skVar.c;
                if (dialog2 != null && !dialog2.isShowing()) {
                    skVar.c.show();
                }

            }
        });

    }

    public class b implements CustomWebReceiver.a {
        public b() {
        }

        public void a(String str, Object obj) {
            if (str.equals(CustomWebReceiver.c)) {
                liveParseAdapter.addData(liveParseAdapter.getData().size() - 1, (PlayerModel.LiveDTO) obj);
            }
        }
    }

    public void onDestroyView() {
        CustomWebReceiver.e.remove(this.f173j);
        super.onDestroyView();
    }

    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        CustomWebReceiver.e.add(this.f173j);
    }

}

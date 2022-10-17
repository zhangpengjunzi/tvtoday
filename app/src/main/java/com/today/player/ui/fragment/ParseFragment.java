package com.today.player.ui.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.chad.library.adapter.base.BaseQuickAdapter;

import com.orhanobut.hawk.Hawk;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseLazyFragment;
import com.today.player.bean.PlayerModel;
import com.today.player.cache.LocalParse;
import com.today.player.cache.RoomDataManger;
import com.today.player.receiver.CustomWebReceiver;
import com.today.player.ui.adapter.PraseAdapter;
import com.today.player.ui.dialog.ParseTipDialog;
import com.today.player.ui.dialog.RemoteConnect;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.util.HawkConfig;

import java.util.ArrayList;
import java.util.List;

/**
 * @author pj567
 * @date :2020/12/23
 * @description:
 */
public class ParseFragment extends BaseLazyFragment {
    private TvRecyclerView mGridView;
    private PraseAdapter praseAdapter;
    private List<PlayerModel.ParseUrlDTO> praseBeanList = new ArrayList<>();
    public static final String PAESE_ADD = "+新增解析";
    public CustomWebReceiver.a f176j = new b();

    public class b implements CustomWebReceiver.a {
        public b() {
        }

        public void a(String str, Object obj) {
            if (str.equals(CustomWebReceiver.d)) {
                ParseFragment.this.praseAdapter.add(ParseFragment.this.praseAdapter.getData().size() - 1, (PlayerModel.ParseUrlDTO) obj);
            }
        }
    }


    public static ParseFragment newInstance() {
        return new ParseFragment().setArguments();
    }

    public ParseFragment setArguments() {
        return this;
    }

    @Override
    protected int getLayoutResID() {
        return R.layout.fragment_source_grid;
    }

    @Override
    protected void init() {
        mGridView = findViewById(R.id.mGridView);
        praseAdapter = new PraseAdapter();
        mGridView.setAdapter(praseAdapter);
        mGridView.setLayoutManager(new V7GridLayoutManager(getContext(), 5));
        praseBeanList.addAll(ApiConfig.get().getPraseBeanList());
        //添加增加新的
        PlayerModel.ParseUrlDTO tgVar = new PlayerModel.ParseUrlDTO();
        tgVar.setParseName(PAESE_ADD);
        praseBeanList.add(tgVar);
        praseAdapter.setNewData(praseBeanList);
        praseAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {

            class C0033a implements ParseTipDialog.a {
                public int a;

                public C0033a(int i) {
                    this.a = i;
                }
            }

            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                PlayerModel.ParseUrlDTO tgVar = praseAdapter.getData().get(position);
                if (tgVar.isForAdd()) {
                    RemoteConnect connect = new RemoteConnect();
                    connect.a(mContext);
                    connect.a();
                    return;
                }
                ParseTipDialog clVar = new ParseTipDialog();
                clVar.d = new C0033a(position);
                clVar.e = tgVar;
                clVar.a = mContext;
                View view2 = null;
                clVar.b = LayoutInflater.from(mContext).inflate(R.layout.dialog_parse_set, (ViewGroup) null);
                Dialog dialog = new Dialog(mContext, R.style.CustomDialogStyle);
                clVar.c = dialog;
                dialog.setCanceledOnTouchOutside(false);
                clVar.c.setCancelable(true);
                clVar.c.setContentView(clVar.b);
                View view3 = clVar.b;
                TextView textView = (TextView) (view3 != null ? view3.findViewById(R.id.tvSrcDefault) : null);
                View view4 = clVar.b;
                if (view4 != null) {
                    view2 = view4.findViewById(R.id.tvSrcDel);
                }
                TextView textView2 = (TextView) view2;
                textView.setText(clVar.e.isDefault() ? "当前默认解析地址" : "设为默认解析地址");
                int i2 = -7829368;
                if (clVar.e.isDefault()) {
                    textView.setTextColor(-7829368);
                    textView2.setTextColor(-7829368);
                    textView2.setText("默认解析地址不可删除");
                } else {
                    if (!clVar.e.isInternal()) {
                        i2 = -16777216;
                    }
                    textView2.setTextColor(i2);
                    textView2.setText(clVar.e.isInternal() ? "内置解析不可删除" : "删除解析地址");
                }
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        FastClickCheckUtil.check(view);
                        if (!ApiConfig.get().mParseUrl.equals(clVar.e)) {
                            C0033a aVar = (C0033a) clVar.d;
                            praseAdapter.notifyItemChanged(praseAdapter.getData().indexOf(ApiConfig.get().mParseUrl));
                            praseAdapter.notifyItemChanged(aVar.a);
                            ApiConfig.get().setDefault(clVar.e);
                            Hawk.put(HawkConfig.PARSE_NAME, clVar.e.getParseName());
                            Dialog dialog = clVar.c;
                            if (dialog != null && dialog.isShowing()) {
                                clVar.c.dismiss();
                            }
                        }

                    }
                });
                textView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        FastClickCheckUtil.check(view);
                        if (clVar.e.isDefault()) {
                            Toast.makeText(mContext, "默认解析地址不可删除！", Toast.LENGTH_SHORT).show();
                        } else if (clVar.e.isInternal()) {
                            Toast.makeText(mContext, "内置解析不可删除!", Toast.LENGTH_SHORT).show();
                        } else {
                            LocalParse local = clVar.e.getLocal();
                            if (local != null) {
                                RoomDataManger.deleteLocalParse(local);
                            }
                            C0033a aVar = (C0033a) clVar.d;
                            praseAdapter.remove(aVar.a);
                            ApiConfig.get().getPraseBeanList().remove(clVar.e);
                            Dialog dialog = clVar.c;
                            if (dialog != null && dialog.isShowing()) {
                                clVar.c.dismiss();
                            }
                        }
                    }
                });
                Dialog dialog2 = clVar.c;
                if (dialog2 != null && !dialog2.isShowing()) {
                    clVar.c.show();
                }
            }
        });
    }

    public void onDestroyView() {
        CustomWebReceiver.e.remove(this.f176j);
        super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        CustomWebReceiver.e.add(this.f176j);
    }

}
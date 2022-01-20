package com.today.player.ui.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;

import androidx.exifinterface.media.ExifInterface;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.exoplayer2.audio.DtsUtil;
import com.orhanobut.hawk.Hawk;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseLazyFragment;
import com.today.player.ui.activity.SettingActivity;
import com.today.player.ui.adapter.MediaCodeAdapter;
import com.today.player.ui.dialog.ChanPlayDialog;
import com.today.player.ui.dialog.ChangeRenderDialog;
import com.today.player.ui.dialog.MediaCodeDialog;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.util.HawkConfig;
import com.today.player.util.PlayUtils;

import java.util.List;


public class ModelSettingFragment extends BaseLazyFragment {

    public TextView k;
    public TextView n;
    public TextView o;

    public static ModelSettingFragment newInstance() {
        return new ModelSettingFragment().setArguments();
    }

    public ModelSettingFragment setArguments() {
        return this;
    }

    public class b implements View.OnClickListener {

        public class a implements MediaCodeDialog.a {
            public a() {
            }
        }

        public b() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            MediaCodeDialog jkVar = new MediaCodeDialog();
            Activity f = ModelSettingFragment.this.mActivity;
            a aVar = new a();
            View view2 = null;
            jkVar.a = LayoutInflater.from(f).inflate(R.layout.dialog_change_ijk_code, (ViewGroup) null);
            Dialog dialog = new Dialog(f, R.style.CustomDialogStyle);
            jkVar.b = dialog;
            dialog.setCanceledOnTouchOutside(false);
            jkVar.b.setCancelable(true);
            jkVar.b.setContentView(jkVar.a);
            jkVar.e = aVar;
            View view3 = jkVar.a;
            if (view3 != null) {
                view2 = view3.findViewById(R.id.tvIJKCodecGrid);
            }
            TvRecyclerView tvRecyclerView = (TvRecyclerView) view2;
            jkVar.c = tvRecyclerView;
            tvRecyclerView.setHasFixedSize(true);
            MediaCodeAdapter tjVar = new MediaCodeAdapter();
            jkVar.d = tjVar;
            jkVar.c.setAdapter(tjVar);
            jkVar.c.setLayoutManager(new V7LinearLayoutManager(f, 1, false));
            List<MediaCodeDialog.pg> list = ApiConfig.get().getIjkConfigList();
            jkVar.d.setNewData(list);
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).c) {
                    jkVar.c.setSelection(i);
                    break;
                }
            }
            jkVar.d.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                    FastClickCheckUtil.check(view);
                    for (int i = 0; i < list.size(); i++) {
                        if ((list.get(i)).c) {
                            jkVar.d.notifyItemChanged(i);
                            list.get(i).a(false);
                            break;
                        }
                    }
                    list.get(position).a(true);
                    jkVar.d.notifyItemChanged(position);
                    k.setText(Hawk.get(HawkConfig.MEDIA_CODEC, ""));
                    Dialog dialog = jkVar.b;
                    if (dialog != null && dialog.isShowing()) {
                        jkVar.b.dismiss();
                    }

                }
            });
            Dialog dialog2 = jkVar.b;
            if (dialog2 != null && !dialog2.isShowing()) {
                jkVar.b.show();
            }
        }
    }

    public class c implements View.OnClickListener {

        public class a implements ChanPlayDialog.a {
            public a() {
            }

            public void a() {
                ModelSettingFragment.this.c();
                PlayUtils.a();
            }
        }

        public c() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            ChanPlayDialog nkVar = new ChanPlayDialog();
            nkVar.c = new a();
            nkVar.a = LayoutInflater.from(mContext).inflate(R.layout.dialog_change_play, (ViewGroup) null);
            Dialog dialog = new Dialog(mContext, R.style.CustomDialogStyle);
            nkVar.b = dialog;
            dialog.setCanceledOnTouchOutside(false);
            nkVar.b.setCancelable(true);
            nkVar.b.setContentView(nkVar.a);
            TextView textView = (TextView) nkVar.a(R.id.tvSystem);
            TextView textView2 = (TextView) nkVar.a(R.id.tvIjk);
            TextView textView3 = (TextView) nkVar.a(R.id.tvExo);
            int intValue = Hawk.get(HawkConfig.PLAY_TYPE, 0);
            if (intValue == 1) {
                textView2.requestFocus();
                textView2.setTextColor(mContext.getResources().getColor(R.color.color_058AF4));
            } else if (intValue == 2) {
                textView3.requestFocus();
                textView3.setTextColor(mContext.getResources().getColor(R.color.color_058AF4));
            } else {
                textView.requestFocus();
                textView.setTextColor(mContext.getResources().getColor(R.color.color_058AF4));
            }
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    FastClickCheckUtil.check(view);
                    if (!(intValue == 0 || nkVar.c == null)) {
                        Hawk.put(HawkConfig.PLAY_TYPE, 0);
                        ((ModelSettingFragment.c.a) nkVar.c).a();
                    }
                    nkVar.a();
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    FastClickCheckUtil.check(view);
                    if (!(intValue == 1 || nkVar.c == null)) {
                        Hawk.put(HawkConfig.PLAY_TYPE, 1);
                        ((ModelSettingFragment.c.a) nkVar.c).a();
                    }
                    nkVar.a();
                }
            });
            textView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    FastClickCheckUtil.check(view);
                    if (!(intValue == 2 || nkVar.c == null)) {
                        Hawk.put(HawkConfig.PLAY_TYPE, 2);
                        ((ModelSettingFragment.c.a) nkVar.c).a();
                    }
                    nkVar.a();
                }
            });
            Dialog dialog2 = nkVar.b;
            if (dialog2 != null && !dialog2.isShowing()) {
                nkVar.b.show();
            }
        }
    }

    public class d implements View.OnClickListener {

        public class a implements ChangeRenderDialog.a {
            public a() {

            }

            public void a() {
                ModelSettingFragment.this.d();
                PlayUtils.a();
            }
        }

        public d() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            ChangeRenderDialog qkVar = new ChangeRenderDialog();
            qkVar.c = new a();
            qkVar.a = LayoutInflater.from(mContext).inflate(R.layout.dialog_change_render, (ViewGroup) null);
            Dialog dialog = new Dialog(mContext, R.style.CustomDialogStyle);
            qkVar.b = dialog;
            dialog.setCanceledOnTouchOutside(false);
            qkVar.b.setCancelable(true);
            qkVar.b.setContentView(qkVar.a);
            TextView textView = qkVar.a.findViewById(R.id.tvTextureView);
            TextView textView2 = qkVar.a.findViewById(R.id.tvSurfaceView);
            int intValue = Hawk.get(HawkConfig.PLAY_RENDER, 0);
            if (intValue == 1) {
                textView2.requestFocus();
                textView2.setTextColor(mContext.getResources().getColor(R.color.color_058AF4));
            } else {
                textView.requestFocus();
                textView.setTextColor(mContext.getResources().getColor(R.color.color_058AF4));
            }
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    FastClickCheckUtil.check(view);
                    if (!(intValue == 0 || qkVar.c == null)) {
                        Hawk.put(HawkConfig.PLAY_RENDER, 0);
                        ((ModelSettingFragment.d.a) qkVar.c).a();
                    }
                    Dialog dialog = qkVar.b;
                    if (dialog != null && dialog.isShowing()) {
                        qkVar.b.dismiss();
                    }

                }
            });
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    FastClickCheckUtil.check(view);
                    if (!(intValue == 1 || qkVar.c == null)) {
                        Hawk.put(HawkConfig.PLAY_RENDER, 1);
                        ((ModelSettingFragment.d.a) qkVar.c).a();
                    }
                    Dialog dialog = qkVar.b;
                    if (dialog != null && dialog.isShowing()) {
                        qkVar.b.dismiss();
                    }

                }
            });
            Dialog dialog2 = qkVar.b;
            if (dialog2 != null && !dialog2.isShowing()) {
                qkVar.b.show();
            }
        }
    }


    public class k implements View.OnClickListener {
        public k() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            View inflate = LayoutInflater.from(mContext).inflate(R.layout.dialog_about, (ViewGroup) null);
            Dialog dialog = new Dialog(mContext, R.style.CustomDialogStyle);
            dialog.setCanceledOnTouchOutside(false);
            dialog.setCancelable(true);
            dialog.setContentView(inflate);
            if (!dialog.isShowing()) {
                dialog.show();
            }
        }
    }


    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override
    protected int getLayoutResID() {
        return R.layout.fragment_model;
    }

    @Override
    protected void init() {
        this.k = findViewById(R.id.tvMediaCodec);
        this.n = findViewById(R.id.tvPlay);
        this.o = findViewById(R.id.tvRenderType);
        this.k.setText(Hawk.get(HawkConfig.MEDIA_CODEC, ""));
        c();
        d();

        findViewById(R.id.llAbout).setOnClickListener(new k());
        findViewById(R.id.llMediaCodec).setOnClickListener(new b());
        findViewById(R.id.llPlay).setOnClickListener(new c());
        findViewById(R.id.llRender).setOnClickListener(new d());

    }

    public final void c() {
        int intValue = Hawk.get(HawkConfig.PLAY_TYPE, 0);
        if (intValue == 1) {
            this.n.setText("IJK播放器");
        } else if (intValue == 2) {
            this.n.setText("Exo播放器");
        } else {
            this.n.setText("系统播放器");
        }
    }

    public final void d() {
        int intValue = Hawk.get(HawkConfig.PLAY_RENDER, 0);
        if (intValue == 1) {
            this.o.setText("SurfaceView");
        } else {
            this.o.setText("TextureView");
        }
    }
}

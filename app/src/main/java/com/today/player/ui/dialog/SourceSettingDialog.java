package com.today.player.ui.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.IdRes;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kingja.loadsir.callback.Callback;
import com.kingja.loadsir.core.LoadService;
import com.kingja.loadsir.core.LoadSir;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.bean.AbsSortXml;
import com.today.player.bean.MovieSort;
import com.today.player.bean.PlayerModel;
import com.today.player.cache.Local;
import com.today.player.cache.RoomDataManger;
import com.today.player.cache.SourceState;
import com.today.player.callback.EmptyCallback;
import com.today.player.callback.LoadingCallback;
import com.today.player.dkplayer.om;
import com.today.player.ui.adapter.TipSortAdapter;
import com.today.player.ui.fragment.SourceSettingFragment;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.viewmodel.SourceViewModel;

import java.util.HashMap;

public class SourceSettingDialog {
    public SourceSettingFragment a;
    public View b;
    public Dialog c;
    public e d;
    public PlayerModel.SourcesDTO e;

    public class a implements View.OnClickListener {
        public a() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            if (SourceSettingDialog.this.e.isHome()) {
                Toast.makeText(a.getContext(), "当前首页数据源不可禁用!", Toast.LENGTH_SHORT).show();
                return;
            }
            PlayerModel.SourcesDTO ugVar = SourceSettingDialog.this.e;
            ugVar.setActive(!ugVar.isActive());
            SourceSettingFragment.SourceItemClickListener.C0034a aVar = (SourceSettingFragment.SourceItemClickListener.C0034a) SourceSettingDialog.this.d;
            a.settingAdapter.notifyItemChanged(aVar.a);
            SourceSettingDialog.this.b();
            SourceSettingDialog.this.a();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            if (e.isActive()) {
                SourceSettingFragment.SourceItemClickListener.C0034a aVar = (SourceSettingFragment.SourceItemClickListener.C0034a) d;
                a.settingAdapter.notifyItemChanged(a.settingAdapter.getData().indexOf(ApiConfig.get().getDefaultSourceBean()));
                a.settingAdapter.notifyItemChanged(aVar.a);
                ApiConfig.get().setSourceBean(e);
                SourceSettingDialog.this.b();
                SourceSettingDialog.this.a();
                return;
            }
            Toast.makeText(a.getContext(), "请先启用该数据源!", Toast.LENGTH_SHORT).show();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            if (e.isHome()) {
                Toast.makeText(a.getContext(), "首页数据源不可删除!", Toast.LENGTH_SHORT).show();
            } else if (e.isInternal()) {
                Toast.makeText(a.getContext(), "内置数据源不可删除!", Toast.LENGTH_SHORT).show();
            } else {
                Local local = e.getLocal();
                if (local != null) {
                    RoomDataManger.deleteLocalSource(local);
                }
                SourceState state = e.getState();
                if (state != null) {
                    RoomDataManger.deleteSourceState(state);
                }
                SourceSettingFragment.SourceItemClickListener.C0034a aVar = (SourceSettingFragment.SourceItemClickListener.C0034a) d;
                a.settingAdapter.remove(aVar.a);
                ApiConfig.get().getSourceBeanList().remove(e);
                a();
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        public void onClick(View view) {
            FastClickCheckUtil.check(view);
            if (!e.isActive()) {
                Toast.makeText(a.getContext(), "尚未启用!", Toast.LENGTH_SHORT).show();
                return;
            }
            TipSortDialog ulVar = new TipSortDialog();
            ulVar.c = e;
            View view2 = null;
            ulVar.a = LayoutInflater.from(a.getContext()).inflate(R.layout.dialog_source_tid_sort, (ViewGroup) null);
            Dialog dialog = new Dialog(a.getContext(), R.style.CustomDialogStyle);
            ulVar.b = dialog;
            dialog.setCanceledOnTouchOutside(false);
            ulVar.b.setCancelable(true);
            ulVar.b.setContentView(ulVar.a);
            if (ulVar.g == null) {
                ulVar.g = LoadSir.getDefault().register(ulVar.a, new Callback.OnReloadListener() {
                    @Override
                    public void onReload(View v) {
                    }
                });
            }
            ulVar.b.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public void onDismiss(DialogInterface dialog) {
                    HashMap hashMap = new HashMap();
                    for (int i = 0; i < ulVar.h.size(); i++) {
                        hashMap.put(Integer.valueOf(ulVar.h.get(i).id), Integer.valueOf(i));
                    }
                    ulVar.c.setTidSort(hashMap);

                }
            });
            ulVar.b.setOnKeyListener(new DialogInterface.OnKeyListener() {
                @Override
                public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                    boolean z = false;
                    if (ulVar.i != null && event.getAction() == 0) {
                        int indexOf = ulVar.h.indexOf(ulVar.i);
                        int i2 = -1;
                        switch (keyCode) {
                            case 19:
                                i2 = indexOf - 3;
                                break;
                            case 20:
                                i2 = indexOf + 3;
                                break;
                            case 21:
                                i2 = indexOf - 1;
                                break;
                            case 22:
                                i2 = indexOf + 1;
                                break;
                            default:
                                if (i2 >= 0 && i2 < ulVar.h.size() && i2 != indexOf) {
                                    ulVar.h.remove(indexOf);
                                    ulVar.h.add(i2, ulVar.i);
                                    ulVar.d.notifyItemMoved(indexOf, i2);
                                    break;
                                }
                        }
                    }
                    return z;

                }
            });
            View view3 = ulVar.a;
            if (view3 != null) {
                view2 = view3.findViewById(R.id.mGridView);
            }
            ulVar.e = (TvRecyclerView) view2;
            ulVar.d = new TipSortAdapter();
            ulVar.e.setHasFixedSize(true);
            ulVar.e.setLayoutManager(new V7GridLayoutManager(a.getContext(), 3));
            ulVar.e.setAdapter(ulVar.d);
            ulVar.d.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                    MovieSort.SortData aVar = ulVar.h.get(position);
                    MovieSort.SortData aVar2 = ulVar.i;
                    if (aVar2 == null) {
                        ulVar.i = aVar;
                        aVar.select = true;
                        ulVar.d.notifyItemChanged(position);
                    } else if (aVar == aVar2) {
                        aVar.select = false;
                        ulVar.d.notifyItemChanged(position);
                        ulVar.i = null;
                    }
                }
            });

            SourceViewModel sourceViewModel = new ViewModelProvider(a).get(SourceViewModel.class);
            ulVar.f = sourceViewModel;
            ulVar.f.getSort();
            ulVar.f.sortResult.observe(a, new Observer<AbsSortXml>() {
                @Override
                public void onChanged(AbsSortXml sortXml) {
                    if (sortXml == null) {
                        LoadService loadService = ulVar.g;
                        if (loadService != null) {
                            loadService.showCallback(EmptyCallback.class);
                            return;
                        }
                        return;
                    }
                    LoadService loadService2 = ulVar.g;
                    if (loadService2 != null) {
                        loadService2.showSuccess();
                    }
                    ulVar.h.clear();
                    ulVar.h.addAll(om.a(ulVar.c.getKey(), sortXml.movieSort.sortList, false));
                    ulVar.d.setNewData(ulVar.h);
                    ulVar.d.notifyDataSetChanged();

                }
            });
            LoadService loadService = ulVar.g;
            if (loadService != null) {
                loadService.showCallback(LoadingCallback.class);
            }

            Dialog dialog2 = ulVar.b;
            if (dialog2 != null && !dialog2.isShowing()) {
                ulVar.b.show();
            }
        }
    }

    public interface e {
    }

    public void a() {
        Dialog dialog = this.c;
        if (dialog != null && dialog.isShowing()) {
            this.c.dismiss();
        }
    }

    public void b() {
        TextView textView = (TextView) a(R.id.tvSrcActive);
        TextView textView2 = (TextView) a(R.id.tvSrcHome);
        TextView textView3 = (TextView) a(R.id.tvSrcDel);
        TextView textView4 = (TextView) a(R.id.tvSrcSort);
        textView.setText(this.e.isActive() ? "禁用" : "启用");
        int i = -16777216;
        if (this.e.isActive()) {
            textView2.setTextColor(this.e.isHome() ? -7829368 : -16777216);
            textView2.setText(this.e.isHome() ? "当前首页数据源" : "设为首页数据源");
        } else {
            textView2.setTextColor(-7829368);
            textView2.setText("尚未启用");
        }
        if (this.e.isHome()) {
            textView.setTextColor(-7829368);
            textView3.setTextColor(-7829368);
            textView3.setText("首页数据源不可删除");
        } else {
            textView3.setTextColor(this.e.isInternal() ? -7829368 : -16777216);
            textView3.setText(this.e.isInternal() ? "内置源不可删除" : "删除此数据源");
        }
        if (!this.e.isActive()) {
            i = -7829368;
        }
        textView4.setTextColor(i);
        textView.setOnClickListener(new a());
        textView2.setOnClickListener(new b());
        textView3.setOnClickListener(new c());
        textView4.setOnClickListener(new d());
    }

    public final <T extends View> T a(@IdRes int i) {
        View view = this.b;
        if (view != null) {
            return view.findViewById(i);
        }
        return null;
    }

}

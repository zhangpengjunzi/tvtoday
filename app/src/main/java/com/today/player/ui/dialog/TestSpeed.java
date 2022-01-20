package com.today.player.ui.dialog;

import android.app.Dialog;
import android.os.Handler;
import android.view.View;

import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.callback.AbsCallback;
import com.lzy.okgo.callback.Callback;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.model.Response;
import com.lzy.okgo.request.base.Request;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.HierarchicalStreamDriver;
import com.thoughtworks.xstream.io.xml.DomDriver;
import com.today.player.api.ApiConfig;
import com.today.player.bean.AbsSortXml;
import com.today.player.bean.MovieSort;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.SortTitle;
import com.today.player.ui.adapter.TestSpeedAdapter;

import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import okhttp3.OkHttpClient;

public class TestSpeed {
    public View a;
    public Dialog b;
    public TestSpeedAdapter c;
    public TvRecyclerView d;
    public Handler e = new Handler();
    public List<vg> f = new ArrayList();
    public final ExecutorService g = Executors.newFixedThreadPool(5);
    public int h = 0;
    public final Object i = new Object();

    /* renamed from: j  reason: collision with root package name */
    public int f40j = 0;


    public static class vg implements Comparable {

        public PlayerModel.SourcesDTO a;
        public int b = 0;

        public vg(PlayerModel.SourcesDTO ugVar) {
            this.a = ugVar;
        }

        @Override
        public int compareTo(Object o) {
            return this.b - ((vg) o).b;
        }
    }


    public static class wl {
        public final /* synthetic */ vg a;
        public final /* synthetic */ int b;
        public final /* synthetic */ TestSpeed c;

        public class a extends AbsCallback<String> {

            public final long[] a;
            public final int b;

            public a(long[] jArr, int i) {
                this.a = jArr;
                this.b = i;
            }

            public class C0008a implements Runnable {
                public C0008a() {
                }

                public void run() {
                    wl wlVar = wl.this;
                    wlVar.c.c.notifyItemChanged(wlVar.b);
                }
            }

            public class b implements Runnable {
                public b() {
                }

                public void run() {
                    Collections.sort(wl.this.c.f);
                    wl.this.c.c.notifyDataSetChanged();
                    wl.this.c.d.setSelection(0);
                }
            }

            @Override
            public void onStart(Request<String, ? extends Request> request) {
                this.a[0] = System.currentTimeMillis();
            }

            @Override
            public void onSuccess(Response<String> response) {
                try {
                    if (this.b == 0) {
                        XStream xstream = new XStream(new DomDriver());//创建Xstram对象
                        xstream.autodetectAnnotations(true);
                        xstream.processAnnotations(AbsSortXml.class);
                        xstream.ignoreUnknownElements();
                        AbsSortXml data = (AbsSortXml) xstream.fromXML(response.body());
                    } else if (this.b == 1) {
                        MovieSort movieSort = new MovieSort();
                        JSONObject item = new JSONObject(response.body());
                        List<SortTitle> sortTitles = new Gson().fromJson(Objects.requireNonNull(item.optJSONArray("class")).toString(), new TypeToken<List<SortTitle>>() {
                        }.getType());
                        List<MovieSort.SortData> dataList = new ArrayList<>();
                        List<String> filter = ApiConfig.get().getFilterResult();
                        for (int i = 0; i < sortTitles.size(); i++) {
                            if (!filter.contains(sortTitles.get(i).getType_name())) {
                                MovieSort.SortData sortData = new MovieSort.SortData();
                                sortData.id = sortTitles.get(i).getType_id();
                                sortData.name = sortTitles.get(i).getType_name();
                                dataList.add(sortData);
                            }
                        }
                        movieSort.sortList = dataList;
                        AbsSortXml data = new AbsSortXml();
                        data.movieSort = movieSort;
                    }
                } catch (Throwable unused) {
                    wl.this.a.b = Integer.MAX_VALUE;
                }
            }


            @Override
            public void onError(Response<String> response) {
                wl.this.a.b = Integer.MAX_VALUE;
            }

            @Override
            public void onFinish() {
                this.a[1] = System.currentTimeMillis();
                vg vgVar = wl.this.a;
                if (vgVar.b == 0) {
                    long[] jArr = this.a;
                    vgVar.b = (int) (jArr[1] - jArr[0]);
                }
                wl.this.c.e.postDelayed(new C0008a(), 100);
                synchronized (wl.this.c.i) {
                    TestSpeed ylVar = wl.this.c;
                    ylVar.h--;
                    TestSpeed ylVar2 = wl.this.c;
                    ylVar2.f40j--;
                    if (wl.this.c.f40j <= 0) {
                        wl.this.c.e.postDelayed(new a.b(), 100);
                    }
                }
            }

            @Override
            public String convertResponse(okhttp3.Response response) throws Throwable {
                if (response.body() != null) {
                    return response.body().string();
                } else {
                    throw new IllegalStateException("网络请求错误");
                }
            }
        }


        public wl(TestSpeed ylVar, TestSpeed.vg vgVar, int i) {
            this.c = ylVar;
            this.a = vgVar;
            this.b = i;
            testSpeed();
        }

        public void testSpeed() {
            OkGo.<String>get(a.a.getApi())
                    .tag("speed_test")
                    .execute(new a(new long[2], a.a.getType()));
        }
    }
}

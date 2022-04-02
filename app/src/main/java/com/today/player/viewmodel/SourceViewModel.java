package com.today.player.viewmodel;

import android.text.TextUtils;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.callback.AbsCallback;
import com.lzy.okgo.model.Response;
import com.lzy.okgo.request.GetRequest;
import com.ma.ds.ZuImpl;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;
import com.thoughtworks.xstream.security.AnyTypePermission;
import com.today.player.api.ApiConfig;
import com.today.player.bean.AbsSortXml;
import com.today.player.bean.AbsXml;
import com.today.player.bean.ListBean;
import com.today.player.bean.Movie;
import com.today.player.bean.MovieSort;
import com.today.player.bean.SortTitle;
import com.today.player.event.RefreshEvent;
import com.upa.DownloadManager;

import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * @author pj567
 * @date :2020/12/18
 * @description:
 */
public class SourceViewModel extends ViewModel {
    public MutableLiveData<AbsSortXml> sortResult;
    public MutableLiveData<AbsXml> listResult;
    public MutableLiveData<AbsXml> searchResult;
    public MutableLiveData<AbsXml> detailResult;

    public SourceViewModel() {
        sortResult = new MutableLiveData<>();
        listResult = new MutableLiveData<>();
        searchResult = new MutableLiveData<>();
        detailResult = new MutableLiveData<>();
    }

    public void getSort() {
        if (ApiConfig.get().getDefaultSourceBean() == null) return;
        OkGo.<String>get(ApiConfig.get().getBaseUrl())
                .tag(ApiConfig.get().getBaseUrl())
                .execute(new AbsCallback<String>() {
                    @Override
                    public String convertResponse(okhttp3.Response response) throws Throwable {
                        if (response.body() != null) {
                            return response.body().string();
                        } else {
                            throw new IllegalStateException("网络请求错误");
                        }
                    }

                    @Override
                    public void onSuccess(Response<String> response) {
                        String xml = response.body();
                        if (ApiConfig.get().getDefaultSourceBean() == null) return;
                        if (ApiConfig.get().getDefaultSourceBean().getType() == 0) {
                            //xml解析
                            sotXml(sortResult, xml);
                        } else {
                            //JSON解析
                            sotJson(sortResult, xml);
                        }
                    }

                    @Override
                    public void onError(Response<String> response) {
                        super.onError(response);
                        sortResult.postValue(null);
                    }
                });
    }

    public void getList(int id, int page) {
        if (ApiConfig.get().getDefaultSourceBean() == null) return;
        GetRequest<String> request = OkGo.<String>get(ApiConfig.get().getBaseUrl())
                .tag(ApiConfig.get().getBaseUrl())
                .params("ac", "videolist")
                .params("t", id)
                .params("pg", page);
        request.execute(new AbsCallback<String>() {
            @Override
            public String convertResponse(okhttp3.Response response) throws Throwable {
                if (response.body() != null) {
                    return response.body().string();
                } else {
                    throw new IllegalStateException("网络请求错误");
                }
            }

            @Override
            public void onSuccess(Response<String> response) {
                String xml = response.body();
                if (ApiConfig.get().getDefaultSourceBean() == null) return;
                if (ApiConfig.get().getDefaultSourceBean().getType() == 0) {
                    //xml解析
                    xml(listResult, xml, ApiConfig.get().getBaseUrl(), ApiConfig.get().getDefaultSourceBean().getKey());
                } else {
                    //JSON解析
                    json(listResult, xml, ApiConfig.get().getBaseUrl(), ApiConfig.get().getDefaultSourceBean().getKey());
                }
            }

            @Override
            public void onError(Response<String> response) {
                super.onError(response);
                listResult.postValue(null);
            }
        });
    }

    public void getSearch(String api, String wd, String sourceName) {
        OkGo.<String>get(api)
                .params("wd", wd)
                .tag("search")
                .execute(new AbsCallback<String>() {
                    @Override
                    public String convertResponse(okhttp3.Response response) throws Throwable {
                        if (response.body() != null) {
                            return response.body().string();
                        } else {
                            throw new IllegalStateException("网络请求错误");
                        }
                    }

                    @Override
                    public void onSuccess(Response<String> response) {
                        String xml = response.body();
                        if (ApiConfig.get().getSource(sourceName) == null) return;
                        int type = ApiConfig.get().getSource(sourceName).getType();
                        if (type == 0) {
                            //xml解析
                            xml(searchResult, xml, api, sourceName);
                        } else {
                            //JSON解析
                            json(searchResult, xml, api, sourceName);
                        }
                    }

                    @Override
                    public void onError(Response<String> response) {
                        super.onError(response);
                        searchResult.postValue(null);
                    }
                });
    }

    public void getDetail(String api, int id, String key) {
        OkGo.<String>get(api)
                .tag("detail")
                .params("ac", "videolist")
                .params("ids", id)
                .execute(new AbsCallback<String>() {

                    @Override
                    public String convertResponse(okhttp3.Response response) throws Throwable {
                        if (response.body() != null) {
                            return response.body().string();
                        } else {
                            throw new IllegalStateException("网络请求错误");
                        }
                    }

                    @Override
                    public void onSuccess(Response<String> response) {
                        String xml = response.body();
                        if (ApiConfig.get().getSource(key) == null) return;
                        int type = ApiConfig.get().getSource(key).getType();
                        if (type == 0) {
                            //xml解析
                            xml(detailResult, xml, api, key);
                        } else {
                            //JSON解析
                            json(detailResult, xml, api, key);
                        }
                    }

                    @Override
                    public void onError(Response<String> response) {
                        super.onError(response);
                        detailResult.postValue(null);
                    }
                });
    }

    private void sotXml(MutableLiveData<AbsSortXml> result, String xml) {
        try {
            XStream xstream = new XStream(new DomDriver());//创建Xstram对象
            xstream.addPermission(AnyTypePermission.ANY);
            xstream.autodetectAnnotations(true);
            xstream.processAnnotations(AbsSortXml.class);
            xstream.ignoreUnknownElements();
            AbsSortXml data = (AbsSortXml) xstream.fromXML(xml);
            result.postValue(filterSort(data));
        } catch (Exception e) {
            result.postValue(null);
        }
    }

    private void sotJson(MutableLiveData<AbsSortXml> result, String xml) {
        try {
            MovieSort movieSort = new MovieSort();
            JSONObject item = new JSONObject(xml);
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
            result.postValue(data);
        } catch (Exception e) {
            result.postValue(null);
        }
    }

    private AbsSortXml filterSort(AbsSortXml sortXml) {
        List<String> filter = ApiConfig.get().getFilterResult();
        List<MovieSort.SortData> sortDataList = sortXml.movieSort.sortList;
        if (filter != null && filter.size() > 0 && sortDataList != null && sortDataList.size() > 0) {
            List<MovieSort.SortData> newList = new ArrayList<>();
            for (int i = 0; i < sortDataList.size(); i++) {
                if (!filter.contains(sortDataList.get(i).name)) {
                    newList.add(sortDataList.get(i));
                }
            }
            sortXml.movieSort.sortList = newList;
        }
        return sortXml;
    }

    private void xml(MutableLiveData<AbsXml> result, String xml, String api, String sourceName) {
        try {
            XStream xstream = new XStream(new DomDriver());//创建Xstram对象
            xstream.addPermission(AnyTypePermission.ANY);
            xstream.autodetectAnnotations(true);
            xstream.processAnnotations(AbsXml.class);
            xstream.ignoreUnknownElements();
            if (xml.contains("<year></year>")) {
                xml = xml.replace("<year></year>", "<year>0</year>");
            }
            if (xml.contains("<state></state>")) {
                xml = xml.replace("<state></state>", "<state>0</state>");
            }
            AbsXml data = (AbsXml) xstream.fromXML(xml);
            data.api = api;
            if (data.movie != null && data.movie.videoList != null) {
                for (Movie.Video video : data.movie.videoList) {
                    if (video.urlBean != null && video.urlBean.infoList != null) {
                        for (Movie.Video.UrlBean.UrlInfo urlInfo : video.urlBean.infoList) {
                            String[] str = null;
                            if (urlInfo.urls.contains("#")) {
                                str = urlInfo.urls.split("#");
                            } else {
                                str = new String[]{urlInfo.urls};
                            }
                            List<Movie.Video.UrlBean.UrlInfo.InfoBean> infoBeanList = new ArrayList<>();
                            for (String s : str) {
                                if (s.contains("$")) {
                                    infoBeanList.add(new Movie.Video.UrlBean.UrlInfo.InfoBean(s.substring(0, s.indexOf("$")), s.substring(s.indexOf("$") + 1)));
                                }
                            }
                            urlInfo.beanList = infoBeanList;
                        }
                    }
                    video.api = api;
                    video.sourceName = sourceName;
                    video.sourceKey = sourceName;
                }
            }
            result.postValue(data);
        } catch (Exception e) {
            result.postValue(null);
        }
    }


    private void json(MutableLiveData<AbsXml> result, String xml, String api, String sourceName) {
        try {
            ListBean bean = new Gson().fromJson(xml, ListBean.class);
            AbsXml data = bean.toAbsXml();
            data.api = api;
            if (data.movie != null && data.movie.videoList != null) {
                for (Movie.Video video : data.movie.videoList) {
                    if (video.urlBean != null && video.urlBean.infoList != null) {
                        for (Movie.Video.UrlBean.UrlInfo urlInfo : video.urlBean.infoList) {
                            String[] str = null;
                            if (urlInfo.urls.contains("#")) {
                                str = urlInfo.urls.split("#");
                            } else {
                                str = new String[]{urlInfo.urls};
                            }
                            List<Movie.Video.UrlBean.UrlInfo.InfoBean> infoBeanList = new ArrayList<>();
                            for (String s : str) {
                                if (s.contains("$")) {
                                    infoBeanList.add(new Movie.Video.UrlBean.UrlInfo.InfoBean(s.substring(0, s.indexOf("$")), s.substring(s.indexOf("$") + 1)));
                                }
                            }
                            urlInfo.beanList = infoBeanList;
                        }
                    }
                    video.api = api;
                    video.sourceName = sourceName;
                    video.sourceKey = sourceName;
                }
            }
            result.postValue(data);
        } catch (Exception e) {
            result.postValue(null);
        }
    }


    @Override
    protected void onCleared() {
        super.onCleared();
        OkGo.getInstance().cancelAll();
    }


    public void getFenCi(String url) {
        OkGo.<String>get(url)
                .tag("fenci")
                .execute(new AbsCallback<String>() {
                    @Override
                    public String convertResponse(okhttp3.Response response) throws Throwable {
                        if (response.body() != null) {
                            return response.body().string();
                        } else {
                            throw new IllegalStateException("网络请求错误");
                        }
                    }

                    @Override
                    public void onSuccess(Response<String> response) {
                        String xml = response.body();
                        if (!TextUtils.isEmpty(xml)) {
                            try {
                                JSONArray object = new JSONArray(xml);
                                if (object != null && object.length() > 0) {
                                    List<String> fenciList = new ArrayList<>();
                                    for (int i = 0; i < object.length(); i++) {
                                        JSONObject item = object.optJSONObject(i);
                                        fenciList.add(item.optString("t"));
                                    }
                                    EventBus.getDefault().post(new RefreshEvent(RefreshEvent.TYPE_SEARCH_FENCI, fenciList));
                                }
                            } catch (Exception e) {
                            }
                        }
                    }

                    @Override
                    public void onError(Response<String> response) {
                        super.onError(response);
                        detailResult.postValue(null);
                    }
                });
    }
}
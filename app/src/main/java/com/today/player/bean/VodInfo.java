package com.today.player.bean;

import com.today.player.util.DefaultConfig;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * @author pj567
 * @date :2020/12/22
 * @description:
 */
public class VodInfo implements Serializable {
    public String last;//时间
    //内容id
    public int id;
    //父级id
    public int tid;
    //影片名称 <![CDATA[老爸当家]]>
    public String name;
    //类型名称
    public String type;
    //视频分类zuidam3u8,zuidall
    public String dt;
    //图片
    public String pic;
    //语言
    public String lang;
    //地区
    public String area;
    //年份
    public int year;
    public String state;
    //描述集数或者影片信息<![CDATA[共40集]]>
    public String note;
    //演员<![CDATA[张国立,蒋欣,高鑫,曹艳艳,王维维,韩丹彤,孟秀,王新]]>
    public String actor;
    //导演<![CDATA[陈国星]]>
    public String director;
    public List<VodFrom> fromList;
    public String des;// <![CDATA[权来]
    public boolean isX5;
    public int playIndex = 0;
    public String apiUrl;
    public int playFlag = 0;
    public LinkedHashMap<String, List<VodSeries>> seriesMap;

    public void setVideo(Movie.Video video) {
        last = video.last;
        id = video.id;
        tid = video.tid;
        name = video.name;
        type = video.type;
        dt = video.dt;
        pic = video.pic;
        lang = video.lang;
        area = video.area;
        year = video.year;
        state = video.state;
        note = video.note;
        actor = video.actor;
        director = video.director;
        des = video.des;
        if (video.urlBean != null && video.urlBean.infoList != null && video.urlBean.infoList.size() > 0) {
            fromList = new ArrayList<>();
            seriesMap = new LinkedHashMap<>();
            for (Movie.Video.UrlBean.UrlInfo urlInfo : video.urlBean.infoList) {
                fromList.add(new VodFrom(urlInfo.flag));
                List<VodSeries> seriesList = new ArrayList<>();
                for (Movie.Video.UrlBean.UrlInfo.InfoBean infoBean : urlInfo.beanList) {
                    seriesList.add(new VodSeries(infoBean.name, infoBean.url));
                }
                seriesMap.put(urlInfo.flag, seriesList);
            }
        }
    }


    public static class VodSeries implements Serializable {

        public String name;
        public String url;
        public boolean selected = false;

        public VodSeries() {
        }

        public VodSeries(String name, String url) {
            this.name = name;
            this.url = url;
        }
    }

    public static class VodFrom implements Serializable {
        public String name;
        public boolean selected = false;

        public VodFrom() {
        }

        public VodFrom(String str) {
            this.name = str;
        }
    }

}
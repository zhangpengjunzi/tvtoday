package com.today.player.bean;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamConverter;
import com.thoughtworks.xstream.annotations.XStreamImplicit;
import com.thoughtworks.xstream.converters.extended.ToAttributedValueConverter;

import java.io.Serializable;
import java.util.List;

/**
 * @author pj567
 * @date :2020/12/18
 * @description:
 */
@XStreamAlias("class")
public class MovieSort implements Serializable {
    @XStreamImplicit(itemFieldName = "ty")
    public List<SortData> sortList;

    @XStreamAlias("ty")
    @XStreamConverter(value = ToAttributedValueConverter.class, strings = {"name"})
    public static class SortData implements Serializable, Comparable<SortData> {
        @XStreamAsAttribute
        public int id;
        public String name;
        public boolean select = false;
        public int sort = -1;

        public int compareTo(SortData aVar) {
            return this.sort - aVar.sort;
        }

        public SortData() {
        }

        public SortData(int id, String name) {
            this.id = id;
            this.name = name;
        }


    }
}
package com.today.player.bean;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.today.player.cache.Local;
import com.today.player.cache.LocalLive;
import com.today.player.cache.LocalParse;
import com.today.player.cache.RoomDataManger;
import com.today.player.cache.SourceState;
import com.today.player.ui.fragment.LiveFragment;
import com.today.player.ui.fragment.ParseFragment;
import com.today.player.ui.fragment.SourceSettingFragment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PlayerModel {

    private List<SourcesDTO> sources;
    private List<LiveDTO> live;
    private List<String> parseFlag;
    private List<ParseUrlDTO> parseUrl;
    private FilterDTO filter;
    private IjkDTO ijk;
    private List<String> ads;
    private TxadDTO txad;
    private TTadDTO ttad;
    private BdadDTO bdad;

    public BdadDTO getBdad() {
        return bdad;
    }

    public void setBdad(BdadDTO bdad) {
        this.bdad = bdad;
    }

    public TTadDTO getTtad() {
        return ttad;
    }

    public void setTtad(TTadDTO ttad) {
        this.ttad = ttad;
    }

    public TxadDTO getTxad() {
        return txad;
    }

    public void setTxad(TxadDTO txad) {
        this.txad = txad;
    }

    public List<SourcesDTO> getSources() {
        return sources;
    }

    public void setSources(List<SourcesDTO> sources) {
        this.sources = sources;
    }

    public List<LiveDTO> getLive() {
        return live;
    }

    public void setLive(List<LiveDTO> live) {
        this.live = live;
    }

    public List<String> getParseFlag() {
        return parseFlag;
    }

    public void setParseFlag(List<String> parseFlag) {
        this.parseFlag = parseFlag;
    }

    public List<ParseUrlDTO> getParseUrl() {
        return parseUrl;
    }

    public void setParseUrl(List<ParseUrlDTO> parseUrl) {
        this.parseUrl = parseUrl;
    }

    public FilterDTO getFilter() {
        return filter;
    }

    public void setFilter(FilterDTO filter) {
        this.filter = filter;
    }

    public IjkDTO getIjk() {
        return ijk;
    }

    public void setIjk(IjkDTO ijk) {
        this.ijk = ijk;
    }

    public List<String> getAds() {
        return ads;
    }

    public void setAds(List<String> ads) {
        this.ads = ads;
    }

    public static class TxadDTO {
        private List<String> tiepian_image;
        private List<String> tiepian_video;
        private List<String> pause_image;

        public List<String> getTiepian_image() {
            return tiepian_image;
        }

        public void setTiepian_image(List<String> tiepian_image) {
            this.tiepian_image = tiepian_image;
        }

        public List<String> getTiepian_video() {
            return tiepian_video;
        }

        public void setTiepian_video(List<String> tiepian_video) {
            this.tiepian_video = tiepian_video;
        }

        public List<String> getPause_image() {
            return pause_image;
        }

        public void setPause_image(List<String> pause_image) {
            this.pause_image = pause_image;
        }
    }


    public static class TTadDTO {
        private List<String> tiepian_image;
        private List<String> tiepian_video;
        private List<String> pause_image;

        public List<String> getPause_image() {
            return pause_image;
        }

        public void setPause_image(List<String> pause_image) {
            this.pause_image = pause_image;
        }

        public List<String> getTiepian_image() {
            return tiepian_image;
        }

        public void setTiepian_image(List<String> tiepian_image) {
            this.tiepian_image = tiepian_image;
        }

        public List<String> getTiepian_video() {
            return tiepian_video;
        }

        public void setTiepian_video(List<String> tiepian_video) {
            this.tiepian_video = tiepian_video;
        }
    }


    public static class BdadDTO {
        private List<String> tiepian_image;
        private List<String> tiepian_video;
        private List<String> pause_image;

        public List<String> getPause_image() {
            return pause_image;
        }

        public void setPause_image(List<String> pause_image) {
            this.pause_image = pause_image;
        }

        public List<String> getTiepian_image() {
            return tiepian_image;
        }

        public void setTiepian_image(List<String> tiepian_image) {
            this.tiepian_image = tiepian_image;
        }

        public List<String> getTiepian_video() {
            return tiepian_video;
        }

        public void setTiepian_video(List<String> tiepian_video) {
            this.tiepian_video = tiepian_video;
        }
    }

    public static class FilterDTO {
        private List<String> base;
        private List<String> adolescent;

        public List<String> getBase() {
            return base;
        }

        public void setBase(List<String> base) {
            this.base = base;
        }

        public List<String> getAdolescent() {
            return adolescent;
        }

        public void setAdolescent(List<String> adolescent) {
            this.adolescent = adolescent;
        }
    }

    public static class IjkDTO {
        private List<String> option_bak;
        private List<String> option;
        private List<ConfigDTO> config;

        public List<String> getOption_bak() {
            return option_bak;
        }

        public void setOption_bak(List<String> option_bak) {
            this.option_bak = option_bak;
        }

        public List<String> getOption() {
            return option;
        }

        public void setOption(List<String> option) {
            this.option = option;
        }

        public List<ConfigDTO> getConfig() {
            return config;
        }

        public void setConfig(List<ConfigDTO> config) {
            this.config = config;
        }

        public static class ConfigDTO {
            private String name;
            private List<String> option;

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public List<String> getOption() {
                return option;
            }

            public void setOption(List<String> option) {
                this.option = option;
            }
        }
    }

    public static class SourcesDTO {
        private String key;
        private String name;
        private int type;
        private String api;
        private String playerUrl;
        public boolean selected = false;
        private SourceState state;
        private Local local;

        public SourceState getState() {
            if (this.state == null) {
                state = new SourceState();
                state.sourceKey = getKey();
                state.active = true;
                state.home = false;
            }
            return this.state;
        }

        public Local getLocal() {
            return this.local;
        }

        public void setTidSort(HashMap<Integer, Integer> hashMap) {
            getState().tidSort = new Gson().toJson((Object) hashMap);
            RoomDataManger.insertSourceState(getState());
        }

        public HashMap<Integer, Integer> getTidSort() {
            return new Gson().fromJson(this.state.tidSort, new TypeToken<HashMap<Integer, Integer>>() {
            }.getType());
        }


        public void initFromLocal(Local ghVar) {
            setKey(ghVar.name);
            setName(ghVar.name);
            setApi(ghVar.api);
            setType(ghVar.type);
            this.local = ghVar;
            setPlayerUrl(ghVar.playerUrl);
        }


        public boolean isInternal() {
            return this.local == null;
        }

        public void setState(SourceState khVar) {
            this.state = khVar;
        }

        public boolean isActive() {
            return getState().active;
        }


        public boolean isHome() {
            return getState().home;
        }


        public void setActive(boolean z) {
            getState().active = z;
            RoomDataManger.insertSourceState(getState());
        }

        public void setHome(boolean z) {
            getState().home = z;
            RoomDataManger.insertSourceState(getState());
        }


        public boolean isAddition() {
            return getKey().equals(SourceSettingFragment.TEST_SPEED) || getKey().equals(SourceSettingFragment.ADD_NEW_KEY);
        }

        public boolean isSelected() {
            return selected;
        }

        public void setSelected(boolean selected) {
            this.selected = selected;
        }

        public String getKey() {
            return key;
        }

        public void setKey(String key) {
            this.key = key;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getType() {
            return type;
        }

        public void setType(int type) {
            this.type = type;
        }

        public String getApi() {
            return api;
        }

        public void setApi(String api) {
            this.api = api;
        }

        public String getPlayerUrl() {
            return playerUrl;
        }

        public void setPlayerUrl(String playerUrl) {
            this.playerUrl = playerUrl;
        }
    }

    public static class LiveDTO {
        private int channelNum;
        private String channelName;
        private List<String> channelUrl;
        public boolean isDefault;
        public LocalLive live;
        public LocalLive local;
        public int sourceIdx = 0;


        public String getCurrentChannelUrl() {
            int i = this.sourceIdx;
            if (i <= 0 || i >= this.channelUrl.size()) {
                this.sourceIdx = 0;
            }
            return this.channelUrl.get(this.sourceIdx);
        }

        public LocalLive getLocal() {
            return this.local;
        }

        public void initFromLocal(LocalLive ahVar) {
            this.channelName = ahVar.name;
            ArrayList<String> arrayList = new ArrayList<>();
            this.channelUrl = arrayList;
            arrayList.add(ahVar.url);
            this.local = ahVar;
        }

        public boolean isDefault() {
            return this.isDefault;
        }


        public void setDefault(boolean z) {
            this.isDefault = z;
        }


        public boolean isForAdd() {
            return getChannelName().equals(LiveFragment.PAESE_ADD);
        }

        public boolean isInternal() {
            return this.local == null;
        }


        public int getChannelNum() {
            return channelNum;
        }

        public void setChannelNum(int channelNum) {
            this.channelNum = channelNum;
        }

        public String getChannelName() {
            return channelName;
        }

        public void setChannelName(String channelName) {
            this.channelName = channelName;
        }

        public List<String> getChannelUrl() {
            return channelUrl;
        }

        public void setChannelUrl(List<String> channelUrl) {
            this.channelUrl = channelUrl;
        }
    }

    public static class ParseUrlDTO {
        private String parseName;
        private String parseUrl;

        public boolean isDefault = false;
        public LocalParse local;

        public LocalParse getLocal() {
            return this.local;
        }

        public void initFromLocal(LocalParse dhVar) {
            setParseName(dhVar.name);
            setParseUrl(dhVar.url);
            this.local = dhVar;
        }

        public boolean isDefault() {
            return this.isDefault;
        }

        public boolean isForAdd() {
            return getParseName().equals(ParseFragment.PAESE_ADD);
        }

        public boolean isInternal() {
            return this.local == null;
        }

        public void setDefault(boolean z) {
            this.isDefault = z;
        }


        public String getParseName() {
            return parseName;
        }

        public void setParseName(String parseName) {
            this.parseName = parseName;
        }

        public String getParseUrl() {
            return parseUrl;
        }

        public void setParseUrl(String parseUrl) {
            this.parseUrl = parseUrl;
        }
    }
}

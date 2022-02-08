package com.today.player.api;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.text.TextUtils;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.orhanobut.hawk.Hawk;
import com.today.player.bean.LiveChannel;
import com.today.player.bean.PlayerModel;
import com.today.player.bean.PraseBean;
import com.today.player.bean.SearchRequest;
import com.today.player.bean.SourceBean;
import com.today.player.cache.Local;
import com.today.player.cache.LocalLive;
import com.today.player.cache.LocalParse;
import com.today.player.cache.RoomDataManger;
import com.today.player.cache.SourceState;
import com.today.player.event.TopStateEvent;
import com.today.player.ui.dialog.MediaCodeDialog;
import com.today.player.util.HawkConfig;
import com.today.player.util.L;
import com.upa.source.HintSource;
import com.upa.view.ConfirmSourceDialog;

import org.greenrobot.eventbus.EventBus;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * @author pj567
 * @date :2020/12/18
 * @description:
 */
public class ApiConfig {
    public static String PinYinUrl = "https://www.yuming8.com/pinyin/jieshi/";
    private static ApiConfig instance;
    private List<PlayerModel.SourcesDTO> sourceBeanList;
    private List<SearchRequest> searchRequestList;
    private PlayerModel.SourcesDTO mSourceBean;
    public PlayerModel.ParseUrlDTO mParseUrl;
    //直播源2
    private List<PlayerModel.LiveDTO> channelList;
    private List<PlayerModel.ParseUrlDTO> praseBeanList;
    private List<String> filterResult;
    private List<MediaCodeDialog.pg> ijkConfigList;
    private List<String> adsList;
    private List<String> parseFlag;

    private ApiConfig() {
        sourceBeanList = new ArrayList<>();
        searchRequestList = new ArrayList<>();
        channelList = new ArrayList<>();
        praseBeanList = new ArrayList<>();
        ijkConfigList = new ArrayList<>();
        adsList = new ArrayList<>();
    }

    public static ApiConfig get() {
        if (instance == null) {
            synchronized (ApiConfig.class) {
                if (instance == null) {
                    instance = new ApiConfig();
                }
            }
        }
        return instance;
    }

    public void loadSource(String json) {
        Gson gson = new Gson();
        PlayerModel model = gson.fromJson(json, PlayerModel.class);
        sourceBeanList = model.getSources();
        //添加本地数据
        List<Local> localList = RoomDataManger.getAllLocalSource();
        if (localList != null && localList.size() > 0) {
            for (Local local : localList) {
                PlayerModel.SourcesDTO ugVar2 = new PlayerModel.SourcesDTO();
                ugVar2.initFromLocal(local);
                if (sourceBeanList == null) {
                    sourceBeanList = new ArrayList<>();
                }
                sourceBeanList.add(ugVar2);
            }
        }
        if (sourceBeanList != null && sourceBeanList.size() > 0) {
            HashMap<String, SourceState> hashMap = new HashMap();
            List<SourceState> stateList = RoomDataManger.getAllSourceState();
            if (stateList != null && stateList.size() > 0) {
                for (SourceState state : stateList) {
                    hashMap.put(state.sourceKey, state);
                }
            }
            for (PlayerModel.SourcesDTO sourceBean : sourceBeanList) {
                if (hashMap.containsKey(sourceBean.getKey())) {
                    sourceBean.setState(hashMap.get(sourceBean.getKey()));
                }
                if (sourceBean.isHome()) {
                    setSourceBean(sourceBean);
                    cc(sourceBean);
                    break;
                }
            }
            if (mSourceBean == null) {
                mSourceBean = sourceBeanList.get(0);
                setSourceBean(mSourceBean);
            }
            for (int i = 0; i < sourceBeanList.size(); i++) {
                PlayerModel.SourcesDTO sourceBean = sourceBeanList.get(i);
                searchRequestList.add(new SearchRequest(i, sourceBean.getApi(), sourceBean.getName()));
            }
        }
        //sort标题过滤
        filterResult = model.getFilter().getAdolescent();

        channelList = model.getLive();
        loadLiveSource();

        praseBeanList = model.getParseUrl();
        loadPraseSource();

        loadIjkConfigSource(model);

        adsList = model.getAds();

        parseFlag = model.getParseFlag();
    }

    private void loadIjkConfigSource(PlayerModel model) {
        String codeC = Hawk.get(HawkConfig.MEDIA_CODEC, "");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<String> ijkConfig = model.getIjk().getOption();
        if (ijkConfig != null && ijkConfig.size() > 0) {
            for (String item : ijkConfig) {
                linkedHashMap.put(item.substring(0, item.lastIndexOf("|")), item.substring(item.lastIndexOf("|") + 1));
            }
        }
        boolean z = false;
        List<PlayerModel.IjkDTO.ConfigDTO> configDTOS = model.getIjk().getConfig();
        if (configDTOS != null && configDTOS.size() > 0) {
            for (PlayerModel.IjkDTO.ConfigDTO item : configDTOS) {
                MediaCodeDialog.pg pg = new MediaCodeDialog.pg();
                pg.a = item.getName();
                List<String> option = item.getOption();
                for (String optionItem : option) {
                    linkedHashMap.put(optionItem.substring(0, optionItem.lastIndexOf("|")), optionItem.substring(optionItem.lastIndexOf("|") + 1));
                }
                pg.b = linkedHashMap;
                if (TextUtils.isEmpty(codeC) || item.getName().equals(codeC)) {
                    pg.a(true);
                    codeC = item.getName();
                    z = true;
                } else {
                    pg.a(false);
                }
                ijkConfigList.add(pg);
            }
            if (!z && ijkConfigList.size() > 0) {
                ijkConfigList.get(0).a(true);
            }
        }
    }

    private void loadLiveSource() {
        //获取本地数据
        List<LocalLive> parseList = RoomDataManger.getAllLocalLive();
        if (parseList != null && parseList.size() > 0) {
            for (LocalLive localLive : parseList) {
                PlayerModel.LiveDTO tgVar = new PlayerModel.LiveDTO();
                tgVar.initFromLocal(localLive);
                if (channelList == null) {
                    channelList = new ArrayList<>();
                }
                channelList.add(tgVar);
            }
        }
    }

    private void loadPraseSource() {
        //获取本地数据
        List<LocalParse> parseList = RoomDataManger.getAllLocalParse();
        if (parseList != null && parseList.size() > 0) {
            for (LocalParse localParse : parseList) {
                PlayerModel.ParseUrlDTO tgVar = new PlayerModel.ParseUrlDTO();
                tgVar.initFromLocal(localParse);
                if (praseBeanList == null) {
                    praseBeanList = new ArrayList<>();
                }
                praseBeanList.add(tgVar);
            }
        }
        if (praseBeanList != null && praseBeanList.size() > 0) {
            for (PlayerModel.ParseUrlDTO praseBean : praseBeanList) {
                if (praseBean.isDefault) {
                    setDefault(praseBean);
                    break;
                }
            }
            if (mParseUrl == null) {
                setDefault(praseBeanList.get(0));
            }
        }
    }

    private String getAssetText(Context context, String fileName) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            AssetManager assets = context.getAssets();
            BufferedReader bf = new BufferedReader(new InputStreamReader(assets.open(fileName)));
            String line;
            while ((line = bf.readLine()) != null) {
                stringBuilder.append(line);
            }
            return stringBuilder.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    public void setSourceBean(PlayerModel.SourcesDTO sourceBean) {
        if (this.mSourceBean != null) {
            this.mSourceBean.setHome(false);
        }
        this.mSourceBean = sourceBean;
        this.mSourceBean.setHome(true);
    }

    public List<PlayerModel.SourcesDTO> getSourceBeanList() {
        return sourceBeanList;
    }

    public PlayerModel.SourcesDTO getSource(String key) {
        if (!TextUtils.isEmpty(key) && sourceBeanList != null && sourceBeanList.size() > 0) {
            for (PlayerModel.SourcesDTO item : sourceBeanList) {
                if (item.getKey().equals(key)) {
                    return item;
                }
            }
        }
        return null;
    }

    public List<SearchRequest> getSearchRequestList() {
        return searchRequestList;
    }

    public List<PlayerModel.ParseUrlDTO> getPraseBeanList() {
        return praseBeanList;
    }

    public List<MediaCodeDialog.pg> getIjkConfigList() {
        return ijkConfigList;
    }

    public PlayerModel.SourcesDTO getDefaultSourceBean() {
        return mSourceBean;
    }

    public List<PlayerModel.LiveDTO> getChannelList() {
        return channelList;
    }

    public List<String> getParseFlagList() {
        return parseFlag;
    }

    public List<String> getAdsList() {
        return adsList;
    }

    public String getBaseUrl() {
        return mSourceBean.getApi();
    }

    public List<String> getFilterResult() {
        return filterResult;
    }

    public void setDefault(PlayerModel.ParseUrlDTO tgVar) {
        if (this.mParseUrl != null) {
            this.mParseUrl.setDefault(false);
        }
        this.mParseUrl = tgVar;
        tgVar.setDefault(true);
    }


    public void cc(PlayerModel.SourcesDTO ugVar) {
        HintSource.getInstance().notify(ugVar.getKey(), new ConfirmSourceDialog.ConfirmCLickListener() {
            public void cancelClick() {
            }

            public void confirmClick() {
                setSourceBean(ugVar);
                HintSource.getInstance().saveOldSource(ugVar.getKey());
                EventBus.getDefault().post(new TopStateEvent(TopStateEvent.REFRESH));
            }
        });
    }


}
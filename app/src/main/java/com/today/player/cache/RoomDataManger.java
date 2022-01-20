package com.today.player.cache;

import static com.lzy.okgo.utils.IOUtils.toByteArray;
import static com.lzy.okgo.utils.IOUtils.toObject;

import com.lzy.okgo.utils.IOUtils;
import com.today.player.bean.VodInfo;
import com.today.player.data.AppDataManager;

import java.util.ArrayList;
import java.util.List;

/**
 * @author pj567
 * @date :2021/1/7
 * @description:
 */
public class RoomDataManger {
    public static void insertVodRecord(String apiUrl, VodInfo vodInfo) {
        VodRecord record = AppDataManager.get().getVodRecordDao().getVodRecord(apiUrl, vodInfo.id);
        if (record == null) {
            record = new VodRecord();
        }
        record.apiUrl = apiUrl;
        record.vodId = vodInfo.id;
        record.updateTime = System.currentTimeMillis();
        record.data = toByteArray(vodInfo);
        AppDataManager.get().getVodRecordDao().insert(record);
    }

    public static VodInfo getVodInfo(String apiUrl, int vodId) {
        VodRecord record = AppDataManager.get().getVodRecordDao().getVodRecord(apiUrl, vodId);
        if (record != null && record.data != null) {
            return (VodInfo) toObject(record.data);
        }
        return null;
    }

    public static void deleteVodRecord(String apiUrl, VodInfo vodInfo) {
        VodRecord record = AppDataManager.get().getVodRecordDao().getVodRecord(apiUrl, vodInfo.id);
        if (record != null) {
            AppDataManager.get().getVodRecordDao().delete(record);
        }
    }

    public static List<VodInfo> getAllVodRecord(String apiUrl) {
        List<VodRecord> recordList = AppDataManager.get().getVodRecordDao().getAll(apiUrl);
        List<VodInfo> vodInfoList = new ArrayList<>();
        if (recordList != null) {
            for (VodRecord record : recordList) {
                if (record.data != null) {
                    Object obj = IOUtils.toObject(record.data);
                    if (obj != null) {
                        vodInfoList.add((VodInfo) obj);
                    }
                }
            }
        }
        return vodInfoList;
    }

    public static List<VodInfo> getAllVodRecord() {
        List<VodRecord> recordList = AppDataManager.get().getVodRecordDao().getAll();
        List<VodInfo> vodInfoList = new ArrayList<>();
        if (recordList != null) {
            for (VodRecord record : recordList) {
                if (record.data != null) {
                    Object obj = IOUtils.toObject(record.data);
                    if (obj != null) {
                        VodInfo info = (VodInfo) obj;
                        info.apiUrl = record.apiUrl;
                        vodInfoList.add((VodInfo) obj);
                    }
                }
            }
        }
        return vodInfoList;
    }


    public static void insertSourceState(SourceState state) {
        AppDataManager.get().getSourceStateDao().insert(state);
    }

    public static List<SourceState> getAllSourceState() {
        return AppDataManager.get().getSourceStateDao().getAll();
    }

    public static void insertLocalSource(Local local) {
        AppDataManager.get().getLocalSource().insert(local);
    }

    public static void deleteLocalSource(Local local) {
        AppDataManager.get().getLocalSource().delete(local);
    }

    public static void deleteSourceState(SourceState sourceState) {
        AppDataManager.get().getSourceStateDao().delete(sourceState);
    }

    public static List<Local> getAllLocalSource() {
        return AppDataManager.get().getLocalSource().getAll();
    }

    public static List<LocalParse> getAllLocalParse() {
        return AppDataManager.get().getLocalParse().getAll();
    }

    public static void insertLocalParse(LocalParse local) {
        AppDataManager.get().getLocalParse().insert(local);
    }

    public static void deleteLocalParse(LocalParse local) {
        AppDataManager.get().getLocalParse().delete(local);
    }


    public static List<LocalLive> getAllLocalLive() {
        return AppDataManager.get().getLocalLive().getAll();
    }

    public static void insertLocalLive(LocalLive local) {
        AppDataManager.get().getLocalLive().insert(local);
    }

    public static void deleteLocalLive(LocalLive local) {
        AppDataManager.get().getLocalLive().delete(local);
    }

}
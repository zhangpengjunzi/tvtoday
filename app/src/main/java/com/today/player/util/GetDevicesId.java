package com.today.player.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

import com.today.player.base.App;

import java.util.UUID;

public class GetDevicesId {

    public static GetDevicesId getInstance() {
        return DevicesInit.get;
    }

    private static class DevicesInit {
        public static final GetDevicesId get = new GetDevicesId();
    }

    private GetDevicesId() {
        fileUtils = new DeviceIdFileUtils();
    }

    private String deviceId;
    private DeviceIdFileUtils fileUtils;

    public void writeId() {
        deviceId = fileUtils.read();
        //如果从文件中读取不到则优先获取IMEI，如果取不到再获取UUID
        if (TextUtils.isEmpty(deviceId)) {
            //6.0之下使用IMEI,或者6.0之上有手机信息权限
            deviceId = getIMEI(App.getInstance());
        }
        //6.0及以上获取不到就使用UUID并写到本地
        if (TextUtils.isEmpty(deviceId)) {
            //只有读取不到的时候才重新获取UUID，保证唯一
            deviceId = getUUID();
        }
        if (!TextUtils.isEmpty(deviceId)) {
            //存储ID
            fileUtils.write(deviceId);
        }
    }

    private String getUUID() {
        String uuid = UUID.randomUUID().toString();
        long currentTime = System.currentTimeMillis();
        String uid = uuid + "MM" + currentTime;
        return uid;
    }

    public String getDeviceId() {
        if (TextUtils.isEmpty(deviceId))
            writeId();
        return deviceId;
    }


    /**
     * 获取设备id:DeviceId
     */
    public String getIMEI(Context context) {
        if (context == null) {
            return "";
        }
        try {
            // user_permission_error
            TelephonyManager telephonyManager = ((TelephonyManager) context
                    .getSystemService(Context.TELEPHONY_SERVICE));

            if (telephonyManager != null) {
                return telephonyManager.getDeviceId();
            }
        } catch (Exception e) {
        }
        return "";
    }
}

package com.bt.jrsdk.config;

public class Config {

    public static final String LOCAL_REPORT_HOST = "http://114.116.18.119:7300/report?";
    public static final String ALI_LOG_PATH = "";
    public static final String APIVERSION = "APIVersion";
    public static final String APIVERSION_VALUE = "0.6.0";
    public static final String X_LOG_APIVERSION = "x-log-apiversion";
    public static final String X_LOG_BODYRAWSIZE = "x-log-bodyrawsize";
    public static final String X_LOG_APIVERSION_VALUE = "0.6.0";
    public static final String X_LOG_BODYRAWSIZE_VALUE = "0";
    public static final String TOPIC = "__topic__";
    public static final String SDK_VERSION = "sdk_version";

    public static final String SDK_VERSION_CODE = "1.0.0";
    public static final String AD_HOST = "https://api.16888.one/getAds?";

    /**
     * ad error
     */
    public static final int CODE_AD_REQUEST_ERROR = 30001;
    public static final int CODE_ACTIVITY_NULL = 30002;
    public static final int CODE_PID_NULL = 30003;
    public static final int CODE_AD_INFO_NULL = 30004;
    public static final int CODE_VIDEO_ERROR = 30005;

    public static final String ACTIVITY_NULL = "activity_null";
    public static final String PID_NULL = "pid_null";
    public static final String AD_INFO_NULL = "ad_info_null";
    public static final String VIDEO_ERROR = "video_error";

    /**
     * true是 打带验证码的包，
     */
    public static final boolean IS_GOOGLE_AAB = true;

}

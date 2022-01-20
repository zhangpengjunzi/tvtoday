package com.today.player.server;



import static com.today.player.server.RequestProcess.KEY_ACTION_DOWN;
import static com.today.player.server.RequestProcess.KEY_ACTION_PRESSED;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;


import com.today.player.receiver.CustomWebReceiver;
import com.today.player.receiver.ProjectionReceiver;
import com.today.player.receiver.SearchReceiver;
import com.today.player.ui.activity.HomeActivity;
import com.today.player.util.AppManager;

import java.io.IOException;
import java.util.Map;

/**
 * @author pj567
 * @date :2021/1/4
 * @description:
 */
public class ControlManager {
    private static ControlManager instance;
    private RemoteServer mServer = null;
    public static Context mContext;

    private ControlManager() {

    }

    public static ControlManager get() {
        if (instance == null) {
            synchronized (ControlManager.class) {
                if (instance == null) {
                    instance = new ControlManager();
                }
            }
        }
        return instance;
    }

    public static void init(Context context) {
        mContext = context;
    }

    public void startServer() {
        if (mServer != null) {
            return;
        }
        do {
            mServer = new RemoteServer(RemoteServer.serverPort, mContext);
            mServer.setDataReceiver(new DataReceiver() {
                @Override
                public void onKeyEventReceived(String keyCode, final int keyAction) {
                    if (keyCode != null) {
                        final int kc = KeyEvent.keyCodeFromString(keyCode);
                        if (kc != KeyEvent.KEYCODE_UNKNOWN) {
                            switch (keyAction) {
                                case KEY_ACTION_PRESSED:
                                case KEY_ACTION_DOWN:
                                    sendKeyCode(kc);
                                    break;
                            }
                        }
                    }
                }

                @Override
                public void onTextReceived(String text) {
                    if (!TextUtils.isEmpty(text)) {
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putString("title", text);
                        intent.setAction(SearchReceiver.action);
                        intent.setComponent(new ComponentName(mContext, SearchReceiver.class));
                        intent.putExtras(bundle);
                        mContext.sendBroadcast(intent);
                    }
                }

                @Override
                public void onProjectionReceived(String text) {
                    if (!TextUtils.isEmpty(text)) {
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putString("html", text);
                        intent.setAction(ProjectionReceiver.action);
                        intent.setComponent(new ComponentName(mContext, ProjectionReceiver.class));
                        intent.putExtras(bundle);
                        mContext.sendBroadcast(intent);
                    }
                }

                @Override
                public void onCustomWebReceived(Map<String, String> params) {
                    if (params.get("action") != null) {
                        String str4 = params.get("action");
                        if ("source".equals(str4)) {
                            if (!(params.get("name") == null || params.get("api") == null || params.get("play") == null || params.get("type") == null)) {
                                String str5 = params.get("name");
                                String str6 = params.get("api");
                                String str7 = params.get("play");
                                String str8 = params.get("type");
                                if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
                                    Intent intent3 = new Intent();
                                    Bundle bundle3 = new Bundle();
                                    bundle3.putString("action", CustomWebReceiver.b);
                                    bundle3.putString("name", str5);
                                    bundle3.putString("api", str6);
                                    bundle3.putString("play", str7);
                                    bundle3.putInt("type", Integer.parseInt(str8));
                                    intent3.setAction(CustomWebReceiver.a);
                                    intent3.setPackage(mContext.getPackageName());
                                    intent3.setComponent(new ComponentName(mContext, CustomWebReceiver.class));
                                    intent3.putExtras(bundle3);
                                    mContext.sendBroadcast(intent3);
                                }
                            }
                        } else if ("parse".equals(str4)) {
                            if (!(params.get("name") == null || params.get("url") == null)) {
                                String str9 = params.get("name");
                                String str10 = params.get("url");
                                if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
                                    Intent intent4 = new Intent();
                                    Bundle bundle4 = new Bundle();
                                    bundle4.putString("action", CustomWebReceiver.d);
                                    bundle4.putString("name", str9);
                                    bundle4.putString("url", str10);
                                    intent4.setAction(CustomWebReceiver.a);
                                    intent4.setPackage(mContext.getPackageName());
                                    intent4.setComponent(new ComponentName(mContext, CustomWebReceiver.class));
                                    intent4.putExtras(bundle4);
                                    mContext.sendBroadcast(intent4);
                                }
                            }
                        } else if (!(!"live".equals(str4) || params.get("name") == null || params.get("url") == null)) {
                            String str11 = params.get("name");
                            String str12 = params.get("url");
                            if (!TextUtils.isEmpty(str11) && !TextUtils.isEmpty(str12)) {
                                Intent intent5 = new Intent();
                                Bundle bundle5 = new Bundle();
                                bundle5.putString("action", CustomWebReceiver.c);
                                bundle5.putString("name", str11);
                                bundle5.putString("url", str12);
                                intent5.setAction(CustomWebReceiver.a);
                                intent5.setPackage(mContext.getPackageName());
                                intent5.setComponent(new ComponentName(mContext, CustomWebReceiver.class));
                                intent5.putExtras(bundle5);
                                mContext.sendBroadcast(intent5);
                            }
                        }
                    }
                }
            });
            try {
                mServer.start();
                break;
            } catch (IOException ex) {
                RemoteServer.serverPort++;
                mServer.stop();
            }
        } while (RemoteServer.serverPort < 9999);
    }

    private void sendKeyCode(int keyCode) {
        if (keyCode == KeyEvent.KEYCODE_HOME) {
            //拦截HOME键
            AppManager.getInstance().backActivity(HomeActivity.class);
        } else {
            ShellUtils.execCommand("input keyevent " + keyCode, false);
        }
    }

    public void stopServer() {
        if (mServer != null && mServer.isStarting()) {
            mServer.stop();
        }
    }
}
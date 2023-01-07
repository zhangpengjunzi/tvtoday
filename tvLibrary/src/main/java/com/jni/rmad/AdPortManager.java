package com.jni.rmad;

import android.util.Log;

import java.net.ServerSocket;
import java.net.Socket;

public class AdPortManager {

    private int port = -1;

    private final int PORT_COUNT = 5;

    private int currentCount = 0;

    private boolean isInitSuccess = true;

    public static AdPortManager getInstance() {
        return SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final AdPortManager sInstance = new AdPortManager();
    }

    public void port() {
        try {
            //   InetAddress localHost = InetAddress.getLocalHost();
            port = getAvailableTcpPort();
            //Socket监听端口是否被占用
            Socket socket = new Socket("127.0.0.1", port);
            if (socket != null && currentCount < PORT_COUNT) {
                //创建成功代表被占用，重新获取
                currentCount++;
                isInitSuccess = false;
                port();
            }
        } catch (Exception e) {
            if (port > -1) {
                isInitSuccess = true;
                initAd();
            }
        }
    }


    private void initAd() {
        MyNative.init(port, new InitListener() {
            @Override
            public void onEnd() {
            }

            @Override
            public void onFail() {
                isInitSuccess = false;
            }
        });
    }


    private int getAvailableTcpPort() {
        try {
            ServerSocket serverSocket = new ServerSocket(0);
            int localPort = serverSocket.getLocalPort();
            //这里一定要close(),不然这个端口无法被其他程序使用
            serverSocket.close();
            return localPort;
        } catch (Exception e) {
            Log.i("adinit", e.getLocalizedMessage());
            e.printStackTrace();
        }
        return -1;
    }

    public int getPort() {
        return port;
    }

    public boolean isInitSuccess() {
        return isInitSuccess;
    }
}

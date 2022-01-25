package com.today.player.http;

public interface ResponseCallback {
    void success(String json);

    void fail(String error);
}
package com.today.player.server;

import java.util.Map;

/**
 * @author pj567
 * @date :2021/1/5
 * @description:
 */
public interface DataReceiver {
    /**
     * @param keyCode
     * @param keyAction : 0 = keypressed, 1 = keyDown, 2 = keyUp
     */
    void onKeyEventReceived(String keyCode, int keyAction);

    /**
     * @param text
     */
    void onTextReceived(String text);

    /**
     * @param text
     */
    void onProjectionReceived(String text);

    /**
     * @param params
     */
    void onCustomWebReceived(Map<String, String> params);
}
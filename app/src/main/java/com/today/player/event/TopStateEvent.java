package com.today.player.event;

/**
 * @author pj567
 * @date :2020/12/21
 * @description:
 */
public class TopStateEvent {
    public final static int TYPE_TOP = 0;
    public final static int REFRESH = 1;
    public final static int REFRESH_LOAD_SOURCE = 2;
    public int type;

    public TopStateEvent(int type) {
        this.type = type;
    }
}
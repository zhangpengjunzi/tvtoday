package com.today.player.util;

import android.content.Context;

import com.orhanobut.hawk.Hawk;
import com.tencent.bugly.proguard.bi;

import tv.danmaku.ijk.media.player.IjkLibLoader;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import xyz.doikki.videoplayer.exo.ExoMediaPlayerFactory;
import xyz.doikki.videoplayer.ijk.IjkPlayerFactory;

import xyz.doikki.videoplayer.player.PlayerFactory;
import xyz.doikki.videoplayer.player.VideoView;
import xyz.doikki.videoplayer.player.VideoViewConfig;
import xyz.doikki.videoplayer.player.VideoViewManager;
import xyz.doikki.videoplayer.render.IRenderView;
import xyz.doikki.videoplayer.render.RenderViewFactory;
import xyz.doikki.videoplayer.render.TextureRenderViewFactory;

public class PlayUtils {
    public static void a(VideoView videoView) {
        PlayerFactory playerFactory;
        RenderViewFactory renderViewFactory;
        int intValue = Hawk.get(HawkConfig.PLAY_TYPE, 0);
        if (intValue == 1) {
            playerFactory = IjkPlayerFactory.create();
            try {
                IjkMediaPlayer.loadLibrariesOnce(new IjkLibLoader() {
                    @Override
                    public void loadLibrary(String libName) throws UnsatisfiedLinkError, SecurityException {
                        System.loadLibrary(libName);
                    }
                });
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else {
            playerFactory = ExoMediaPlayerFactory.create();
        }
        if (Hawk.get(HawkConfig.PLAY_RENDER, 0) != 1) {
            renderViewFactory = TextureRenderViewFactory.create();
        } else {
            renderViewFactory = new bi();
        }
        videoView.setPlayerFactory(playerFactory);
        videoView.setRenderViewFactory(renderViewFactory);
        VideoViewManager.setConfig(VideoViewConfig.newBuilder().setScreenScaleType(0).setPlayerFactory(playerFactory).setRenderViewFactory(renderViewFactory).setProgressManager(new ProgressManagerImpl()).build());
    }

    public static String a(byte[] bArr, String str) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ str.charAt(i % length2));
        }
        return new String(bArr);
    }

    public static void a() {
        PlayerFactory playerFactory;
        RenderViewFactory renderViewFactory;
        int intValue = Hawk.get(HawkConfig.PLAY_TYPE, 0);
        if (intValue == 1) {
            playerFactory = IjkPlayerFactory.create();
            try {
                IjkMediaPlayer.loadLibrariesOnce(new IjkLibLoader() {
                    @Override
                    public void loadLibrary(String libName) throws UnsatisfiedLinkError, SecurityException {
                        System.loadLibrary(libName);
                    }
                });
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else {
            playerFactory = ExoMediaPlayerFactory.create();
        }
        if (Hawk.get(HawkConfig.PLAY_RENDER, 0) != 1) {
            renderViewFactory = TextureRenderViewFactory.create();
        } else {
            renderViewFactory = new bi();
        }
        VideoViewManager.setConfig(VideoViewConfig.newBuilder().setScreenScaleType(0).setPlayerFactory(playerFactory).setRenderViewFactory(renderViewFactory).setProgressManager(new ProgressManagerImpl()).build());
    }


    public static class bi extends RenderViewFactory {
        public IRenderView createRenderView(Context context) {
            return new SurfaceRenderView(context);
        }
    }
}

.class public Lcom/bykv/vk/openvk/component/video/a/d/b;
.super Lcom/bykv/vk/openvk/component/video/a/d/a;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/d/b$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/media/MediaPlayer;

.field private final c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

.field private d:Lcom/bykv/vk/openvk/component/video/a/a/a;

.field private e:Landroid/view/Surface;

.field private final f:Ljava/lang/Object;

.field private volatile g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/a;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->f:Ljava/lang/Object;

    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/component/video/a/d/b;->a(Landroid/media/MediaPlayer;)V

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "setAudioStreamType error: "

    .line 67
    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_0
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-direct {v0, p0, p0}, Lcom/bykv/vk/openvk/component/video/a/d/b$a;-><init>(Lcom/bykv/vk/openvk/component/video/a/d/b;Lcom/bykv/vk/openvk/component/video/a/d/b;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    .line 70
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->p()V

    return-void

    :catchall_1
    move-exception v1

    .line 62
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .locals 11

    const-string v0, "CSJ_VIDEO"

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v1, "android.media.MediaTimeProvider"

    .line 80
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.media.SubtitleController"

    .line 81
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "android.media.SubtitleController$Anchor"

    .line 82
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.media.SubtitleController$Listener"

    .line 83
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 85
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v4, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/b;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mHandler"

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 88
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    :try_start_1
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "setSubtitleAnchor"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v2, v10, v8

    aput-object v3, v10, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v8

    aput-object v6, v1, v7

    .line 98
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, "subtitleInstance error: "

    .line 92
    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :try_start_4
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    const-string v1, "setSubtitleController error: "

    .line 100
    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private o()V
    .locals 3

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "releaseMediaDataSource error: "

    .line 163
    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 321
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    .line 322
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 323
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 324
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    .line 325
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 326
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    .line 327
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 328
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 329
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private q()V
    .locals 1

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->e:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->e:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->q()V

    .line 122
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->e:Landroid/view/Surface;

    .line 123
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->g:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->a:Z

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 112
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/a/a;->a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/c/c;)Lcom/bykv/vk/openvk/component/video/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    .line 151
    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/a/b/c;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    .line 152
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 258
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 260
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 433
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 434
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->q()V

    return-void
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_0
    return-void
.end method

.method public i()J
    .locals 3

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "getCurrentPosition error: "

    .line 206
    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public j()J
    .locals 3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "getDuration error: "

    .line 216
    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->g:Z

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x1

    .line 226
    iput-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->g:Z

    .line 227
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->q()V

    .line 228
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->o()V

    .line 229
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->a()V

    .line 230
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->p()V

    .line 232
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "reset error: "

    .line 240
    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->o()V

    .line 243
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->a()V

    .line 244
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->p()V

    return-void
.end method

.method public m()I
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

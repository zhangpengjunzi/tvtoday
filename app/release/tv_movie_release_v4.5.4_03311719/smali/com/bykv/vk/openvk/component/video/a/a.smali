.class public Lcom/bykv/vk/openvk/component/video/a/a;
.super Ljava/lang/Object;
.source "MediaConfig.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/a;->a(Landroid/content/Context;)V

    .line 17
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    .line 18
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->a()Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    :cond_0
    return-void
.end method

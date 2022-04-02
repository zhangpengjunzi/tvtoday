.class public Lcom/today/player/util/PlayUtils$bi;
.super Lxyz/doikki/videoplayer/render/RenderViewFactory;
.source "PlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/util/PlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lxyz/doikki/videoplayer/render/RenderViewFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createRenderView(Landroid/content/Context;)Lxyz/doikki/videoplayer/render/IRenderView;
    .locals 1

    .line 88
    new-instance v0, Lcom/today/player/util/SurfaceRenderView;

    invoke-direct {v0, p1}, Lcom/today/player/util/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

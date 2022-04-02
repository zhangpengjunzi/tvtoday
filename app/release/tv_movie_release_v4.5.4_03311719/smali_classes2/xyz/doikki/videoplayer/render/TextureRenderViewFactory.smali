.class public Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;
.super Lxyz/doikki/videoplayer/render/RenderViewFactory;
.source "TextureRenderViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lxyz/doikki/videoplayer/render/RenderViewFactory;-><init>()V

    return-void
.end method

.method public static create()Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;
    .locals 1

    .line 8
    new-instance v0, Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;

    invoke-direct {v0}, Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createRenderView(Landroid/content/Context;)Lxyz/doikki/videoplayer/render/IRenderView;
    .locals 1

    .line 13
    new-instance v0, Lxyz/doikki/videoplayer/render/TextureRenderView;

    invoke-direct {v0, p1}, Lxyz/doikki/videoplayer/render/TextureRenderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

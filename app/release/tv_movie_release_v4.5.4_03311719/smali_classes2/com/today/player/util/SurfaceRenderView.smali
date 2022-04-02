.class public Lcom/today/player/util/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lxyz/doikki/videoplayer/render/IRenderView;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Lxyz/doikki/videoplayer/render/MeasureHelper;

.field public b:Lxyz/doikki/videoplayer/player/AbstractPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Lxyz/doikki/videoplayer/render/MeasureHelper;

    invoke-direct {p1}, Lxyz/doikki/videoplayer/render/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcom/today/player/util/SurfaceRenderView;->a:Lxyz/doikki/videoplayer/render/MeasureHelper;

    .line 20
    invoke-virtual {p0}, Lcom/today/player/util/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 21
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 22
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Lxyz/doikki/videoplayer/render/MeasureHelper;

    invoke-direct {p1}, Lxyz/doikki/videoplayer/render/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcom/today/player/util/SurfaceRenderView;->a:Lxyz/doikki/videoplayer/render/MeasureHelper;

    .line 77
    invoke-virtual {p0}, Lcom/today/player/util/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 78
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x1

    .line 79
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Lxyz/doikki/videoplayer/render/MeasureHelper;

    invoke-direct {p1}, Lxyz/doikki/videoplayer/render/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcom/today/player/util/SurfaceRenderView;->a:Lxyz/doikki/videoplayer/render/MeasureHelper;

    .line 84
    invoke-virtual {p0}, Lcom/today/player/util/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 85
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x1

    .line 86
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method


# virtual methods
.method public attachToPlayer(Lxyz/doikki/videoplayer/player/AbstractPlayer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/today/player/util/SurfaceRenderView;->b:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    return-void
.end method

.method public doScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/today/player/util/SurfaceRenderView;->a:Lxyz/doikki/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lxyz/doikki/videoplayer/render/MeasureHelper;->doMeasure(II)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 39
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/today/player/util/SurfaceRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/today/player/util/SurfaceRenderView;->a:Lxyz/doikki/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1}, Lxyz/doikki/videoplayer/render/MeasureHelper;->setScreenScale(I)V

    .line 47
    invoke-virtual {p0}, Lcom/today/player/util/SurfaceRenderView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/today/player/util/SurfaceRenderView;->a:Lxyz/doikki/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1}, Lxyz/doikki/videoplayer/render/MeasureHelper;->setVideoRotation(I)V

    int-to-float p1, p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/today/player/util/SurfaceRenderView;->setRotation(F)V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/today/player/util/SurfaceRenderView;->a:Lxyz/doikki/videoplayer/render/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lxyz/doikki/videoplayer/render/MeasureHelper;->setVideoSize(II)V

    .line 58
    invoke-virtual {p0}, Lcom/today/player/util/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/today/player/util/SurfaceRenderView;->b:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2, p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

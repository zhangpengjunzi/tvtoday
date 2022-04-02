.class public Lcom/bt/jrsdk/util/CustomVideoView;
.super Landroid/widget/VideoView;
.source "CustomVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {v0, p1}, Lcom/bt/jrsdk/util/CustomVideoView;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/bt/jrsdk/util/CustomVideoView;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/bt/jrsdk/util/CustomVideoView;->setMeasuredDimension(II)V

    return-void
.end method

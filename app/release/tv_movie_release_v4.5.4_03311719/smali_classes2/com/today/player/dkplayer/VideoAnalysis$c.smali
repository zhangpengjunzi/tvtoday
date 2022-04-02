.class public Lcom/today/player/dkplayer/VideoAnalysis$c;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/dkplayer/VideoAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/today/player/dkplayer/VideoAnalysis$j;

.field final synthetic this$0:Lcom/today/player/dkplayer/VideoAnalysis;


# direct methods
.method public constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis;Lcom/today/player/dkplayer/VideoAnalysis;Lcom/today/player/dkplayer/VideoAnalysis$j;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$c;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p3, p0, Lcom/today/player/dkplayer/VideoAnalysis$c;->a:Lcom/today/player/dkplayer/VideoAnalysis$j;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 99
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$c;->a:Lcom/today/player/dkplayer/VideoAnalysis$j;

    invoke-interface {p1}, Lcom/today/player/dkplayer/VideoAnalysis$j;->finish()V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

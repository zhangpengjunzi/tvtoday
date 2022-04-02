.class public Lcom/today/player/ui/dialog/TestSpeed;
.super Ljava/lang/Object;
.source "TestSpeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/TestSpeed$wl;,
        Lcom/today/player/ui/dialog/TestSpeed$vg;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/app/Dialog;

.field public c:Lcom/today/player/ui/adapter/TestSpeedAdapter;

.field public d:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public e:Landroid/os/Handler;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/ui/dialog/TestSpeed$vg;",
            ">;"
        }
    .end annotation
.end field

.field public f40j:I

.field public final g:Ljava/util/concurrent/ExecutorService;

.field public h:I

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed;->e:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed;->f:Ljava/util/List;

    const/4 v0, 0x5

    .line 40
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed;->g:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/today/player/ui/dialog/TestSpeed;->h:I

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/today/player/ui/dialog/TestSpeed;->i:Ljava/lang/Object;

    .line 45
    iput v0, p0, Lcom/today/player/ui/dialog/TestSpeed;->f40j:I

    return-void
.end method

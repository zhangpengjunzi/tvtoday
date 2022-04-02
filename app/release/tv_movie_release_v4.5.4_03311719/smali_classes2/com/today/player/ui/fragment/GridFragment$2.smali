.class Lcom/today/player/ui/fragment/GridFragment$2;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/GridFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/GridFragment;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/GridFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$2;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 1

    const/4 p2, 0x0

    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/today/player/event/TopStateEvent;

    invoke-direct {v0, p2}, Lcom/today/player/event/TopStateEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return p2
.end method

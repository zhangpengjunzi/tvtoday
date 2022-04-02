.class Lcom/today/player/ui/fragment/UserFragment$2;
.super Ljava/lang/Object;
.source "UserFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/fragment/UserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/UserFragment;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/UserFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/today/player/ui/fragment/UserFragment$2;->this$0:Lcom/today/player/ui/fragment/UserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/16 p3, 0x13

    if-ne p2, p3, :cond_0

    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/today/player/event/TopStateEvent;

    invoke-direct {p3, p1}, Lcom/today/player/event/TopStateEvent;-><init>(I)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

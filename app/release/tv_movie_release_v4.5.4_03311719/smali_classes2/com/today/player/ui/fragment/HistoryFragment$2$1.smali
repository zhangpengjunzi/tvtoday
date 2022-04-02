.class Lcom/today/player/ui/fragment/HistoryFragment$2$1;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/HistoryFragment$2;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/HistoryFragment$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/HistoryFragment$2;I)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$2$1;->this$1:Lcom/today/player/ui/fragment/HistoryFragment$2;

    iput p2, p0, Lcom/today/player/ui/fragment/HistoryFragment$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 92
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x13

    if-ne p2, p1, :cond_0

    .line 93
    iget p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$2$1;->val$position:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    .line 94
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/today/player/event/HistoryStateEvent;

    invoke-direct {p2, p3}, Lcom/today/player/event/HistoryStateEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

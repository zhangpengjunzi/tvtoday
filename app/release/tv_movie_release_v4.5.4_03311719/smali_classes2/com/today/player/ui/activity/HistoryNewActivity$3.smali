.class Lcom/today/player/ui/activity/HistoryNewActivity$3;
.super Ljava/lang/Object;
.source "HistoryNewActivity.java"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HistoryNewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HistoryNewActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HistoryNewActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryNewActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 1

    const/4 p2, 0x0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    return p2

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryNewActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryNewActivity;->access$000(Lcom/today/player/ui/activity/HistoryNewActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 96
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryNewActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryNewActivity;->access$000(Lcom/today/player/ui/activity/HistoryNewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    return p2
.end method

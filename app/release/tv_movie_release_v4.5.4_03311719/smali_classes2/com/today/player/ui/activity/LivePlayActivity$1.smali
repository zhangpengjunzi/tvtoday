.class Lcom/today/player/ui/activity/LivePlayActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LivePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/LivePlayActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/LivePlayActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$1;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 210
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 211
    iget-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$1;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    .line 212
    iget-object p2, p1, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v0, p1, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object p2, p1, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object p1, p1, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

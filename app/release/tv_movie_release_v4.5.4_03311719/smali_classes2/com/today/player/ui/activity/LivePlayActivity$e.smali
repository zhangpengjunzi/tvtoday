.class public Lcom/today/player/ui/activity/LivePlayActivity$e;
.super Ljava/lang/Object;
.source "LivePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/LivePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/activity/LivePlayActivity$e$a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/LivePlayActivity;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$e;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$e;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$e;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$e;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 154
    new-instance v1, Lcom/tv/widget/ViewObj;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0, v2}, Lcom/tv/widget/ViewObj;-><init>(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/today/player/ui/activity/LivePlayActivity$e;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v3, v3, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "marginLeft"

    invoke-static {v1, v3, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 157
    new-instance v1, Lcom/today/player/ui/activity/LivePlayActivity$e$a;

    invoke-direct {v1, p0, p0}, Lcom/today/player/ui/activity/LivePlayActivity$e$a;-><init>(Lcom/today/player/ui/activity/LivePlayActivity$e;Lcom/today/player/ui/activity/LivePlayActivity$e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$e;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    .line 159
    iget-object v1, v0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$e;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    .line 161
    iget-object v1, v0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

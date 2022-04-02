.class public Lcom/today/player/ui/activity/LivePlayActivity$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/activity/LivePlayActivity$b$a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/LivePlayActivity;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$b;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$b;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity$b;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v1, v1, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/tv/widget/ViewObj;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity$b;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v2, v2, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-direct {v1, v2, v0}, Lcom/tv/widget/ViewObj;-><init>(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/today/player/ui/activity/LivePlayActivity$b;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v4, v4, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "marginLeft"

    invoke-static {v1, v3, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    new-instance v1, Lcom/today/player/ui/activity/LivePlayActivity$b$a;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/LivePlayActivity$b$a;-><init>(Lcom/today/player/ui/activity/LivePlayActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

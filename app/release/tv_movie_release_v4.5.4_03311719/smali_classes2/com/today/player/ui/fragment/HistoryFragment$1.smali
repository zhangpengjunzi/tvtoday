.class Lcom/today/player/ui/fragment/HistoryFragment$1;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/tv/leanback/OnItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/HistoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tv/leanback/OnItemListener<",
        "Lcom/tv/leanback/VerticalGridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/HistoryFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$1;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPreSelected(Lcom/tv/leanback/VerticalGridView;Landroid/view/View;I)V
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public bridge synthetic onItemPreSelected(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 69
    check-cast p1, Lcom/tv/leanback/VerticalGridView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/today/player/ui/fragment/HistoryFragment$1;->onItemPreSelected(Lcom/tv/leanback/VerticalGridView;Landroid/view/View;I)V

    return-void
.end method

.method public onItemSelected(Lcom/tv/leanback/VerticalGridView;Landroid/view/View;I)V
    .locals 0

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 69
    check-cast p1, Lcom/tv/leanback/VerticalGridView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/today/player/ui/fragment/HistoryFragment$1;->onItemSelected(Lcom/tv/leanback/VerticalGridView;Landroid/view/View;I)V

    return-void
.end method

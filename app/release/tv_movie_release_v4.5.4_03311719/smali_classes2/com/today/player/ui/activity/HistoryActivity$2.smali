.class Lcom/today/player/ui/activity/HistoryActivity$2;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/tv/leanback/OnItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tv/leanback/OnItemListener<",
        "Lcom/tv/leanback/HorizontalGridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HistoryActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$2;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPreSelected(Lcom/tv/leanback/HorizontalGridView;Landroid/view/View;I)V
    .locals 2

    if-eqz p2, :cond_1

    .line 112
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$2;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryActivity;->access$300(Lcom/today/player/ui/activity/HistoryActivity;)Z

    move-result p1

    const p3, 0x7f0802ca

    if-nez p1, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 114
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, -0x33000001    # -1.3421772E8f

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, -0x1

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemPreSelected(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 97
    check-cast p1, Lcom/tv/leanback/HorizontalGridView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/today/player/ui/activity/HistoryActivity$2;->onItemPreSelected(Lcom/tv/leanback/HorizontalGridView;Landroid/view/View;I)V

    return-void
.end method

.method public onItemSelected(Lcom/tv/leanback/HorizontalGridView;Landroid/view/View;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 101
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$2;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HistoryActivity;->access$202(Lcom/today/player/ui/activity/HistoryActivity;Z)Z

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const p1, 0x7f0802ca

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, -0x1

    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$2;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1, p3}, Lcom/today/player/ui/activity/HistoryActivity;->access$002(Lcom/today/player/ui/activity/HistoryActivity;I)I

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 97
    check-cast p1, Lcom/tv/leanback/HorizontalGridView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/today/player/ui/activity/HistoryActivity$2;->onItemSelected(Lcom/tv/leanback/HorizontalGridView;Landroid/view/View;I)V

    return-void
.end method

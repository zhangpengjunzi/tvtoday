.class Lcom/today/player/ui/activity/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HomeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HomeActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$3;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onItemPreSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 150
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$3;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$700(Lcom/today/player/ui/activity/HomeActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 151
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

    :cond_0
    return-void
.end method

.method public onItemSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 158
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$3;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HomeActivity;->access$702(Lcom/today/player/ui/activity/HomeActivity;Z)Z

    .line 159
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$3;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HomeActivity;->access$802(Lcom/today/player/ui/activity/HomeActivity;Z)Z

    .line 160
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

    .line 161
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$3;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1, p3}, Lcom/today/player/ui/activity/HomeActivity;->access$502(Lcom/today/player/ui/activity/HomeActivity;I)I

    .line 162
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$3;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1, p2}, Lcom/today/player/ui/activity/HomeActivity;->access$202(Lcom/today/player/ui/activity/HomeActivity;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method

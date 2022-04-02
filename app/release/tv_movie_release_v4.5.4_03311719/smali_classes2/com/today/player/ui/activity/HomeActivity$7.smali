.class Lcom/today/player/ui/activity/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HomeActivity;->setSortDefaultPress(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HomeActivity;

.field final synthetic val$recyclerView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HomeActivity;Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$7;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    iput-object p2, p0, Lcom/today/player/ui/activity/HomeActivity$7;->val$recyclerView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$7;->val$recyclerView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 352
    :goto_0
    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$7;->val$recyclerView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$7;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$7;->val$recyclerView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 356
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const v2, 0x7f0802ca

    .line 357
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, -0x1

    .line 358
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 360
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity$7;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/HomeActivity;->access$1400(Lcom/today/player/ui/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 361
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity$7;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/HomeActivity;->access$1400(Lcom/today/player/ui/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

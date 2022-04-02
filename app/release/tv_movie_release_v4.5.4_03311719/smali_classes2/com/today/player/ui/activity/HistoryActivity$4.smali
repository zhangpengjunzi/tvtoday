.class Lcom/today/player/ui/activity/HistoryActivity$4;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HistoryActivity;->setSortDefaultPress(Lcom/tv/leanback/HorizontalGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HistoryActivity;

.field final synthetic val$recyclerView:Lcom/tv/leanback/HorizontalGridView;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HistoryActivity;Lcom/tv/leanback/HorizontalGridView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$4;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    iput-object p2, p0, Lcom/today/player/ui/activity/HistoryActivity$4;->val$recyclerView:Lcom/tv/leanback/HorizontalGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity$4;->val$recyclerView:Lcom/tv/leanback/HorizontalGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/HorizontalGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity$4;->val$recyclerView:Lcom/tv/leanback/HorizontalGridView;

    invoke-virtual {v1}, Lcom/tv/leanback/HorizontalGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity$4;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/HistoryActivity;->access$100(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity$4;->val$recyclerView:Lcom/tv/leanback/HorizontalGridView;

    invoke-virtual {v1, v0}, Lcom/tv/leanback/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const v1, 0x7f0802ca

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 175
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

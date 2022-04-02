.class Lcom/today/player/ui/activity/HomeActivity$8;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/HomeActivity;
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

    .line 373
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$800(Lcom/today/player/ui/activity/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/today/player/ui/activity/HomeActivity;->access$802(Lcom/today/player/ui/activity/HomeActivity;Z)Z

    .line 378
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 379
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SortAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/MovieSort$SortData;

    iput-boolean v1, v0, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    .line 380
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SortAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/MovieSort$SortData;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    .line 381
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/today/player/ui/adapter/SortAdapter;->notifyItemChanged(I)V

    .line 382
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/today/player/ui/adapter/SortAdapter;->notifyItemChanged(I)V

    .line 383
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/today/player/ui/activity/HomeActivity;->access$302(Lcom/today/player/ui/activity/HomeActivity;I)I

    .line 384
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$600(Lcom/today/player/ui/activity/HomeActivity;)Lcom/tv/widget/NoScrollViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity$8;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/tv/widget/NoScrollViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

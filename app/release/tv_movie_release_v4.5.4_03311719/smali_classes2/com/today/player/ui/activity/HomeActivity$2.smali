.class Lcom/today/player/ui/activity/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


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

    .line 127
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0802ca

    if-ne p1, v0, :cond_0

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/today/player/ui/activity/HomeActivity;->access$202(Lcom/today/player/ui/activity/HomeActivity;Landroid/view/View;)Landroid/view/View;

    .line 133
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$200(Lcom/today/player/ui/activity/HomeActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 134
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SortAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/MovieSort$SortData;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    .line 135
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SortAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/MovieSort$SortData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    .line 136
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/today/player/ui/adapter/SortAdapter;->notifyItemChanged(I)V

    .line 137
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/today/player/ui/adapter/SortAdapter;->notifyItemChanged(I)V

    .line 138
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1, p3}, Lcom/today/player/ui/activity/HomeActivity;->access$502(Lcom/today/player/ui/activity/HomeActivity;I)I

    .line 139
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result p1

    iget-object p3, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p3}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result p3

    if-eq p1, p3, :cond_0

    .line 140
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/today/player/ui/activity/HomeActivity;->access$302(Lcom/today/player/ui/activity/HomeActivity;I)I

    .line 141
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$600(Lcom/today/player/ui/activity/HomeActivity;)Lcom/tv/widget/NoScrollViewPager;

    move-result-object p1

    iget-object p3, p0, Lcom/today/player/ui/activity/HomeActivity$2;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p3}, Lcom/today/player/ui/activity/HomeActivity;->access$500(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/tv/widget/NoScrollViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

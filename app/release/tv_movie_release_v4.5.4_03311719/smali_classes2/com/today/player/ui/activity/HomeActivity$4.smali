.class Lcom/today/player/ui/activity/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


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

    .line 171
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$4;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 2

    const/4 p2, 0x0

    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 175
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$4;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1, p2}, Lcom/today/player/ui/activity/HomeActivity;->access$900(Lcom/today/player/ui/activity/HomeActivity;Z)V

    return p2

    :cond_0
    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    return p2

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$4;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HomeActivity;->access$702(Lcom/today/player/ui/activity/HomeActivity;Z)Z

    .line 182
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$4;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$1000(Lcom/today/player/ui/activity/HomeActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity$4;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/base/BaseLazyFragment;

    .line 183
    instance-of v1, p1, Lcom/today/player/ui/fragment/GridFragment;

    if-nez v1, :cond_2

    return p2

    .line 186
    :cond_2
    check-cast p1, Lcom/today/player/ui/fragment/GridFragment;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/GridFragment;->isLoad()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    .line 189
    :cond_3
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$4;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HomeActivity;->access$900(Lcom/today/player/ui/activity/HomeActivity;Z)V

    return p2
.end method

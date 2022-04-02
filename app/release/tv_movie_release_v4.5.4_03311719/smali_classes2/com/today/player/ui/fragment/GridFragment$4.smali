.class Lcom/today/player/ui/fragment/GridFragment$4;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/GridFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/GridFragment;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/GridFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$4;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 125
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 126
    iget-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$4;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/GridFragment;->access$000(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/ui/adapter/GridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/GridAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/Movie$Video;

    if-eqz p1, :cond_0

    .line 128
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 129
    iget p3, p1, Lcom/today/player/bean/Movie$Video;->id:I

    const-string v0, "id"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object p3, p1, Lcom/today/player/bean/Movie$Video;->api:Ljava/lang/String;

    const-string v0, "sourceUrl"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p1, Lcom/today/player/bean/Movie$Video;->sourceKey:Ljava/lang/String;

    const-string p3, "sourceKey"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$4;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    const-class p3, Lcom/today/player/ui/activity/DetailActivity;

    invoke-virtual {p1, p3, p2}, Lcom/today/player/ui/fragment/GridFragment;->jumpActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.class Lcom/today/player/ui/fragment/GridFragment$3;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


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

    .line 111
    iput-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$3;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment$3;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/GridFragment;->access$000(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/ui/adapter/GridAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/GridAdapter;->setEnableLoadMore(Z)V

    .line 115
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment$3;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/GridFragment;->access$300(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/viewmodel/SourceViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/fragment/GridFragment$3;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v1}, Lcom/today/player/ui/fragment/GridFragment;->access$100(Lcom/today/player/ui/fragment/GridFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/today/player/ui/fragment/GridFragment$3;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v2}, Lcom/today/player/ui/fragment/GridFragment;->access$200(Lcom/today/player/ui/fragment/GridFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/today/player/viewmodel/SourceViewModel;->getList(II)V

    return-void
.end method

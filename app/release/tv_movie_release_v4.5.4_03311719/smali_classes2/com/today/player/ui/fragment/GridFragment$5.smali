.class Lcom/today/player/ui/fragment/GridFragment$5;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/GridFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/today/player/bean/AbsXml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/GridFragment;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/GridFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/today/player/bean/AbsXml;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 144
    iget-object v1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v1, v1, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v1, v1, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v1}, Lcom/today/player/ui/fragment/GridFragment;->access$200(Lcom/today/player/ui/fragment/GridFragment;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v1}, Lcom/today/player/ui/fragment/GridFragment;->access$400(Lcom/today/player/ui/fragment/GridFragment;)V

    .line 147
    iget-object v1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v1, v0}, Lcom/today/player/ui/fragment/GridFragment;->access$502(Lcom/today/player/ui/fragment/GridFragment;Z)Z

    .line 148
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/GridFragment;->access$000(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/ui/adapter/GridAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v1, v1, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/GridAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/GridFragment;->access$000(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/ui/adapter/GridAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v1, v1, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/GridAdapter;->addData(Ljava/util/Collection;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/GridFragment;->access$208(Lcom/today/player/ui/fragment/GridFragment;)I

    .line 153
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    iget-object p1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget p1, p1, Lcom/today/player/bean/Movie;->pagecount:I

    invoke-static {v0, p1}, Lcom/today/player/ui/fragment/GridFragment;->access$602(Lcom/today/player/ui/fragment/GridFragment;I)I

    goto :goto_1

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/GridFragment;->access$200(Lcom/today/player/ui/fragment/GridFragment;)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 156
    iget-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/GridFragment;->access$700(Lcom/today/player/ui/fragment/GridFragment;)V

    .line 159
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/GridFragment;->access$200(Lcom/today/player/ui/fragment/GridFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/GridFragment;->access$600(Lcom/today/player/ui/fragment/GridFragment;)I

    move-result v0

    if-le p1, v0, :cond_3

    .line 160
    iget-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/GridFragment;->access$000(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/ui/adapter/GridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/GridAdapter;->loadMoreEnd()V

    goto :goto_2

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/today/player/ui/fragment/GridFragment$5;->this$0:Lcom/today/player/ui/fragment/GridFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/GridFragment;->access$000(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/ui/adapter/GridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/GridAdapter;->loadMoreComplete()V

    :goto_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Lcom/today/player/bean/AbsXml;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/fragment/GridFragment$5;->onChanged(Lcom/today/player/bean/AbsXml;)V

    return-void
.end method

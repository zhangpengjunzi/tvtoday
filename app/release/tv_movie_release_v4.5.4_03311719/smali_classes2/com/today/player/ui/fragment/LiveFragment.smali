.class public Lcom/today/player/ui/fragment/LiveFragment;
.super Lcom/today/player/base/BaseLazyFragment;
.source "LiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/LiveFragment$b;
    }
.end annotation


# static fields
.field public static final PAESE_ADD:Ljava/lang/String; = "+\u65b0\u589e\u76f4\u64ad"


# instance fields
.field public f173j:Lcom/today/player/receiver/CustomWebReceiver$a;

.field private liveParseAdapter:Lcom/today/player/ui/adapter/LiveParseAdapter;

.field public mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/today/player/ui/fragment/LiveFragment$b;

    invoke-direct {v0, p0}, Lcom/today/player/ui/fragment/LiveFragment$b;-><init>(Lcom/today/player/ui/fragment/LiveFragment;)V

    iput-object v0, p0, Lcom/today/player/ui/fragment/LiveFragment;->f173j:Lcom/today/player/receiver/CustomWebReceiver$a;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/today/player/ui/fragment/LiveFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/today/player/ui/fragment/LiveFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/today/player/ui/fragment/LiveFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/today/player/ui/fragment/LiveFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/today/player/ui/fragment/LiveFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/today/player/ui/fragment/LiveFragment;)Lcom/today/player/ui/adapter/LiveParseAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/today/player/ui/fragment/LiveFragment;->liveParseAdapter:Lcom/today/player/ui/adapter/LiveParseAdapter;

    return-object p0
.end method

.method public static newInstance()Lcom/today/player/ui/fragment/LiveFragment;
    .locals 1

    .line 41
    new-instance v0, Lcom/today/player/ui/fragment/LiveFragment;

    invoke-direct {v0}, Lcom/today/player/ui/fragment/LiveFragment;-><init>()V

    invoke-virtual {v0}, Lcom/today/player/ui/fragment/LiveFragment;->setArguments()Lcom/today/player/ui/fragment/LiveFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0058

    return v0
.end method

.method protected init()V
    .locals 4

    const v0, 0x7f0800d2

    .line 55
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/LiveFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/LiveFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    new-instance v0, Lcom/today/player/ui/adapter/LiveParseAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/LiveParseAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/fragment/LiveFragment;->liveParseAdapter:Lcom/today/player/ui/adapter/LiveParseAdapter;

    .line 57
    iget-object v1, p0, Lcom/today/player/ui/fragment/LiveFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object v0, p0, Lcom/today/player/ui/fragment/LiveFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    invoke-virtual {p0}, Lcom/today/player/ui/fragment/LiveFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getChannelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 61
    invoke-virtual {v2}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isInternal()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    new-instance v1, Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-direct {v1}, Lcom/today/player/bean/PlayerModel$LiveDTO;-><init>()V

    const-string v2, "+\u65b0\u589e\u76f4\u64ad"

    .line 66
    invoke-virtual {v1, v2}, Lcom/today/player/bean/PlayerModel$LiveDTO;->setChannelName(Ljava/lang/String;)V

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/today/player/ui/fragment/LiveFragment;->liveParseAdapter:Lcom/today/player/ui/adapter/LiveParseAdapter;

    invoke-virtual {v1, v0}, Lcom/today/player/ui/adapter/LiveParseAdapter;->setNewData(Ljava/util/List;)V

    .line 69
    iget-object v1, p0, Lcom/today/player/ui/fragment/LiveFragment;->liveParseAdapter:Lcom/today/player/ui/adapter/LiveParseAdapter;

    new-instance v2, Lcom/today/player/ui/fragment/LiveFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/today/player/ui/fragment/LiveFragment$1;-><init>(Lcom/today/player/ui/fragment/LiveFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/today/player/ui/adapter/LiveParseAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 151
    sget-object v0, Lcom/today/player/receiver/CustomWebReceiver;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/today/player/ui/fragment/LiveFragment;->f173j:Lcom/today/player/receiver/CustomWebReceiver$a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-super {p0}, Lcom/today/player/base/BaseLazyFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/today/player/base/BaseLazyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    sget-object p1, Lcom/today/player/receiver/CustomWebReceiver;->e:Ljava/util/List;

    iget-object p2, p0, Lcom/today/player/ui/fragment/LiveFragment;->f173j:Lcom/today/player/receiver/CustomWebReceiver$a;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArguments()Lcom/today/player/ui/fragment/LiveFragment;
    .locals 0

    return-object p0
.end method

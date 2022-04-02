.class public Lcom/today/player/ui/fragment/ParseFragment;
.super Lcom/today/player/base/BaseLazyFragment;
.source "ParseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/ParseFragment$b;
    }
.end annotation


# static fields
.field public static final PAESE_ADD:Ljava/lang/String; = "+\u65b0\u589e\u89e3\u6790"


# instance fields
.field public f176j:Lcom/today/player/receiver/CustomWebReceiver$a;

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private praseAdapter:Lcom/today/player/ui/adapter/PraseAdapter;

.field private praseBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$ParseUrlDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseBeanList:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/today/player/ui/fragment/ParseFragment$b;

    invoke-direct {v0, p0}, Lcom/today/player/ui/fragment/ParseFragment$b;-><init>(Lcom/today/player/ui/fragment/ParseFragment;)V

    iput-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->f176j:Lcom/today/player/receiver/CustomWebReceiver$a;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/fragment/ParseFragment;)Lcom/today/player/ui/adapter/PraseAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseAdapter:Lcom/today/player/ui/adapter/PraseAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static newInstance()Lcom/today/player/ui/fragment/ParseFragment;
    .locals 1

    .line 56
    new-instance v0, Lcom/today/player/ui/fragment/ParseFragment;

    invoke-direct {v0}, Lcom/today/player/ui/fragment/ParseFragment;-><init>()V

    invoke-virtual {v0}, Lcom/today/player/ui/fragment/ParseFragment;->setArguments()Lcom/today/player/ui/fragment/ParseFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b005a

    return v0
.end method

.method protected init()V
    .locals 4

    const v0, 0x7f0800d2

    .line 70
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ParseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 71
    new-instance v0, Lcom/today/player/ui/adapter/PraseAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/PraseAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseAdapter:Lcom/today/player/ui/adapter/PraseAdapter;

    .line 72
    iget-object v1, p0, Lcom/today/player/ui/fragment/ParseFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    invoke-virtual {p0}, Lcom/today/player/ui/fragment/ParseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseBeanList:Ljava/util/List;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getPraseBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    new-instance v0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-direct {v0}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;-><init>()V

    const-string v1, "+\u65b0\u589e\u89e3\u6790"

    .line 77
    invoke-virtual {v0, v1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->setParseName(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseBeanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseAdapter:Lcom/today/player/ui/adapter/PraseAdapter;

    iget-object v1, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/PraseAdapter;->setNewData(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment;->praseAdapter:Lcom/today/player/ui/adapter/PraseAdapter;

    new-instance v1, Lcom/today/player/ui/fragment/ParseFragment$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ParseFragment$1;-><init>(Lcom/today/player/ui/fragment/ParseFragment;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/PraseAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 180
    sget-object v0, Lcom/today/player/receiver/CustomWebReceiver;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/today/player/ui/fragment/ParseFragment;->f176j:Lcom/today/player/receiver/CustomWebReceiver$a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    invoke-super {p0}, Lcom/today/player/base/BaseLazyFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Lcom/today/player/base/BaseLazyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 186
    sget-object p1, Lcom/today/player/receiver/CustomWebReceiver;->e:Ljava/util/List;

    iget-object p2, p0, Lcom/today/player/ui/fragment/ParseFragment;->f176j:Lcom/today/player/receiver/CustomWebReceiver$a;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArguments()Lcom/today/player/ui/fragment/ParseFragment;
    .locals 0

    return-object p0
.end method

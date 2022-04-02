.class public Lcom/today/player/ui/fragment/HistoryFragment;
.super Lcom/today/player/base/BaseLazyFragment;
.source "HistoryFragment.java"


# instance fields
.field private historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

.field private isLoad:Z

.field private isTop:Z

.field private mGridView:Lcom/tv/leanback/VerticalGridView;

.field private sourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isLoad:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isTop:Z

    return-void
.end method

.method static synthetic access$002(Lcom/today/player/ui/fragment/HistoryFragment;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isTop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/today/player/ui/fragment/HistoryFragment;)Lcom/today/player/ui/adapter/HistoryAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/fragment/HistoryFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->sourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method private initData()V
    .locals 3

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isLoad:Z

    .line 126
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/HistoryFragment;->showLoading()V

    .line 127
    iget-object v1, p0, Lcom/today/player/ui/fragment/HistoryFragment;->sourceUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/today/player/cache/RoomDataManger;->getAllVodRecord(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/HistoryFragment;->showSuccess()V

    .line 130
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/HistoryAdapter;->setNewData(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isLoad:Z

    goto :goto_0

    .line 133
    :cond_0
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isLoad:Z

    .line 134
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/HistoryFragment;->showEmpty()V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0800d2

    .line 63
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/HistoryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/VerticalGridView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Lcom/tv/leanback/VerticalGridView;->setHasFixedSize(Z)V

    .line 65
    new-instance v0, Lcom/today/player/ui/adapter/HistoryAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/HistoryAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    .line 66
    iget-object v2, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    invoke-virtual {v2, v0}, Lcom/tv/leanback/VerticalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/VerticalGridView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, v1, v1}, Lcom/tv/leanback/GridLayoutManager;->setFocusOutAllowed(ZZ)V

    .line 68
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tv/leanback/VerticalGridView;->setNumColumns(I)V

    .line 69
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    new-instance v1, Lcom/today/player/ui/fragment/HistoryFragment$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/HistoryFragment$1;-><init>(Lcom/today/player/ui/fragment/HistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/tv/leanback/VerticalGridView;->setOnItemListener(Lcom/tv/leanback/OnItemListener;)V

    .line 80
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    new-instance v1, Lcom/today/player/ui/fragment/HistoryFragment$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/HistoryFragment$2;-><init>(Lcom/today/player/ui/fragment/HistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/tv/leanback/VerticalGridView;->addOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    .line 104
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    new-instance v1, Lcom/today/player/ui/fragment/HistoryFragment$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/HistoryFragment$3;-><init>(Lcom/today/player/ui/fragment/HistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/HistoryAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/HistoryFragment;->setLoadSir(Landroid/view/View;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/today/player/ui/fragment/HistoryFragment;
    .locals 1

    .line 43
    new-instance v0, Lcom/today/player/ui/fragment/HistoryFragment;

    invoke-direct {v0}, Lcom/today/player/ui/fragment/HistoryFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/today/player/ui/fragment/HistoryFragment;->setArguments(Ljava/lang/String;)Lcom/today/player/ui/fragment/HistoryFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0057

    return v0
.end method

.method protected init()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/today/player/ui/fragment/HistoryFragment;->initView()V

    .line 59
    invoke-direct {p0}, Lcom/today/player/ui/fragment/HistoryFragment;->initData()V

    return-void
.end method

.method public isLoad()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isLoad:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isTop:Z

    return v0
.end method

.method public scrollTop()V
    .locals 2

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->isTop:Z

    .line 144
    iget-object v0, p0, Lcom/today/player/ui/fragment/HistoryFragment;->mGridView:Lcom/tv/leanback/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tv/leanback/VerticalGridView;->scrollToPosition(I)V

    return-void
.end method

.method public setArguments(Ljava/lang/String;)Lcom/today/player/ui/fragment/HistoryFragment;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment;->sourceUrl:Ljava/lang/String;

    return-object p0
.end method

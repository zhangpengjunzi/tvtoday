.class public Lcom/today/player/ui/fragment/GridFragment;
.super Lcom/today/player/base/BaseLazyFragment;
.source "GridFragment.java"


# instance fields
.field private gridAdapter:Lcom/today/player/ui/adapter/GridAdapter;

.field private isLoad:Z

.field private isTop:Z

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private maxPage:I

.field private page:I

.field private sortId:I

.field private sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/today/player/ui/fragment/GridFragment;->sortId:I

    const/4 v1, 0x1

    .line 44
    iput v1, p0, Lcom/today/player/ui/fragment/GridFragment;->page:I

    .line 45
    iput v1, p0, Lcom/today/player/ui/fragment/GridFragment;->maxPage:I

    .line 46
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/GridFragment;->isLoad:Z

    .line 47
    iput-boolean v1, p0, Lcom/today/player/ui/fragment/GridFragment;->isTop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/ui/adapter/GridAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/today/player/ui/fragment/GridFragment;->gridAdapter:Lcom/today/player/ui/adapter/GridAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/fragment/GridFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/today/player/ui/fragment/GridFragment;->sortId:I

    return p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/fragment/GridFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/today/player/ui/fragment/GridFragment;->page:I

    return p0
.end method

.method static synthetic access$208(Lcom/today/player/ui/fragment/GridFragment;)I
    .locals 2

    .line 39
    iget v0, p0, Lcom/today/player/ui/fragment/GridFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/today/player/ui/fragment/GridFragment;->page:I

    return v0
.end method

.method static synthetic access$300(Lcom/today/player/ui/fragment/GridFragment;)Lcom/today/player/viewmodel/SourceViewModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/today/player/ui/fragment/GridFragment;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/today/player/ui/fragment/GridFragment;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/GridFragment;->showSuccess()V

    return-void
.end method

.method static synthetic access$502(Lcom/today/player/ui/fragment/GridFragment;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/today/player/ui/fragment/GridFragment;->isLoad:Z

    return p1
.end method

.method static synthetic access$600(Lcom/today/player/ui/fragment/GridFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/today/player/ui/fragment/GridFragment;->maxPage:I

    return p0
.end method

.method static synthetic access$602(Lcom/today/player/ui/fragment/GridFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/today/player/ui/fragment/GridFragment;->maxPage:I

    return p1
.end method

.method static synthetic access$700(Lcom/today/player/ui/fragment/GridFragment;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/GridFragment;->showEmpty()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/GridFragment;->showLoading()V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/GridFragment;->isLoad:Z

    .line 175
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    iget v1, p0, Lcom/today/player/ui/fragment/GridFragment;->sortId:I

    iget v2, p0, Lcom/today/player/ui/fragment/GridFragment;->page:I

    invoke-virtual {v0, v1, v2}, Lcom/today/player/viewmodel/SourceViewModel;->getList(II)V

    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f0800d2

    .line 71
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/GridFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 73
    new-instance v0, Lcom/today/player/ui/adapter/GridAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/GridAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->gridAdapter:Lcom/today/player/ui/adapter/GridAdapter;

    .line 74
    iget-object v1, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    iget-object v2, p0, Lcom/today/player/ui/fragment/GridFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/today/player/ui/fragment/GridFragment$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/GridFragment$1;-><init>(Lcom/today/player/ui/fragment/GridFragment;)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 102
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/today/player/ui/fragment/GridFragment$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/GridFragment$2;-><init>(Lcom/today/player/ui/fragment/GridFragment;)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 111
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->gridAdapter:Lcom/today/player/ui/adapter/GridAdapter;

    new-instance v1, Lcom/today/player/ui/fragment/GridFragment$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/GridFragment$3;-><init>(Lcom/today/player/ui/fragment/GridFragment;)V

    iget-object v2, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/today/player/ui/adapter/GridAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 119
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->gridAdapter:Lcom/today/player/ui/adapter/GridAdapter;

    new-instance v1, Lcom/tv/widget/LoadMoreView;

    invoke-direct {v1}, Lcom/tv/widget/LoadMoreView;-><init>()V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/GridAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    .line 122
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->gridAdapter:Lcom/today/player/ui/adapter/GridAdapter;

    new-instance v1, Lcom/today/player/ui/fragment/GridFragment$4;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/GridFragment$4;-><init>(Lcom/today/player/ui/fragment/GridFragment;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/GridAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/GridFragment;->setLoadSir(Landroid/view/View;)V

    return-void
.end method

.method private initViewModel()V
    .locals 2

    .line 140
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/today/player/viewmodel/SourceViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/today/player/viewmodel/SourceViewModel;

    iput-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    .line 141
    iget-object v0, v0, Lcom/today/player/viewmodel/SourceViewModel;->listResult:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/today/player/ui/fragment/GridFragment$5;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/GridFragment$5;-><init>(Lcom/today/player/ui/fragment/GridFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(I)Lcom/today/player/ui/fragment/GridFragment;
    .locals 1

    .line 50
    new-instance v0, Lcom/today/player/ui/fragment/GridFragment;

    invoke-direct {v0}, Lcom/today/player/ui/fragment/GridFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/today/player/ui/fragment/GridFragment;->setArguments(I)Lcom/today/player/ui/fragment/GridFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0056

    return v0
.end method

.method protected init()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/today/player/ui/fragment/GridFragment;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/today/player/ui/fragment/GridFragment;->initViewModel()V

    .line 67
    invoke-direct {p0}, Lcom/today/player/ui/fragment/GridFragment;->initData()V

    return-void
.end method

.method public isLoad()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/today/player/ui/fragment/GridFragment;->isLoad:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/today/player/ui/fragment/GridFragment;->isTop:Z

    return v0
.end method

.method public scrollTop()V
    .locals 2

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/today/player/ui/fragment/GridFragment;->isTop:Z

    .line 184
    iget-object v0, p0, Lcom/today/player/ui/fragment/GridFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setArguments(I)Lcom/today/player/ui/fragment/GridFragment;
    .locals 0

    .line 54
    iput p1, p0, Lcom/today/player/ui/fragment/GridFragment;->sortId:I

    return-object p0
.end method

.class public Lcom/today/player/ui/activity/HistoryNewActivity;
.super Lcom/today/player/base/BaseActivity;
.source "HistoryNewActivity.java"


# instance fields
.field public g:Z

.field private historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private tvDel:Landroid/widget/TextView;

.field private tvDelTip:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->g:Z

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/HistoryNewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->tvDel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/activity/HistoryNewActivity;)Lcom/today/player/ui/adapter/HistoryAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    return-object p0
.end method

.method private initData()V
    .locals 4

    .line 123
    invoke-static {}, Lcom/today/player/cache/RoomDataManger;->getAllVodRecord()Ljava/util/List;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo;

    .line 126
    iget-object v3, v2, Lcom/today/player/bean/VodInfo;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/today/player/util/DefaultConfig;->isContains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/HistoryAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const v0, 0x7f0802ca

    .line 57
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HistoryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f080298

    .line 58
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HistoryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->tvDel:Landroid/widget/TextView;

    const v0, 0x7f080299

    .line 59
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HistoryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->tvDelTip:Landroid/widget/TextView;

    const v0, 0x7f0800d2

    .line 60
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HistoryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 62
    new-instance v0, Lcom/today/player/ui/adapter/HistoryAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/HistoryAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    .line 63
    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->tvDel:Landroid/widget/TextView;

    new-instance v1, Lcom/today/player/ui/activity/HistoryNewActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HistoryNewActivity$1;-><init>(Lcom/today/player/ui/activity/HistoryNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/today/player/ui/activity/HistoryNewActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HistoryNewActivity$2;-><init>(Lcom/today/player/ui/activity/HistoryNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 89
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/today/player/ui/activity/HistoryNewActivity$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HistoryNewActivity$3;-><init>(Lcom/today/player/ui/activity/HistoryNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 101
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->historyAdapter:Lcom/today/player/ui/adapter/HistoryAdapter;

    new-instance v1, Lcom/today/player/ui/activity/HistoryNewActivity$4;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HistoryNewActivity$4;-><init>(Lcom/today/player/ui/activity/HistoryNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/HistoryAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->g:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->g:Z

    .line 149
    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->tvDelTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->tvDel:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/today/player/ui/activity/HistoryNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0023

    return v0
.end method

.method protected init()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/today/player/ui/activity/HistoryNewActivity;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/today/player/ui/activity/HistoryNewActivity;->initData()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/today/player/ui/activity/HistoryNewActivity;->g:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/today/player/ui/activity/HistoryNewActivity;->f()V

    goto :goto_0

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public refresh(Lcom/today/player/event/RefreshEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 136
    iget p1, p1, Lcom/today/player/event/RefreshEvent;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/today/player/ui/activity/HistoryNewActivity;->initData()V

    :cond_0
    return-void
.end method

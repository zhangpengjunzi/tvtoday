.class public Lcom/today/player/ui/activity/SettingActivity;
.super Lcom/today/player/base/BaseActivity;
.source "SettingActivity.java"


# instance fields
.field private adolescentDefault:Z

.field private defaultSelected:I

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/base/BaseLazyFragment;",
            ">;"
        }
    .end annotation
.end field

.field private isRight:Z

.field private key:Ljava/lang/String;

.field private mDataRunnable:Ljava/lang/Runnable;

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private mHandler:Landroid/os/Handler;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private pageAdapter:Lcom/today/player/ui/adapter/SettingPageAdapter;

.field private sortAdapter:Lcom/today/player/ui/adapter/SettingSortAdapter;

.field private sortChange:Z

.field private sortFocused:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->fragments:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/today/player/ui/activity/SettingActivity;->isRight:Z

    .line 49
    iput-boolean v0, p0, Lcom/today/player/ui/activity/SettingActivity;->sortChange:Z

    .line 50
    iput v0, p0, Lcom/today/player/ui/activity/SettingActivity;->defaultSelected:I

    .line 51
    iput v0, p0, Lcom/today/player/ui/activity/SettingActivity;->sortFocused:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/today/player/ui/activity/SettingActivity$3;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/SettingActivity$3;-><init>(Lcom/today/player/ui/activity/SettingActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mDataRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/SettingActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/today/player/ui/activity/SettingActivity;->sortFocused:I

    return p0
.end method

.method static synthetic access$002(Lcom/today/player/ui/activity/SettingActivity;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/today/player/ui/activity/SettingActivity;->sortFocused:I

    return p1
.end method

.method static synthetic access$100(Lcom/today/player/ui/activity/SettingActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/today/player/ui/activity/SettingActivity;->defaultSelected:I

    return p0
.end method

.method static synthetic access$102(Lcom/today/player/ui/activity/SettingActivity;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/today/player/ui/activity/SettingActivity;->defaultSelected:I

    return p1
.end method

.method static synthetic access$200(Lcom/today/player/ui/activity/SettingActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/today/player/ui/activity/SettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/activity/SettingActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/today/player/ui/activity/SettingActivity;->isRight:Z

    return p0
.end method

.method static synthetic access$400(Lcom/today/player/ui/activity/SettingActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/today/player/ui/activity/SettingActivity;->sortChange:Z

    return p0
.end method

.method static synthetic access$402(Lcom/today/player/ui/activity/SettingActivity;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/today/player/ui/activity/SettingActivity;->sortChange:Z

    return p1
.end method

.method private initData()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->key:Ljava/lang/String;

    const/4 v0, 0x1

    .line 121
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adolescent"

    invoke-static {v1, v0}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/today/player/ui/activity/SettingActivity;->adolescentDefault:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\u9996\u9875\u6570\u636e\u6e90"

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u89e3\u6790\u7ebf\u8def"

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u76f4\u64ad\u6e90"

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u8bbe\u7f6e\u5176\u4ed6"

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/today/player/ui/activity/SettingActivity;->sortAdapter:Lcom/today/player/ui/adapter/SettingSortAdapter;

    invoke-virtual {v1, v0}, Lcom/today/player/ui/adapter/SettingSortAdapter;->setNewData(Ljava/util/List;)V

    .line 128
    invoke-direct {p0}, Lcom/today/player/ui/activity/SettingActivity;->initViewPager()V

    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0800d2

    .line 70
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const v0, 0x7f0800d9

    .line 71
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 72
    new-instance v0, Lcom/today/player/ui/adapter/SettingSortAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/SettingSortAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->sortAdapter:Lcom/today/player/ui/adapter/SettingSortAdapter;

    .line 73
    iget-object v1, p0, Lcom/today/player/ui/activity/SettingActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    iget-object v2, p0, Lcom/today/player/ui/activity/SettingActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->sortAdapter:Lcom/today/player/ui/adapter/SettingSortAdapter;

    new-instance v1, Lcom/today/player/ui/activity/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SettingActivity$1;-><init>(Lcom/today/player/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SettingSortAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/today/player/ui/activity/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SettingActivity$2;-><init>(Lcom/today/player/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    return-void
.end method

.method private initViewPager()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->fragments:Ljava/util/List;

    invoke-static {}, Lcom/today/player/ui/fragment/SourceSettingFragment;->newInstance()Lcom/today/player/ui/fragment/SourceSettingFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->fragments:Ljava/util/List;

    invoke-static {}, Lcom/today/player/ui/fragment/ParseFragment;->newInstance()Lcom/today/player/ui/fragment/ParseFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->fragments:Ljava/util/List;

    invoke-static {}, Lcom/today/player/ui/fragment/LiveFragment;->newInstance()Lcom/today/player/ui/fragment/LiveFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->fragments:Ljava/util/List;

    invoke-static {}, Lcom/today/player/ui/fragment/ModelSettingFragment;->newInstance()Lcom/today/player/ui/fragment/ModelSettingFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lcom/today/player/ui/adapter/SettingPageAdapter;

    invoke-virtual {p0}, Lcom/today/player/ui/activity/SettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/today/player/ui/activity/SettingActivity;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/today/player/ui/adapter/SettingPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->pageAdapter:Lcom/today/player/ui/adapter/SettingPageAdapter;

    .line 137
    iget-object v1, p0, Lcom/today/player/ui/activity/SettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 156
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/SettingActivity;->mDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/SettingActivity;->mDataRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b002a

    return v0
.end method

.method protected init()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/today/player/ui/activity/SettingActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/today/player/ui/activity/SettingActivity;->initData()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity;->key:Ljava/lang/String;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/today/player/ui/activity/SettingActivity;->adolescentDefault:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "adolescent"

    invoke-static {v2, v1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onBackPressed()V

    goto :goto_1

    .line 167
    :cond_1
    :goto_0
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/util/AppManager;->finishAllActivity()V

    .line 168
    const-class v0, Lcom/today/player/ui/activity/HomeActivity;

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SettingActivity;->jumpActivity(Ljava/lang/Class;)V

    :goto_1
    return-void
.end method

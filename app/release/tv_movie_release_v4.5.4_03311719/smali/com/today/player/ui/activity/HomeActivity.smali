.class public Lcom/today/player/ui/activity/HomeActivity;
.super Lcom/today/player/base/BaseActivity;
.source "HomeActivity.java"


# instance fields
.field private contentLayout:Landroid/widget/LinearLayout;

.field private defaultSelected:I

.field private focusView:Landroid/view/View;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/base/BaseLazyFragment;",
            ">;"
        }
    .end annotation
.end field

.field private isDownOrUp:Z

.field private keyListener:Landroid/view/View$OnKeyListener;

.field private mDataRunnable:Ljava/lang/Runnable;

.field private mExitTime:J

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mViewPager:Lcom/tv/widget/NoScrollViewPager;

.field private pageAdapter:Lcom/today/player/ui/adapter/HomePageAdapter;

.field private sortAdapter:Lcom/today/player/ui/adapter/SortAdapter;

.field private sortChange:Z

.field private sortFocused:I

.field private sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

.field private topLayout:Landroid/widget/LinearLayout;

.field private tvDate:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->fragments:Ljava/util/List;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/today/player/ui/activity/HomeActivity;->isDownOrUp:Z

    .line 86
    iput-boolean v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortChange:Z

    .line 87
    iput v0, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    .line 88
    iput v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortFocused:I

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->focusView:Landroid/view/View;

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mExitTime:J

    .line 92
    new-instance v0, Lcom/today/player/ui/activity/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/HomeActivity$1;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lcom/today/player/ui/activity/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/HomeActivity$5;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->keyListener:Landroid/view/View$OnKeyListener;

    .line 373
    new-instance v0, Lcom/today/player/ui/activity/HomeActivity$8;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/HomeActivity$8;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mDataRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->tvDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/activity/HomeActivity;)Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/today/player/ui/activity/HomeActivity;)Ljava/util/List;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/today/player/ui/activity/HomeActivity;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/today/player/ui/activity/HomeActivity;->showSuccess()V

    return-void
.end method

.method static synthetic access$1200(Lcom/today/player/ui/activity/HomeActivity;)Lcom/owen/tvrecyclerview/widget/TvRecyclerView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/today/player/ui/activity/HomeActivity;Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/HomeActivity;->setSortDefaultPress(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/today/player/ui/activity/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/today/player/ui/activity/HomeActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->initViewPager()V

    return-void
.end method

.method static synthetic access$1600(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/viewmodel/SourceViewModel;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/activity/HomeActivity;)Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->focusView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/today/player/ui/activity/HomeActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity;->focusView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/today/player/ui/activity/HomeActivity;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    return p0
.end method

.method static synthetic access$302(Lcom/today/player/ui/activity/HomeActivity;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    return p1
.end method

.method static synthetic access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortAdapter:Lcom/today/player/ui/adapter/SortAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/today/player/ui/activity/HomeActivity;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortFocused:I

    return p0
.end method

.method static synthetic access$502(Lcom/today/player/ui/activity/HomeActivity;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/today/player/ui/activity/HomeActivity;->sortFocused:I

    return p1
.end method

.method static synthetic access$600(Lcom/today/player/ui/activity/HomeActivity;)Lcom/tv/widget/NoScrollViewPager;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/today/player/ui/activity/HomeActivity;->mViewPager:Lcom/tv/widget/NoScrollViewPager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/today/player/ui/activity/HomeActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/today/player/ui/activity/HomeActivity;->isDownOrUp:Z

    return p0
.end method

.method static synthetic access$702(Lcom/today/player/ui/activity/HomeActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/today/player/ui/activity/HomeActivity;->isDownOrUp:Z

    return p1
.end method

.method static synthetic access$800(Lcom/today/player/ui/activity/HomeActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortChange:Z

    return p0
.end method

.method static synthetic access$802(Lcom/today/player/ui/activity/HomeActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/today/player/ui/activity/HomeActivity;->sortChange:Z

    return p1
.end method

.method static synthetic access$900(Lcom/today/player/ui/activity/HomeActivity;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/HomeActivity;->changeTop(Z)V

    return-void
.end method

.method private changeTop(Z)V
    .locals 7

    .line 401
    new-instance v0, Lcom/tv/widget/ViewObj;

    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/tv/widget/ViewObj;-><init>(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 402
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v2, 0x42a00000    # 80.0f

    if-eqz p1, :cond_0

    .line 404
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/today/player/ui/activity/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity;->mContext:Landroid/content/Context;

    const/high16 v6, -0x3d7e0000    # -65.0f

    invoke-static {v2, v6}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const-string v2, "marginTop"

    invoke-static {v0, v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->topLayout:Landroid/widget/LinearLayout;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object p1, v2, v5

    aput-object v0, v2, v6

    .line 406
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    .line 407
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 408
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tv/widget/ViewObj;->setMarginTop(I)V

    .line 411
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity;->topLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 412
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAlpha(F)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private exit()V
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mViewPager:Lcom/tv/widget/NoScrollViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tv/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 287
    iput v1, p0, Lcom/today/player/ui/activity/HomeActivity;->sortFocused:I

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortChange:Z

    .line 289
    invoke-direct {p0, v1}, Lcom/today/player/ui/activity/HomeActivity;->changeTop(Z)V

    return-void

    .line 292
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/today/player/ui/activity/HomeActivity;->mExitTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 293
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/today/player/ui/activity/HomeActivity;->mExitTime:J

    .line 296
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mContext:Landroid/content/Context;

    const-string v2, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u952e\u9000\u51fa\u5e94\u7528"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private initData()V
    .locals 1

    .line 234
    invoke-static {}, Lcom/today/player/server/ControlManager;->get()Lcom/today/player/server/ControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/server/ControlManager;->startServer()V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0802aa

    .line 118
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->tvName:Landroid/widget/TextView;

    const v0, 0x7f080172

    .line 119
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->topLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08006b

    .line 120
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->contentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080297

    .line 121
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0800d2

    .line 122
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const v0, 0x7f0800d9

    .line 123
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tv/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mViewPager:Lcom/tv/widget/NoScrollViewPager;

    .line 124
    new-instance v0, Lcom/today/player/ui/adapter/SortAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/SortAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortAdapter:Lcom/today/player/ui/adapter/SortAdapter;

    .line 125
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortAdapter:Lcom/today/player/ui/adapter/SortAdapter;

    new-instance v1, Lcom/today/player/ui/activity/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HomeActivity$2;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SortAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/today/player/ui/activity/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HomeActivity$3;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 171
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/today/player/ui/activity/HomeActivity$4;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HomeActivity$4;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 193
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->setLoadSir(Landroid/view/View;)V

    .line 194
    invoke-virtual {p0}, Lcom/today/player/ui/activity/HomeActivity;->signedCheck()V

    return-void
.end method

.method private initViewModel()V
    .locals 2

    .line 215
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/today/player/viewmodel/SourceViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/today/player/viewmodel/SourceViewModel;

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    .line 216
    iget-object v0, v0, Lcom/today/player/viewmodel/SourceViewModel;->sortResult:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/today/player/ui/activity/HomeActivity$6;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HomeActivity$6;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initViewPager()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortAdapter:Lcom/today/player/ui/adapter/SortAdapter;

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SortAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->sortAdapter:Lcom/today/player/ui/adapter/SortAdapter;

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SortAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/MovieSort$SortData;

    .line 240
    iget v2, v1, Lcom/today/player/bean/MovieSort$SortData;->id:I

    if-nez v2, :cond_0

    .line 241
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->fragments:Ljava/util/List;

    invoke-static {}, Lcom/today/player/ui/fragment/UserFragment;->newInstance()Lcom/today/player/ui/fragment/UserFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity;->fragments:Ljava/util/List;

    iget v1, v1, Lcom/today/player/bean/MovieSort$SortData;->id:I

    invoke-static {v1}, Lcom/today/player/ui/fragment/GridFragment;->newInstance(I)Lcom/today/player/ui/fragment/GridFragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Lcom/today/player/ui/adapter/HomePageAdapter;

    invoke-virtual {p0}, Lcom/today/player/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/today/player/ui/adapter/HomePageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->pageAdapter:Lcom/today/player/ui/adapter/HomePageAdapter;

    const/4 v0, 0x1

    .line 248
    :try_start_0
    const-class v1, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "mScroller"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 250
    new-instance v2, Lcom/tv/widget/FixedSpeedScroller;

    iget-object v3, p0, Lcom/today/player/ui/activity/HomeActivity;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/tv/widget/FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 251
    iget-object v3, p0, Lcom/today/player/ui/activity/HomeActivity;->mViewPager:Lcom/tv/widget/NoScrollViewPager;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x12c

    .line 252
    invoke-virtual {v2, v1}, Lcom/tv/widget/FixedSpeedScroller;->setmDuration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mViewPager:Lcom/tv/widget/NoScrollViewPager;

    new-instance v2, Lcom/tv/widget/DefaultTransformer;

    invoke-direct {v2}, Lcom/tv/widget/DefaultTransformer;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/tv/widget/NoScrollViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 256
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mViewPager:Lcom/tv/widget/NoScrollViewPager;

    iget-object v2, p0, Lcom/today/player/ui/activity/HomeActivity;->pageAdapter:Lcom/today/player/ui/adapter/HomePageAdapter;

    invoke-virtual {v1, v2}, Lcom/tv/widget/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 257
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mViewPager:Lcom/tv/widget/NoScrollViewPager;

    iget v2, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tv/widget/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 258
    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->sortAdapter:Lcom/today/player/ui/adapter/SortAdapter;

    invoke-virtual {v1}, Lcom/today/player/ui/adapter/SortAdapter;->getData()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/MovieSort$SortData;

    iput-boolean v0, v1, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    :cond_2
    return-void
.end method

.method private loadSource()V
    .locals 2

    .line 436
    invoke-static {}, Lcom/upa/source/VideoSource;->getInstance()Lcom/upa/source/VideoSource;

    move-result-object v0

    new-instance v1, Lcom/today/player/ui/activity/HomeActivity$9;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HomeActivity$9;-><init>(Lcom/today/player/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/upa/source/VideoSource;->getSource(Lcom/upa/source/ISourceListener;)V

    return-void
.end method

.method private setSortDefaultPress(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V
    .locals 1

    .line 347
    new-instance v0, Lcom/today/player/ui/activity/HomeActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/today/player/ui/activity/HomeActivity$7;-><init>(Lcom/today/player/ui/activity/HomeActivity;Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public changeTop(Lcom/today/player/event/TopStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 315
    iget v0, p1, Lcom/today/player/event/TopStateEvent;->type:I

    if-nez v0, :cond_1

    .line 316
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity;->focusView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    if-ne p1, v0, :cond_0

    .line 317
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity;->focusView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 p1, 0x0

    .line 319
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/HomeActivity;->changeTop(Z)V

    goto :goto_0

    .line 320
    :cond_1
    iget v0, p1, Lcom/today/player/event/TopStateEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/today/player/ui/activity/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/today/player/ui/activity/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 322
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 326
    :cond_2
    iget p1, p1, Lcom/today/player/event/TopStateEvent;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->loadSource()V

    .line 328
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/util/NetUtils;->isWifiProxy(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->loadSource()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 392
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mDataRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b001f

    return v0
.end method

.method protected init()V
    .locals 1

    .line 111
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->initViewModel()V

    .line 114
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->initData()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->fragments:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    if-le v0, v1, :cond_3

    .line 265
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/base/BaseLazyFragment;

    .line 266
    instance-of v1, v0, Lcom/today/player/ui/fragment/GridFragment;

    if-eqz v1, :cond_2

    .line 267
    check-cast v0, Lcom/today/player/ui/fragment/GridFragment;

    invoke-virtual {v0}, Lcom/today/player/ui/fragment/GridFragment;->isTop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    invoke-virtual {v0}, Lcom/today/player/ui/fragment/GridFragment;->scrollTop()V

    .line 269
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->focusView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/today/player/ui/activity/HomeActivity;->defaultSelected:I

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->focusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->changeTop(Z)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->exit()V

    goto :goto_0

    .line 277
    :cond_2
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->exit()V

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/today/player/ui/activity/HomeActivity;->exit()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 418
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 420
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/today/player/service/DownLoadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HomeActivity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 425
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/today/player/util/AppManager;->appExit(I)V

    .line 426
    invoke-static {}, Lcom/today/player/server/ControlManager;->get()Lcom/today/player/server/ControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/server/ControlManager;->stopServer()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 309
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 302
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onResume()V

    .line 303
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/HomeActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public server(Lcom/today/player/event/ServerEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public signedCheck()V
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/today/player/ui/activity/HomeActivity;->showLoading()V

    .line 432
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/upa/DownloadManager;->update(Landroid/content/Context;I)V

    return-void
.end method

.class public Lcom/today/player/ui/activity/HistoryActivity;
.super Lcom/today/player/base/BaseActivity;
.source "HistoryActivity.java"


# instance fields
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

.field private mDataRunnable:Ljava/lang/Runnable;

.field private mGridView:Lcom/tv/leanback/HorizontalGridView;

.field private mHandler:Landroid/os/Handler;

.field private pageAdapter:Lcom/today/player/ui/adapter/HomePageAdapter;

.field private sortChange:Z

.field private sortFocused:I

.field private sourceAdapter:Lcom/today/player/ui/adapter/HistorySourceAdapter;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->fragments:Ljava/util/List;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->isDownOrUp:Z

    .line 60
    iput-boolean v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sortChange:Z

    .line 61
    iput v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->defaultSelected:I

    .line 62
    iput v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sortFocused:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->focusView:Landroid/view/View;

    .line 188
    new-instance v0, Lcom/today/player/ui/activity/HistoryActivity$5;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/HistoryActivity$5;-><init>(Lcom/today/player/ui/activity/HistoryActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mDataRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/HistoryActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sortFocused:I

    return p0
.end method

.method static synthetic access$002(Lcom/today/player/ui/activity/HistoryActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->sortFocused:I

    return p1
.end method

.method static synthetic access$100(Lcom/today/player/ui/activity/HistoryActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/today/player/ui/activity/HistoryActivity;->defaultSelected:I

    return p0
.end method

.method static synthetic access$102(Lcom/today/player/ui/activity/HistoryActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->defaultSelected:I

    return p1
.end method

.method static synthetic access$200(Lcom/today/player/ui/activity/HistoryActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sortChange:Z

    return p0
.end method

.method static synthetic access$202(Lcom/today/player/ui/activity/HistoryActivity;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->sortChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/today/player/ui/activity/HistoryActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/today/player/ui/activity/HistoryActivity;->isDownOrUp:Z

    return p0
.end method

.method static synthetic access$302(Lcom/today/player/ui/activity/HistoryActivity;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->isDownOrUp:Z

    return p1
.end method

.method static synthetic access$400(Lcom/today/player/ui/activity/HistoryActivity;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/today/player/ui/activity/HistoryActivity;->focusView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/today/player/ui/activity/HistoryActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->focusView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/today/player/ui/activity/HistoryActivity;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/today/player/ui/activity/HistoryActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/today/player/ui/activity/HistoryActivity;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/HistoryActivity;->changeTop(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/today/player/ui/activity/HistoryActivity;)Lcom/today/player/ui/adapter/HistorySourceAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sourceAdapter:Lcom/today/player/ui/adapter/HistorySourceAdapter;

    return-object p0
.end method

.method private changeTop(Z)V
    .locals 7

    .line 240
    new-instance v0, Lcom/tv/widget/ViewObj;

    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    invoke-virtual {v1}, Lcom/tv/leanback/HorizontalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/tv/widget/ViewObj;-><init>(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 241
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v2, 0x42a00000    # 80.0f

    if-eqz p1, :cond_0

    .line 243
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/today/player/ui/activity/HistoryActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v2, p0, Lcom/today/player/ui/activity/HistoryActivity;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v2, v6}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const-string v2, "marginTop"

    invoke-static {v0, v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->tvTitle:Landroid/widget/TextView;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object p1, v2, v5

    aput-object v0, v2, v6

    .line 245
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 247
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tv/widget/ViewObj;->setMarginTop(I)V

    .line 250
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->tvTitle:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initData()V
    .locals 2

    .line 156
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sourceAdapter:Lcom/today/player/ui/adapter/HistorySourceAdapter;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getSourceBeanList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/HistorySourceAdapter;->setNewData(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    invoke-direct {p0, v0}, Lcom/today/player/ui/activity/HistoryActivity;->setSortDefaultPress(Lcom/tv/leanback/HorizontalGridView;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0802ca

    .line 78
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0800d2

    .line 79
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/HorizontalGridView;

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/tv/leanback/HorizontalGridView;->setHasFixedSize(Z)V

    .line 81
    new-instance v0, Lcom/today/player/ui/adapter/HistorySourceAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/HistorySourceAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sourceAdapter:Lcom/today/player/ui/adapter/HistorySourceAdapter;

    .line 82
    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    invoke-virtual {v1, v0}, Lcom/tv/leanback/HorizontalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->sourceAdapter:Lcom/today/player/ui/adapter/HistorySourceAdapter;

    new-instance v1, Lcom/today/player/ui/activity/HistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HistoryActivity$1;-><init>(Lcom/today/player/ui/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/HistorySourceAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    new-instance v1, Lcom/today/player/ui/activity/HistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HistoryActivity$2;-><init>(Lcom/today/player/ui/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/tv/leanback/HorizontalGridView;->setOnItemListener(Lcom/tv/leanback/OnItemListener;)V

    .line 123
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    new-instance v1, Lcom/today/player/ui/activity/HistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HistoryActivity$3;-><init>(Lcom/today/player/ui/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/tv/leanback/HorizontalGridView;->setOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method private setSortDefaultPress(Lcom/tv/leanback/HorizontalGridView;)V
    .locals 1

    .line 164
    new-instance v0, Lcom/today/player/ui/activity/HistoryActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/today/player/ui/activity/HistoryActivity$4;-><init>(Lcom/today/player/ui/activity/HistoryActivity;Lcom/tv/leanback/HorizontalGridView;)V

    invoke-virtual {p1, v0}, Lcom/tv/leanback/HorizontalGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public changeTop(Lcom/today/player/event/HistoryStateEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 213
    iget p1, p1, Lcom/today/player/event/HistoryStateEvent;->type:I

    if-nez p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->focusView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->defaultSelected:I

    if-ne p1, v0, :cond_0

    .line 215
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity;->focusView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/HistoryActivity;->changeTop(Z)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity;->mDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity;->mDataRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b001e

    return v0
.end method

.method protected init()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/today/player/ui/activity/HistoryActivity;->initView()V

    .line 74
    invoke-direct {p0}, Lcom/today/player/ui/activity/HistoryActivity;->initData()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->fragments:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/today/player/ui/activity/HistoryActivity;->defaultSelected:I

    if-le v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/ui/fragment/HistoryFragment;

    .line 225
    invoke-virtual {v0}, Lcom/today/player/ui/fragment/HistoryFragment;->isTop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/today/player/ui/fragment/HistoryFragment;->scrollTop()V

    .line 227
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->focusView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/today/player/ui/activity/HistoryActivity;->defaultSelected:I

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity;->focusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lcom/today/player/ui/activity/HistoryActivity;->changeTop(Z)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 235
    :cond_2
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 257
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

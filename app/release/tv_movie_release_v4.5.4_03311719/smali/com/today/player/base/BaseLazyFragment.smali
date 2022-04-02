.class public abstract Lcom/today/player/base/BaseLazyFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseLazyFragment.java"


# instance fields
.field protected currentVisibleState:Z

.field protected isViewCreated:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mIsFirstVisible:Z

.field private mLoadService:Lcom/kingja/loadsir/core/LoadService;

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/today/player/base/BaseLazyFragment;->rootView:Landroid/view/View;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->isViewCreated:Z

    .line 45
    iput-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->mIsFirstVisible:Z

    return-void
.end method

.method private dispatchChildVisibleState(Z)V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 159
    instance-of v2, v1, Lcom/today/player/base/BaseLazyFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    check-cast v1, Lcom/today/player/base/BaseLazyFragment;

    invoke-direct {v1, p1}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchUserVisibleHint(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;->isParentInvisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 133
    :cond_1
    iput-boolean p1, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 135
    iget-boolean p1, p0, Lcom/today/player/base/BaseLazyFragment;->mIsFirstVisible:Z

    if-eqz p1, :cond_2

    .line 136
    iput-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->mIsFirstVisible:Z

    .line 138
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->init()V

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->onFragmentResume()V

    const/4 p1, 0x1

    .line 142
    invoke-direct {p0, p1}, Lcom/today/player/base/BaseLazyFragment;->dispatchChildVisibleState(Z)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->onFragmentPause()V

    .line 145
    invoke-direct {p0, v0}, Lcom/today/player/base/BaseLazyFragment;->dispatchChildVisibleState(Z)V

    :goto_0
    return-void
.end method

.method private isParentInvisible()Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 181
    instance-of v1, v0, Lcom/today/player/base/BaseLazyFragment;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lcom/today/player/base/BaseLazyFragment;

    .line 183
    invoke-direct {v0}, Lcom/today/player/base/BaseLazyFragment;->isSupportVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportVisible()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    return v0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/today/player/base/BaseLazyFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected abstract getLayoutResID()I
.end method

.method protected abstract init()V
.end method

.method public jumpActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/today/player/base/BaseActivity;",
            ">;)V"
        }
    .end annotation

    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/today/player/base/BaseLazyFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/today/player/base/BaseLazyFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public jumpActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/today/player/base/BaseActivity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/today/player/base/BaseLazyFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Lcom/today/player/base/BaseLazyFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/today/player/base/BaseLazyFragment;->mContext:Landroid/content/Context;

    .line 59
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/today/player/base/BaseLazyFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 65
    iget-object p3, p0, Lcom/today/player/base/BaseLazyFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->getLayoutResID()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/base/BaseLazyFragment;->rootView:Landroid/view/View;

    :cond_0
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/today/player/base/BaseLazyFragment;->isViewCreated:Z

    .line 69
    iget-object p1, p0, Lcom/today/player/base/BaseLazyFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 223
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->isViewCreated:Z

    return-void
.end method

.method protected onFragmentPause()V
    .locals 0

    return-void
.end method

.method protected onFragmentResume()V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 116
    invoke-direct {p0, p1}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 216
    iget-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 199
    iget-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->mIsFirstVisible:Z

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, v0}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/today/player/base/BaseLazyFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 77
    invoke-direct {p0, p1}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method protected setLoadSir(Landroid/view/View;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/today/player/base/BaseLazyFragment;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/kingja/loadsir/core/LoadSir;->getDefault()Lcom/kingja/loadsir/core/LoadSir;

    move-result-object v0

    new-instance v1, Lcom/today/player/base/BaseLazyFragment$1;

    invoke-direct {v1, p0}, Lcom/today/player/base/BaseLazyFragment$1;-><init>(Lcom/today/player/base/BaseLazyFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingja/loadsir/core/LoadSir;->register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadService;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/base/BaseLazyFragment;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 90
    iget-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->isViewCreated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 96
    iget-boolean v0, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 98
    invoke-direct {p0, p1}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 99
    iget-boolean p1, p0, Lcom/today/player/base/BaseLazyFragment;->currentVisibleState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/today/player/base/BaseLazyFragment;->dispatchUserVisibleHint(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected showEmpty()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/today/player/base/BaseLazyFragment;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_0

    .line 261
    const-class v1, Lcom/today/player/callback/EmptyCallback;

    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadService;->showCallback(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected showLoading()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/today/player/base/BaseLazyFragment;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_0

    .line 255
    const-class v1, Lcom/today/player/callback/LoadingCallback;

    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadService;->showCallback(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected showSuccess()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/today/player/base/BaseLazyFragment;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/LoadService;->showSuccess()V

    :cond_0
    return-void
.end method

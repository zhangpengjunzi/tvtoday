.class public Lcom/today/player/ui/fragment/UserFragment;
.super Lcom/today/player/base/BaseLazyFragment;
.source "UserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private flHistory:Landroid/widget/FrameLayout;

.field private flLive:Landroid/widget/FrameLayout;

.field private flRecommend:Landroid/widget/FrameLayout;

.field private flSearch:Landroid/widget/FrameLayout;

.field private flSetting:Landroid/widget/FrameLayout;

.field private final focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private imgHistory:Landroid/widget/ImageView;

.field private imgLive:Landroid/widget/ImageView;

.field private imgRecommend:Landroid/widget/ImageView;

.field private imgSearch:Landroid/widget/ImageView;

.field private imgSetting:Landroid/widget/ImageView;

.field private onKeyListener:Landroid/view/View$OnKeyListener;

.field private remoteDialog:Lcom/today/player/ui/dialog/RemoteDialog;

.field private tvHistory:Landroid/widget/TextView;

.field private tvLive:Landroid/widget/TextView;

.field private tvRecommend:Landroid/widget/TextView;

.field private tvSearch:Landroid/widget/TextView;

.field private tvSetting:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/today/player/ui/fragment/UserFragment$1;

    invoke-direct {v0, p0}, Lcom/today/player/ui/fragment/UserFragment$1;-><init>(Lcom/today/player/ui/fragment/UserFragment;)V

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 139
    new-instance v0, Lcom/today/player/ui/fragment/UserFragment$2;

    invoke-direct {v0, p0}, Lcom/today/player/ui/fragment/UserFragment$2;-><init>(Lcom/today/player/ui/fragment/UserFragment;)V

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public static newInstance()Lcom/today/player/ui/fragment/UserFragment;
    .locals 1

    .line 71
    new-instance v0, Lcom/today/player/ui/fragment/UserFragment;

    invoke-direct {v0}, Lcom/today/player/ui/fragment/UserFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b005b

    return v0
.end method

.method protected init()V
    .locals 6

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const v0, 0x7f0802a4

    .line 82
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvLive:Landroid/widget/TextView;

    const v0, 0x7f0802b5

    .line 83
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSearch:Landroid/widget/TextView;

    const v0, 0x7f0802ba

    .line 84
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSetting:Landroid/widget/TextView;

    const v0, 0x7f08029f

    .line 85
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvHistory:Landroid/widget/TextView;

    const v0, 0x7f0802df

    .line 86
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvRecommend:Landroid/widget/TextView;

    const v0, 0x7f080094

    .line 88
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->flHistory:Landroid/widget/FrameLayout;

    const v0, 0x7f080095

    .line 89
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->flLive:Landroid/widget/FrameLayout;

    const v0, 0x7f080097

    .line 90
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->flSearch:Landroid/widget/FrameLayout;

    const v0, 0x7f080098

    .line 91
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->flSetting:Landroid/widget/FrameLayout;

    const v0, 0x7f080096

    .line 92
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->flRecommend:Landroid/widget/FrameLayout;

    const v0, 0x7f0800ab

    .line 94
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->imgHistory:Landroid/widget/ImageView;

    const v0, 0x7f0800ad

    .line 95
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->imgLive:Landroid/widget/ImageView;

    const v0, 0x7f0800af

    .line 96
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->imgSearch:Landroid/widget/ImageView;

    const v0, 0x7f0800b0

    .line 97
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->imgSetting:Landroid/widget/ImageView;

    const v0, 0x7f0800ae

    .line 98
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->imgRecommend:Landroid/widget/ImageView;

    .line 99
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x43600000    # 224.0f

    invoke-static {v1, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 102
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->flHistory:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->flLive:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->flSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->flSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->flRecommend:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->flRecommend:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v1, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 110
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 113
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->imgHistory:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->imgLive:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->imgSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->imgSetting:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->imgRecommend:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvLive:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 121
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSearch:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 122
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSetting:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 123
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvHistory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvRecommend:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvLive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSearch:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSetting:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvHistory:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvRecommend:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvLive:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSearch:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvSetting:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvHistory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/today/player/ui/fragment/UserFragment;->tvRecommend:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/fragment/UserFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802a4

    if-ne v0, v1, :cond_0

    .line 153
    const-class p1, Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/fragment/UserFragment;->jumpActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802b5

    if-ne v0, v1, :cond_1

    .line 155
    const-class p1, Lcom/today/player/ui/activity/SearchActivity;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/fragment/UserFragment;->jumpActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802ba

    if-ne v0, v1, :cond_2

    .line 157
    const-class p1, Lcom/today/player/ui/activity/SettingActivity;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/fragment/UserFragment;->jumpActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08029f

    if-ne v0, v1, :cond_3

    .line 159
    const-class p1, Lcom/today/player/ui/activity/HistoryNewActivity;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/fragment/UserFragment;->jumpActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0802df

    if-ne p1, v0, :cond_4

    .line 161
    const-class p1, Lcom/today/player/ui/activity/RecommendActivity;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/fragment/UserFragment;->jumpActivity(Ljava/lang/Class;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/today/player/base/BaseLazyFragment;->onDestroy()V

    .line 179
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public server(Lcom/today/player/event/ServerEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 169
    iget p1, p1, Lcom/today/player/event/ServerEvent;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/today/player/ui/fragment/UserFragment;->remoteDialog:Lcom/today/player/ui/dialog/RemoteDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/RemoteDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/today/player/ui/fragment/UserFragment;->remoteDialog:Lcom/today/player/ui/dialog/RemoteDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/RemoteDialog;->dismiss()V

    :cond_0
    return-void
.end method

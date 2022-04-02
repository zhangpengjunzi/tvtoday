.class public Lcom/today/player/ui/dialog/SourceSettingDialog$d;
.super Ljava/lang/Object;
.source "SourceSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/dialog/SourceSettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 118
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 119
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u5c1a\u672a\u542f\u7528!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 123
    :cond_0
    new-instance p1, Lcom/today/player/ui/dialog/TipSortDialog;

    invoke-direct {p1}, Lcom/today/player/ui/dialog/TipSortDialog;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    iput-object v1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->c:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 126
    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {v1}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b004f

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->a:Landroid/view/View;

    .line 127
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v2, v2, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {v2}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f00dd

    invoke-direct {v1, v2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 128
    iput-object v1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->b:Landroid/app/Dialog;

    .line 129
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 130
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 131
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->b:Landroid/app/Dialog;

    iget-object v2, p1, Lcom/today/player/ui/dialog/TipSortDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 132
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->g:Lcom/kingja/loadsir/core/LoadService;

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Lcom/kingja/loadsir/core/LoadSir;->getDefault()Lcom/kingja/loadsir/core/LoadSir;

    move-result-object v0

    iget-object v2, p1, Lcom/today/player/ui/dialog/TipSortDialog;->a:Landroid/view/View;

    new-instance v4, Lcom/today/player/ui/dialog/SourceSettingDialog$d$1;

    invoke-direct {v4, p0}, Lcom/today/player/ui/dialog/SourceSettingDialog$d$1;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog$d;)V

    invoke-virtual {v0, v2, v4}, Lcom/kingja/loadsir/core/LoadSir;->register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadService;

    move-result-object v0

    iput-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->g:Lcom/kingja/loadsir/core/LoadService;

    .line 139
    :cond_1
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->b:Landroid/app/Dialog;

    new-instance v2, Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;

    invoke-direct {v2, p0, p1}, Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog$d;Lcom/today/player/ui/dialog/TipSortDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->b:Landroid/app/Dialog;

    new-instance v2, Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;

    invoke-direct {v2, p0, p1}, Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog$d;Lcom/today/player/ui/dialog/TipSortDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 183
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    const v2, 0x7f0800d2

    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 187
    :cond_2
    check-cast v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v3, p1, Lcom/today/player/ui/dialog/TipSortDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 188
    new-instance v0, Lcom/today/player/ui/adapter/TipSortAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/TipSortAdapter;-><init>()V

    iput-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->d:Lcom/today/player/ui/adapter/TipSortAdapter;

    .line 189
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 190
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    iget-object v2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v2, v2, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {v2}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 191
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iget-object v1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->d:Lcom/today/player/ui/adapter/TipSortAdapter;

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 192
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->d:Lcom/today/player/ui/adapter/TipSortAdapter;

    new-instance v1, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;

    invoke-direct {v1, p0, p1}, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog$d;Lcom/today/player/ui/dialog/TipSortDialog;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/TipSortAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 209
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/today/player/viewmodel/SourceViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/today/player/viewmodel/SourceViewModel;

    .line 210
    iput-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->f:Lcom/today/player/viewmodel/SourceViewModel;

    .line 211
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->f:Lcom/today/player/viewmodel/SourceViewModel;

    invoke-virtual {v0}, Lcom/today/player/viewmodel/SourceViewModel;->getSort()V

    .line 212
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->f:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v0, v0, Lcom/today/player/viewmodel/SourceViewModel;->sortResult:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    new-instance v2, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;

    invoke-direct {v2, p0, p1}, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog$d;Lcom/today/player/ui/dialog/TipSortDialog;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 234
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->g:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_3

    .line 236
    const-class v1, Lcom/today/player/callback/LoadingCallback;

    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadService;->showCallback(Ljava/lang/Class;)V

    .line 239
    :cond_3
    iget-object v0, p1, Lcom/today/player/ui/dialog/TipSortDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method

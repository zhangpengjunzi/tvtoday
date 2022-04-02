.class public Lcom/today/player/ui/fragment/ModelSettingFragment$b;
.super Ljava/lang/Object;
.source "ModelSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/fragment/ModelSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/ModelSettingFragment$b$a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 59
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 60
    new-instance p1, Lcom/today/player/ui/dialog/MediaCodeDialog;

    invoke-direct {p1}, Lcom/today/player/ui/dialog/MediaCodeDialog;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$000(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$b$a;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ModelSettingFragment$b$a;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$b;)V

    .line 64
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0b0042

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->a:Landroid/view/View;

    .line 65
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0f00dd

    invoke-direct {v2, v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-object v2, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->b:Landroid/app/Dialog;

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    iget-object v2, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->b:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 69
    iget-object v2, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->b:Landroid/app/Dialog;

    iget-object v6, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->a:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 70
    iput-object v1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->e:Lcom/today/player/ui/dialog/MediaCodeDialog$a;

    .line 71
    iget-object v1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    const v2, 0x7f0802a0

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 75
    :cond_0
    check-cast v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 76
    iput-object v3, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    invoke-virtual {v3, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 78
    new-instance v1, Lcom/today/player/ui/adapter/MediaCodeAdapter;

    invoke-direct {v1}, Lcom/today/player/ui/adapter/MediaCodeAdapter;-><init>()V

    .line 79
    iput-object v1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->d:Lcom/today/player/ui/adapter/MediaCodeAdapter;

    .line 80
    iget-object v2, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    invoke-direct {v2, v0, v5, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getIjkConfigList()Ljava/util/List;

    move-result-object v0

    .line 83
    iget-object v1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->d:Lcom/today/player/ui/adapter/MediaCodeAdapter;

    invoke-virtual {v1, v0}, Lcom/today/player/ui/adapter/MediaCodeAdapter;->setNewData(Ljava/util/List;)V

    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 85
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;

    iget-boolean v1, v1, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->c:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->d:Lcom/today/player/ui/adapter/MediaCodeAdapter;

    new-instance v2, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$b;Ljava/util/List;Lcom/today/player/ui/dialog/MediaCodeDialog;)V

    invoke-virtual {v1, v2}, Lcom/today/player/ui/adapter/MediaCodeAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 111
    iget-object v0, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    iget-object p1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.class public Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;
.super Ljava/lang/Object;
.source "SourceSettingFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/fragment/SourceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/SourceSettingFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 105
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 106
    iget-object p1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    iget-object p1, p1, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 107
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "addnewkey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    new-instance p1, Lcom/today/player/ui/dialog/RemoteConnect;

    invoke-direct {p1}, Lcom/today/player/ui/dialog/RemoteConnect;-><init>()V

    .line 110
    iget-object p2, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-static {p2}, Lcom/today/player/ui/fragment/SourceSettingFragment;->access$000(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/today/player/ui/dialog/RemoteConnect;->a(Landroid/content/Context;)Lcom/today/player/ui/dialog/RemoteConnect;

    .line 111
    invoke-virtual {p1}, Lcom/today/player/ui/dialog/RemoteConnect;->a()V

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "testspeed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f0f00dd

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 116
    new-instance p1, Lcom/today/player/ui/dialog/TestSpeed;

    invoke-direct {p1}, Lcom/today/player/ui/dialog/TestSpeed;-><init>()V

    .line 117
    iget-object p2, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-static {p2}, Lcom/today/player/ui/fragment/SourceSettingFragment;->access$100(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0050

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->a:Landroid/view/View;

    .line 118
    new-instance p2, Landroid/app/Dialog;

    iget-object p3, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-static {p3}, Lcom/today/player/ui/fragment/SourceSettingFragment;->access$200(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 119
    iput-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->b:Landroid/app/Dialog;

    .line 120
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 121
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->b:Landroid/app/Dialog;

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 122
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->b:Landroid/app/Dialog;

    iget-object p3, p1, Lcom/today/player/ui/dialog/TestSpeed;->a:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 123
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->b:Landroid/app/Dialog;

    new-instance p3, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$1;

    invoke-direct {p3, p0, p1}, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$1;-><init>(Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;Lcom/today/player/ui/dialog/TestSpeed;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 129
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->a:Landroid/view/View;

    const p3, 0x7f0800d2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->d:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 130
    new-instance p2, Lcom/today/player/ui/adapter/TestSpeedAdapter;

    invoke-direct {p2}, Lcom/today/player/ui/adapter/TestSpeedAdapter;-><init>()V

    iput-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->c:Lcom/today/player/ui/adapter/TestSpeedAdapter;

    .line 131
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->d:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {p2, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 132
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->d:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance p3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    iget-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/SourceSettingFragment;->access$300(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 133
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->d:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iget-object p3, p1, Lcom/today/player/ui/dialog/TestSpeed;->c:Lcom/today/player/ui/adapter/TestSpeedAdapter;

    invoke-virtual {p2, p3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 135
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/today/player/api/ApiConfig;->getSourceBeanList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 136
    invoke-virtual {p3}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isAddition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p1, Lcom/today/player/ui/dialog/TestSpeed;->f:Ljava/util/List;

    new-instance v1, Lcom/today/player/ui/dialog/TestSpeed$vg;

    invoke-direct {v1, p3}, Lcom/today/player/ui/dialog/TestSpeed$vg;-><init>(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->c:Lcom/today/player/ui/adapter/TestSpeedAdapter;

    iget-object p3, p1, Lcom/today/player/ui/dialog/TestSpeed;->f:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/today/player/ui/adapter/TestSpeedAdapter;->setNewData(Ljava/util/List;)V

    .line 141
    :goto_1
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_3

    .line 143
    new-instance p2, Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object p3, p1, Lcom/today/player/ui/dialog/TestSpeed;->f:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/today/player/ui/dialog/TestSpeed$vg;

    invoke-direct {p2, p1, p3, v2}, Lcom/today/player/ui/dialog/TestSpeed$wl;-><init>(Lcom/today/player/ui/dialog/TestSpeed;Lcom/today/player/ui/dialog/TestSpeed$vg;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    :cond_3
    iget-object p2, p1, Lcom/today/player/ui/dialog/TestSpeed;->b:Landroid/app/Dialog;

    if-eqz p2, :cond_4

    .line 146
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_4

    .line 147
    iget-object p1, p1, Lcom/today/player/ui/dialog/TestSpeed;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void

    .line 152
    :cond_5
    new-instance p2, Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-direct {p2}, Lcom/today/player/ui/dialog/SourceSettingDialog;-><init>()V

    .line 153
    iput-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 154
    new-instance p1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;

    invoke-direct {p1, p0, p3}, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;-><init>(Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;I)V

    iput-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->d:Lcom/today/player/ui/dialog/SourceSettingDialog$e;

    .line 155
    iget-object p1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    iput-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    .line 156
    iget-object p1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/SourceSettingFragment;->access$400(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b004e

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->b:Landroid/view/View;

    .line 157
    new-instance p1, Landroid/app/Dialog;

    iget-object p3, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->this$0:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-static {p3}, Lcom/today/player/ui/fragment/SourceSettingFragment;->access$500(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 158
    iput-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->c:Landroid/app/Dialog;

    .line 159
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    iget-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 161
    iget-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->c:Landroid/app/Dialog;

    iget-object p3, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->b:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 162
    invoke-virtual {p2}, Lcom/today/player/ui/dialog/SourceSettingDialog;->b()V

    .line 163
    iget-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_6

    .line 164
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 165
    iget-object p1, p2, Lcom/today/player/ui/dialog/SourceSettingDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_6
    return-void
.end method

.class Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;
.super Ljava/lang/Object;
.source "ModelSettingFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/ModelSettingFragment$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$b;

.field final synthetic val$jkVar:Lcom/today/player/ui/dialog/MediaCodeDialog;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment$b;Ljava/util/List;Lcom/today/player/ui/dialog/MediaCodeDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$b;

    iput-object p2, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$jkVar:Lcom/today/player/ui/dialog/MediaCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 93
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;

    iget-boolean v0, v0, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->c:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$jkVar:Lcom/today/player/ui/dialog/MediaCodeDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/MediaCodeDialog;->d:Lcom/today/player/ui/adapter/MediaCodeAdapter;

    invoke-virtual {v0, p2}, Lcom/today/player/ui/adapter/MediaCodeAdapter;->notifyItemChanged(I)V

    .line 97
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;

    invoke-virtual {p2, p1}, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$list:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a(Z)V

    .line 102
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$jkVar:Lcom/today/player/ui/dialog/MediaCodeDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->d:Lcom/today/player/ui/adapter/MediaCodeAdapter;

    invoke-virtual {p1, p3}, Lcom/today/player/ui/adapter/MediaCodeAdapter;->notifyItemChanged(I)V

    .line 103
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$b;

    iget-object p1, p1, Lcom/today/player/ui/fragment/ModelSettingFragment$b;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    iget-object p1, p1, Lcom/today/player/ui/fragment/ModelSettingFragment;->k:Landroid/widget/TextView;

    const-string p2, "ijk_codec"

    const-string p3, ""

    invoke-static {p2, p3}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$jkVar:Lcom/today/player/ui/dialog/MediaCodeDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->b:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$b$1;->val$jkVar:Lcom/today/player/ui/dialog/MediaCodeDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/MediaCodeDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

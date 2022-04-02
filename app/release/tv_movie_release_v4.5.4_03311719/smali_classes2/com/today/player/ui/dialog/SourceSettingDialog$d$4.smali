.class Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;
.super Ljava/lang/Object;
.source "SourceSettingDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/SourceSettingDialog$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/dialog/SourceSettingDialog$d;

.field final synthetic val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/SourceSettingDialog$d;Lcom/today/player/ui/dialog/TipSortDialog;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->this$1:Lcom/today/player/ui/dialog/SourceSettingDialog$d;

    iput-object p2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/MovieSort$SortData;

    .line 196
    iget-object p2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p2, p2, Lcom/today/player/ui/dialog/TipSortDialog;->i:Lcom/today/player/bean/MovieSort$SortData;

    if-nez p2, :cond_0

    .line 198
    iget-object p2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iput-object p1, p2, Lcom/today/player/ui/dialog/TipSortDialog;->i:Lcom/today/player/bean/MovieSort$SortData;

    const/4 p2, 0x1

    .line 199
    iput-boolean p2, p1, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    .line 200
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->d:Lcom/today/player/ui/adapter/TipSortAdapter;

    invoke-virtual {p1, p3}, Lcom/today/player/ui/adapter/TipSortAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p2, 0x0

    .line 202
    iput-boolean p2, p1, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    .line 203
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->d:Lcom/today/player/ui/adapter/TipSortAdapter;

    invoke-virtual {p1, p3}, Lcom/today/player/ui/adapter/TipSortAdapter;->notifyItemChanged(I)V

    .line 204
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$4;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/today/player/ui/dialog/TipSortDialog;->i:Lcom/today/player/bean/MovieSort$SortData;

    :cond_1
    :goto_0
    return-void
.end method

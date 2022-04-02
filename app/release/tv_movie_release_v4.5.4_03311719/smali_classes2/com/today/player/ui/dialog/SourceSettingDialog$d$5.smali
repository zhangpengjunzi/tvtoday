.class Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;
.super Ljava/lang/Object;
.source "SourceSettingDialog.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/SourceSettingDialog$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/today/player/bean/AbsSortXml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/dialog/SourceSettingDialog$d;

.field final synthetic val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/SourceSettingDialog$d;Lcom/today/player/ui/dialog/TipSortDialog;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->this$1:Lcom/today/player/ui/dialog/SourceSettingDialog$d;

    iput-object p2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/today/player/bean/AbsSortXml;)V
    .locals 3

    if-nez p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->g:Lcom/kingja/loadsir/core/LoadService;

    if-eqz p1, :cond_0

    .line 218
    const-class v0, Lcom/today/player/callback/EmptyCallback;

    invoke-virtual {p1, v0}, Lcom/kingja/loadsir/core/LoadService;->showCallback(Ljava/lang/Class;)V

    :cond_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TipSortDialog;->g:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/LoadService;->showSuccess()V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TipSortDialog;->c:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;

    iget-object p1, p1, Lcom/today/player/bean/MovieSort;->sortList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/today/player/dkplayer/om;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->d:Lcom/today/player/ui/adapter/TipSortAdapter;

    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/today/player/ui/adapter/TipSortAdapter;->setNewData(Ljava/util/List;)V

    .line 230
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->d:Lcom/today/player/ui/adapter/TipSortAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/TipSortAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Lcom/today/player/bean/AbsSortXml;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/dialog/SourceSettingDialog$d$5;->onChanged(Lcom/today/player/bean/AbsSortXml;)V

    return-void
.end method

.class Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;
.super Ljava/lang/Object;
.source "SourceSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 139
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;->this$1:Lcom/today/player/ui/dialog/SourceSettingDialog$d;

    iput-object p2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 142
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/MovieSort$SortData;

    iget v1, v1, Lcom/today/player/bean/MovieSort$SortData;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$2;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TipSortDialog;->c:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0, p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setTidSort(Ljava/util/HashMap;)V

    return-void
.end method

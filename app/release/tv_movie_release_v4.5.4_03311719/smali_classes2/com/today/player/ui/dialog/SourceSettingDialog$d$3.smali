.class Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;
.super Ljava/lang/Object;
.source "SourceSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 150
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;->this$1:Lcom/today/player/ui/dialog/SourceSettingDialog$d;

    iput-object p2, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->i:Lcom/today/player/bean/MovieSort$SortData;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    iget-object p3, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$d$3;->val$ulVar:Lcom/today/player/ui/dialog/TipSortDialog;

    iget-object p3, p3, Lcom/today/player/ui/dialog/TipSortDialog;->i:Lcom/today/player/bean/MovieSort$SortData;

    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    packed-switch p2, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

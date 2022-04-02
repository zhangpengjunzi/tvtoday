.class Lcom/today/player/ui/dialog/HistoryDialog$2;
.super Ljava/lang/Object;
.source "HistoryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/HistoryDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/HistoryDialog;


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/HistoryDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/today/player/ui/dialog/HistoryDialog$2;->this$0:Lcom/today/player/ui/dialog/HistoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lcom/today/player/ui/dialog/HistoryDialog$2;->this$0:Lcom/today/player/ui/dialog/HistoryDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/HistoryDialog;->dismiss()V

    .line 56
    iget-object p1, p0, Lcom/today/player/ui/dialog/HistoryDialog$2;->this$0:Lcom/today/player/ui/dialog/HistoryDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/HistoryDialog;->access$000(Lcom/today/player/ui/dialog/HistoryDialog;)Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/today/player/ui/dialog/HistoryDialog$2;->this$0:Lcom/today/player/ui/dialog/HistoryDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/HistoryDialog;->access$000(Lcom/today/player/ui/dialog/HistoryDialog;)Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog$2;->this$0:Lcom/today/player/ui/dialog/HistoryDialog;

    invoke-static {v0}, Lcom/today/player/ui/dialog/HistoryDialog;->access$100(Lcom/today/player/ui/dialog/HistoryDialog;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;->onDelete(Lcom/today/player/bean/VodInfo;)V

    :cond_0
    return-void
.end method

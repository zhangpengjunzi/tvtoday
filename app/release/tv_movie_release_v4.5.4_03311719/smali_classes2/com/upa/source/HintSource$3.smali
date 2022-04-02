.class Lcom/upa/source/HintSource$3;
.super Ljava/lang/Object;
.source "HintSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/source/HintSource;->runMainDialog(Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/source/HintSource;

.field final synthetic val$lickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;


# direct methods
.method constructor <init>(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/upa/source/HintSource$3;->this$0:Lcom/upa/source/HintSource;

    iput-object p2, p0, Lcom/upa/source/HintSource$3;->val$lickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/upa/source/HintSource$3;->this$0:Lcom/upa/source/HintSource;

    invoke-static {v0}, Lcom/upa/source/HintSource;->access$300(Lcom/upa/source/HintSource;)Lcom/upa/view/ConfirmSourceDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/upa/source/HintSource$3;->this$0:Lcom/upa/source/HintSource;

    new-instance v1, Lcom/upa/view/ConfirmSourceDialog;

    iget-object v2, p0, Lcom/upa/source/HintSource$3;->this$0:Lcom/upa/source/HintSource;

    invoke-static {v2}, Lcom/upa/source/HintSource;->access$400(Lcom/upa/source/HintSource;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/upa/source/HintSource$3;->val$lickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    invoke-direct {v1, v2, v3}, Lcom/upa/view/ConfirmSourceDialog;-><init>(Landroid/content/Context;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V

    invoke-static {v0, v1}, Lcom/upa/source/HintSource;->access$302(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog;)Lcom/upa/view/ConfirmSourceDialog;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/upa/source/HintSource$3;->this$0:Lcom/upa/source/HintSource;

    invoke-static {v0}, Lcom/upa/source/HintSource;->access$300(Lcom/upa/source/HintSource;)Lcom/upa/view/ConfirmSourceDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/view/ConfirmSourceDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/upa/source/HintSource$3;->this$0:Lcom/upa/source/HintSource;

    invoke-static {v0}, Lcom/upa/source/HintSource;->access$300(Lcom/upa/source/HintSource;)Lcom/upa/view/ConfirmSourceDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/view/ConfirmSourceDialog;->show()V

    :cond_1
    return-void
.end method

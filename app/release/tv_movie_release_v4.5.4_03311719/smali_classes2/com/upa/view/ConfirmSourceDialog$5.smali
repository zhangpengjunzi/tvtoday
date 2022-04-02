.class Lcom/upa/view/ConfirmSourceDialog$5;
.super Ljava/lang/Object;
.source "ConfirmSourceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/view/ConfirmSourceDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/view/ConfirmSourceDialog;


# direct methods
.method constructor <init>(Lcom/upa/view/ConfirmSourceDialog;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/upa/view/ConfirmSourceDialog$5;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog$5;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-virtual {p1}, Lcom/upa/view/ConfirmSourceDialog;->dismiss()V

    .line 124
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog$5;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p1}, Lcom/upa/view/ConfirmSourceDialog;->access$500(Lcom/upa/view/ConfirmSourceDialog;)Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog$5;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p1}, Lcom/upa/view/ConfirmSourceDialog;->access$500(Lcom/upa/view/ConfirmSourceDialog;)Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;->confirmClick()V

    :cond_0
    return-void
.end method

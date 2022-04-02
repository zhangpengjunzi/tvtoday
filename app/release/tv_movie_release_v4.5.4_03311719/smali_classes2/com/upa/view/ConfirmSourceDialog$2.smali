.class Lcom/upa/view/ConfirmSourceDialog$2;
.super Ljava/lang/Object;
.source "ConfirmSourceDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 74
    iput-object p1, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p2}, Lcom/upa/view/ConfirmSourceDialog;->access$000(Lcom/upa/view/ConfirmSourceDialog;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object p2, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p2}, Lcom/upa/view/ConfirmSourceDialog;->access$100(Lcom/upa/view/ConfirmSourceDialog;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {v1}, Lcom/upa/view/ConfirmSourceDialog;->access$000(Lcom/upa/view/ConfirmSourceDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/upa/tool/Tools;->shapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    .line 80
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p1, v0}, Lcom/upa/view/ConfirmSourceDialog;->access$202(Lcom/upa/view/ConfirmSourceDialog;Z)Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p2}, Lcom/upa/view/ConfirmSourceDialog;->access$100(Lcom/upa/view/ConfirmSourceDialog;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {v1}, Lcom/upa/view/ConfirmSourceDialog;->access$000(Lcom/upa/view/ConfirmSourceDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/upa/tool/Tools;->shapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    .line 83
    iget-object p2, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p2}, Lcom/upa/view/ConfirmSourceDialog;->access$000(Lcom/upa/view/ConfirmSourceDialog;)Landroid/widget/TextView;

    move-result-object p2

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p2, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p2, p1}, Lcom/upa/view/ConfirmSourceDialog;->access$202(Lcom/upa/view/ConfirmSourceDialog;Z)Z

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog$2;->this$0:Lcom/upa/view/ConfirmSourceDialog;

    invoke-static {p1}, Lcom/upa/view/ConfirmSourceDialog;->access$000(Lcom/upa/view/ConfirmSourceDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

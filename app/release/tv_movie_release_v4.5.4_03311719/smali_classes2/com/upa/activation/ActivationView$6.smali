.class Lcom/upa/activation/ActivationView$6;
.super Ljava/lang/Object;
.source "ActivationView.java"

# interfaces
.implements Lcom/upa/im/ActivationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/activation/ActivationView;->active(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/activation/ActivationView;


# direct methods
.method constructor <init>(Lcom/upa/activation/ActivationView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeError(Ljava/lang/String;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v0}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v0}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 213
    iget-object p1, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/upa/activation/ActivationView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$200(Lcom/upa/activation/ActivationView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u6fc0\u6d3b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$200(Lcom/upa/activation/ActivationView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    iget-object p1, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$200(Lcom/upa/activation/ActivationView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 217
    iget-object p1, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$700(Lcom/upa/activation/ActivationView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public activeSuccess()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v0}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v0}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u6fc0\u6d3b\u6210\u529f"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    iget-object v0, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/upa/activation/ActivationView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/upa/activation/ActivationView;->access$002(Lcom/upa/activation/ActivationView;Z)Z

    .line 204
    iget-object v0, p0, Lcom/upa/activation/ActivationView$6;->this$0:Lcom/upa/activation/ActivationView;

    invoke-virtual {v0}, Lcom/upa/activation/ActivationView;->dismiss()V

    :cond_0
    return-void
.end method

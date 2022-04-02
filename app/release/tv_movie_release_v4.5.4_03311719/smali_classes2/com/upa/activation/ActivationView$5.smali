.class Lcom/upa/activation/ActivationView$5;
.super Ljava/lang/Object;
.source "ActivationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/activation/ActivationView;->initView(Landroid/view/View;)V
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

    .line 148
    iput-object p1, p0, Lcom/upa/activation/ActivationView$5;->this$0:Lcom/upa/activation/ActivationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/upa/activation/ActivationView$5;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$400(Lcom/upa/activation/ActivationView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/upa/activation/ActivationView$5;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6fc0\u6d3b\u7801\u8f93\u5165\u9519\u8bef"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/upa/activation/ActivationView$5;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v0}, Lcom/upa/activation/ActivationView;->access$200(Lcom/upa/activation/ActivationView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/upa/activation/ActivationView$5;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v0, p1}, Lcom/upa/activation/ActivationView;->access$600(Lcom/upa/activation/ActivationView;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/upa/activation/ActivationView$5;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$200(Lcom/upa/activation/ActivationView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/upa/activation/ActivationView$5;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$700(Lcom/upa/activation/ActivationView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

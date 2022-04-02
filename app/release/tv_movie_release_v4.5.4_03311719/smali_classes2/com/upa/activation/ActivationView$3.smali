.class Lcom/upa/activation/ActivationView$3;
.super Ljava/lang/Object;
.source "ActivationView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 102
    iput-object p1, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p2}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v1}, Lcom/upa/activation/ActivationView;->access$400(Lcom/upa/activation/ActivationView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/upa/tool/Tools;->editShapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    .line 108
    iget-object p1, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1, v0}, Lcom/upa/activation/ActivationView;->access$502(Lcom/upa/activation/ActivationView;Z)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p2}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {v1}, Lcom/upa/activation/ActivationView;->access$400(Lcom/upa/activation/ActivationView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/upa/tool/Tools;->editShapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    .line 111
    iget-object p2, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p2, p1}, Lcom/upa/activation/ActivationView;->access$502(Lcom/upa/activation/ActivationView;Z)Z

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$400(Lcom/upa/activation/ActivationView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/upa/activation/ActivationView$3;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p2}, Lcom/upa/activation/ActivationView;->access$400(Lcom/upa/activation/ActivationView;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

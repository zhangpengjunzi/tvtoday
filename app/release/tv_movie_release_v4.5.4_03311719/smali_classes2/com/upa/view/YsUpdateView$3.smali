.class Lcom/upa/view/YsUpdateView$3;
.super Ljava/lang/Object;
.source "YsUpdateView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/view/YsUpdateView;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/view/YsUpdateView;


# direct methods
.method constructor <init>(Lcom/upa/view/YsUpdateView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 119
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p2

    const-string v1, "\u70b9\u51fb\u53d6\u6d88"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {v1}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/upa/tool/Tools;->shapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    .line 122
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1, v0}, Lcom/upa/view/YsUpdateView;->access$502(Lcom/upa/view/YsUpdateView;Z)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p2

    const-string v1, "\u6682\u4e0d\u4e0b\u8f7d"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {v1}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/upa/tool/Tools;->shapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    .line 126
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p2

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2, p1}, Lcom/upa/view/YsUpdateView;->access$502(Lcom/upa/view/YsUpdateView;Z)Z

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$3;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

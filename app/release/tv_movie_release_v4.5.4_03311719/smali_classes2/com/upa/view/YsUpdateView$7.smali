.class Lcom/upa/view/YsUpdateView$7;
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

    .line 176
    iput-object p1, p0, Lcom/upa/view/YsUpdateView$7;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 180
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$7;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/upa/view/YsUpdateView$7;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/upa/tool/Tools;->shapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$7;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/upa/view/YsUpdateView$7;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/upa/tool/Tools;->shapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    :goto_0
    return-void
.end method

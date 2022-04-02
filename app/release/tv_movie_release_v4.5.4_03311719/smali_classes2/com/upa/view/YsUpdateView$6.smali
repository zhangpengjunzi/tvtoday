.class Lcom/upa/view/YsUpdateView$6;
.super Ljava/lang/Object;
.source "YsUpdateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 167
    iput-object p1, p0, Lcom/upa/view/YsUpdateView$6;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$6;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$600(Lcom/upa/view/YsUpdateView;)Lcom/upa/view/CustomProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/upa/view/CustomProgressBar;->getState()I

    move-result p1

    const/16 v0, 0x68

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/upa/view/YsUpdateView$6;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$800(Lcom/upa/view/YsUpdateView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$6;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/upa/view/YsUpdateView$6;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {v0}, Lcom/upa/view/YsUpdateView;->access$800(Lcom/upa/view/YsUpdateView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/upa/tool/Tools;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

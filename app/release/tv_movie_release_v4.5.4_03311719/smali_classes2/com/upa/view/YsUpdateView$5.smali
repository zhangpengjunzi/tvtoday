.class Lcom/upa/view/YsUpdateView$5;
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

    .line 146
    iput-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 149
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    .line 151
    invoke-static {v0}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 155
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$200(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 156
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$200(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$600(Lcom/upa/view/YsUpdateView;)Lcom/upa/view/CustomProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/upa/view/CustomProgressBar;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$700(Lcom/upa/view/YsUpdateView;)V

    goto :goto_1

    .line 160
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt p1, v3, :cond_2

    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    const-string v3, "\u9700\u8981SD\u5361\u6743\u9650\u6765\u4e0b\u8f7d\u65b0\u7248\u672c,\u8bf7\u60a8\u8d4b\u4e88\u6743\u9650"

    invoke-static {p1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 162
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$5;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.class Lcom/upa/view/YsUpdateView$4;
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

    .line 139
    iput-object p1, p0, Lcom/upa/view/YsUpdateView$4;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$4;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-virtual {p1}, Lcom/upa/view/YsUpdateView;->dismiss()V

    return-void
.end method

.class Lcom/today/player/ui/dialog/PraseDialog$2;
.super Ljava/lang/Object;
.source "PraseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/PraseDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/PraseDialog;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/PraseDialog;I)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/today/player/ui/dialog/PraseDialog$2;->this$0:Lcom/today/player/ui/dialog/PraseDialog;

    iput p2, p0, Lcom/today/player/ui/dialog/PraseDialog$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 75
    iget p1, p0, Lcom/today/player/ui/dialog/PraseDialog$2;->val$id:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/today/player/ui/dialog/PraseDialog$2;->this$0:Lcom/today/player/ui/dialog/PraseDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/PraseDialog;->access$000(Lcom/today/player/ui/dialog/PraseDialog;)Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "default_prase_id"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/today/player/ui/dialog/PraseDialog$2;->this$0:Lcom/today/player/ui/dialog/PraseDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/PraseDialog;->access$000(Lcom/today/player/ui/dialog/PraseDialog;)Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;->onChange()V

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/PraseDialog$2;->this$0:Lcom/today/player/ui/dialog/PraseDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/PraseDialog;->dismiss()V

    return-void
.end method

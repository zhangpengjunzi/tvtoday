.class Lcom/today/player/ui/dialog/LiveSourceDialog$1;
.super Ljava/lang/Object;
.source "LiveSourceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/LiveSourceDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/LiveSourceDialog;

.field final synthetic val$live:I


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/LiveSourceDialog;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/today/player/ui/dialog/LiveSourceDialog$1;->this$0:Lcom/today/player/ui/dialog/LiveSourceDialog;

    iput p2, p0, Lcom/today/player/ui/dialog/LiveSourceDialog$1;->val$live:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 58
    iget p1, p0, Lcom/today/player/ui/dialog/LiveSourceDialog$1;->val$live:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/today/player/ui/dialog/LiveSourceDialog$1;->this$0:Lcom/today/player/ui/dialog/LiveSourceDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/LiveSourceDialog;->access$000(Lcom/today/player/ui/dialog/LiveSourceDialog;)Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "live_source"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/today/player/ui/dialog/LiveSourceDialog$1;->this$0:Lcom/today/player/ui/dialog/LiveSourceDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/LiveSourceDialog;->access$000(Lcom/today/player/ui/dialog/LiveSourceDialog;)Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;->onChange()V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/LiveSourceDialog$1;->this$0:Lcom/today/player/ui/dialog/LiveSourceDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/LiveSourceDialog;->dismiss()V

    return-void
.end method

.class Lcom/today/player/ui/dialog/ChangePlayDialog$2;
.super Ljava/lang/Object;
.source "ChangePlayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/ChangePlayDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/ChangePlayDialog;

.field final synthetic val$playType:I


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/ChangePlayDialog;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/today/player/ui/dialog/ChangePlayDialog$2;->this$0:Lcom/today/player/ui/dialog/ChangePlayDialog;

    iput p2, p0, Lcom/today/player/ui/dialog/ChangePlayDialog$2;->val$playType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 67
    iget p1, p0, Lcom/today/player/ui/dialog/ChangePlayDialog$2;->val$playType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/today/player/ui/dialog/ChangePlayDialog$2;->this$0:Lcom/today/player/ui/dialog/ChangePlayDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/ChangePlayDialog;->access$000(Lcom/today/player/ui/dialog/ChangePlayDialog;)Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "play_type"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/today/player/ui/dialog/ChangePlayDialog$2;->this$0:Lcom/today/player/ui/dialog/ChangePlayDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/ChangePlayDialog;->access$000(Lcom/today/player/ui/dialog/ChangePlayDialog;)Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;->onChange()V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/ChangePlayDialog$2;->this$0:Lcom/today/player/ui/dialog/ChangePlayDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/ChangePlayDialog;->dismiss()V

    return-void
.end method

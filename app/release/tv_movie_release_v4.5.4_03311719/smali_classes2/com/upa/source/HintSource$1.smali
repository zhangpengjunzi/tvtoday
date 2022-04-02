.class Lcom/upa/source/HintSource$1;
.super Ljava/util/TimerTask;
.source "HintSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/source/HintSource;->execute(Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/source/HintSource;

.field final synthetic val$lickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;


# direct methods
.method constructor <init>(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/upa/source/HintSource$1;->this$0:Lcom/upa/source/HintSource;

    iput-object p2, p0, Lcom/upa/source/HintSource$1;->val$lickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/upa/source/HintSource$1;->this$0:Lcom/upa/source/HintSource;

    invoke-static {v0}, Lcom/upa/source/HintSource;->access$000(Lcom/upa/source/HintSource;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/upa/source/HintSource$1;->this$0:Lcom/upa/source/HintSource;

    invoke-static {v0}, Lcom/upa/source/HintSource;->access$100(Lcom/upa/source/HintSource;)V

    .line 76
    iget-object v0, p0, Lcom/upa/source/HintSource$1;->this$0:Lcom/upa/source/HintSource;

    iget-object v1, p0, Lcom/upa/source/HintSource$1;->val$lickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    invoke-static {v0, v1}, Lcom/upa/source/HintSource;->access$200(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V

    :cond_0
    return-void
.end method

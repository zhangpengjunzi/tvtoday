.class Lcom/upa/source/HintSource$2;
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


# direct methods
.method constructor <init>(Lcom/upa/source/HintSource;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/upa/source/HintSource$2;->this$0:Lcom/upa/source/HintSource;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/upa/source/HintSource$2;->this$0:Lcom/upa/source/HintSource;

    invoke-static {v0}, Lcom/upa/source/HintSource;->access$100(Lcom/upa/source/HintSource;)V

    return-void
.end method

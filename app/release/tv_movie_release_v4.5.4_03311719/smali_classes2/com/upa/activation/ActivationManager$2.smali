.class Lcom/upa/activation/ActivationManager$2;
.super Ljava/lang/Object;
.source "ActivationManager.java"

# interfaces
.implements Lcom/upa/im/ActivationHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/activation/ActivationManager;->active(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/ActivationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/activation/ActivationManager;

.field final synthetic val$activationResult:Lcom/upa/im/ActivationResult;


# direct methods
.method constructor <init>(Lcom/upa/activation/ActivationManager;Lcom/upa/im/ActivationResult;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/upa/activation/ActivationManager$2;->this$0:Lcom/upa/activation/ActivationManager;

    iput-object p2, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public active(I)V
    .locals 2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x190

    const-string v1, "\u6fc0\u6d3b\u5931\u8d25,\u8bf7\u68c0\u67e5\u6fc0\u6d3b\u7801\u662f\u5426\u6b63\u786e"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    const-string v0, "\u6b64\u8bbe\u5907\u5df2\u6fc0\u6d3b"

    invoke-interface {p1, v0}, Lcom/upa/im/ActivationResult;->activeError(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    const-string v0, "\u6fc0\u6d3b\u5931\u8d25,\u8be5\u6fc0\u6d3b\u7801\u5df2\u88ab\u4f7f\u7528"

    invoke-interface {p1, v0}, Lcom/upa/im/ActivationResult;->activeError(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    const-string v0, "\u6fc0\u6d3b\u7801\u5df2\u5931\u6548"

    invoke-interface {p1, v0}, Lcom/upa/im/ActivationResult;->activeError(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    invoke-interface {p1, v1}, Lcom/upa/im/ActivationResult;->activeError(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    const-string v0, "\u7cfb\u7edf\u9519\u8bef"

    invoke-interface {p1, v0}, Lcom/upa/im/ActivationResult;->activeError(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    invoke-interface {p1, v1}, Lcom/upa/im/ActivationResult;->activeError(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    invoke-interface {p1}, Lcom/upa/im/ActivationResult;->activeSuccess()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x195
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$2;->val$activationResult:Lcom/upa/im/ActivationResult;

    const-string v0, "\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u662f\u5426\u8fde\u63a5"

    invoke-interface {p1, v0}, Lcom/upa/im/ActivationResult;->activeError(Ljava/lang/String;)V

    return-void
.end method

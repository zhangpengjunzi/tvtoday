.class Lcom/upa/http/HttpRequest$2$2;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/http/HttpRequest$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upa/http/HttpRequest$2;

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest$2;I)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/upa/http/HttpRequest$2$2;->this$1:Lcom/upa/http/HttpRequest$2;

    iput p2, p0, Lcom/upa/http/HttpRequest$2$2;->val$responseCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/upa/http/HttpRequest$2$2;->this$1:Lcom/upa/http/HttpRequest$2;

    iget-object v0, v0, Lcom/upa/http/HttpRequest$2;->val$listener:Lcom/upa/im/ActivationHttpListener;

    iget v1, p0, Lcom/upa/http/HttpRequest$2$2;->val$responseCode:I

    invoke-interface {v0, v1}, Lcom/upa/im/ActivationHttpListener;->active(I)V

    return-void
.end method

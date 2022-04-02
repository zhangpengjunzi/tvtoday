.class Lcom/upa/http/HttpRequest$1$2;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/http/HttpRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upa/http/HttpRequest$1;


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest$1;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/upa/http/HttpRequest$1$2;->this$1:Lcom/upa/http/HttpRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/upa/http/HttpRequest$1$2;->this$1:Lcom/upa/http/HttpRequest$1;

    iget-object v0, v0, Lcom/upa/http/HttpRequest$1;->val$listener:Lcom/upa/im/YsRequestListener;

    invoke-interface {v0}, Lcom/upa/im/YsRequestListener;->keep()V

    return-void
.end method

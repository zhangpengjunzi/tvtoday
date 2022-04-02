.class Lcom/upa/http/HttpRequest$1$3;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest$1;Ljava/lang/Exception;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/upa/http/HttpRequest$1$3;->this$1:Lcom/upa/http/HttpRequest$1;

    iput-object p2, p0, Lcom/upa/http/HttpRequest$1$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/upa/http/HttpRequest$1$3;->this$1:Lcom/upa/http/HttpRequest$1;

    iget-object v0, v0, Lcom/upa/http/HttpRequest$1;->val$listener:Lcom/upa/im/YsRequestListener;

    iget-object v1, p0, Lcom/upa/http/HttpRequest$1$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/upa/im/YsRequestListener;->error(Ljava/lang/String;)V

    return-void
.end method

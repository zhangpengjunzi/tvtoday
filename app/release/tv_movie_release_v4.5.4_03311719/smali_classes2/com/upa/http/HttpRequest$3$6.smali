.class Lcom/upa/http/HttpRequest$3$6;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/http/HttpRequest$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upa/http/HttpRequest$3;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest$3;Ljava/lang/Exception;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/upa/http/HttpRequest$3$6;->this$1:Lcom/upa/http/HttpRequest$3;

    iput-object p2, p0, Lcom/upa/http/HttpRequest$3$6;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/upa/http/HttpRequest$3$6;->this$1:Lcom/upa/http/HttpRequest$3;

    iget-object v0, v0, Lcom/upa/http/HttpRequest$3;->val$listener:Lcom/upa/im/IDownloadListener;

    iget-object v1, p0, Lcom/upa/http/HttpRequest$3$6;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/upa/im/IDownloadListener;->onFail(Ljava/lang/Object;)V

    return-void
.end method

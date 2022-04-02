.class Lcom/upa/http/HttpRequest$3$5;
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

.field final synthetic val$saveFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest$3;Ljava/io/File;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/upa/http/HttpRequest$3$5;->this$1:Lcom/upa/http/HttpRequest$3;

    iput-object p2, p0, Lcom/upa/http/HttpRequest$3$5;->val$saveFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/upa/http/HttpRequest$3$5;->this$1:Lcom/upa/http/HttpRequest$3;

    iget-object v0, v0, Lcom/upa/http/HttpRequest$3;->val$listener:Lcom/upa/im/IDownloadListener;

    iget-object v1, p0, Lcom/upa/http/HttpRequest$3$5;->val$saveFile:Ljava/io/File;

    iget-object v2, p0, Lcom/upa/http/HttpRequest$3$5;->this$1:Lcom/upa/http/HttpRequest$3;

    iget-object v2, v2, Lcom/upa/http/HttpRequest$3;->val$mDownloadUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/upa/im/IDownloadListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/upa/http/HttpRequest$3$1;
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


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest$3;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/upa/http/HttpRequest$3$1;->this$1:Lcom/upa/http/HttpRequest$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/upa/http/HttpRequest$3$1;->this$1:Lcom/upa/http/HttpRequest$3;

    iget-object v0, v0, Lcom/upa/http/HttpRequest$3;->val$listener:Lcom/upa/im/IDownloadListener;

    invoke-interface {v0}, Lcom/upa/im/IDownloadListener;->onStart()V

    return-void
.end method

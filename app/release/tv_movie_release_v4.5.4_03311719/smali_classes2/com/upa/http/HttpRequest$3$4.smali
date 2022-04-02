.class Lcom/upa/http/HttpRequest$3$4;
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

.field final synthetic val$finalCurrentProgress1:D

.field final synthetic val$mFileSize:I


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest$3;ID)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/upa/http/HttpRequest$3$4;->this$1:Lcom/upa/http/HttpRequest$3;

    iput p2, p0, Lcom/upa/http/HttpRequest$3$4;->val$mFileSize:I

    iput-wide p3, p0, Lcom/upa/http/HttpRequest$3$4;->val$finalCurrentProgress1:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 432
    iget-object v0, p0, Lcom/upa/http/HttpRequest$3$4;->this$1:Lcom/upa/http/HttpRequest$3;

    iget-object v0, v0, Lcom/upa/http/HttpRequest$3;->val$listener:Lcom/upa/im/IDownloadListener;

    iget v1, p0, Lcom/upa/http/HttpRequest$3$4;->val$mFileSize:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/upa/http/HttpRequest$3$4;->val$finalCurrentProgress1:D

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/upa/im/IDownloadListener;->onLoadProgress(DD)V

    return-void
.end method

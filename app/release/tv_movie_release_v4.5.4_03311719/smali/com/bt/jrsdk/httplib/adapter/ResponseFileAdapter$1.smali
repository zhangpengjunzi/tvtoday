.class Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;
.super Ljava/lang/Object;
.source "ResponseFileAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;->dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;

.field final synthetic val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/File;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;->this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iput-object p3, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;->val$file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/ResponseCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

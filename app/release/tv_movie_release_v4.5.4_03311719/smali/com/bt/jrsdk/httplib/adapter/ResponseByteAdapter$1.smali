.class Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;
.super Ljava/lang/Object;
.source "ResponseByteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;->dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;

.field final synthetic val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

.field final synthetic val$response:[B


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;[B)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;->this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iput-object p3, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;->val$response:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;->val$response:[B

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/ResponseCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

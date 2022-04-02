.class Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;
.super Ljava/lang/Object;
.source "ResponseJsonObjectAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;->dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;

.field final synthetic val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/IOException;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;->this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iput-object p3, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/ResponseCallback;->fail(Ljava/lang/String;)V

    return-void
.end method

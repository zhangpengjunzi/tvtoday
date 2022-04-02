.class Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;
.super Ljava/lang/Object;
.source "ResponseStringAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;->dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;

.field final synthetic val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/IOException;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;->this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iput-object p3, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/ResponseCallback;->fail(Ljava/lang/String;)V

    return-void
.end method

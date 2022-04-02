.class Lcom/bt/jrsdk/httplib/HttpManager$1;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/httplib/HttpManager;->doRequest(Lcom/bt/jrsdk/httplib/RequestClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/httplib/HttpManager;

.field final synthetic val$adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

.field final synthetic val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

.field final synthetic val$header:Ljava/util/Map;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/HttpManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/bt/jrsdk/httplib/iml/IAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->this$0:Lcom/bt/jrsdk/httplib/HttpManager;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$header:Ljava/util/Map;

    iput-object p5, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$params:Ljava/lang/String;

    iput-object p6, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$method:Ljava/lang/String;

    iput-object p7, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

    iput-object p8, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->this$0:Lcom/bt/jrsdk/httplib/HttpManager;

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$host:Ljava/lang/String;

    iget-object v2, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$header:Ljava/util/Map;

    iget-object v4, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$params:Ljava/lang/String;

    iget-object v5, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$method:Ljava/lang/String;

    iget-object v6, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

    iget-object v7, p0, Lcom/bt/jrsdk/httplib/HttpManager$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    invoke-virtual/range {v0 .. v7}, Lcom/bt/jrsdk/httplib/HttpManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/bt/jrsdk/httplib/iml/IAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    return-void
.end method

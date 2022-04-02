.class Lcom/bt/jrsdk/httplib/HttpManager$5;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/httplib/HttpManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/bt/jrsdk/httplib/iml/IAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/httplib/HttpManager;

.field final synthetic val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/HttpManager$5;->this$0:Lcom/bt/jrsdk/httplib/HttpManager;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/HttpManager$5;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/HttpManager$5;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    invoke-interface {v0}, Lcom/bt/jrsdk/httplib/iml/ResponseCallback;->complete()V

    return-void
.end method

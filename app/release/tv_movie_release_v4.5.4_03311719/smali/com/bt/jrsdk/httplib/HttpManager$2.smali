.class Lcom/bt/jrsdk/httplib/HttpManager$2;
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

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/HttpManager$2;->this$0:Lcom/bt/jrsdk/httplib/HttpManager;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/HttpManager$2;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iput p3, p0, Lcom/bt/jrsdk/httplib/HttpManager$2;->val$responseCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/HttpManager$2;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server error responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bt/jrsdk/httplib/HttpManager$2;->val$responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/ResponseCallback;->fail(Ljava/lang/String;)V

    return-void
.end method

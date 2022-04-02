.class Lcom/bt/jrsdk/util/NetUtil$1;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/util/NetUtil;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/util/NetUtil;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/util/NetUtil;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/bt/jrsdk/util/NetUtil$1;->this$0:Lcom/bt/jrsdk/util/NetUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NetUtil"

    .line 54
    invoke-static {v0, p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/util/NetUtil$1;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NetUtil"

    .line 49
    invoke-static {v0, p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

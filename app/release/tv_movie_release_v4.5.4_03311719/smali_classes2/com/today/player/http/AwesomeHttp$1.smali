.class Lcom/today/player/http/AwesomeHttp$1;
.super Ljava/lang/Object;
.source "AwesomeHttp.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/http/AwesomeHttp;->enqueue(Lokhttp3/Call;Lcom/today/player/http/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/http/AwesomeHttp;

.field final synthetic val$callback:Lcom/today/player/http/ResponseCallback;


# direct methods
.method constructor <init>(Lcom/today/player/http/AwesomeHttp;Lcom/today/player/http/ResponseCallback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/today/player/http/AwesomeHttp$1;->this$0:Lcom/today/player/http/AwesomeHttp;

    iput-object p2, p0, Lcom/today/player/http/AwesomeHttp$1;->val$callback:Lcom/today/player/http/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/today/player/http/AwesomeHttp$1;->val$callback:Lcom/today/player/http/ResponseCallback;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/today/player/http/ResponseCallback;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 100
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    const-string v1, "-1"

    .line 101
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object p2, p0, Lcom/today/player/http/AwesomeHttp$1;->val$callback:Lcom/today/player/http/ResponseCallback;

    if-eqz p2, :cond_2

    .line 104
    iget-object p2, p0, Lcom/today/player/http/AwesomeHttp$1;->val$callback:Lcom/today/player/http/ResponseCallback;

    invoke-interface {p2, p1}, Lcom/today/player/http/ResponseCallback;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/today/player/http/AwesomeHttp$1;->val$callback:Lcom/today/player/http/ResponseCallback;

    if-eqz p1, :cond_2

    .line 108
    iget-object p1, p0, Lcom/today/player/http/AwesomeHttp$1;->val$callback:Lcom/today/player/http/ResponseCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code error & code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/today/player/http/ResponseCallback;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

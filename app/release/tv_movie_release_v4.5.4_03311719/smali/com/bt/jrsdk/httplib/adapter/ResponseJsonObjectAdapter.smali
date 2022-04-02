.class public Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;
.super Ljava/lang/Object;
.source "ResponseJsonObjectAdapter.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/IAdapter<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 20
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 27
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 29
    new-instance v2, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$1;

    invoke-direct {v2, p0, p2, v3}, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$1;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Lorg/json/JSONObject;)V

    invoke-static {v2}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 50
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p2, :cond_2

    .line 52
    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$3;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/IOException;)V

    invoke-static {v1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz p1, :cond_4

    goto :goto_1

    :catch_1
    move-exception v0

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    if-eqz p2, :cond_3

    .line 41
    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter$2;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseJsonObjectAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Lorg/json/JSONException;)V

    invoke-static {v1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 61
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 63
    :cond_5
    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

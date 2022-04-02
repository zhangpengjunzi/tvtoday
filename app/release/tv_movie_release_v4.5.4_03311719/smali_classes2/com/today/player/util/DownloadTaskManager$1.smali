.class Lcom/today/player/util/DownloadTaskManager$1;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/util/DownloadTaskManager;->downLoad(Ljava/lang/String;ILcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/util/DownloadTaskManager;

.field final synthetic val$callback:Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;

.field final synthetic val$position:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/today/player/util/DownloadTaskManager;Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;Ljava/lang/String;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->this$0:Lcom/today/player/util/DownloadTaskManager;

    iput-object p2, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$callback:Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;

    iput-object p3, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$callback:Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;

    iget-object p2, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$url:Ljava/lang/String;

    iget v0, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-interface {p1, p2, v0}, Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;->onFail(Ljava/lang/String;I)V

    .line 66
    iget-object p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->this$0:Lcom/today/player/util/DownloadTaskManager;

    invoke-static {p1}, Lcom/today/player/util/DownloadTaskManager;->access$210(Lcom/today/player/util/DownloadTaskManager;)I

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "finally "

    const-string v0, "success "

    .line 71
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/File;

    const-string v2, "down"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 77
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadDir = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$url:Ljava/lang/String;

    invoke-static {v6}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".apk"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v1, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x800

    :try_start_2
    new-array v1, v1, [B

    .line 92
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x0

    .line 93
    invoke-virtual {v7, v1, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, v8

    add-long/2addr v4, v8

    long-to-float v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v8, v8, v9

    long-to-float v9, v2

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 96
    iget-object v9, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$callback:Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;

    iget-object v10, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$url:Ljava/lang/String;

    iget v11, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-interface {v9, v10, v11, v8}, Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;->onProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 99
    iget-object v1, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$callback:Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;

    iget-object v2, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v1

    :goto_1
    move-object v1, p2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v7, v1

    :goto_2
    move-object v1, p2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v7, v1

    .line 101
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    iget-object p2, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$callback:Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;

    iget-object v0, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$url:Ljava/lang/String;

    iget v2, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-interface {p2, v0, v2}, Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;->onFail(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 108
    :goto_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 109
    iget-object p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->this$0:Lcom/today/player/util/DownloadTaskManager;

    invoke-static {p1}, Lcom/today/player/util/DownloadTaskManager;->access$210(Lcom/today/player/util/DownloadTaskManager;)I

    return-void

    :catchall_3
    move-exception v0

    .line 106
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->val$position:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 108
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 109
    iget-object p1, p0, Lcom/today/player/util/DownloadTaskManager$1;->this$0:Lcom/today/player/util/DownloadTaskManager;

    invoke-static {p1}, Lcom/today/player/util/DownloadTaskManager;->access$210(Lcom/today/player/util/DownloadTaskManager;)I

    .line 110
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

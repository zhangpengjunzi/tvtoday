.class public interface abstract Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/util/DownloadTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "downLoadTaskCallback"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;I)V
.end method

.method public abstract onProgress(Ljava/lang/String;II)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onTooManyTasks(Ljava/lang/String;I)V
.end method

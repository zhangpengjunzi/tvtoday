.class public interface abstract Lcom/today/player/util/DownloadObserver$onDownLoadListener;
.super Ljava/lang/Object;
.source "DownloadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/util/DownloadObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onDownLoadListener"
.end annotation


# virtual methods
.method public abstract onDownloadOk(I)V
.end method

.method public abstract onFail(I)V
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onSuccess(I)V
.end method

.method public abstract onTooManyTasks(I)V
.end method

.class final Lcom/umeng/commonsdk/UMInnerImpl$2;
.super Ljava/lang/Object;
.source "UMInnerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMInnerImpl;->initAndSendInternal(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "e is "

    const-string v1, "internal"

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 101
    :try_start_1
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/internal/utils/b;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/internal/utils/b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    new-array v5, v3, [Ljava/lang/Object;

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    :cond_0
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/j;->b(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

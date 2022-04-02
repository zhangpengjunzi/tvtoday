.class public Lcom/com/bytedance/overseas/sdk/a/d;
.super Ljava/lang/Object;
.source "TTDownloadFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;
    .locals 1

    .line 16
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/k/t;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/com/bytedance/overseas/sdk/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/com/bytedance/overseas/sdk/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/com/bytedance/overseas/sdk/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/com/bytedance/overseas/sdk/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

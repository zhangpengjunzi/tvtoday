.class final Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;
.super Ljava/util/HashSet;
.source "BrandBannerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, ".jpeg"

    .line 72
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, ".png"

    .line 73
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, ".bmp"

    .line 74
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, ".gif"

    .line 75
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, ".jpg"

    .line 76
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, ".webp"

    .line 77
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

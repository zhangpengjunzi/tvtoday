.class public Lcom/bytedance/sdk/openadsdk/component/banner/a;
.super Ljava/lang/Object;
.source "BannerAdInfo.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcom/bytedance/sdk/openadsdk/core/f/n;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/a;->a:Landroid/graphics/Bitmap;

    .line 18
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object v0
.end method

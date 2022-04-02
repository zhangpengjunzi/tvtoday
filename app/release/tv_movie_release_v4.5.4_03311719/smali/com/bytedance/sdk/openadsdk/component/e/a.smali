.class public Lcom/bytedance/sdk/openadsdk/component/e/a;
.super Ljava/lang/Object;
.source "TTAppOpenAdCache.java"


# instance fields
.field private a:I

.field private b:Lcom/bytedance/sdk/openadsdk/core/f/n;


# direct methods
.method public constructor <init>(ILcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/e/a;->a:I

    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/e/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/e/a;->a:I

    return v0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/e/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object v0
.end method

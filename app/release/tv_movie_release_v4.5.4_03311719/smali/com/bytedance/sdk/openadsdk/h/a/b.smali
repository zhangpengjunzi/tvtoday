.class public Lcom/bytedance/sdk/openadsdk/h/a/b;
.super Ljava/lang/Object;
.source "GifRequestResult.java"


# instance fields
.field a:I

.field private b:[B

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:[B

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Landroid/graphics/Bitmap;

    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->d:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->e:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Landroid/graphics/Bitmap;

    .line 30
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:[B

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Landroid/graphics/Bitmap;

    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->d:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->e:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:[B

    .line 26
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()[B
    .locals 1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:[B

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/d;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:[B

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.class public abstract Lcom/bytedance/sdk/openadsdk/core/k/a/b;
.super Ljava/lang/Object;
.source "VastXmlParser.java"


# static fields
.field public static e:I


# instance fields
.field protected a:I

.field protected final b:Landroid/content/Context;

.field protected c:I

.field protected d:D


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 31
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->c:I

    const-wide/16 v0, 0x1

    .line 33
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->d:D

    if-lez p3, :cond_0

    if-lez p2, :cond_0

    int-to-double v0, p2

    int-to-double v2, p3

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->d:D

    .line 46
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;)F

    move-result p3

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    int-to-float p2, p2

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 48
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->c:I

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/k/b/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 107
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->a:I

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/component/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/f/a;->c()Lcom/bytedance/sdk/component/f/b/b;

    move-result-object v2

    .line 116
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/f/b/b;->a()Lcom/bytedance/sdk/component/f/b;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/f/b;->d()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/f/b;->a()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v1

    .line 121
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->a(Ljava/lang/Exception;I)V

    .line 122
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 123
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-wide/16 v3, -0x1

    invoke-static {p2, p1, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/k/b/c;->b(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/k/a/a;JLjava/lang/String;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method protected a(Ljava/lang/Exception;I)V
    .locals 2

    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "exception"

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error_code"

    .line 65
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object p1

    const-string p2, "load_vast"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 2

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 87
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :catch_0
    :goto_0
    return v1
.end method

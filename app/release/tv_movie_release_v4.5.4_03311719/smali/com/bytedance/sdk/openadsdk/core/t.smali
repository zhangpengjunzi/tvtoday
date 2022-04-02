.class public Lcom/bytedance/sdk/openadsdk/core/t;
.super Ljava/lang/Object;
.source "SecSdkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/t$a;
    }
.end annotation


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/i/a;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/i/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/i/b;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/i/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/t$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/t;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/t$a;->a()Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, ":"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    array-length v0, p1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 125
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "00"

    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/i/a;

    if-eqz p1, :cond_0

    const-string v0, "https://api16-access-sg.pangle.io/api/ad/union/sdk/get_ads/?aid=1371&device_platform=android&version_code=4250"

    .line 152
    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/i/a;

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "sdk_app_sha1"

    const-string v2, "mssdk"

    :try_start_0
    const-string v3, "\u8fdb\u5165getSha1"

    .line 79
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sha1 \u5185\u5b58 getSha1 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-wide v3, 0x9a7ec800L

    .line 86
    invoke-static {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sha1 return sha1: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    return-object v0

    .line 91
    :cond_1
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/i/a;

    if-eqz v3, :cond_2

    .line 92
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/i/a;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/i/a;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sha1: mssdk:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/t;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    .line 97
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    return-object v0

    .line 100
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    .line 101
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/t;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/i/a;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 141
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/i/a;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec_did: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mssdk"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.class public final enum Lcom/bytedance/sdk/openadsdk/i/d;
.super Ljava/lang/Enum;
.source "NetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/i/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/i/d;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/i/d;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/i/d;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/i/d;

.field public static final enum e:Lcom/bytedance/sdk/openadsdk/i/d;

.field public static final enum f:Lcom/bytedance/sdk/openadsdk/i/d;

.field private static final synthetic h:[Lcom/bytedance/sdk/openadsdk/i/d;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d;

    const-string v1, "TYPE_2G"

    const/4 v2, 0x0

    const-string v3, "2g"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d;

    const-string v1, "TYPE_3G"

    const/4 v3, 0x1

    const-string v4, "3g"

    invoke-direct {v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Lcom/bytedance/sdk/openadsdk/i/d;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d;

    const-string v1, "TYPE_4G"

    const/4 v4, 0x2

    const-string v5, "4g"

    invoke-direct {v0, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->c:Lcom/bytedance/sdk/openadsdk/i/d;

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d;

    const-string v1, "TYPE_5G"

    const/4 v5, 0x3

    const-string v6, "5g"

    invoke-direct {v0, v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->d:Lcom/bytedance/sdk/openadsdk/i/d;

    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d;

    const-string v1, "TYPE_WIFI"

    const/4 v6, 0x4

    const-string v7, "wifi"

    invoke-direct {v0, v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->e:Lcom/bytedance/sdk/openadsdk/i/d;

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v7, 0x5

    const-string v8, "mobile"

    invoke-direct {v0, v1, v7, v8}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->f:Lcom/bytedance/sdk/openadsdk/i/d;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/bytedance/sdk/openadsdk/i/d;

    .line 3
    sget-object v8, Lcom/bytedance/sdk/openadsdk/i/d;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    aput-object v8, v1, v2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/i/d;->b:Lcom/bytedance/sdk/openadsdk/i/d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/sdk/openadsdk/i/d;->c:Lcom/bytedance/sdk/openadsdk/i/d;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/sdk/openadsdk/i/d;->d:Lcom/bytedance/sdk/openadsdk/i/d;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bytedance/sdk/openadsdk/i/d;->e:Lcom/bytedance/sdk/openadsdk/i/d;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/bytedance/sdk/openadsdk/i/d;->h:[Lcom/bytedance/sdk/openadsdk/i/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/i/d;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/d;
    .locals 1

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/i/d;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/i/d;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->h:[Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/i/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d;->g:Ljava/lang/String;

    return-object v0
.end method

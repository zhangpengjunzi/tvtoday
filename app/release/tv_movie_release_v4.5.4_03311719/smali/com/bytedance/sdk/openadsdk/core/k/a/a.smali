.class public final enum Lcom/bytedance/sdk/openadsdk/core/k/a/a;
.super Ljava/lang/Enum;
.source "VastErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/k/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

.field public static final enum e:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

.field public static final enum f:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

.field public static final enum g:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

.field private static final synthetic i:[Lcom/bytedance/sdk/openadsdk/core/k/a/a;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-string v1, "XML_PARSING_ERROR"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-string v1, "SCHEMA_VALIDATION_ERROR"

    const/4 v3, 0x1

    const/16 v4, 0x65

    invoke-direct {v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/k/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-string v1, "WRAPPER_TIMEOUT"

    const/4 v4, 0x2

    const/16 v5, 0x12d

    invoke-direct {v0, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/k/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-string v1, "NO_ADS_VAST_RESPONSE"

    const/4 v5, 0x3

    const/16 v6, 0x12f

    invoke-direct {v0, v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/k/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-string v1, "GENERAL_LINEAR_AD_ERROR"

    const/4 v6, 0x4

    const/16 v7, 0x190

    invoke-direct {v0, v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/k/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->e:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-string v1, "GENERAL_COMPANION_AD_ERROR"

    const/4 v7, 0x5

    const/16 v8, 0x258

    invoke-direct {v0, v1, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/k/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->f:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const-string v1, "UNDEFINED_ERROR"

    const/4 v8, 0x6

    const/16 v9, 0x384

    invoke-direct {v0, v1, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/k/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    .line 10
    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    aput-object v9, v1, v2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->e:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->f:Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->i:[Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/k/a/a;
    .locals 1

    .line 10
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/k/a/a;
    .locals 1

    .line 10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->i:[Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/k/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/k/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 61
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a/a;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

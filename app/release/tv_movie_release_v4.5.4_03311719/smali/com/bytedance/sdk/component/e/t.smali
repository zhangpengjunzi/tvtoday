.class public final enum Lcom/bytedance/sdk/component/e/t;
.super Ljava/lang/Enum;
.source "ResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/e/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/component/e/t;

.field public static final enum b:Lcom/bytedance/sdk/component/e/t;

.field public static final enum c:Lcom/bytedance/sdk/component/e/t;

.field private static final synthetic d:[Lcom/bytedance/sdk/component/e/t;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/bytedance/sdk/component/e/t;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/e/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/e/t;->a:Lcom/bytedance/sdk/component/e/t;

    .line 18
    new-instance v0, Lcom/bytedance/sdk/component/e/t;

    const-string v1, "BITMAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/component/e/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/e/t;->b:Lcom/bytedance/sdk/component/e/t;

    .line 23
    new-instance v0, Lcom/bytedance/sdk/component/e/t;

    const-string v1, "RAW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/component/e/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/e/t;->c:Lcom/bytedance/sdk/component/e/t;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bytedance/sdk/component/e/t;

    .line 8
    sget-object v5, Lcom/bytedance/sdk/component/e/t;->a:Lcom/bytedance/sdk/component/e/t;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bytedance/sdk/component/e/t;->b:Lcom/bytedance/sdk/component/e/t;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bytedance/sdk/component/e/t;->d:[Lcom/bytedance/sdk/component/e/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/t;
    .locals 1

    .line 8
    const-class v0, Lcom/bytedance/sdk/component/e/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/e/t;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/e/t;
    .locals 1

    .line 8
    sget-object v0, Lcom/bytedance/sdk/component/e/t;->d:[Lcom/bytedance/sdk/component/e/t;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/e/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/e/t;

    return-object v0
.end method

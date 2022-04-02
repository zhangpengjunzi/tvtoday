.class final enum Lcom/bytedance/sdk/openadsdk/core/h/c;
.super Ljava/lang/Enum;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/h/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/core/h/c;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/core/h/c;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/core/h/c;

.field private static final synthetic d:[Lcom/bytedance/sdk/openadsdk/core/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/c;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/c;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/c;

    const-string v1, "DENIED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/h/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/c;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/c;

    const-string v1, "NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/h/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/c;->c:Lcom/bytedance/sdk/openadsdk/core/h/c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bytedance/sdk/openadsdk/core/h/c;

    .line 3
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/h/c;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/c;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/h/c;->d:[Lcom/bytedance/sdk/openadsdk/core/h/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/c;
    .locals 1

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/h/c;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/h/c;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/c;->d:[Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/h/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/h/c;

    return-object v0
.end method

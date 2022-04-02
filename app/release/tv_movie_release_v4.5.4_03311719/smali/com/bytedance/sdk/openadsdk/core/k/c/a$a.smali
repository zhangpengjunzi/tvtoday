.class public final enum Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;
.super Ljava/lang/Enum;
.source "ResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/k/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

.field private static final synthetic d:[Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 133
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    .line 134
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    const-string v1, "IMAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->b:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    .line 135
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    const-string v1, "JAVASCRIPT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    .line 132
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->b:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->d:[Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;
    .locals 1

    .line 132
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;
    .locals 1

    .line 132
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->d:[Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    return-object v0
.end method

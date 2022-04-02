.class public final enum Lcom/bytedance/sdk/component/e/s;
.super Ljava/lang/Enum;
.source "ImageThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/e/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/component/e/s;

.field public static final enum b:Lcom/bytedance/sdk/component/e/s;

.field private static final synthetic c:[Lcom/bytedance/sdk/component/e/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/bytedance/sdk/component/e/s;

    const-string v1, "IO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/e/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/e/s;->a:Lcom/bytedance/sdk/component/e/s;

    .line 16
    new-instance v0, Lcom/bytedance/sdk/component/e/s;

    const-string v1, "MAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/component/e/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/e/s;->b:Lcom/bytedance/sdk/component/e/s;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bytedance/sdk/component/e/s;

    .line 8
    sget-object v4, Lcom/bytedance/sdk/component/e/s;->a:Lcom/bytedance/sdk/component/e/s;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/bytedance/sdk/component/e/s;->c:[Lcom/bytedance/sdk/component/e/s;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/s;
    .locals 1

    .line 8
    const-class v0, Lcom/bytedance/sdk/component/e/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/e/s;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/e/s;
    .locals 1

    .line 8
    sget-object v0, Lcom/bytedance/sdk/component/e/s;->c:[Lcom/bytedance/sdk/component/e/s;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/e/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/e/s;

    return-object v0
.end method

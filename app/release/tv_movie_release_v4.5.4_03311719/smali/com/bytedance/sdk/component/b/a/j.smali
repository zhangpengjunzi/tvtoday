.class public final enum Lcom/bytedance/sdk/component/b/a/j;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/b/a/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/component/b/a/j;

.field public static final enum b:Lcom/bytedance/sdk/component/b/a/j;

.field public static final enum c:Lcom/bytedance/sdk/component/b/a/j;

.field public static final enum d:Lcom/bytedance/sdk/component/b/a/j;

.field private static final synthetic f:[Lcom/bytedance/sdk/component/b/a/j;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/bytedance/sdk/component/b/a/j;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/b/a/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/component/b/a/j;->a:Lcom/bytedance/sdk/component/b/a/j;

    .line 41
    new-instance v0, Lcom/bytedance/sdk/component/b/a/j;

    const-string v1, "HTTP_1_1"

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    invoke-direct {v0, v1, v3, v4}, Lcom/bytedance/sdk/component/b/a/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/component/b/a/j;->b:Lcom/bytedance/sdk/component/b/a/j;

    .line 51
    new-instance v0, Lcom/bytedance/sdk/component/b/a/j;

    const-string v1, "SPDY_3"

    const/4 v4, 0x2

    const-string v5, "spdy/3.1"

    invoke-direct {v0, v1, v4, v5}, Lcom/bytedance/sdk/component/b/a/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/component/b/a/j;->c:Lcom/bytedance/sdk/component/b/a/j;

    .line 53
    new-instance v0, Lcom/bytedance/sdk/component/b/a/j;

    const-string v1, "HTTP_2"

    const/4 v5, 0x3

    const-string v6, "h2"

    invoke-direct {v0, v1, v5, v6}, Lcom/bytedance/sdk/component/b/a/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/component/b/a/j;->d:Lcom/bytedance/sdk/component/b/a/j;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/bytedance/sdk/component/b/a/j;

    .line 29
    sget-object v6, Lcom/bytedance/sdk/component/b/a/j;->a:Lcom/bytedance/sdk/component/b/a/j;

    aput-object v6, v1, v2

    sget-object v2, Lcom/bytedance/sdk/component/b/a/j;->b:Lcom/bytedance/sdk/component/b/a/j;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/sdk/component/b/a/j;->c:Lcom/bytedance/sdk/component/b/a/j;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/bytedance/sdk/component/b/a/j;->f:[Lcom/bytedance/sdk/component/b/a/j;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/bytedance/sdk/component/b/a/j;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/bytedance/sdk/component/b/a/j;->a:Lcom/bytedance/sdk/component/b/a/j;

    iget-object v0, v0, Lcom/bytedance/sdk/component/b/a/j;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/component/b/a/j;->a:Lcom/bytedance/sdk/component/b/a/j;

    return-object p0

    .line 69
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/b/a/j;->b:Lcom/bytedance/sdk/component/b/a/j;

    iget-object v0, v0, Lcom/bytedance/sdk/component/b/a/j;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/bytedance/sdk/component/b/a/j;->b:Lcom/bytedance/sdk/component/b/a/j;

    return-object p0

    .line 70
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/component/b/a/j;->d:Lcom/bytedance/sdk/component/b/a/j;

    iget-object v0, v0, Lcom/bytedance/sdk/component/b/a/j;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/bytedance/sdk/component/b/a/j;->d:Lcom/bytedance/sdk/component/b/a/j;

    return-object p0

    .line 71
    :cond_2
    sget-object v0, Lcom/bytedance/sdk/component/b/a/j;->c:Lcom/bytedance/sdk/component/b/a/j;

    iget-object v0, v0, Lcom/bytedance/sdk/component/b/a/j;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/bytedance/sdk/component/b/a/j;->c:Lcom/bytedance/sdk/component/b/a/j;

    return-object p0

    .line 72
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/j;
    .locals 1

    .line 29
    const-class v0, Lcom/bytedance/sdk/component/b/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/b/a/j;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/b/a/j;
    .locals 1

    .line 29
    sget-object v0, Lcom/bytedance/sdk/component/b/a/j;->f:[Lcom/bytedance/sdk/component/b/a/j;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/b/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/b/a/j;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/j;->e:Ljava/lang/String;

    return-object v0
.end method

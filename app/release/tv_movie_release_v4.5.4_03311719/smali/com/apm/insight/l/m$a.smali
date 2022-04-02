.class final enum Lcom/apm/insight/l/m$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/l/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apm/insight/l/m$a;

.field public static final enum b:Lcom/apm/insight/l/m$a;

.field public static final enum c:Lcom/apm/insight/l/m$a;

.field public static final enum d:Lcom/apm/insight/l/m$a;

.field public static final enum e:Lcom/apm/insight/l/m$a;

.field public static final enum f:Lcom/apm/insight/l/m$a;

.field private static final synthetic g:[Lcom/apm/insight/l/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/apm/insight/l/m$a;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apm/insight/l/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/m$a;->a:Lcom/apm/insight/l/m$a;

    new-instance v0, Lcom/apm/insight/l/m$a;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apm/insight/l/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/m$a;->b:Lcom/apm/insight/l/m$a;

    new-instance v0, Lcom/apm/insight/l/m$a;

    const-string v1, "EMPTY_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apm/insight/l/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/m$a;->c:Lcom/apm/insight/l/m$a;

    new-instance v0, Lcom/apm/insight/l/m$a;

    const-string v1, "DANGLING_KEY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apm/insight/l/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/m$a;->d:Lcom/apm/insight/l/m$a;

    new-instance v0, Lcom/apm/insight/l/m$a;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apm/insight/l/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/m$a;->e:Lcom/apm/insight/l/m$a;

    new-instance v0, Lcom/apm/insight/l/m$a;

    const-string v1, "NULL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apm/insight/l/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/m$a;->f:Lcom/apm/insight/l/m$a;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/apm/insight/l/m$a;

    sget-object v8, Lcom/apm/insight/l/m$a;->a:Lcom/apm/insight/l/m$a;

    aput-object v8, v1, v2

    sget-object v2, Lcom/apm/insight/l/m$a;->b:Lcom/apm/insight/l/m$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apm/insight/l/m$a;->c:Lcom/apm/insight/l/m$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apm/insight/l/m$a;->d:Lcom/apm/insight/l/m$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apm/insight/l/m$a;->e:Lcom/apm/insight/l/m$a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/apm/insight/l/m$a;->g:[Lcom/apm/insight/l/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apm/insight/l/m$a;
    .locals 1

    const-class v0, Lcom/apm/insight/l/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/l/m$a;

    return-object p0
.end method

.method public static values()[Lcom/apm/insight/l/m$a;
    .locals 1

    sget-object v0, Lcom/apm/insight/l/m$a;->g:[Lcom/apm/insight/l/m$a;

    invoke-virtual {v0}, [Lcom/apm/insight/l/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apm/insight/l/m$a;

    return-object v0
.end method

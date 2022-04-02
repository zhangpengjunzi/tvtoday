.class public final enum Lcom/umeng/analytics/pro/i$a;
.super Ljava/lang/Enum;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/pro/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/pro/i$a;

.field public static final enum b:Lcom/umeng/analytics/pro/i$a;

.field public static final enum c:Lcom/umeng/analytics/pro/i$a;

.field public static final enum d:Lcom/umeng/analytics/pro/i$a;

.field public static final enum e:Lcom/umeng/analytics/pro/i$a;

.field public static final enum f:Lcom/umeng/analytics/pro/i$a;

.field private static final synthetic g:[Lcom/umeng/analytics/pro/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1613
    new-instance v0, Lcom/umeng/analytics/pro/i$a;

    const-string v1, "AUTOPAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/i$a;->a:Lcom/umeng/analytics/pro/i$a;

    .line 1615
    new-instance v0, Lcom/umeng/analytics/pro/i$a;

    const-string v1, "PAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/umeng/analytics/pro/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/i$a;->b:Lcom/umeng/analytics/pro/i$a;

    .line 1617
    new-instance v0, Lcom/umeng/analytics/pro/i$a;

    const-string v1, "BEGIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/umeng/analytics/pro/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/i$a;->c:Lcom/umeng/analytics/pro/i$a;

    .line 1619
    new-instance v0, Lcom/umeng/analytics/pro/i$a;

    const-string v1, "END"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/umeng/analytics/pro/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/i$a;->d:Lcom/umeng/analytics/pro/i$a;

    .line 1621
    new-instance v0, Lcom/umeng/analytics/pro/i$a;

    const-string v1, "NEWSESSION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/umeng/analytics/pro/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/i$a;->e:Lcom/umeng/analytics/pro/i$a;

    .line 1623
    new-instance v0, Lcom/umeng/analytics/pro/i$a;

    const-string v1, "INSTANTSESSIONBEGIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/umeng/analytics/pro/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/i$a;->f:Lcom/umeng/analytics/pro/i$a;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/umeng/analytics/pro/i$a;

    .line 1611
    sget-object v8, Lcom/umeng/analytics/pro/i$a;->a:Lcom/umeng/analytics/pro/i$a;

    aput-object v8, v1, v2

    sget-object v2, Lcom/umeng/analytics/pro/i$a;->b:Lcom/umeng/analytics/pro/i$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/umeng/analytics/pro/i$a;->c:Lcom/umeng/analytics/pro/i$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/umeng/analytics/pro/i$a;->d:Lcom/umeng/analytics/pro/i$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/umeng/analytics/pro/i$a;->e:Lcom/umeng/analytics/pro/i$a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/umeng/analytics/pro/i$a;->g:[Lcom/umeng/analytics/pro/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1611
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/pro/i$a;
    .locals 1

    .line 1611
    const-class v0, Lcom/umeng/analytics/pro/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/pro/i$a;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/pro/i$a;
    .locals 1

    .line 1611
    sget-object v0, Lcom/umeng/analytics/pro/i$a;->g:[Lcom/umeng/analytics/pro/i$a;

    invoke-virtual {v0}, [Lcom/umeng/analytics/pro/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/pro/i$a;

    return-object v0
.end method

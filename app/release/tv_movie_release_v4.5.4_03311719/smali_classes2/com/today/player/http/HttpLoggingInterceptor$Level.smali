.class public final enum Lcom/today/player/http/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/http/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/today/player/http/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/today/player/http/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/today/player/http/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/today/player/http/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/today/player/http/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/today/player/http/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/today/player/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;->NONE:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    .line 63
    new-instance v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/today/player/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;->BASIC:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    .line 81
    new-instance v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/today/player/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;->HEADERS:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    .line 103
    new-instance v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;

    const-string v1, "BODY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/today/player/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;->BODY:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/today/player/http/HttpLoggingInterceptor$Level;

    .line 48
    sget-object v6, Lcom/today/player/http/HttpLoggingInterceptor$Level;->NONE:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    aput-object v6, v1, v2

    sget-object v2, Lcom/today/player/http/HttpLoggingInterceptor$Level;->BASIC:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    aput-object v2, v1, v3

    sget-object v2, Lcom/today/player/http/HttpLoggingInterceptor$Level;->HEADERS:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/today/player/http/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/today/player/http/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/today/player/http/HttpLoggingInterceptor$Level;
    .locals 1

    .line 48
    const-class v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/today/player/http/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/today/player/http/HttpLoggingInterceptor$Level;
    .locals 1

    .line 48
    sget-object v0, Lcom/today/player/http/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/today/player/http/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/today/player/http/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/today/player/http/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.class public final enum Lcom/bt/jrsdk/httplib/config/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bt/jrsdk/httplib/config/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bt/jrsdk/httplib/config/HttpMethod;

.field public static final enum GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

.field public static final enum POST:Lcom/bt/jrsdk/httplib/config/HttpMethod;


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/bt/jrsdk/httplib/config/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/bt/jrsdk/httplib/config/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    .line 5
    new-instance v0, Lcom/bt/jrsdk/httplib/config/HttpMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/bt/jrsdk/httplib/config/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bt/jrsdk/httplib/config/HttpMethod;->POST:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bt/jrsdk/httplib/config/HttpMethod;

    .line 3
    sget-object v4, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/bt/jrsdk/httplib/config/HttpMethod;->$VALUES:[Lcom/bt/jrsdk/httplib/config/HttpMethod;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/bt/jrsdk/httplib/config/HttpMethod;->method:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/config/HttpMethod;
    .locals 1

    .line 3
    const-class v0, Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bt/jrsdk/httplib/config/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/bt/jrsdk/httplib/config/HttpMethod;
    .locals 1

    .line 3
    sget-object v0, Lcom/bt/jrsdk/httplib/config/HttpMethod;->$VALUES:[Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {v0}, [Lcom/bt/jrsdk/httplib/config/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bt/jrsdk/httplib/config/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/config/HttpMethod;->method:Ljava/lang/String;

    return-object v0
.end method

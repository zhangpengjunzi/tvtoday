.class Lcom/umeng/analytics/pro/bd$d;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lcom/umeng/analytics/pro/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/bd$1;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bd$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/pro/bd$c;
    .locals 2

    .line 255
    new-instance v0, Lcom/umeng/analytics/pro/bd$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bd$c;-><init>(Lcom/umeng/analytics/pro/bd$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/ca;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bd$d;->a()Lcom/umeng/analytics/pro/bd$c;

    move-result-object v0

    return-object v0
.end method

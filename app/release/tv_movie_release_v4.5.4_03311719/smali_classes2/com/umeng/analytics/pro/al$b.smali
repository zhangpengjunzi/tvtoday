.class Lcom/umeng/analytics/pro/al$b;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/analytics/pro/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/al$1;)V
    .locals 0

    .line 725
    invoke-direct {p0}, Lcom/umeng/analytics/pro/al$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/pro/al$a;
    .locals 2

    .line 728
    new-instance v0, Lcom/umeng/analytics/pro/al$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/al$a;-><init>(Lcom/umeng/analytics/pro/al$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/ca;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/al$b;->a()Lcom/umeng/analytics/pro/al$a;

    move-result-object v0

    return-object v0
.end method

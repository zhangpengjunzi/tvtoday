.class public Lcom/umeng/analytics/pro/by$a;
.super Ljava/lang/Object;
.source "TTupleProtocol.java"

# interfaces
.implements Lcom/umeng/analytics/pro/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/cg;)Lcom/umeng/analytics/pro/bs;
    .locals 1

    .line 35
    new-instance v0, Lcom/umeng/analytics/pro/by;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/by;-><init>(Lcom/umeng/analytics/pro/cg;)V

    return-object v0
.end method

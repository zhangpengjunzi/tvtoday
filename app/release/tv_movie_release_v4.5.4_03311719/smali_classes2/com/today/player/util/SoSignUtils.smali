.class public Lcom/today/player/util/SoSignUtils;
.super Ljava/lang/Object;
.source "SoSignUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "csign"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native decodeInC(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encodeInC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

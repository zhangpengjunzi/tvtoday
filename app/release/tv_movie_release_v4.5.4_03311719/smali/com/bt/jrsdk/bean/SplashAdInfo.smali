.class public Lcom/bt/jrsdk/bean/SplashAdInfo;
.super Lcom/bt/jrsdk/bean/BaseAdInfo;
.source "SplashAdInfo.java"


# instance fields
.field private countDown:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bt/jrsdk/bean/BaseAdInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountDown()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/bt/jrsdk/bean/SplashAdInfo;->countDown:I

    return v0
.end method

.method public setCountDown(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/bt/jrsdk/bean/SplashAdInfo;->countDown:I

    return-void
.end method

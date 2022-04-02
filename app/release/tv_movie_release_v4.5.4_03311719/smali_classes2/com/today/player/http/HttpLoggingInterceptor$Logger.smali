.class public interface abstract Lcom/today/player/http/HttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/http/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/today/player/http/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/today/player/http/HttpLoggingInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/today/player/http/HttpLoggingInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/today/player/http/HttpLoggingInterceptor$Logger;->DEFAULT:Lcom/today/player/http/HttpLoggingInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method

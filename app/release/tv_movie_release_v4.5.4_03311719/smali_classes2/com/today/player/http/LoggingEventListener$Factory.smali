.class public Lcom/today/player/http/LoggingEventListener$Factory;
.super Ljava/lang/Object;
.source "LoggingEventListener.java"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/http/LoggingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final logger:Lcom/today/player/http/HttpLoggingInterceptor$Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    sget-object v0, Lcom/today/player/http/HttpLoggingInterceptor$Logger;->DEFAULT:Lcom/today/player/http/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lcom/today/player/http/LoggingEventListener$Factory;-><init>(Lcom/today/player/http/HttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method public constructor <init>(Lcom/today/player/http/HttpLoggingInterceptor$Logger;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/today/player/http/LoggingEventListener$Factory;->logger:Lcom/today/player/http/HttpLoggingInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 2

    .line 168
    new-instance p1, Lcom/today/player/http/LoggingEventListener;

    iget-object v0, p0, Lcom/today/player/http/LoggingEventListener$Factory;->logger:Lcom/today/player/http/HttpLoggingInterceptor$Logger;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/today/player/http/LoggingEventListener;-><init>(Lcom/today/player/http/HttpLoggingInterceptor$Logger;Lcom/today/player/http/LoggingEventListener$1;)V

    return-object p1
.end method

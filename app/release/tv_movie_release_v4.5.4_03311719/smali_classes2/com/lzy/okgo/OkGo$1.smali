.class Lcom/lzy/okgo/OkGo$1;
.super Ljava/lang/Object;
.source "OkGo.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/OkGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/OkGo;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/OkGo;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/lzy/okgo/OkGo$1;->this$0:Lcom/lzy/okgo/OkGo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

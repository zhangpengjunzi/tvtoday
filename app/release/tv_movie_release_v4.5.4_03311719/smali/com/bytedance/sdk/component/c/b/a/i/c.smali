.class public abstract Lcom/bytedance/sdk/component/c/b/a/i/c;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/c/b/a/i/c;
    .locals 1

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/component/c/b/a/g/e;->b()Lcom/bytedance/sdk/component/c/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/c/b/a/g/e;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/c/b/a/i/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

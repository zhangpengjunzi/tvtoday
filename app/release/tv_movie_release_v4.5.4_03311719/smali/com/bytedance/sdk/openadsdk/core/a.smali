.class public final Lcom/bytedance/sdk/openadsdk/core/a;
.super Ljava/lang/Object;
.source "AESKey.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "Z3j[]hPQ^]fYma@BC!#|CyPM"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public interface abstract Lcom/bytedance/sdk/component/c/b/b;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/component/c/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/bytedance/sdk/component/c/b/b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/b$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/c/b/b;->a:Lcom/bytedance/sdk/component/c/b/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/bytedance/sdk/component/c/b/ac;Lcom/bytedance/sdk/component/c/b/aa;)Lcom/bytedance/sdk/component/c/b/y;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

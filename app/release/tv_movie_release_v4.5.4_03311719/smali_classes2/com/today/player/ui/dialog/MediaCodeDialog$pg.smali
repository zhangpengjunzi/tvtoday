.class public Lcom/today/player/ui/dialog/MediaCodeDialog$pg;
.super Ljava/lang/Object;
.source "MediaCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/dialog/MediaCodeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "pg"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 30
    iput-boolean p1, p0, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->c:Z

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a:Ljava/lang/String;

    const-string v0, "ijk_codec"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

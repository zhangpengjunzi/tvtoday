.class Lcom/upa/source/VideoSource$SourceInit;
.super Ljava/lang/Object;
.source "VideoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upa/source/VideoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceInit"
.end annotation


# static fields
.field public static final source:Lcom/upa/source/VideoSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/upa/source/VideoSource;

    invoke-direct {v0}, Lcom/upa/source/VideoSource;-><init>()V

    sput-object v0, Lcom/upa/source/VideoSource$SourceInit;->source:Lcom/upa/source/VideoSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

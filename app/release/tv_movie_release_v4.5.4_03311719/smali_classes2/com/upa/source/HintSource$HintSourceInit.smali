.class Lcom/upa/source/HintSource$HintSourceInit;
.super Ljava/lang/Object;
.source "HintSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upa/source/HintSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HintSourceInit"
.end annotation


# static fields
.field public static final init:Lcom/upa/source/HintSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/upa/source/HintSource;

    invoke-direct {v0}, Lcom/upa/source/HintSource;-><init>()V

    sput-object v0, Lcom/upa/source/HintSource$HintSourceInit;->init:Lcom/upa/source/HintSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

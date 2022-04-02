.class Lcom/upa/DownloadManager$DownLoadInit;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upa/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownLoadInit"
.end annotation


# static fields
.field public static final init:Lcom/upa/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/upa/DownloadManager;

    invoke-direct {v0}, Lcom/upa/DownloadManager;-><init>()V

    sput-object v0, Lcom/upa/DownloadManager$DownLoadInit;->init:Lcom/upa/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

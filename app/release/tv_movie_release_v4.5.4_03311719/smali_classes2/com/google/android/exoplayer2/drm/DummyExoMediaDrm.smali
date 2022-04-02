.class public final Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;
.super Ljava/lang/Object;
.source "DummyExoMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .locals 0

    return-void
.end method

.method public closeSession([B)V
    .locals 0

    return-void
.end method

.method public createMediaCrypto([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .locals 0

    .line 141
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getExoMediaCryptoType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/exoplayer2/drm/UnsupportedMediaCrypto;",
            ">;"
        }
    .end annotation

    .line 146
    const-class v0, Lcom/google/android/exoplayer2/drm/UnsupportedMediaCrypto;

    return-object v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .line 68
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 0

    .line 125
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object p1
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public openSession()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/media/MediaDrmException;

    const-string v1, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {v0, v1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public provideProvisionResponse([B)V
    .locals 0

    .line 87
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public restoreKeys([B[B)V
    .locals 0

    .line 109
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .locals 0

    return-void
.end method

.method public setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 0

    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

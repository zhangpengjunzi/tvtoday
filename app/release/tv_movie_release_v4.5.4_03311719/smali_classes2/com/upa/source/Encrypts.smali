.class public Lcom/upa/source/Encrypts;
.super Ljava/lang/Object;
.source "Encrypts.java"


# static fields
.field private static final ENCRYPT_TAG:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/upa/source/Encrypts;->ENCRYPT_TAG:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x74t
        0x61t
        0x67t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert([B[B)[B
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 16
    array-length v1, p1

    rem-int v1, v0, v1

    .line 17
    aget-byte v2, p0, v0

    aget-byte v1, p1, v1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static decrypt([B)[B
    .locals 6

    .line 35
    invoke-static {p0}, Lcom/upa/source/Encrypts;->isEncryptData([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/upa/source/Encrypts;->ENCRYPT_TAG:[B

    array-length v0, v0

    .line 37
    aget-byte v1, p0, v0

    .line 38
    new-array v2, v1, [B

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-static {p0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length v5, p0

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    .line 41
    new-array v0, v5, [B

    add-int/2addr v3, v1

    .line 42
    invoke-static {p0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v0, v2}, Lcom/upa/source/Encrypts;->convert([B[B)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static isEncryptData([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 23
    array-length v1, p0

    sget-object v2, Lcom/upa/source/Encrypts;->ENCRYPT_TAG:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    sget-object v2, Lcom/upa/source/Encrypts;->ENCRYPT_TAG:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 27
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

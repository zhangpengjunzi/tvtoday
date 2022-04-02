.class final Lms/bd/o/Pgl/b0;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object v0

    invoke-virtual {v0}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x23

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "e9dbcf"

    const/4 v10, 0x4

    :try_start_1
    new-array v9, v10, [B

    const/16 v11, 0x63

    aput-byte v11, v9, v3

    const/16 v11, 0x32

    aput-byte v11, v9, v2

    const/4 v12, 0x2

    const/16 v13, 0x11

    aput-byte v13, v9, v12

    const/16 v14, 0x1f

    const/4 v15, 0x3

    aput-byte v14, v9, v15

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v20, "ff16bc"

    const/16 v6, 0x18

    :try_start_2
    new-array v6, v6, [B

    const/16 v7, 0x21

    aput-byte v7, v6, v3

    const/16 v7, 0x33

    aput-byte v7, v6, v2

    const/16 v8, 0x14

    aput-byte v8, v6, v12

    const/16 v9, 0x17

    aput-byte v9, v6, v15

    const/16 v12, 0xa

    aput-byte v12, v6, v10

    const/4 v10, 0x5

    const/16 v14, 0x20

    aput-byte v14, v6, v10

    const/4 v10, 0x6

    const/16 v15, 0x31

    aput-byte v15, v6, v10

    const/4 v10, 0x7

    const/16 v15, 0x1e

    aput-byte v15, v6, v10

    const/16 v10, 0x8

    const/16 v15, 0x37

    aput-byte v15, v6, v10

    const/16 v10, 0x9

    const/16 v21, 0x36

    aput-byte v21, v6, v10

    aput-byte v1, v6, v12

    const/16 v10, 0x35

    const/16 v12, 0xb

    aput-byte v10, v6, v12

    const/16 v10, 0xc

    aput-byte v8, v6, v10

    const/16 v10, 0xd

    const/16 v22, 0x16

    aput-byte v22, v6, v10

    const/16 v10, 0xe

    aput-byte v12, v6, v10

    const/16 v10, 0xf

    aput-byte v14, v6, v10

    const/16 v10, 0x10

    aput-byte v11, v6, v10

    const/16 v10, 0x15

    aput-byte v10, v6, v13

    const/16 v11, 0x12

    aput-byte v21, v6, v11

    const/16 v11, 0x13

    aput-byte v7, v6, v11

    aput-byte v14, v6, v8

    aput-byte v15, v6, v10

    aput-byte v10, v6, v22

    aput-byte v13, v6, v9

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v21}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lms/bd/o/Pgl/pblz;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v10, v2, [B

    aput-byte v1, v10, v3

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "b599b5"

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

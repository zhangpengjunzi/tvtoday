.class public final Lms/bd/o/Pgl/pblz;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-wide v1
.end method

.method public static a()Landroid/app/Activity;
    .locals 32

    const-string v4, "3ca769"

    const/16 v0, 0x1a

    const/4 v7, 0x4

    :try_start_0
    new-array v5, v0, [B

    const/16 v0, 0x23

    const/4 v8, 0x0

    aput-byte v0, v5, v8

    const/16 v0, 0x6f

    const/4 v9, 0x1

    aput-byte v0, v5, v9

    const/16 v0, 0x16

    const/4 v10, 0x2

    aput-byte v0, v5, v10

    const/16 v1, 0x51

    const/4 v11, 0x3

    aput-byte v1, v5, v11

    const/4 v12, 0x6

    aput-byte v12, v5, v7

    const/16 v1, 0x27

    const/4 v13, 0x5

    aput-byte v1, v5, v13

    const/16 v2, 0x34

    aput-byte v2, v5, v12

    const/16 v14, 0xc

    const/4 v15, 0x7

    aput-byte v14, v5, v15

    const/16 v2, 0x31

    const/16 v3, 0x8

    aput-byte v2, v5, v3

    const/16 v16, 0x77

    const/16 v17, 0x9

    aput-byte v16, v5, v17

    const/16 v2, 0x32

    const/16 v18, 0xa

    aput-byte v2, v5, v18

    const/16 v19, 0x2f

    const/16 v2, 0xb

    aput-byte v19, v5, v2

    const/16 v20, 0x33

    aput-byte v20, v5, v14

    const/16 v20, 0xd

    const/16 v21, 0x40

    aput-byte v21, v5, v20

    const/16 v20, 0xe

    const/16 v21, 0x1d

    aput-byte v21, v5, v20

    const/16 v20, 0xf

    aput-byte v1, v5, v20

    const/16 v1, 0x10

    const/16 v20, 0x26

    aput-byte v20, v5, v1

    const/16 v1, 0x4b

    const/16 v20, 0x11

    aput-byte v1, v5, v20

    const/16 v1, 0x12

    const/16 v21, 0x24

    aput-byte v21, v5, v1

    const/16 v1, 0x7e

    const/16 v6, 0x13

    aput-byte v1, v5, v6

    const/16 v1, 0x14

    aput-byte v0, v5, v1

    const/16 v1, 0x15

    const/16 v22, 0x69

    aput-byte v22, v5, v1

    aput-byte v8, v5, v0

    const/16 v0, 0x17

    const/16 v1, 0x46

    aput-byte v1, v5, v0

    const/16 v0, 0x18

    aput-byte v3, v5, v0

    const/16 v0, 0x19

    const/16 v1, 0x2a

    aput-byte v1, v5, v0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v22, 0x0

    const/16 v6, 0xb

    const/16 v14, 0x8

    move-wide/from16 v2, v22

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "75b3cf"

    const/16 v1, 0x15

    :try_start_1
    new-array v1, v1, [B

    const/16 v2, 0x25

    aput-byte v2, v1, v8

    const/16 v3, 0x22

    aput-byte v3, v1, v9

    aput-byte v11, v1, v10

    const/16 v3, 0x55

    aput-byte v3, v1, v11

    const/16 v4, 0x59

    aput-byte v4, v1, v7

    const/16 v4, 0x7f

    aput-byte v4, v1, v13

    const/16 v4, 0x20

    aput-byte v4, v1, v12

    const/16 v4, 0x35

    aput-byte v4, v1, v15

    const/16 v4, 0x30

    aput-byte v4, v1, v14

    aput-byte v16, v1, v17

    aput-byte v19, v1, v18

    const/16 v4, 0x21

    aput-byte v4, v1, v6

    const/16 v4, 0x18

    const/16 v5, 0xc

    aput-byte v4, v1, v5

    const/16 v4, 0xd

    const/16 v5, 0x53

    aput-byte v5, v1, v4

    const/16 v4, 0xe

    const/16 v5, 0x45

    aput-byte v5, v1, v4

    const/16 v4, 0xf

    const/16 v5, 0x45

    aput-byte v5, v1, v4

    const/16 v4, 0x10

    const/16 v5, 0x3c

    aput-byte v5, v1, v4

    aput-byte v12, v1, v20

    const/16 v4, 0x12

    const/16 v5, 0x36

    aput-byte v5, v1, v4

    const/16 v4, 0x62

    const/16 v5, 0x13

    aput-byte v4, v1, v5

    const/16 v4, 0x14

    const/16 v5, 0x22

    aput-byte v5, v1, v4

    move-object/from16 v31, v1

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "9ba367"

    :try_start_2
    new-array v4, v6, [B

    aput-byte v2, v4, v8

    const/16 v5, 0x41

    aput-byte v5, v4, v9

    aput-byte v20, v4, v10

    const/16 v5, 0x53

    aput-byte v5, v4, v11

    aput-byte v8, v4, v7

    const/16 v5, 0x36

    aput-byte v5, v4, v13

    const/16 v5, 0x33

    aput-byte v5, v4, v12

    const/16 v5, 0x57

    aput-byte v5, v4, v15

    const/16 v5, 0x39

    aput-byte v5, v4, v14

    const/16 v5, 0x66

    aput-byte v5, v4, v17

    const/16 v5, 0x3b

    aput-byte v5, v4, v18

    move-object/from16 v30, v4

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v1, v9, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "ac3526"

    :try_start_3
    new-array v5, v12, [B

    const/16 v6, 0x60

    aput-byte v6, v5, v8

    const/16 v6, 0x60

    aput-byte v6, v5, v9

    aput-byte v3, v5, v10

    const/16 v6, 0x52

    aput-byte v6, v5, v11

    aput-byte v14, v5, v7

    aput-byte v2, v5, v13

    move-object/from16 v27, v5

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v5, :cond_3

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "cf27f4"

    :try_start_4
    new-array v0, v14, [B

    const/16 v2, 0x73

    aput-byte v2, v0, v8

    const/16 v2, 0x67

    aput-byte v2, v0, v9

    aput-byte v3, v0, v10

    const/16 v2, 0x4a

    aput-byte v2, v0, v11

    const/16 v2, 0x4f

    aput-byte v2, v0, v7

    const/16 v2, 0x2a

    aput-byte v2, v0, v13

    const/16 v2, 0x74

    aput-byte v2, v0, v12

    const/16 v2, 0x5e

    aput-byte v2, v0, v15

    move-object/from16 v27, v0

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    new-array v6, v7, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "0d0cd2"

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_4
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x20t
        0x6ft
        0x7ct
        0x10t
    .end array-data
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

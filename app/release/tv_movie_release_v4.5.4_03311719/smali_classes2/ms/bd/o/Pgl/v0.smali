.class public Lms/bd/o/Pgl/v0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "e3b790"

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v7, v0, [B

    fill-array-data v7, :array_1

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "07b9d5"

    invoke-static/range {v2 .. v7}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lms/bd/o/Pgl/v0;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x6dt
        0x50t
        0x1dt
        0x3bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x35t
        0x21t
        0x2et
        0x43t
        0x5ft
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 28

    const-class v1, Lms/bd/o/Pgl/v0;

    monitor-enter v1

    const/16 v6, 0x46

    const/16 v7, 0x67

    const/16 v9, 0x1c

    const/4 v13, 0x7

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/4 v0, 0x2

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v19, 0x1000001

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    :try_start_1
    const-string v23, "907f57"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v10, v3, [B

    aput-byte v7, v10, v4

    move-object/from16 v24, v10

    invoke-static/range {v19 .. v24}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lms/bd/o/Pgl/v0;->a:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v5}, Lms/bd/o/Pgl/v0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v18, :cond_0

    monitor-exit v1

    return-object v10

    :cond_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    sget-object v7, Lms/bd/o/Pgl/v0;->a:Ljava/lang/String;

    invoke-virtual {v10, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v8, 0x1000

    new-array v8, v8, [B

    :goto_0
    const/16 v11, 0x1000

    invoke-virtual {v7, v8, v4, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    invoke-virtual {v10, v8, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    :try_start_4
    const-string v26, "80b916"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-array v8, v2, [B

    const/16 v10, 0x2a

    aput-byte v10, v8, v4

    const/16 v10, 0x3a

    aput-byte v10, v8, v3

    aput-byte v9, v8, v0

    const/16 v10, 0x42

    aput-byte v10, v8, v14

    aput-byte v2, v8, v15

    const/16 v10, 0x61

    aput-byte v10, v8, v17

    const/16 v10, 0x6c

    aput-byte v10, v8, v16

    aput-byte v6, v8, v13

    const/16 v10, 0x64

    const/16 v11, 0x8

    aput-byte v10, v8, v11

    const/16 v10, 0x29

    const/16 v11, 0x9

    aput-byte v10, v8, v11

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lms/bd/o/Pgl/v0;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lms/bd/o/Pgl/v0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    new-instance v7, Ljava/io/RandomAccessFile;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    :try_start_6
    const-string v26, "1cca26"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-array v8, v0, [B

    const/16 v10, 0x32

    aput-byte v10, v8, v4

    const/16 v10, 0x76

    aput-byte v10, v8, v3

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v8, v3, [B

    aput-byte v0, v8, v4

    const-wide/16 v10, 0x10

    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v5}, Lms/bd/o/Pgl/v0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    const/16 v5, 0x14

    :try_start_8
    new-array v7, v5, [B

    const/16 v5, 0x79

    aput-byte v5, v7, v4

    aput-byte v3, v7, v3

    const/16 v5, 0x1d

    aput-byte v5, v7, v0

    aput-byte v16, v7, v14

    aput-byte v15, v7, v15

    const/16 v5, 0x48

    aput-byte v5, v7, v17

    const/16 v5, 0x1e

    aput-byte v5, v7, v16

    const/16 v5, 0x21

    aput-byte v5, v7, v13

    const/16 v5, 0x40

    const/16 v8, 0x8

    aput-byte v5, v7, v8

    const/16 v5, 0x9

    aput-byte v6, v7, v5

    const/16 v5, 0x19

    aput-byte v5, v7, v2

    const/16 v5, 0xb

    const/16 v6, 0xe

    aput-byte v6, v7, v5

    const/16 v5, 0x68

    const/16 v8, 0xc

    aput-byte v5, v7, v8

    const/16 v8, 0xd

    aput-byte v5, v7, v8

    const/16 v5, 0x74

    aput-byte v5, v7, v6

    const/16 v5, 0x4e

    const/16 v6, 0xf

    aput-byte v5, v7, v6

    const/16 v5, 0x10

    const/16 v6, 0x67

    aput-byte v6, v7, v5

    const/16 v5, 0x11

    const/16 v6, 0x58

    aput-byte v6, v7, v5

    const/16 v5, 0x12

    const/16 v6, 0x3d

    aput-byte v6, v7, v5

    const/16 v5, 0x13

    const/16 v6, 0x5e

    aput-byte v6, v7, v5

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "8823eb"

    move-object/from16 v27, v7

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/16 v5, 0x10

    new-array v5, v5, [B

    const/16 v6, 0x76

    aput-byte v6, v5, v4

    aput-byte v2, v5, v3

    const/16 v3, 0x1a

    aput-byte v3, v5, v0

    const/16 v0, 0x51

    aput-byte v0, v5, v14

    aput-byte v17, v5, v15

    aput-byte v9, v5, v17

    const/16 v0, 0x11

    aput-byte v0, v5, v16

    const/16 v0, 0x20

    aput-byte v0, v5, v13

    const/16 v0, 0x56

    const/16 v3, 0x8

    aput-byte v0, v5, v3

    const/16 v0, 0x1b

    const/16 v3, 0x9

    aput-byte v0, v5, v3

    const/16 v0, 0x14

    aput-byte v0, v5, v2

    const/16 v0, 0xb

    aput-byte v2, v5, v0

    const/16 v0, 0x1a

    const/16 v2, 0xc

    aput-byte v0, v5, v2

    const/16 v0, 0x51

    const/16 v2, 0xd

    aput-byte v0, v5, v2

    const/16 v0, 0xe

    aput-byte v17, v5, v0

    const/16 v0, 0xf

    aput-byte v9, v5, v0

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "735dd6"

    move-object/from16 v27, v5

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    monitor-exit v1

    return-object v7

    :catchall_1
    move-exception v0

    monitor-exit v1

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x1000

    new-array v1, v0, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-ge v3, v0, :cond_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x3

    new-array v8, p0, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "5cc56f"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
        0x21t
        0x68t
        0x13t
    .end array-data
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "3022fc"

    :try_start_1
    new-array v11, v2, [B

    const/16 v12, 0x31

    aput-byte v12, v11, v1

    const/16 v12, 0x3a

    aput-byte v12, v11, v0

    invoke-static/range {v6 .. v11}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 p0, 0xa

    invoke-virtual {v6, p0}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    invoke-static {v7}, Lms/bd/o/Pgl/v0;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-object v3, p0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    new-array v13, v4, [B

    fill-array-data v13, :array_0

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "285aec"

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_8

    :catch_2
    new-array v13, v4, [B

    fill-array-data v13, :array_1

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "b5b65a"

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_3
    :goto_2
    move-object p0, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :catch_4
    move-object p0, v3

    move-object v7, p0

    :goto_3
    move-object v3, v6

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v5, v3

    :goto_4
    move-object v0, v3

    goto :goto_b

    :catch_5
    move-object v5, v3

    :catch_6
    move-object p0, v3

    move-object v7, p0

    :goto_5
    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "3734b3"

    :try_start_8
    new-array v13, v4, [B

    const/16 v6, 0x27

    aput-byte v6, v13, v1

    const/16 v1, 0x3c

    aput-byte v1, v13, v0

    const/16 v0, 0x43

    aput-byte v0, v13, v2

    const/4 v0, 0x3

    const/16 v1, 0x7f

    aput-byte v1, v13, v0

    const/4 v0, 0x4

    const/16 v1, 0x58

    aput-byte v1, v13, v0

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    new-array v13, v4, [B

    fill-array-data v13, :array_2

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "088959"

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_6
    if-eqz v7, :cond_2

    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    :catch_8
    new-array v13, v4, [B

    fill-array-data v13, :array_3

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "ee88dc"

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_7
    if-eqz v5, :cond_3

    :goto_8
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_3
    return-object p0

    :catchall_4
    move-exception p0

    move-object v6, v3

    :goto_9
    move-object v3, v7

    :goto_a
    move-object v0, v3

    move-object v3, v6

    :goto_b
    if-eqz v3, :cond_4

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_c

    :catch_9
    new-array v11, v4, [B

    fill-array-data v11, :array_4

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "9fc1c4"

    invoke-static/range {v6 .. v11}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_4
    :goto_c
    if-eqz v0, :cond_5

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_d

    :catch_a
    new-array v11, v4, [B

    fill-array-data v11, :array_5

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "3583a0"

    invoke-static/range {v6 .. v11}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_5
    :goto_d
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_6
    throw p0

    nop

    :array_0
    .array-data 1
        0x26t
        0x33t
        0x45t
        0x2at
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x3et
        0x12t
        0x7dt
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x24t
        0x33t
        0x48t
        0x72t
        0xft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0x6et
        0x48t
        0x73t
        0x5et
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2dt
        0x6dt
        0x13t
        0x7at
        0x59t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x27t
        0x3et
        0x48t
        0x78t
        0x5bt
    .end array-data
.end method

.class public final Lms/bd/o/Pgl/pblp;
.super Lms/bd/o/Pgl/pblo;
.source ""


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblo;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    new-instance v4, Lms/bd/o/Pgl/pblm$pgla;

    invoke-direct {v4}, Lms/bd/o/Pgl/pblm$pgla;-><init>()V

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/16 v20, -0x1

    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    instance-of v11, v9, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v23, 0x17

    if-eqz v11, :cond_4

    iget-object v11, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v11, :cond_2

    const-class v11, Lms/bd/o/Pgl/pblp;

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v8, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v8, :cond_1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v15, 0x14

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    if-lt v8, v15, :cond_0

    const-string v29, "2e9825"

    :try_start_3
    new-array v8, v6, [B

    aput-byte v23, v8, v7

    const/16 v15, 0x4b

    aput-byte v15, v8, v10

    const/16 v15, 0x79

    aput-byte v15, v8, v5

    move-object/from16 v30, v8

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_0
    const-string v29, "925668"

    :try_start_4
    new-array v8, v14, [B

    const/16 v15, 0x1c

    aput-byte v15, v8, v7

    const/16 v15, 0x1c

    aput-byte v15, v8, v10

    const/16 v15, 0x75

    aput-byte v15, v8, v5

    const/16 v15, 0x54

    aput-byte v15, v8, v6

    const/16 v15, 0x58

    aput-byte v15, v8, v13

    const/16 v15, 0x61

    aput-byte v15, v8, v12

    const/16 v15, 0x68

    const/16 v24, 0x6

    aput-byte v15, v8, v24

    move-object/from16 v30, v8

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_0
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v15, 0x0

    :try_start_5
    invoke-virtual {v8, v15, v15, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    iput-object v8, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    monitor-exit v11

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    :goto_2
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_2
    const/4 v15, 0x0

    :goto_3
    move-object v8, v9

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x14

    if-lt v11, v15, :cond_3

    iget-object v11, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    :goto_4
    invoke-virtual {v8, v11}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_5

    :cond_3
    new-instance v11, Lms/bd/o/Pgl/pblr;

    iget-object v15, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v11, v15}, Lms/bd/o/Pgl/pblr;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_4

    :cond_4
    :goto_5
    const/16 v8, 0x2710

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v8, 0x1388

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "95f681"

    const/4 v8, 0x6

    :try_start_7
    new-array v11, v8, [B

    const/16 v8, 0x9

    aput-byte v8, v11, v7

    const/16 v8, 0x34

    aput-byte v8, v11, v10

    const/16 v8, 0x16

    aput-byte v8, v11, v5

    const/16 v8, 0x47

    aput-byte v8, v11, v6

    aput-byte v23, v11, v13

    const/16 v8, 0x32

    aput-byte v8, v11, v12

    move-object/from16 v30, v11

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "9f2be9"

    :try_start_8
    new-array v11, v6, [B

    const/16 v15, 0x62

    aput-byte v15, v11, v7

    const/16 v15, 0x2b

    aput-byte v15, v11, v10

    const/16 v15, 0xb

    aput-byte v15, v11, v5

    move-object/from16 v30, v11

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "0f0bf9"

    const/16 v8, 0xa

    :try_start_9
    new-array v11, v8, [B

    aput-byte v5, v11, v7

    const/16 v8, 0x6b

    aput-byte v8, v11, v10

    const/16 v8, 0x4d

    aput-byte v8, v11, v5

    const/16 v30, 0x18

    aput-byte v30, v11, v6

    const/16 v30, 0x5c

    aput-byte v30, v11, v13

    const/16 v30, 0x2d

    aput-byte v30, v11, v12

    const/16 v31, 0x27

    const/16 v24, 0x6

    aput-byte v31, v11, v24

    const/16 v30, 0x4e

    aput-byte v30, v11, v14

    const/16 v30, 0x6e

    const/16 v19, 0x8

    aput-byte v30, v11, v19

    const/16 v30, 0x3c

    const/16 v22, 0x9

    aput-byte v30, v11, v22

    move-object/from16 v30, v11

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "e0349a"

    const/16 v8, 0xa

    :try_start_a
    new-array v15, v8, [B

    const/16 v8, 0x5f

    aput-byte v8, v15, v7

    const/16 v8, 0x37

    aput-byte v8, v15, v10

    const/16 v8, 0x45

    aput-byte v8, v15, v5

    const/16 v8, 0x50

    aput-byte v8, v15, v6

    const/16 v8, 0x4b

    aput-byte v8, v15, v13

    const/16 v8, 0x57

    aput-byte v8, v15, v12

    const/16 v8, 0x6a

    const/16 v24, 0x6

    aput-byte v8, v15, v24

    const/16 v8, 0x18

    aput-byte v8, v15, v14

    const/16 v8, 0x74

    const/16 v19, 0x8

    aput-byte v8, v15, v19

    const/16 v8, 0x61

    const/16 v22, 0x9

    aput-byte v8, v15, v22

    move-object/from16 v30, v15

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v11, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "86fe4b"

    const/16 v8, 0xa

    :try_start_b
    new-array v11, v8, [B

    const/16 v8, 0x1c

    aput-byte v8, v11, v7

    aput-byte v31, v11, v10

    const/16 v8, 0x10

    aput-byte v8, v11, v5

    aput-byte v6, v11, v6

    const/16 v15, 0x46

    aput-byte v15, v11, v13

    const/16 v15, 0x54

    aput-byte v15, v11, v12

    const/16 v15, 0x3c

    const/16 v24, 0x6

    aput-byte v15, v11, v24

    const/16 v15, 0x12

    aput-byte v15, v11, v14

    const/16 v15, 0x39

    const/16 v17, 0x8

    aput-byte v15, v11, v17

    const/16 v15, 0x21

    const/16 v22, 0x9

    aput-byte v15, v11, v22

    move-object/from16 v30, v11

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "e0c7e1"

    const/16 v15, 0xf

    :try_start_c
    new-array v15, v15, [B

    const/16 v30, 0x56

    aput-byte v30, v15, v7

    const/16 v30, 0x2b

    aput-byte v30, v15, v10

    aput-byte v13, v15, v5

    const/16 v30, 0x46

    aput-byte v30, v15, v6

    const/16 v30, 0x7e

    aput-byte v30, v15, v13

    aput-byte v31, v15, v12

    const/16 v30, 0x68

    const/16 v24, 0x6

    aput-byte v30, v15, v24

    const/16 v18, 0x12

    aput-byte v18, v15, v14

    const/16 v30, 0x37

    const/16 v19, 0x8

    aput-byte v30, v15, v19

    const/16 v30, 0x2a

    const/16 v22, 0x9

    aput-byte v30, v15, v22

    const/16 v30, 0x59

    const/16 v21, 0xa

    aput-byte v30, v15, v21

    const/16 v30, 0xb

    aput-byte v10, v15, v30

    const/16 v30, 0x23

    const/16 v8, 0xc

    aput-byte v30, v15, v8

    const/16 v32, 0xd

    const/16 v16, 0x67

    aput-byte v16, v15, v32

    const/16 v30, 0xe

    const/16 v33, 0x71

    aput-byte v33, v15, v30

    move-object/from16 v30, v15

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v9, v11, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "027a76"

    :try_start_d
    new-array v11, v8, [B

    aput-byte v5, v11, v7

    const/16 v15, 0x3f

    aput-byte v15, v11, v10

    const/16 v15, 0x4a

    aput-byte v15, v11, v5

    aput-byte v10, v11, v6

    aput-byte v32, v11, v13

    const/16 v15, 0x2f

    aput-byte v15, v11, v12

    const/4 v15, 0x6

    aput-byte v31, v11, v15

    const/16 v15, 0x5e

    aput-byte v15, v11, v14

    const/16 v15, 0x52

    const/16 v19, 0x8

    aput-byte v15, v11, v19

    const/16 v15, 0x28

    const/16 v22, 0x9

    aput-byte v15, v11, v22

    const/16 v15, 0x31

    const/16 v21, 0xa

    aput-byte v15, v11, v21

    const/16 v15, 0x35

    const/16 v30, 0xb

    aput-byte v15, v11, v30

    move-object/from16 v30, v11

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "f618f3"

    const/16 v15, 0x18

    :try_start_e
    new-array v15, v15, [B

    const/16 v30, 0x76

    aput-byte v30, v15, v7

    const/16 v30, 0x24

    aput-byte v30, v15, v10

    const/16 v30, 0x52

    aput-byte v30, v15, v5

    const/16 v30, 0x40

    aput-byte v30, v15, v6

    const/16 v30, 0x50

    aput-byte v30, v15, v13

    aput-byte v31, v15, v12

    const/16 v30, 0x64

    const/16 v24, 0x6

    aput-byte v30, v15, v24

    aput-byte v6, v15, v14

    const/16 v30, 0x69

    const/16 v19, 0x8

    aput-byte v30, v15, v19

    const/16 v16, 0x67

    const/16 v22, 0x9

    aput-byte v16, v15, v22

    const/16 v30, 0x79

    const/16 v21, 0xa

    aput-byte v30, v15, v21

    const/16 v30, 0x7b

    const/16 v31, 0xb

    aput-byte v30, v15, v31

    const/16 v30, 0x4d

    aput-byte v30, v15, v8

    const/16 v31, 0x4f

    aput-byte v31, v15, v32

    const/16 v31, 0xe

    aput-byte v30, v15, v31

    const/16 v30, 0xf

    const/16 v31, 0x21

    aput-byte v31, v15, v30

    const/16 v30, 0x71

    const/16 v31, 0x10

    aput-byte v30, v15, v31

    const/16 v30, 0x11

    const/16 v31, 0x5a

    aput-byte v31, v15, v30

    const/16 v30, 0x73

    const/16 v18, 0x12

    aput-byte v30, v15, v18

    const/16 v30, 0x13

    const/16 v31, 0x7c

    aput-byte v31, v15, v30

    const/16 v30, 0x14

    const/16 v31, 0x65

    aput-byte v31, v15, v30

    const/16 v30, 0x15

    const/16 v31, 0x31

    aput-byte v31, v15, v30

    const/16 v30, 0x16

    const/16 v31, 0x43

    aput-byte v31, v15, v30

    const/16 v30, 0x41

    aput-byte v30, v15, v23

    move-object/from16 v30, v15

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v9, v11, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-lez v11, :cond_5

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "491519"

    const/4 v11, 0x6

    :try_start_f
    new-array v15, v11, [B

    aput-byte v11, v15, v7

    const/16 v11, 0x34

    aput-byte v11, v15, v10

    const/16 v11, 0x4d

    aput-byte v11, v15, v5

    const/16 v11, 0x4a

    aput-byte v11, v15, v6

    aput-byte v14, v15, v13

    const/16 v11, 0x2b

    aput-byte v11, v15, v12

    move-object/from16 v30, v15

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "0814ae"

    :try_start_10
    new-array v15, v8, [B

    const/16 v30, 0x32

    aput-byte v30, v15, v7

    const/16 v30, 0x3f

    aput-byte v30, v15, v10

    const/16 v30, 0x51

    aput-byte v30, v15, v5

    const/16 v30, 0x53

    aput-byte v30, v15, v6

    const/16 v30, 0x57

    aput-byte v30, v15, v13

    const/16 v30, 0x7d

    aput-byte v30, v15, v12

    const/16 v30, 0x3d

    const/16 v24, 0x6

    aput-byte v30, v15, v24

    const/16 v30, 0x10

    aput-byte v30, v15, v14

    const/16 v30, 0x64

    const/16 v19, 0x8

    aput-byte v30, v15, v19

    const/16 v17, 0x39

    const/16 v22, 0x9

    aput-byte v17, v15, v22

    const/16 v30, 0x64

    const/16 v21, 0xa

    aput-byte v30, v15, v21

    const/16 v30, 0x29

    const/16 v31, 0xb

    aput-byte v30, v15, v31

    move-object/from16 v30, v15

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p3, v8, v7

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v11, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-lez v8, :cond_6

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "c89fe3"

    const/16 v8, 0x10

    :try_start_11
    new-array v8, v8, [B

    const/16 v11, 0x6a

    aput-byte v11, v8, v7

    const/16 v11, 0x77

    aput-byte v11, v8, v10

    const/16 v11, 0x5e

    aput-byte v11, v8, v5

    const/4 v11, 0x6

    aput-byte v11, v8, v6

    aput-byte v23, v8, v13

    const/16 v15, 0x36

    aput-byte v15, v8, v12

    const/16 v15, 0x65

    aput-byte v15, v8, v11

    const/16 v11, 0x8

    aput-byte v11, v8, v14

    const/16 v15, 0x7d

    aput-byte v15, v8, v11

    const/16 v11, 0x33

    const/16 v15, 0x9

    aput-byte v11, v8, v15

    const/16 v11, 0x61

    const/16 v15, 0xa

    aput-byte v11, v8, v15

    const/16 v11, 0x2e

    const/16 v15, 0xb

    aput-byte v11, v8, v15

    const/16 v11, 0xc

    aput-byte v14, v8, v11

    const/4 v11, 0x6

    aput-byte v11, v8, v32

    const/16 v11, 0xe

    const/16 v15, 0x5b

    aput-byte v15, v8, v11

    const/16 v11, 0xf

    const/16 v15, 0x23

    aput-byte v15, v8, v11

    move-object/from16 v31, v8

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4, v0}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz p6, :cond_7

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "888a58"

    :try_start_12
    new-array v0, v13, [B

    const/16 v2, 0x19

    aput-byte v2, v0, v7

    const/16 v2, 0x15

    aput-byte v2, v0, v10

    const/16 v2, 0x78

    aput-byte v2, v0, v5

    const/16 v2, 0x21

    aput-byte v2, v0, v6

    move-object/from16 v30, v0

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v0, p2

    :try_start_13
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "485d51"

    const/16 v8, 0xa

    :try_start_14
    new-array v11, v8, [B

    const/16 v8, 0x3d

    aput-byte v8, v11, v7

    const/16 v8, 0x77

    aput-byte v8, v11, v10

    const/16 v8, 0x52

    aput-byte v8, v11, v5

    aput-byte v13, v11, v6

    const/16 v8, 0x47

    aput-byte v8, v11, v13

    const/16 v8, 0x2a

    aput-byte v8, v11, v12

    const/16 v8, 0x38

    const/4 v15, 0x6

    aput-byte v8, v11, v15

    const/16 v8, 0x1e

    aput-byte v8, v11, v14

    const/16 v8, 0x6d

    const/16 v15, 0x8

    aput-byte v8, v11, v15

    const/16 v8, 0x30

    const/16 v15, 0x9

    aput-byte v8, v11, v15

    move-object/from16 v30, v11

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Lms/bd/o/Pgl/pblm$pgla;->b(Ljava/lang/String;I)V

    const/16 v8, 0xc8

    if-ne v0, v8, :cond_b

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v3, :cond_8

    :try_start_15
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_7
    const/16 v3, 0x100

    new-array v3, v3, [B

    :goto_8
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_9

    invoke-virtual {v11, v3, v7, v15}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    :cond_9
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    instance-of v3, v11, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_a

    move-object v3, v11

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v1, v8}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/OutputStream;)V

    :try_start_16
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_b

    :catch_0
    new-array v2, v14, [B

    fill-array-data v2, :array_0

    const v4, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v11, "cc055a"

    move/from16 p1, v4

    move/from16 p2, v6

    move-wide/from16 p3, v8

    move-object/from16 p5, v11

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_b
    move-object v8, v3

    goto/16 :goto_12

    :catch_1
    move/from16 v20, v0

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_e

    :catch_2
    :goto_c
    move/from16 v0, v20

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    const/4 v9, 0x0

    :goto_d
    const/4 v2, 0x0

    :goto_e
    const/4 v8, 0x0

    goto/16 :goto_13

    :catch_3
    const/4 v9, 0x0

    :catch_4
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_f
    const/4 v8, 0x0

    :catch_5
    const-wide/16 v25, 0x0

    const-string v15, "e3bc00"

    const/4 v11, 0x6

    :try_start_17
    new-array v3, v11, [B

    const/16 v11, 0x67

    aput-byte v11, v3, v7

    const/16 v11, 0x39

    aput-byte v11, v3, v10

    const/16 v11, 0x12

    aput-byte v11, v3, v5

    const/16 v11, 0x28

    aput-byte v11, v3, v6

    aput-byte v14, v3, v13

    const/16 v11, 0x36

    aput-byte v11, v3, v12

    const v11, 0x1000001

    move/from16 p1, v11

    const/4 v11, 0x0

    move/from16 p2, v11

    move-wide/from16 p3, v25

    move-object/from16 p5, v15

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v9, :cond_c

    const v3, 0x1000001

    const/4 v11, 0x0

    const-string v17, "94be06"

    const/16 v15, 0xa

    :try_start_18
    new-array v15, v15, [B

    const/16 v16, 0x30

    aput-byte v16, v15, v7

    const/16 v16, 0x7b

    aput-byte v16, v15, v10

    aput-byte v12, v15, v5

    aput-byte v12, v15, v6

    const/16 v6, 0x42

    aput-byte v6, v15, v13

    const/16 v6, 0x2d

    aput-byte v6, v15, v12

    const/16 v6, 0x35

    const/4 v12, 0x6

    aput-byte v6, v15, v12

    const/16 v6, 0x12

    aput-byte v6, v15, v14

    const/16 v6, 0x3a

    const/16 v12, 0x8

    aput-byte v6, v15, v12

    const/16 v6, 0x31

    const/16 v12, 0x9

    aput-byte v6, v15, v12

    move/from16 p1, v3

    move/from16 p2, v11

    const-wide/16 v11, 0x0

    move-wide/from16 p3, v11

    move-object/from16 p5, v17

    move-object/from16 p6, v15

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_c
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v4, v3, v0}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    invoke-virtual {v1, v8}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/OutputStream;)V

    if-eqz v9, :cond_d

    :try_start_19
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    goto :goto_11

    :catch_6
    new-array v2, v14, [B

    fill-array-data v2, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const-string v6, "7cd563"

    move/from16 p1, v3

    move/from16 p2, v4

    move-wide/from16 p3, v8

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_d
    :goto_11
    const/4 v8, 0x0

    :goto_12
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    aput-object v8, v2, v10

    return-object v2

    :catchall_5
    move-exception v0

    move-object/from16 v34, v8

    move-object v8, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v8

    move-object v8, v2

    move-object/from16 v2, v34

    :goto_13
    invoke-virtual {v1, v8}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/OutputStream;)V

    if-eqz v9, :cond_e

    :try_start_1a
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto :goto_14

    :catch_7
    new-array v2, v14, [B

    fill-array-data v2, :array_2

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "7d66c1"

    move/from16 p1, v3

    move/from16 p2, v4

    move-wide/from16 p3, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_e
    :goto_14
    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15

    nop

    :array_0
    .array-data 1
        0x61t
        0x69t
        0x40t
        0x7et
        0x2t
        0x67t
        0x32t
    .end array-data

    :array_1
    .array-data 1
        0x35t
        0x69t
        0x14t
        0x7et
        0x1t
        0x35t
        0x66t
    .end array-data

    :array_2
    .array-data 1
        0x35t
        0x6et
        0x46t
        0x7dt
        0x54t
        0x37t
        0x66t
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pblp;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pblp;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pblp;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

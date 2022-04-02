.class public final Lms/bd/o/Pgl/pbla;
.super Lms/bd/o/Pgl/pblo;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblo;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/client/Header;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "e126cc"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0

    :array_0
    .array-data 1
        0x6ct
        0x7et
        0x55t
        0x56t
        0x11t
        0x78t
        0x69t
        0x17t
        0x6at
        0x62t
    .end array-data
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    new-instance v4, Lms/bd/o/Pgl/pblm$pgla;

    invoke-direct {v4}, Lms/bd/o/Pgl/pblm$pgla;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x0

    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/bytedance/retrofit2/client/Header;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v20, "f57be4"

    :try_start_1
    new-array v14, v11, [B

    const/16 v21, 0x54

    aput-byte v21, v14, v13

    const/16 v21, 0x38

    aput-byte v21, v14, v10

    const/16 v21, 0x4b

    aput-byte v21, v14, v9

    const/16 v21, 0x1d

    aput-byte v21, v14, v12

    const/16 v21, 0x53

    aput-byte v21, v14, v7

    const/16 v21, 0x26

    aput-byte v21, v14, v8

    move-object/from16 v21, v14

    invoke-static/range {v16 .. v21}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "288224"

    const/16 v11, 0xa

    :try_start_2
    new-array v8, v11, [B

    const/16 v19, 0x30

    aput-byte v19, v8, v13

    const/16 v19, 0x3f

    aput-byte v19, v8, v10

    const/16 v19, 0x58

    aput-byte v19, v8, v9

    const/16 v19, 0x55

    aput-byte v19, v8, v12

    aput-byte v7, v8, v7

    const/16 v19, 0x2c

    const/16 v18, 0x5

    aput-byte v19, v8, v18

    const/16 v19, 0x3f

    const/16 v17, 0x6

    aput-byte v19, v8, v17

    const/16 v11, 0x10

    const/16 v20, 0x7

    aput-byte v11, v8, v20

    const/16 v21, 0x6d

    const/16 v28, 0x8

    aput-byte v21, v8, v28

    const/16 v21, 0x3f

    const/16 v29, 0x9

    aput-byte v21, v8, v29

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v14, v5}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "31acab"

    const/4 v6, 0x6

    :try_start_3
    new-array v8, v6, [B

    aput-byte v12, v8, v13

    const/16 v6, 0x30

    aput-byte v6, v8, v10

    const/16 v6, 0x11

    aput-byte v6, v8, v9

    const/16 v6, 0x12

    aput-byte v6, v8, v12

    const/16 v14, 0x4e

    aput-byte v14, v8, v7

    const/16 v14, 0x61

    const/16 v18, 0x5

    aput-byte v14, v8, v18

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "c9c093"

    :try_start_4
    new-array v14, v12, [B

    const/16 v21, 0x38

    aput-byte v21, v14, v13

    const/16 v21, 0x74

    aput-byte v21, v14, v10

    const/16 v21, 0x5a

    aput-byte v21, v14, v9

    move-object/from16 v27, v14

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v5, v8, v14}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "6852df"

    const/16 v8, 0xa

    :try_start_5
    new-array v14, v8, [B

    aput-byte v6, v14, v13

    const/16 v8, 0x29

    aput-byte v8, v14, v10

    const/16 v8, 0x43

    aput-byte v8, v14, v9

    const/16 v8, 0x54

    aput-byte v8, v14, v12

    const/16 v8, 0x16

    aput-byte v8, v14, v7

    const/16 v21, 0x50

    const/16 v18, 0x5

    aput-byte v21, v14, v18

    const/16 v21, 0x32

    const/16 v17, 0x6

    aput-byte v21, v14, v17

    const/16 v21, 0x1c

    aput-byte v21, v14, v20

    const/16 v21, 0x6a

    aput-byte v21, v14, v28

    const/16 v21, 0x76

    aput-byte v21, v14, v29

    move-object/from16 v27, v14

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "516b41"

    const/16 v8, 0xf

    :try_start_6
    new-array v11, v8, [B

    const/16 v17, 0x6

    aput-byte v17, v11, v13

    const/16 v27, 0x2a

    aput-byte v27, v11, v10

    const/16 v27, 0x51

    aput-byte v27, v11, v9

    const/16 v16, 0x13

    aput-byte v16, v11, v12

    const/16 v30, 0x2f

    aput-byte v30, v11, v7

    const/16 v27, 0x27

    const/16 v18, 0x5

    aput-byte v27, v11, v18

    const/16 v27, 0x38

    const/16 v17, 0x6

    aput-byte v27, v11, v17

    aput-byte v16, v11, v20

    const/16 v27, 0x62

    aput-byte v27, v11, v28

    const/16 v27, 0x7f

    aput-byte v27, v11, v29

    const/16 v19, 0xa

    aput-byte v29, v11, v19

    const/16 v31, 0xb

    aput-byte v13, v11, v31

    const/16 v27, 0x76

    const/16 v6, 0xc

    aput-byte v27, v11, v6

    const/16 v27, 0x32

    const/16 v33, 0xd

    aput-byte v27, v11, v33

    const/16 v27, 0x20

    const/16 v34, 0xe

    aput-byte v27, v11, v34

    move-object/from16 v27, v11

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v5, v14, v11}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "4cf9e6"

    :try_start_7
    new-array v11, v6, [B

    const/4 v14, 0x6

    aput-byte v14, v11, v13

    const/16 v14, 0x6e

    aput-byte v14, v11, v10

    const/16 v14, 0x1b

    aput-byte v14, v11, v9

    const/16 v14, 0x59

    aput-byte v14, v11, v12

    const/16 v14, 0x5f

    aput-byte v14, v11, v7

    const/4 v14, 0x5

    aput-byte v30, v11, v14

    const/16 v14, 0x23

    const/16 v17, 0x6

    aput-byte v14, v11, v17

    aput-byte v8, v11, v20

    aput-byte v12, v11, v28

    const/16 v14, 0x70

    aput-byte v14, v11, v29

    const/16 v14, 0x35

    const/16 v19, 0xa

    aput-byte v14, v11, v19

    const/16 v14, 0x64

    aput-byte v14, v11, v31

    move-object/from16 v27, v11

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "808297"

    const/16 v14, 0x18

    :try_start_8
    new-array v14, v14, [B

    const/16 v27, 0x28

    aput-byte v27, v14, v13

    const/16 v27, 0x22

    aput-byte v27, v14, v10

    const/16 v27, 0x5b

    aput-byte v27, v14, v9

    const/16 v27, 0x4a

    aput-byte v27, v14, v12

    aput-byte v8, v14, v7

    const/16 v27, 0x23

    const/16 v18, 0x5

    aput-byte v27, v14, v18

    const/16 v27, 0x3a

    const/16 v17, 0x6

    aput-byte v27, v14, v17

    aput-byte v18, v14, v20

    const/16 v27, 0x60

    aput-byte v27, v14, v28

    const/16 v27, 0x6d

    aput-byte v27, v14, v29

    const/16 v27, 0x27

    const/16 v19, 0xa

    aput-byte v27, v14, v19

    const/16 v27, 0x7d

    aput-byte v27, v14, v31

    const/16 v27, 0x44

    aput-byte v27, v14, v6

    const/16 v27, 0x45

    aput-byte v27, v14, v33

    const/16 v27, 0x12

    aput-byte v27, v14, v34

    const/16 v27, 0x25

    aput-byte v27, v14, v8

    const/16 v21, 0x10

    aput-byte v30, v14, v21

    const/16 v27, 0x11

    const/16 v35, 0x5c

    aput-byte v35, v14, v27

    const/16 v27, 0x7a

    const/16 v32, 0x12

    aput-byte v27, v14, v32

    const/16 v27, 0x76

    const/16 v16, 0x13

    aput-byte v27, v14, v16

    const/16 v27, 0x14

    const/16 v35, 0x3b

    aput-byte v35, v14, v27

    const/16 v27, 0x15

    const/16 v35, 0x37

    aput-byte v35, v14, v27

    const/16 v27, 0x4a

    const/16 v35, 0x16

    aput-byte v27, v14, v35

    const/16 v27, 0x17

    const/16 v35, 0x4b

    aput-byte v35, v14, v27

    move-object/from16 v27, v14

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v5, v11, v14}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "5fd7bb"

    const/16 v11, 0x10

    :try_start_9
    new-array v14, v11, [B

    const/16 v11, 0x3c

    aput-byte v11, v14, v13

    const/16 v11, 0x29

    aput-byte v11, v14, v10

    aput-byte v12, v14, v9

    const/16 v11, 0x57

    aput-byte v11, v14, v12

    const/16 v11, 0x10

    aput-byte v11, v14, v7

    const/16 v11, 0x67

    const/16 v18, 0x5

    aput-byte v11, v14, v18

    const/16 v11, 0x33

    const/16 v17, 0x6

    aput-byte v11, v14, v17

    const/16 v11, 0x56

    aput-byte v11, v14, v20

    const/16 v11, 0x20

    aput-byte v11, v14, v28

    const/16 v11, 0x62

    aput-byte v11, v14, v29

    const/16 v11, 0x37

    const/16 v19, 0xa

    aput-byte v11, v14, v19

    const/16 v11, 0x70

    aput-byte v11, v14, v31

    const/16 v11, 0x5a

    aput-byte v11, v14, v6

    const/16 v11, 0x57

    aput-byte v11, v14, v33

    const/16 v11, 0x5c

    aput-byte v11, v14, v34

    const/16 v11, 0x72

    aput-byte v11, v14, v8

    move-object/from16 v27, v14

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v5, v11, v2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getSsRetrofit(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object v2

    const-class v5, Lms/bd/o/Pgl/a;

    invoke-virtual {v2, v5}, Lcom/bytedance/retrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lms/bd/o/Pgl/a;

    if-eqz p6, :cond_1

    new-instance v5, Lcom/bytedance/retrofit2/mime/TypedByteArray;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "bb0a3f"

    const/16 v11, 0x18

    :try_start_a
    new-array v11, v11, [B

    const/16 v14, 0x72

    aput-byte v14, v11, v13

    const/16 v14, 0x70

    aput-byte v14, v11, v10

    const/16 v14, 0x53

    aput-byte v14, v11, v9

    const/16 v14, 0x19

    aput-byte v14, v11, v12

    const/4 v14, 0x5

    aput-byte v14, v11, v7

    const/16 v18, 0x72

    aput-byte v18, v11, v14

    const/16 v14, 0x60

    const/16 v17, 0x6

    aput-byte v14, v11, v17

    const/16 v14, 0x57

    aput-byte v14, v11, v20

    const/16 v14, 0x68

    aput-byte v14, v11, v28

    const/16 v14, 0x3e

    aput-byte v14, v11, v29

    const/16 v14, 0x7d

    const/16 v19, 0xa

    aput-byte v14, v11, v19

    aput-byte v30, v11, v31

    const/16 v14, 0x4c

    aput-byte v14, v11, v6

    const/16 v6, 0x16

    aput-byte v6, v11, v33

    const/16 v6, 0x18

    aput-byte v6, v11, v34

    const/16 v6, 0x74

    aput-byte v6, v11, v8

    const/16 v6, 0x75

    const/16 v8, 0x10

    aput-byte v6, v11, v8

    const/16 v6, 0x11

    aput-byte v34, v11, v6

    const/16 v6, 0x72

    const/16 v8, 0x12

    aput-byte v6, v11, v8

    const/16 v6, 0x25

    const/16 v8, 0x13

    aput-byte v6, v11, v8

    const/16 v6, 0x14

    const/16 v8, 0x61

    aput-byte v8, v11, v6

    const/16 v6, 0x15

    const/16 v8, 0x65

    aput-byte v8, v11, v6

    const/16 v6, 0x42

    const/16 v8, 0x16

    aput-byte v6, v11, v8

    const/16 v6, 0x17

    const/16 v8, 0x18

    aput-byte v8, v11, v6

    move-object/from16 v27, v11

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/String;

    move-object/from16 v11, p2

    invoke-direct {v5, v6, v11, v8}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    invoke-interface {v2, v0, v15, v5}, Lms/bd/o/Pgl/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedByteArray;)Lcom/bytedance/retrofit2/Call;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0, v15}, Lms/bd/o/Pgl/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/retrofit2/Call;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_0
    :try_start_b
    invoke-virtual {v4, v0}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->code()I

    move-result v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->headers()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Lms/bd/o/Pgl/pbla;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Lms/bd/o/Pgl/pblm$pgla;->b(Ljava/lang/String;I)V

    if-eqz v3, :cond_2

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_1
    :try_start_e
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/retrofit2/mime/TypedInput;

    invoke-interface {v3}, Lcom/bytedance/retrofit2/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/16 v6, 0x400

    :try_start_f
    new-array v6, v6, [B

    :goto_2
    const/16 v8, 0x400

    invoke-virtual {v3, v6, v13, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v5, v6, v13, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    instance-of v6, v5, Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->cancel()V

    goto :goto_6

    :catchall_0
    const/4 v3, 0x0

    goto :goto_4

    :catchall_1
    const/4 v0, 0x0

    :catchall_2
    const/4 v14, -0x1

    :catchall_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_4

    :catchall_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v14, -0x1

    :catchall_5
    :goto_4
    const v6, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v19, 0x0

    const-string v11, "cec1a2"

    const/4 v15, 0x6

    :try_start_10
    new-array v15, v15, [B

    const/16 v17, 0x66

    aput-byte v17, v15, v13

    const/16 v17, 0x6f

    aput-byte v17, v15, v10

    const/16 v16, 0x13

    aput-byte v16, v15, v9

    const/16 v16, 0x7a

    aput-byte v16, v15, v12

    const/16 v12, 0x56

    aput-byte v12, v15, v7

    const/16 v7, 0x34

    const/4 v12, 0x5

    aput-byte v7, v15, v12

    move/from16 p1, v6

    move/from16 p2, v8

    move-wide/from16 p3, v19

    move-object/from16 p5, v11

    move-object/from16 p6, v15

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->headers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lms/bd/o/Pgl/pbla;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v4, v0, v14}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->cancel()V

    :cond_6
    const/4 v6, 0x0

    :goto_6
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    aput-object v6, v0, v10

    return-object v0

    :catchall_6
    move-exception v0

    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->cancel()V

    :cond_7
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
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

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pbla;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

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

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pbla;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

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

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pbla;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

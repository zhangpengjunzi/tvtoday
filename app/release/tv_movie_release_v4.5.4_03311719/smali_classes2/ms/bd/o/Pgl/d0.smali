.class final Lms/bd/o/Pgl/d0;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
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

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/16 v2, 0xd

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "75f514"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "5a412c"

    const/16 v10, 0x24

    const/16 v11, 0x2d

    const/16 v12, 0x27

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/16 v15, 0x23

    const/4 v3, 0x0

    :try_start_0
    new-array v10, v10, [B

    aput-byte v15, v10, v3

    const/16 v16, 0x66

    aput-byte v16, v10, v14

    const/16 v17, 0x53

    aput-byte v17, v10, v13

    const/16 v18, 0x6c

    const/16 v19, 0x3

    aput-byte v18, v10, v19

    const/16 v20, 0x4

    aput-byte v19, v10, v20

    const/16 v19, 0x5

    const/16 v20, 0x67

    aput-byte v20, v10, v19

    const/16 v19, 0x6

    const/16 v21, 0x22

    aput-byte v21, v10, v19

    const/16 v19, 0x7

    const/16 v22, 0x41

    aput-byte v22, v10, v19

    const/16 v19, 0x8

    const/16 v22, 0x69

    aput-byte v22, v10, v19

    const/16 v19, 0x9

    const/16 v22, 0x6d

    aput-byte v22, v10, v19

    const/16 v19, 0xa

    const/16 v22, 0x21

    aput-byte v22, v10, v19

    const/16 v19, 0xb

    aput-byte v20, v10, v19

    const/16 v19, 0xc

    aput-byte v16, v10, v19

    const/16 v19, 0x46

    aput-byte v19, v10, v2

    const/16 v2, 0xe

    aput-byte v2, v10, v2

    const/16 v2, 0xf

    const/16 v19, 0x71

    aput-byte v19, v10, v2

    const/16 v2, 0x10

    const/16 v19, 0x25

    aput-byte v19, v10, v2

    const/16 v2, 0x11

    aput-byte v17, v10, v2

    const/16 v2, 0x12

    aput-byte v18, v10, v2

    const/16 v2, 0x13

    const/16 v17, 0x63

    aput-byte v17, v10, v2

    const/16 v2, 0x14

    aput-byte v11, v10, v2

    const/16 v17, 0x15

    const/16 v18, 0x6f

    aput-byte v18, v10, v17

    const/16 v17, 0x16

    const/16 v18, 0x4e

    aput-byte v18, v10, v17

    const/16 v17, 0x17

    const/16 v18, 0x51

    aput-byte v18, v10, v17

    const/16 v17, 0x18

    aput-byte v2, v10, v17

    const/16 v2, 0x19

    const/16 v17, 0x47

    aput-byte v17, v10, v2

    const/16 v2, 0x1a

    const/16 v17, 0x33

    aput-byte v17, v10, v2

    const/16 v2, 0x1b

    const/16 v17, 0x52

    aput-byte v17, v10, v2

    const/16 v2, 0x1c

    const/16 v17, 0x73

    aput-byte v17, v10, v2

    const/16 v2, 0x1d

    const/16 v17, 0x68

    aput-byte v17, v10, v2

    const/16 v2, 0x1e

    aput-byte v12, v10, v2

    const/16 v17, 0x1f

    aput-byte v16, v10, v17

    const/16 v16, 0x20

    const/16 v17, 0x6b

    aput-byte v17, v10, v16

    const/16 v16, 0x4c

    aput-byte v16, v10, v22

    aput-byte v2, v10, v21

    const/16 v2, 0x60

    aput-byte v2, v10, v15

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "375023"

    :try_start_1
    new-array v10, v13, [B

    aput-byte v12, v10, v3

    aput-byte v15, v10, v14

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v20, "5bbe67"

    :try_start_2
    new-array v5, v13, [B

    aput-byte v11, v5, v3

    const/16 v6, 0x64

    aput-byte v6, v5, v14

    move-object/from16 v21, v5

    invoke-static/range {v16 .. v21}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x27t
        0x34t
        0x16t
        0x44t
        0x1dt
        0x30t
        0x3dt
        0x16t
        0x3et
        0x69t
        0x2ft
        0x23t
        0xct
    .end array-data
.end method

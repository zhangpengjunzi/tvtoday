.class final Lms/bd/o/Pgl/c0;
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v4, "3f1631"

    const/4 p1, 0x0

    const/16 p2, 0x22

    :try_start_0
    new-array v5, p2, [B

    const/16 p3, 0x21

    const/4 p4, 0x0

    aput-byte p3, v5, p4

    const/16 p5, 0x6b

    const/4 v6, 0x1

    aput-byte p5, v5, v6

    const/4 p5, 0x2

    const/16 v0, 0x4f

    aput-byte v0, v5, p5

    const/4 p5, 0x3

    const/16 v0, 0xc

    aput-byte v0, v5, p5

    const/4 p5, 0x4

    const/16 v1, 0xe

    aput-byte v1, v5, p5

    const/4 p5, 0x5

    const/16 v2, 0x3f

    aput-byte v2, v5, p5

    const/4 p5, 0x6

    const/16 v2, 0x24

    aput-byte v2, v5, p5

    const/4 p5, 0x7

    const/16 v2, 0x42

    aput-byte v2, v5, p5

    const/16 p5, 0x8

    const/16 v2, 0x64

    aput-byte v2, v5, p5

    const/16 p5, 0x67

    const/16 v2, 0x9

    aput-byte p5, v5, v2

    const/16 v3, 0xa

    const/16 v7, 0x2c

    aput-byte v7, v5, v3

    const/16 v3, 0xb

    aput-byte p5, v5, v3

    const/16 p5, 0x47

    aput-byte p5, v5, v0

    const/16 v3, 0xd

    aput-byte v0, v5, v3

    aput-byte v6, v5, v1

    const/16 v0, 0xf

    const/16 v1, 0x29

    aput-byte v1, v5, v0

    const/16 v0, 0x10

    const/16 v3, 0x32

    aput-byte v3, v5, v0

    const/16 v0, 0x11

    const/16 v3, 0x54

    aput-byte v3, v5, v0

    const/16 v0, 0x12

    const/16 v3, 0x65

    aput-byte v3, v5, v0

    const/16 v0, 0x13

    aput-byte v3, v5, v0

    const/16 v0, 0x14

    const/16 v3, 0x6c

    aput-byte v3, v5, v0

    const/16 v0, 0x15

    const/16 v7, 0x77

    aput-byte v7, v5, v0

    const/16 v0, 0x16

    aput-byte p5, v5, v0

    const/16 p5, 0x17

    const/16 v0, 0x4c

    aput-byte v0, v5, p5

    const/16 p5, 0x18

    const/16 v0, 0x1f

    aput-byte v0, v5, p5

    const/16 p5, 0x19

    aput-byte v1, v5, p5

    const/16 p5, 0x1a

    aput-byte p2, v5, p5

    const/16 p2, 0x1b

    aput-byte v2, v5, p2

    const/16 p2, 0x1c

    const/16 p5, 0x6d

    aput-byte p5, v5, p2

    const/16 p2, 0x1d

    const/16 p5, 0x6a

    aput-byte p5, v5, p2

    const/16 p2, 0x1e

    aput-byte v3, v5, p2

    const/16 p2, 0x49

    aput-byte p2, v5, v0

    const/16 p2, 0x20

    const/16 p5, 0x71

    aput-byte p5, v5, p2

    const/16 p2, 0x60

    aput-byte p2, v5, p3

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "86c661"

    :try_start_1
    new-array v5, v6, [B

    const/16 p3, 0x28

    aput-byte p3, v5, p4

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-array p5, p4, [Ljava/lang/Class;

    invoke-virtual {p2, p3, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_0

    new-array p3, p4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    :catchall_0
    :cond_0
    return-object p1
.end method

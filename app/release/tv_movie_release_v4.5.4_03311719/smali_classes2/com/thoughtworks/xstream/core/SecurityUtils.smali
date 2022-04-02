.class public Lcom/thoughtworks/xstream/core/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForCollectionDoSAttack(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;J)V
    .locals 2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    long-to-int p1, v0

    if-lez p1, :cond_2

    const-string p2, "XStreamCollectionUpdateSeconds"

    .line 41
    invoke-interface {p0, p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v1, "XStreamCollectionUpdateLimit"

    .line 43
    invoke-interface {p0, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt v0, p1, :cond_0

    .line 52
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Lcom/thoughtworks/xstream/security/InputManipulationException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Denial of Service attack assumed. Adding elements to collections or maps exceeds "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " seconds."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/security/InputManipulationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_1
    new-instance p0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string p1, "Missing limit for updating collections."

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

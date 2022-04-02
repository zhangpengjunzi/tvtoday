.class public Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;
.super Lcom/thoughtworks/xstream/io/xml/StaxWriter;
.source "JettisonStaxWriter.java"


# static fields
.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;


# instance fields
.field private final convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

.field private final stack:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->stack:Ljava/util/List;

    .line 90
    iput-object p4, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->stack:Ljava/util/List;

    .line 79
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->stack:Ljava/util/List;

    .line 51
    iput-object p6, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZ)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->stack:Ljava/util/List;

    .line 72
    iput-object p5, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public endNode()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->endNode()V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    .line 126
    check-cast v1, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    invoke-virtual {v1}, Lorg/codehaus/jettison/AbstractXMLStreamWriter;->getSerializedAsArrays()Ljava/util/ArrayList;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->endNode()V

    .line 129
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_4

    .line 96
    instance-of v2, v0, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    if-eqz v2, :cond_4

    .line 97
    sget-object v2, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.util.Collection"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Collection:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Map:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.util.Map"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Map:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->getQNameMap()Lcom/thoughtworks/xstream/io/xml/QNameMap;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;->getQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 101
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v2, v3, p2}, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;->createKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v2

    if-nez v2, :cond_3

    .line 104
    check-cast v0, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    invoke-virtual {v0}, Lorg/codehaus/jettison/AbstractXMLStreamWriter;->getSerializedAsArrays()Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 106
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, p2

    .line 112
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->stack:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->startNode(Ljava/lang/String;)V

    return-void
.end method

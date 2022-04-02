.class public Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "StaxDriver.java"


# instance fields
.field private inputFactory:Ljavax/xml/stream/XMLInputFactory;

.field private outputFactory:Ljavax/xml/stream/XMLOutputFactory;

.field private qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 63
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 64
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method protected createInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 3

    .line 241
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 242
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 1

    .line 250
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createParser(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    return-object p1
.end method

.method protected createParser(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    return-object p1
.end method

.method protected createParser(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    return-object p1
.end method

.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    .line 133
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createParser(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createStaxReader(Ljavax/xml/stream/XMLStreamReader;)Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;

    move-result-object p1

    .line 136
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxDriver$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver$2;-><init>(Lcom/thoughtworks/xstream/io/xml/StaxDriver;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 150
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 148
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createParser(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createStaxReader(Ljavax/xml/stream/XMLStreamReader;)Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 102
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1

    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createParser(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createStaxReader(Ljavax/xml/stream/XMLStreamReader;)Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    .line 109
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 110
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    .line 111
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createParser(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createStaxReader(Ljavax/xml/stream/XMLStreamReader;)Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;

    move-result-object p1

    .line 112
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxDriver$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver$1;-><init>(Lcom/thoughtworks/xstream/io/xml/StaxDriver;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 124
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createStaxReader(Ljavax/xml/stream/XMLStreamReader;)Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;
    .locals 3

    .line 173
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method

.method public createStaxWriter(Ljavax/xml/stream/XMLStreamWriter;)Lcom/thoughtworks/xstream/io/xml/StaxWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createStaxWriter(Ljavax/xml/stream/XMLStreamWriter;Z)Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    move-result-object p1

    return-object p1
.end method

.method public createStaxWriter(Ljavax/xml/stream/XMLStreamWriter;Z)Lcom/thoughtworks/xstream/io/xml/StaxWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 177
    new-instance v6, Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->isRepairingNamespace()Z

    move-result v4

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v5

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v6
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getOutputFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createStaxWriter(Ljavax/xml/stream/XMLStreamWriter;)Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 168
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 1

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getOutputFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createStaxWriter(Ljavax/xml/stream/XMLStreamWriter;)Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 159
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    return-object v0
.end method

.method public getOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    return-object v0
.end method

.method public getQnameMap()Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    return-object v0
.end method

.method public isRepairingNamespace()Z
    .locals 3

    .line 210
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getOutputFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v1

    const-string v2, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setQnameMap(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    return-void
.end method

.method public setRepairingNamespace(Z)V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;->getOutputFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v0, v1, p1}, Ljavax/xml/stream/XMLOutputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

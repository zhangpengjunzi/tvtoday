.class public Lio/github/xstream/mxparser/MXParser;
.super Ljava/lang/Object;
.source "MXParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field private static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field private static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field private static final LOOKUP_MAX:I = 0x400

.field private static final LOOKUP_MAX_CHAR:C = '\u0400'

.field private static final NCODING:[C

.field private static final NO:[C

.field private static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field private static final PROPERTY_XMLDECL_CONTENT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field private static final READ_CHUNK_SIZE:I = 0x2000

.field private static final TANDALONE:[C

.field private static final TRACE_SIZING:Z = false

.field private static final VERSION:[C

.field private static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field private static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field private static final YES:[C

.field private static lookupNameChar:[Z

.field private static lookupNameStartChar:[Z

.field private static noUnicode4:Z


# instance fields
.field private allStringsInterned:Z

.field private attributeCount:I

.field private attributeName:[Ljava/lang/String;

.field private attributeNameHash:[I

.field private attributePrefix:[Ljava/lang/String;

.field private attributeUri:[Ljava/lang/String;

.field private attributeValue:[Ljava/lang/String;

.field private buf:[C

.field private bufAbsoluteStart:I

.field private bufEnd:I

.field private bufLoadFactor:I

.field private bufSoftLimit:I

.field private bufStart:I

.field private bufferLoadFactor:F

.field private charRefOneCharBuf:[C

.field private columnNumber:I

.field private depth:I

.field private elName:[Ljava/lang/String;

.field private elNamespaceCount:[I

.field private elPrefix:[Ljava/lang/String;

.field private elRawName:[[C

.field private elRawNameEnd:[I

.field private elRawNameLine:[I

.field private elUri:[Ljava/lang/String;

.field private emptyElementTag:Z

.field private entityEnd:I

.field private entityName:[Ljava/lang/String;

.field private entityNameBuf:[[C

.field private entityNameHash:[I

.field private entityRefName:Ljava/lang/String;

.field private entityReplacement:[Ljava/lang/String;

.field private entityReplacementBuf:[[C

.field private eventType:I

.field private inputEncoding:Ljava/lang/String;

.field private lineNumber:I

.field private location:Ljava/lang/String;

.field private namespaceEnd:I

.field private namespacePrefix:[Ljava/lang/String;

.field private namespacePrefixHash:[I

.field private namespaceUri:[Ljava/lang/String;

.field private pastEndTag:Z

.field private pc:[C

.field private pcEnd:I

.field private pcStart:I

.field private pos:I

.field private posEnd:I

.field private posStart:I

.field private preventBufferCompaction:Z

.field private processNamespaces:Z

.field private reachedEnd:Z

.field private reader:Ljava/io/Reader;

.field private roundtripSupported:Z

.field private seenAmpersand:Z

.field private seenDocdecl:Z

.field private seenEndTag:Z

.field private seenMarkup:Z

.field private seenRoot:Z

.field private seenStartTag:Z

.field private text:Ljava/lang/String;

.field private tokenize:Z

.field private usePC:Z

.field private xmlDeclContent:Ljava/lang/String;

.field private xmlDeclStandalone:Ljava/lang/Boolean;

.field private xmlDeclVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "version"

    .line 2579
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/github/xstream/mxparser/MXParser;->VERSION:[C

    const-string v0, "ncoding"

    .line 2580
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/github/xstream/mxparser/MXParser;->NCODING:[C

    const-string v0, "tandalone"

    .line 2581
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/github/xstream/mxparser/MXParser;->TANDALONE:[C

    const-string v0, "yes"

    .line 2582
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/github/xstream/mxparser/MXParser;->YES:[C

    const-string v0, "no"

    .line 2583
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/github/xstream/mxparser/MXParser;->NO:[C

    const/16 v0, 0x400

    new-array v1, v0, [Z

    .line 3172
    sput-object v1, Lio/github/xstream/mxparser/MXParser;->lookupNameStartChar:[Z

    new-array v1, v0, [Z

    .line 3173
    sput-object v1, Lio/github/xstream/mxparser/MXParser;->lookupNameChar:[Z

    const/16 v1, 0x3a

    .line 3183
    invoke-static {v1}, Lio/github/xstream/mxparser/MXParser;->setNameStart(C)V

    const/16 v1, 0x41

    :goto_0
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    .line 3184
    invoke-static {v1}, Lio/github/xstream/mxparser/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5f

    .line 3185
    invoke-static {v1}, Lio/github/xstream/mxparser/MXParser;->setNameStart(C)V

    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 3186
    invoke-static {v1}, Lio/github/xstream/mxparser/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc0

    :goto_2
    const/16 v2, 0x2ff

    if-gt v1, v2, :cond_2

    .line 3187
    invoke-static {v1}, Lio/github/xstream/mxparser/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x370

    :goto_3
    const/16 v2, 0x37d

    if-gt v1, v2, :cond_3

    .line 3188
    invoke-static {v1}, Lio/github/xstream/mxparser/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_3

    :cond_3
    const/16 v1, 0x37f

    :goto_4
    if-ge v1, v0, :cond_4

    .line 3189
    invoke-static {v1}, Lio/github/xstream/mxparser/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_4

    :cond_4
    const/16 v0, 0x2d

    .line 3191
    invoke-static {v0}, Lio/github/xstream/mxparser/MXParser;->setName(C)V

    const/16 v0, 0x2e

    .line 3192
    invoke-static {v0}, Lio/github/xstream/mxparser/MXParser;->setName(C)V

    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    .line 3193
    invoke-static {v0}, Lio/github/xstream/mxparser/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_5

    :cond_5
    const/16 v0, 0xb7

    .line 3194
    invoke-static {v0}, Lio/github/xstream/mxparser/MXParser;->setName(C)V

    const/16 v0, 0x300

    :goto_6
    const/16 v1, 0x36f

    if-gt v0, v1, :cond_6

    .line 3195
    invoke-static {v0}, Lio/github/xstream/mxparser/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_6
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5f

    .line 334
    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->bufLoadFactor:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 336
    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->bufferLoadFactor:F

    .line 339
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const/16 v2, 0x2000

    const-wide/32 v3, 0xf4240

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const/16 v0, 0x2000

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    .line 340
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufferLoadFactor:F

    array-length v0, v0

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->bufSoftLimit:I

    .line 351
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x40

    :goto_1
    new-array v0, v2, [C

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    .line 2156
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    return-void
.end method

.method private ensureAttributesCapacity(I)V
    .locals 5

    .line 189
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt p1, v0, :cond_8

    const/4 v2, 0x7

    if-le p1, v2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 198
    :goto_2
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 199
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    :cond_3
    iput-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    .line 202
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 203
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_4
    iput-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 206
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 207
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_5
    iput-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    .line 210
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 211
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_6
    iput-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeValue:[Ljava/lang/String;

    .line 214
    iget-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_8

    .line 215
    new-array p1, p1, [I

    if-eqz v2, :cond_7

    .line 216
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeNameHash:[I

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_7
    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->attributeNameHash:[I

    :cond_8
    return-void
.end method

.method private ensureElementsCapacity()V
    .locals 6

    .line 106
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    add-int/lit8 v3, v2, 0x1

    if-lt v3, v0, :cond_a

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    add-int/lit8 v2, v2, 0x2

    if-lez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 116
    :goto_2
    new-array v4, v2, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 117
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_3
    iput-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    .line 119
    new-array v4, v2, [Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 120
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    :cond_4
    iput-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elPrefix:[Ljava/lang/String;

    .line 122
    new-array v4, v2, [Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 123
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :cond_5
    iput-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elUri:[Ljava/lang/String;

    .line 126
    new-array v4, v2, [I

    if-eqz v3, :cond_6

    .line 128
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->elNamespaceCount:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 131
    :cond_6
    aput v1, v4, v1

    .line 133
    :goto_3
    iput-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elNamespaceCount:[I

    .line 136
    new-array v4, v2, [I

    if-eqz v3, :cond_7

    .line 138
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :cond_7
    iput-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    .line 142
    new-array v4, v2, [I

    if-eqz v3, :cond_8

    .line 144
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    :cond_8
    iput-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    .line 148
    new-array v2, v2, [[C

    if-eqz v3, :cond_9

    .line 150
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :cond_9
    iput-object v2, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    :cond_a
    return-void
.end method

.method private ensureEntityCapacity()V
    .locals 8

    .line 297
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacementBuf:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_4

    const/4 v0, 0x7

    if-le v2, v0, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 303
    :goto_1
    new-array v0, v2, [Ljava/lang/String;

    .line 304
    new-array v3, v2, [[C

    .line 305
    new-array v4, v2, [Ljava/lang/String;

    .line 306
    new-array v5, v2, [[C

    .line 307
    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 308
    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    invoke-static {v6, v1, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->entityNameBuf:[[C

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    invoke-static {v6, v1, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    :cond_2
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityName:[Ljava/lang/String;

    .line 314
    iput-object v3, p0, Lio/github/xstream/mxparser/MXParser;->entityNameBuf:[[C

    .line 315
    iput-object v4, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 316
    iput-object v5, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacementBuf:[[C

    .line 318
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 319
    new-array v0, v2, [I

    .line 320
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->entityNameHash:[I

    if-eqz v2, :cond_3

    .line 321
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    :cond_3
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityNameHash:[I

    :cond_4
    return-void
.end method

.method private ensureNamespacesCapacity(I)V
    .locals 5

    .line 232
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt p1, v0, :cond_4

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 238
    :goto_1
    new-array v0, p1, [Ljava/lang/String;

    .line 239
    new-array v2, p1, [Ljava/lang/String;

    .line 240
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 241
    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_2
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 247
    iput-object v2, p0, Lio/github/xstream/mxparser/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 250
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 251
    new-array p1, p1, [I

    .line 252
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefixHash:[I

    if-eqz v0, :cond_3

    .line 253
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    :cond_3
    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefixHash:[I

    :cond_4
    return-void
.end method

.method private ensurePC(I)V
    .locals 3

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0x4000

    .line 3114
    :goto_0
    new-array p1, p1, [C

    .line 3116
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3117
    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    return-void
.end method

.method private static final fastHash([CII)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 271
    :cond_0
    aget-char v0, p0, p1

    shl-int/lit8 v0, v0, 0x7

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .line 273
    aget-char v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-le p2, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    .line 278
    div-int/lit8 v1, p2, 0x4

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x8

    if-le p2, v1, :cond_2

    shl-int/lit8 v0, v0, 0x7

    .line 279
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    aget-char p0, p0, p1

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private fillBuf()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2969
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_14

    .line 2973
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufSoftLimit:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_4

    .line 2977
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->preventBufferCompaction:Z

    if-nez v0, :cond_1

    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2983
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    sub-int/2addr v4, v1

    invoke-static {v0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2992
    :cond_2
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 2993
    new-array v1, v1, [C

    .line 2995
    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    sub-int/2addr v5, v4

    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2996
    iput-object v1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    .line 2997
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->bufLoadFactor:I

    if-lez v0, :cond_3

    .line 3000
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->bufferLoadFactor:F

    array-length v1, v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->bufSoftLimit:I

    .line 3003
    :cond_3
    :goto_1
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    .line 3004
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    .line 3005
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 3006
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 3007
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    .line 3008
    iput v3, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    .line 3015
    :cond_4
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    array-length v0, v0

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    sub-int/2addr v0, v1

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3016
    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_5

    .line 3018
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    return-void

    :cond_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 3026
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    if-nez v0, :cond_7

    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    if-eqz v0, :cond_6

    goto :goto_2

    .line 3027
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "input contained no data"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3029
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->seenRoot:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    if-nez v0, :cond_8

    .line 3030
    iput-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    return-void

    .line 3033
    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3034
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    if-lez v1, :cond_12

    .line 3035
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    const-string v5, "...>"

    const-string v6, " - expected the opening tag <"

    if-eqz v4, :cond_11

    aget-object v1, v4, v1

    if-eqz v1, :cond_11

    const-string v1, " - expected end tag"

    .line 3041
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3042
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    if-le v1, v2, :cond_9

    const-string v1, "s"

    .line 3043
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-string v1, " "

    .line 3045
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3046
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    :goto_3
    if-lez v1, :cond_c

    .line 3048
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    if-eqz v4, :cond_b

    aget-object v4, v4, v1

    if-nez v4, :cond_a

    goto :goto_4

    .line 3055
    :cond_a
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    aget-object v7, v7, v1

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    aget v8, v8, v1

    invoke-direct {v4, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    const-string v7, "</"

    .line 3056
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 3049
    :cond_b
    :goto_4
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    add-int/lit8 v9, v8, 0x1

    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v10, v8

    sub-int/2addr v10, v2

    invoke-direct {v4, v7, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 3051
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3052
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3053
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_c
    const-string v1, " to close"

    .line 3059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3060
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    :goto_6
    if-lez v1, :cond_10

    .line 3062
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    if-eq v1, v2, :cond_d

    const-string v2, " and"

    .line 3063
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3065
    :cond_d
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    const-string v4, " from line "

    const-string v5, ">"

    const-string v6, " start tag <"

    if-eqz v2, :cond_f

    aget-object v2, v2, v1

    if-nez v2, :cond_e

    goto :goto_7

    .line 3070
    :cond_e
    new-instance v2, Ljava/lang/String;

    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    aget-object v7, v7, v1

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    aget v8, v8, v1

    invoke-direct {v2, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    .line 3071
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3072
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 3066
    :cond_f
    :goto_7
    new-instance v2, Ljava/lang/String;

    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    aget-object v7, v7, v1

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    aget v8, v8, v1

    invoke-direct {v2, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    .line 3067
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3068
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_10
    const-string v1, ", parser stopped on"

    .line 3075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 3036
    :cond_11
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    add-int/lit8 v7, v4, 0x1

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v2

    invoke-direct {v1, v3, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .line 3037
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3078
    :cond_12
    :goto_9
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "no more data available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3079
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3083
    :cond_13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "error reading input, returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2969
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private static findFragment(I[CII)I
    .locals 4

    if-ge p2, p0, :cond_1

    if-le p0, p3, :cond_0

    move p0, p3

    :cond_0
    return p0

    :cond_1
    sub-int v0, p3, p2

    const/16 v1, 0x41

    if-le v0, v1, :cond_2

    add-int/lit8 p2, p3, -0xa

    :cond_2
    add-int/lit8 v0, p2, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-le v0, p0, :cond_5

    sub-int v2, p3, v0

    if-le v2, v1, :cond_4

    goto :goto_0

    .line 679
    :cond_4
    aget-char v2, p1, v0

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    sub-int v2, p2, v0

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    :cond_5
    :goto_0
    return v0
.end method

.method private isNameChar(C)Z
    .locals 1

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 3232
    sget-object v0, Lio/github/xstream/mxparser/MXParser;->lookupNameChar:[Z

    aget-boolean p1, v0, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    const/16 v0, 0x202a

    if-lt p1, v0, :cond_1

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_2

    const v0, 0xffef

    if-gt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isNameStartChar(C)Z
    .locals 1

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 3200
    sget-object v0, Lio/github/xstream/mxparser/MXParser;->lookupNameStartChar:[Z

    aget-boolean p1, v0, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    const/16 v0, 0x202a

    if-lt p1, v0, :cond_1

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_2

    const v0, 0xffef

    if-gt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isS(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private joinPC()V
    .locals 6

    .line 3124
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 3125
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3126
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 3128
    :cond_0
    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3129
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    .line 3130
    iput-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    return-void
.end method

.method private lookupEntityReplacement(I)[C
    .locals 6

    .line 2315
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 2316
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lio/github/xstream/mxparser/MXParser;->fastHash([CII)I

    move-result v0

    .line 2318
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_7

    .line 2320
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->entityNameBuf:[[C

    aget-object v3, v2, v1

    array-length v3, v3

    if-ne p1, v3, :cond_3

    .line 2321
    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 2324
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2326
    :cond_1
    iget-boolean p1, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2327
    :cond_2
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacementBuf:[[C

    aget-object p1, p1, v1

    return-object p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2331
    :cond_4
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    .line 2332
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_7

    .line 2335
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->entityName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_6

    .line 2336
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2337
    :cond_5
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacementBuf:[[C

    aget-object p1, v0, p1

    return-object p1

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private more()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3088
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    .line 3089
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->fillBuf()V

    .line 3091
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    const v0, 0xffff

    return v0

    .line 3093
    :cond_0
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 3096
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    goto :goto_0

    .line 3097
    :cond_1
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    :goto_0
    return v0
.end method

.method private newString([CII)Ljava/lang/String;
    .locals 1

    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private newStringIntern([CII)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private nextImpl()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1118
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1119
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    .line 1120
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 1121
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    .line 1122
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->pastEndTag:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1123
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->pastEndTag:Z

    .line 1124
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    .line 1125
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->elNamespaceCount:[I

    aget v2, v4, v2

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    .line 1127
    :cond_0
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->emptyElementTag:Z

    if-eqz v2, :cond_1

    .line 1128
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->emptyElementTag:Z

    .line 1129
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->pastEndTag:Z

    const/4 v0, 0x3

    .line 1130
    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1134
    :cond_1
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    if-lez v2, :cond_32

    .line 1136
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->seenStartTag:Z

    if-eqz v2, :cond_2

    .line 1137
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenStartTag:Z

    .line 1138
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1140
    :cond_2
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->seenEndTag:Z

    if-eqz v2, :cond_3

    .line 1141
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenEndTag:Z

    .line 1142
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1148
    :cond_3
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    const/16 v4, 0x26

    const/16 v5, 0x3c

    if-eqz v2, :cond_4

    .line 1149
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    const/16 v2, 0x3c

    goto :goto_0

    .line 1151
    :cond_4
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->seenAmpersand:Z

    if-eqz v2, :cond_5

    .line 1152
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenAmpersand:Z

    const/16 v2, 0x26

    goto :goto_0

    .line 1155
    :cond_5
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v2

    .line 1157
    :goto_0
    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ne v2, v5, :cond_14

    if-eqz v6, :cond_6

    .line 1171
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v2, :cond_6

    .line 1172
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    .line 1173
    iput v8, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v8

    .line 1176
    :cond_6
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v2

    const/16 v9, 0x2f

    if-ne v2, v9, :cond_8

    .line 1178
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-nez v0, :cond_7

    if-eqz v6, :cond_7

    .line 1179
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->seenEndTag:Z

    .line 1181
    iput v8, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v8

    .line 1183
    :cond_7
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    :cond_8
    const/16 v9, 0x21

    const-string v10, "unexpected character in markup "

    if-ne v2, v9, :cond_e

    .line 1185
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v2

    const/16 v8, 0x2d

    if-ne v2, v8, :cond_b

    .line 1188
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseComment()V

    .line 1189
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v2, :cond_9

    const/16 v0, 0x9

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1190
    :cond_9
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v2, :cond_a

    if-eqz v6, :cond_a

    goto :goto_2

    .line 1193
    :cond_a
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    goto/16 :goto_5

    :cond_b
    const/16 v8, 0x5b

    if-ne v2, v8, :cond_d

    .line 1200
    invoke-direct {p0, v6}, Lio/github/xstream/mxparser/MXParser;->parseCDSect(Z)V

    .line 1201
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v2, :cond_c

    const/4 v0, 0x5

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1202
    :cond_c
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 1203
    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v8, v2

    if-lez v8, :cond_1d

    .line 1209
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v2, :cond_1c

    const/4 v6, 0x1

    goto :goto_2

    .line 1252
    :cond_d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1253
    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    const/16 v9, 0x3f

    if-ne v2, v9, :cond_11

    .line 1256
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parsePI()Z

    .line 1257
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v2, :cond_f

    const/16 v0, 0x8

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1258
    :cond_f
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v2, :cond_10

    if-eqz v6, :cond_10

    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 1261
    :cond_10
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    goto/16 :goto_5

    .line 1264
    :cond_11
    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1265
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-nez v0, :cond_12

    if-eqz v6, :cond_12

    .line 1266
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->seenStartTag:Z

    .line 1268
    iput v8, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v8

    .line 1270
    :cond_12
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1272
    :cond_13
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1273
    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    if-ne v2, v4, :cond_1e

    .line 1280
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v2, :cond_15

    if-eqz v6, :cond_15

    .line 1281
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->seenAmpersand:Z

    .line 1282
    iput v8, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v8

    .line 1284
    :cond_15
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v8

    .line 1285
    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    add-int/2addr v9, v8

    .line 1286
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseEntityRef()[C

    move-result-object v8

    .line 1287
    iget-boolean v10, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v10, :cond_16

    const/4 v0, 0x6

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    :cond_16
    if-nez v8, :cond_18

    .line 1290
    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1291
    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {p0, v1, v2, v3}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    .line 1293
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not resolve entity named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    .line 1294
    invoke-direct {p0, v3}, Lio/github/xstream/mxparser/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1299
    :cond_18
    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v10

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    sub-int/2addr v9, v10

    .line 1300
    iput v9, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1301
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v2, :cond_1a

    if-eqz v6, :cond_19

    .line 1303
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    const/4 v7, 0x0

    goto :goto_3

    .line 1306
    :cond_19
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 1307
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    :cond_1a
    :goto_3
    const/4 v2, 0x0

    .line 1312
    :goto_4
    array-length v6, v8

    if-ge v2, v6, :cond_1c

    .line 1314
    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v9, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v9, v9

    if-lt v6, v9, :cond_1b

    invoke-direct {p0, v6}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1315
    :cond_1b
    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aget-char v10, v8, v2

    aput-char v10, v6, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1c
    const/4 v6, 0x1

    .line 1400
    :cond_1d
    :goto_5
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v2

    goto/16 :goto_1

    :cond_1e
    if-eqz v7, :cond_1f

    .line 1324
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    const/4 v7, 0x0

    .line 1340
    :cond_1f
    iget-boolean v6, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v6, :cond_21

    iget-boolean v6, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    if-nez v6, :cond_20

    goto :goto_6

    :cond_20
    const/4 v6, 0x0

    goto :goto_7

    :cond_21
    :goto_6
    const/4 v6, 0x1

    :goto_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_22
    const/16 v11, 0x5d

    if-ne v2, v11, :cond_24

    if-eqz v9, :cond_23

    const/4 v8, 0x1

    goto :goto_9

    :cond_23
    const/4 v9, 0x1

    goto :goto_9

    :cond_24
    if-eqz v8, :cond_26

    const/16 v11, 0x3e

    if-eq v2, v11, :cond_25

    goto :goto_8

    .line 1354
    :cond_25
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "characters ]]> are not allowed in content"

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_26
    :goto_8
    if-eqz v9, :cond_27

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_27
    :goto_9
    if-eqz v6, :cond_30

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v2, v11, :cond_2b

    .line 1366
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1368
    iget-boolean v10, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v10, :cond_29

    .line 1369
    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v2, v10, :cond_28

    .line 1370
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_a

    .line 1372
    :cond_28
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 1373
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 1377
    :cond_29
    :goto_a
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v10, v10

    if-lt v2, v10, :cond_2a

    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1378
    :cond_2a
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v12, v2, v10

    const/4 v10, 0x1

    goto :goto_c

    :cond_2b
    if-ne v2, v12, :cond_2d

    if-nez v10, :cond_2f

    .line 1381
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v2, :cond_2f

    .line 1382
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v10, v10

    if-lt v2, v10, :cond_2c

    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1383
    :cond_2c
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v12, v2, v10

    goto :goto_b

    .line 1387
    :cond_2d
    iget-boolean v10, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v10, :cond_2f

    .line 1388
    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v11, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_2e

    invoke-direct {p0, v10}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1389
    :cond_2e
    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v11, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v2, v10, v11

    :cond_2f
    :goto_b
    const/4 v10, 0x0

    .line 1395
    :cond_30
    :goto_c
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v2

    if-eq v2, v5, :cond_31

    if-ne v2, v4, :cond_22

    .line 1397
    :cond_31
    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1403
    :cond_32
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->seenRoot:Z

    if-eqz v0, :cond_33

    .line 1404
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseEpilog()I

    move-result v0

    return v0

    .line 1406
    :cond_33
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseProlog()I

    move-result v0

    return v0
.end method

.method private parseAttribute()C
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1912
    iget v1, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v2, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v2

    .line 1913
    iget v3, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v4, v3, -0x1

    add-int/2addr v4, v2

    .line 1915
    iget-object v2, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget-char v2, v2, v3

    const/16 v3, 0x3a

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    .line 1916
    iget-boolean v7, v0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1921
    :cond_1
    :goto_0
    iget-boolean v7, v0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    const/16 v7, 0x78

    if-ne v2, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1924
    :goto_1
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 1925
    :goto_2
    invoke-direct {v0, v7}, Lio/github/xstream/mxparser/MXParser;->isNameChar(C)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eqz v12, :cond_b

    .line 1926
    iget-boolean v12, v0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-eqz v12, :cond_a

    if-eqz v2, :cond_8

    const/4 v12, 0x5

    if-ge v10, v12, :cond_8

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v5, :cond_3

    const/16 v12, 0x6d

    if-eq v7, v12, :cond_8

    :goto_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    if-ne v10, v14, :cond_4

    const/16 v12, 0x6c

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_4
    const/4 v14, 0x3

    if-ne v10, v14, :cond_5

    const/16 v12, 0x6e

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_5
    if-ne v10, v13, :cond_6

    const/16 v12, 0x73

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_6
    if-ne v10, v12, :cond_8

    if-ne v7, v3, :cond_7

    goto :goto_4

    .line 1934
    :cond_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :goto_4
    if-ne v7, v3, :cond_a

    if-ne v11, v9, :cond_9

    .line 1944
    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v7, v5

    iget v11, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v11, v7

    goto :goto_5

    .line 1941
    :cond_9
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "only one colon is allowed in attribute name when namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1947
    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    goto :goto_2

    .line 1950
    :cond_b
    iget v3, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    invoke-direct {v0, v3}, Lio/github/xstream/mxparser/MXParser;->ensureAttributesCapacity(I)V

    .line 1956
    iget-boolean v3, v0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-eqz v3, :cond_11

    if-ge v10, v13, :cond_c

    const/4 v2, 0x0

    :cond_c
    if-eqz v2, :cond_f

    if-eq v11, v9, :cond_e

    .line 1961
    iget v3, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v3, v14

    iget v4, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v4

    sub-int/2addr v3, v10

    if-eqz v3, :cond_d

    .line 1967
    iget-object v10, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    sub-int v4, v11, v4

    add-int/2addr v4, v5

    .line 1968
    invoke-direct {v0, v10, v4, v3}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1963
    :cond_d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "namespace prefix is required after xmlns:  when namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    move-object v3, v6

    goto/16 :goto_7

    :cond_f
    if-eq v11, v9, :cond_10

    sub-int v3, v11, v4

    .line 1974
    iget-object v10, v0, Lio/github/xstream/mxparser/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v12, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    iget-object v13, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v15, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v4, v15

    .line 1975
    invoke-direct {v0, v13, v4, v3}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v12

    .line 1977
    iget v3, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v3, v14

    iget v4, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v4

    sub-int/2addr v3, v10

    .line 1978
    iget-object v10, v0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    iget v12, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    iget-object v13, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    sub-int v4, v11, v4

    add-int/2addr v4, v5

    .line 1979
    invoke-direct {v0, v13, v4, v3}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v12

    goto :goto_6

    .line 1984
    :cond_10
    iget-object v3, v0, Lio/github/xstream/mxparser/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v10, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    aput-object v6, v3, v10

    .line 1985
    iget-object v3, v0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    iget-object v12, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v13, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v15, v5

    sub-int/2addr v4, v13

    sub-int/2addr v15, v4

    .line 1986
    invoke-direct {v0, v12, v14, v15}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    move-object v3, v4

    .line 1989
    :goto_6
    iget-boolean v4, v0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_13

    .line 1990
    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->attributeNameHash:[I

    iget v10, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v4, v10

    goto :goto_7

    .line 1996
    :cond_11
    iget-object v3, v0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    iget-object v12, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v13, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v15, v5

    sub-int/2addr v4, v13

    sub-int/2addr v15, v4

    .line 1997
    invoke-direct {v0, v12, v14, v15}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 2000
    iget-boolean v3, v0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_12

    .line 2001
    iget-object v3, v0, Lio/github/xstream/mxparser/MXParser;->attributeNameHash:[I

    iget v10, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v3, v10

    :cond_12
    move-object v3, v4

    .line 2006
    :cond_13
    :goto_7
    invoke-direct {v0, v7}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    goto :goto_7

    :cond_14
    const/16 v4, 0x3d

    if-ne v7, v4, :cond_36

    .line 2009
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v4

    .line 2010
    :goto_8
    invoke-direct {v0, v4}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v4

    goto :goto_8

    :cond_15
    const/16 v7, 0x22

    if-eq v4, v7, :cond_17

    const/16 v7, 0x27

    if-ne v4, v7, :cond_16

    goto :goto_9

    .line 2015
    :cond_16
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute value must start with quotation or apostrophe not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2017
    invoke-direct {v0, v4}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2024
    :cond_17
    :goto_9
    iput-boolean v8, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 2025
    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v7, v0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 2026
    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v7, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    const/4 v7, 0x0

    .line 2029
    :goto_a
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v10

    const-string v12, "\'"

    if-ne v10, v4, :cond_24

    .line 2096
    iget-boolean v4, v0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-eqz v4, :cond_22

    if-eqz v2, :cond_22

    .line 2098
    iget-boolean v2, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v2, :cond_18

    .line 2099
    iget-object v2, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v4, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-direct {v0, v2, v4, v7}, Lio/github/xstream/mxparser/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 2101
    :cond_18
    iget-object v2, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v4, v0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    sub-int/2addr v7, v4

    invoke-direct {v0, v2, v4, v7}, Lio/github/xstream/mxparser/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v2

    .line 2103
    :goto_b
    iget v4, v0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    invoke-direct {v0, v4}, Lio/github/xstream/mxparser/MXParser;->ensureNamespacesCapacity(I)V

    if-eq v11, v9, :cond_1a

    .line 2106
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    .line 2111
    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    aput-object v3, v4, v7

    .line 2112
    iget-boolean v4, v0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1b

    .line 2113
    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespacePrefixHash:[I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    aput v9, v4, v7

    goto :goto_c

    .line 2107
    :cond_19
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "non-default namespace can not be declared to be empty string"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2117
    :cond_1a
    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    aput-object v6, v4, v7

    .line 2118
    iget-boolean v4, v0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1b

    .line 2119
    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespacePrefixHash:[I

    aput v9, v4, v7

    .line 2122
    :cond_1b
    :goto_c
    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    aput-object v2, v4, v7

    .line 2125
    iget-object v2, v0, Lio/github/xstream/mxparser/MXParser;->elNamespaceCount:[I

    iget v4, v0, Lio/github/xstream/mxparser/MXParser;->depth:I

    sub-int/2addr v4, v5

    aget v2, v2, v4

    sub-int/2addr v7, v5

    :goto_d
    if-lt v7, v2, :cond_21

    .line 2128
    iget-boolean v4, v0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1c

    if-nez v3, :cond_1d

    :cond_1c
    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v4, v4, v7

    if-eq v4, v3, :cond_1f

    :cond_1d
    iget-boolean v4, v0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1e

    if-eqz v3, :cond_1e

    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespacePrefixHash:[I

    aget v4, v4, v7

    if-ne v4, v9, :cond_1e

    iget-object v4, v0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v4, v4, v7

    .line 2131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_e

    :cond_1e
    add-int/lit8 v7, v7, -0x1

    goto :goto_d

    :cond_1f
    :goto_e
    if-nez v3, :cond_20

    const-string v1, "default"

    goto :goto_f

    .line 2134
    :cond_20
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2135
    :goto_f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "duplicated namespace declaration for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " prefix"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2140
    :cond_21
    iget v2, v0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    add-int/2addr v2, v5

    iput v2, v0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    goto :goto_11

    .line 2143
    :cond_22
    iget-boolean v2, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v2, :cond_23

    .line 2144
    iget-object v2, v0, Lio/github/xstream/mxparser/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v8, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    invoke-direct {v4, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v2, v3

    goto :goto_10

    .line 2147
    :cond_23
    iget-object v2, v0, Lio/github/xstream/mxparser/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    iget v8, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    sub-int/2addr v8, v7

    invoke-direct {v4, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v2, v3

    .line 2150
    :goto_10
    iget v2, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/2addr v2, v5

    iput v2, v0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    .line 2152
    :goto_11
    iget v2, v0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    return v10

    :cond_24
    const/16 v13, 0x3c

    if-eq v10, v13, :cond_35

    const/16 v13, 0x26

    const/16 v14, 0xd

    if-ne v10, v13, :cond_2b

    .line 2037
    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v7, v5

    iput v7, v0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2038
    iget-boolean v13, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v13, :cond_27

    .line 2039
    iget v13, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v7, v13, :cond_25

    const/4 v7, 0x1

    goto :goto_12

    :cond_25
    const/4 v7, 0x0

    :goto_12
    if-eqz v7, :cond_26

    .line 2042
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_13

    .line 2044
    :cond_26
    iput-boolean v5, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 2045
    iput v8, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v8, v0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 2050
    :cond_27
    :goto_13
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->parseEntityRef()[C

    move-result-object v7

    if-nez v7, :cond_29

    .line 2053
    iget-object v1, v0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 2054
    iget-object v1, v0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v2, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v3, v0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    .line 2056
    :cond_28
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not resolve entity named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    .line 2057
    invoke-direct {v0, v3}, Lio/github/xstream/mxparser/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    const/4 v12, 0x0

    .line 2061
    :goto_14
    array-length v13, v7

    if-ge v12, v13, :cond_33

    .line 2063
    iget v13, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v15, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v15, v15

    if-lt v13, v15, :cond_2a

    invoke-direct {v0, v13}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2064
    :cond_2a
    iget-object v13, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v15, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v9, v15, 0x1

    iput v9, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aget-char v9, v7, v12

    aput-char v9, v13, v15

    add-int/lit8 v12, v12, 0x1

    const/4 v9, -0x1

    goto :goto_14

    :cond_2b
    const/16 v9, 0x9

    const/16 v12, 0xa

    if-eq v10, v9, :cond_2e

    if-eq v10, v12, :cond_2e

    if-ne v10, v14, :cond_2c

    goto :goto_15

    .line 2087
    :cond_2c
    iget-boolean v7, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v7, :cond_33

    .line 2088
    iget v7, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v9, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_2d

    invoke-direct {v0, v7}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2089
    :cond_2d
    iget-object v7, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v9, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v10, v7, v9

    goto :goto_17

    .line 2071
    :cond_2e
    :goto_15
    iget-boolean v9, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v9, :cond_30

    .line 2072
    iget v9, v0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v9, v5

    iput v9, v0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2073
    iget v13, v0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v9, v13, :cond_2f

    .line 2074
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_16

    .line 2076
    :cond_2f
    iput-boolean v5, v0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 2077
    iput v8, v0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    iput v8, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    .line 2081
    :cond_30
    :goto_16
    iget v9, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v13, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v13, v13

    if-lt v9, v13, :cond_31

    invoke-direct {v0, v9}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    :cond_31
    if-ne v10, v12, :cond_32

    if-nez v7, :cond_33

    .line 2083
    :cond_32
    iget-object v7, v0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v9, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    const/16 v12, 0x20

    aput-char v12, v7, v9

    :cond_33
    :goto_17
    if-ne v10, v14, :cond_34

    const/4 v7, 0x1

    goto :goto_18

    :cond_34
    const/4 v7, 0x0

    :goto_18
    const/4 v9, -0x1

    goto/16 :goto_a

    .line 2033
    :cond_35
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "markup not allowed inside attribute value - illegal < "

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2007
    :cond_36
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "expected = after attribute name"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_1a

    :goto_19
    throw v1

    :goto_1a
    goto :goto_19
.end method

.method private parseCDSect(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2858
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const-string v1, "expected <[CDATA[ for comment start"

    const/4 v2, 0x0

    const/16 v3, 0x43

    if-ne v0, v3, :cond_18

    .line 2861
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_17

    .line 2864
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v3, 0x41

    if-ne v0, v3, :cond_16

    .line 2867
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v4, 0x54

    if-ne v0, v4, :cond_15

    .line 2870
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    if-ne v0, v3, :cond_14

    .line 2873
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_13

    .line 2878
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    .line 2879
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    .line 2880
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    .line 2881
    iget-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 2885
    :try_start_0
    iget-boolean p1, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez p1, :cond_3

    .line 2887
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le p1, v6, :cond_2

    .line 2888
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_2

    .line 2890
    :cond_2
    iput-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 2891
    iput v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v5, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    :cond_3
    :goto_2
    const/4 p1, 0x0

    const/4 v6, 0x0

    :cond_4
    :goto_3
    const/4 v7, 0x0

    .line 2901
    :cond_5
    :goto_4
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_7

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/16 v9, 0x3e

    if-ne v8, v9, :cond_9

    if-eqz p1, :cond_a

    if-eqz v6, :cond_a

    if-eqz v3, :cond_8

    .line 2960
    iget-boolean p1, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz p1, :cond_8

    .line 2961
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    .line 2964
    :cond_8
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 2965
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 p1, p1, -0x3

    iput p1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    return-void

    :cond_9
    if-eqz p1, :cond_b

    :cond_a
    const/4 p1, 0x0

    const/4 v6, 0x0

    :cond_b
    :goto_5
    if-eqz v3, :cond_5

    const/16 v9, 0xd

    const/16 v10, 0xa

    if-ne v8, v9, :cond_f

    .line 2925
    :try_start_1
    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v7, v0, v7

    iput v7, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 2926
    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v8, v4

    iput v8, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2927
    iget-boolean v9, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v9, :cond_d

    if-le v8, v7, :cond_c

    .line 2929
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_6

    .line 2931
    :cond_c
    iput-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 2932
    iput v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v5, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 2936
    :cond_d
    :goto_6
    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_e

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2937
    :cond_e
    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    const/4 v7, 0x1

    goto :goto_4

    :cond_f
    if-ne v8, v10, :cond_11

    if-nez v7, :cond_4

    .line 2939
    iget-boolean v7, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v7, :cond_4

    .line 2940
    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_10

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2941
    :cond_10
    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    goto/16 :goto_3

    .line 2945
    :cond_11
    iget-boolean v7, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v7, :cond_4

    .line 2946
    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v9, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_12

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2947
    :cond_12
    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v8, v7, v9
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 2955
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CDATA section started on line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " and column "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " was not closed"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2874
    :cond_13
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "expected <![CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2871
    :cond_14
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2868
    :cond_15
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2865
    :cond_16
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2862
    :cond_17
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2859
    :cond_18
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private parseComment()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2351
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_12

    .line 2354
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 2356
    :cond_0
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    .line 2357
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    add-int/lit8 v3, v3, -0x4

    .line 2359
    :try_start_0
    iget-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 2366
    :cond_3
    :goto_2
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v10

    const v11, 0xffff

    if-eq v10, v11, :cond_11

    const/16 v11, 0x3e

    if-eqz v7, :cond_5

    if-ne v10, v11, :cond_4

    goto :goto_3

    .line 2371
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "in comment after two dashes (--) next character must be > not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2373
    invoke-direct {p0, v10}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    if-ne v10, v2, :cond_7

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    if-ne v10, v11, :cond_9

    if-eqz v7, :cond_9

    .line 2429
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_8

    .line 2430
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2431
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v0, :cond_8

    .line 2432
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    :cond_8
    return-void

    :cond_9
    const/4 v8, 0x0

    :goto_4
    if-eqz v4, :cond_3

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v10, v11, :cond_d

    .line 2395
    :try_start_1
    iget-boolean v9, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v9, :cond_b

    .line 2396
    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v9, v5

    iput v9, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2397
    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v9, v10, :cond_a

    .line 2398
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_5

    .line 2400
    :cond_a
    iput-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 2401
    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 2405
    :cond_b
    :goto_5
    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_c

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v9}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2406
    :cond_c
    iget-object v9, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_d
    if-ne v10, v12, :cond_f

    if-nez v9, :cond_2

    .line 2408
    iget-boolean v9, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v9, :cond_2

    .line 2409
    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_e

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v9}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2410
    :cond_e
    iget-object v9, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    goto/16 :goto_1

    .line 2414
    :cond_f
    iget-boolean v9, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v9, :cond_2

    .line 2415
    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v11, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v11, v11

    if-lt v9, v11, :cond_10

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v9}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2416
    :cond_10
    iget-object v9, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v11, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v10, v9, v11

    goto/16 :goto_1

    .line 2368
    :cond_11
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "no more data available"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 2425
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "comment started on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " and column "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " was not closed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2352
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "expected <!-- for comment start"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private parseDocdecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2779
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const-string v2, "expected <!DOCTYPE"

    const/16 v3, 0x4f

    if-ne v0, v3, :cond_12

    .line 2782
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v3, 0x43

    if-ne v0, v3, :cond_11

    .line 2785
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v3, 0x54

    if-ne v0, v3, :cond_10

    .line 2788
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v3, 0x59

    if-ne v0, v3, :cond_f

    .line 2791
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_e

    .line 2794
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v3, 0x45

    if-ne v0, v3, :cond_d

    .line 2797
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 2803
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 2806
    :cond_2
    :goto_2
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_5

    if-nez v1, :cond_5

    .line 2844
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v0, v4

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    return-void

    :cond_5
    if-eqz v0, :cond_2

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v5, v6, :cond_9

    .line 2816
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v2, :cond_7

    .line 2817
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2818
    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v2, v5, :cond_6

    .line 2819
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_3

    .line 2821
    :cond_6
    iput-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 2822
    iput v3, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v3, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 2826
    :cond_7
    :goto_3
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v5, v5

    if-lt v2, v5, :cond_8

    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2827
    :cond_8
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v7, v2, v5

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    if-ne v5, v7, :cond_b

    if-nez v2, :cond_1

    .line 2829
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v2, :cond_1

    .line 2830
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v5, v5

    if-lt v2, v5, :cond_a

    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2831
    :cond_a
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v7, v2, v5

    goto :goto_1

    .line 2835
    :cond_b
    iget-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v2, :cond_1

    .line 2836
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v6, v6

    if-lt v2, v6, :cond_c

    invoke-direct {p0, v2}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2837
    :cond_c
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v5, v2, v6

    goto/16 :goto_1

    .line 2795
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2792
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2789
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2786
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2783
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2780
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private parseEntityRef()[C
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2165
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    .line 2166
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 2167
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v1

    const/16 v2, 0x61

    const/16 v3, 0x3b

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x23

    if-ne v1, v6, :cond_10

    .line 2171
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v1

    .line 2172
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v7, 0x78

    if-ne v1, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x39

    const/16 v9, 0x30

    if-eqz v7, :cond_5

    .line 2177
    :goto_1
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v1

    if-lt v1, v9, :cond_1

    if-gt v1, v8, :cond_1

    .line 2180
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-lt v1, v2, :cond_2

    const/16 v10, 0x66

    if-gt v1, v10, :cond_2

    .line 2183
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v10, 0x41

    if-lt v1, v10, :cond_3

    const/16 v10, 0x46

    if-gt v1, v10, :cond_3

    .line 2186
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    goto :goto_3

    .line 2190
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "character reference (with hex value) may not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2192
    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    :goto_2
    if-lt v1, v9, :cond_6

    if-gt v1, v8, :cond_6

    .line 2200
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2208
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v1

    goto :goto_2

    :cond_6
    if-ne v1, v3, :cond_f

    .line 2211
    :goto_3
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2212
    sget-boolean v1, Lio/github/xstream/mxparser/MXParser;->noUnicode4:Z

    const-string v2, " value "

    const-string v3, "hex"

    const-string v8, "decimal"

    const/16 v9, 0x10

    const/16 v10, 0xa

    if-nez v1, :cond_9

    .line 2214
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_7

    const/16 v11, 0x10

    goto :goto_4

    :cond_7
    const/16 v11, 0xa

    :goto_4
    invoke-static {v1, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    iput-object v1, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 2222
    :catch_0
    sput-boolean v5, Lio/github/xstream/mxparser/MXParser;->noUnicode4:Z

    goto :goto_6

    :catch_1
    nop

    .line 2216
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "character reference (with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move-object v3, v8

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2219
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ") is invalid"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2225
    :cond_9
    :goto_6
    sget-boolean v1, Lio/github/xstream/mxparser/MXParser;->noUnicode4:Z

    if-eqz v1, :cond_d

    .line 2226
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    const/16 v9, 0xa

    :goto_7
    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const v9, 0xffff

    if-le v1, v9, :cond_c

    .line 2228
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unicode character reference (with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    move-object v3, v8

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2231
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ") is not supported in this runtime"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    new-array v0, v5, [C

    .line 2234
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    int-to-char v1, v1

    aput-char v1, v0, v4

    .line 2237
    :cond_d
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_e

    .line 2238
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    array-length v1, v0

    invoke-direct {p0, v0, v4, v1}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2240
    :cond_e
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    return-object v0

    .line 2204
    :cond_f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "character reference (with decimal value) may not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2206
    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2244
    :cond_10
    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->isNameStartChar(C)Z

    move-result v6

    const-string v7, "\'"

    if-eqz v6, :cond_1f

    .line 2250
    :goto_9
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 2260
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2262
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    sub-int/2addr v1, v3

    const/16 v6, 0x74

    const/4 v8, 0x2

    if-ne v1, v8, :cond_12

    .line 2263
    iget-object v9, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v10, v9, v3

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_12

    add-int/2addr v3, v5

    aget-char v3, v9, v3

    if-ne v3, v6, :cond_12

    .line 2264
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_11

    const-string v0, "<"

    .line 2265
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2267
    :cond_11
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3c

    aput-char v1, v0, v4

    return-object v0

    :cond_12
    const/16 v3, 0x70

    const/4 v9, 0x3

    if-ne v1, v9, :cond_14

    .line 2273
    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v11, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    aget-char v12, v10, v11

    if-ne v12, v2, :cond_14

    add-int/lit8 v12, v11, 0x1

    aget-char v12, v10, v12

    const/16 v13, 0x6d

    if-ne v12, v13, :cond_14

    add-int/2addr v11, v8

    aget-char v10, v10, v11

    if-ne v10, v3, :cond_14

    .line 2275
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_13

    const-string v0, "&"

    .line 2276
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2278
    :cond_13
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x26

    aput-char v1, v0, v4

    return-object v0

    :cond_14
    if-ne v1, v8, :cond_16

    .line 2280
    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    aget-char v11, v8, v10

    const/16 v12, 0x67

    if-ne v11, v12, :cond_16

    add-int/2addr v10, v5

    aget-char v5, v8, v10

    if-ne v5, v6, :cond_16

    .line 2281
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_15

    const-string v0, ">"

    .line 2282
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2284
    :cond_15
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3e

    aput-char v1, v0, v4

    return-object v0

    :cond_16
    const/16 v5, 0x6f

    const/4 v8, 0x4

    if-ne v1, v8, :cond_18

    .line 2286
    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v11, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    aget-char v12, v10, v11

    if-ne v12, v2, :cond_18

    add-int/lit8 v2, v11, 0x1

    aget-char v2, v10, v2

    if-ne v2, v3, :cond_18

    add-int/lit8 v2, v11, 0x2

    aget-char v2, v10, v2

    if-ne v2, v5, :cond_18

    add-int/2addr v11, v9

    aget-char v2, v10, v11

    const/16 v3, 0x73

    if-ne v2, v3, :cond_18

    .line 2289
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    .line 2290
    iput-object v7, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2292
    :cond_17
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x27

    aput-char v1, v0, v4

    return-object v0

    :cond_18
    if-ne v1, v8, :cond_1a

    .line 2294
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    aget-char v7, v2, v3

    const/16 v8, 0x71

    if-ne v7, v8, :cond_1a

    add-int/lit8 v7, v3, 0x1

    aget-char v7, v2, v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_1a

    add-int/lit8 v7, v3, 0x2

    aget-char v7, v2, v7

    if-ne v7, v5, :cond_1a

    add-int/2addr v3, v9

    aget-char v2, v2, v3

    if-ne v2, v6, :cond_1a

    .line 2297
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_19

    const-string v0, "\""

    .line 2298
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 2300
    :cond_19
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x22

    aput-char v1, v0, v4

    return-object v0

    .line 2303
    :cond_1a
    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->lookupEntityReplacement(I)[C

    move-result-object v1

    if-eqz v1, :cond_1b

    return-object v1

    .line 2308
    :cond_1b
    iget-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v1, :cond_1c

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    :cond_1c
    return-object v0

    .line 2254
    :cond_1d
    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->isNameChar(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto/16 :goto_9

    .line 2255
    :cond_1e
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "entity reference name can not contain character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2257
    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2245
    :cond_1f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "entity reference names can not start with character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2247
    invoke-direct {p0, v1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_b

    :goto_a
    throw v2

    :goto_b
    goto :goto_a
.end method

.method private parseEpilog()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1538
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    .line 1541
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    .line 1542
    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v2

    .line 1545
    :cond_0
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x7

    .line 1550
    :try_start_0
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    if-eqz v5, :cond_2

    .line 1551
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v6, v2

    aget-char v5, v5, v6

    goto :goto_1

    .line 1553
    :cond_2
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v5

    .line 1555
    :goto_1
    iput-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    .line 1556
    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v6, v2

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 1557
    iget-boolean v6, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v6, :cond_19

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_3
    const/16 v8, 0x3c

    const/16 v9, 0xa

    if-ne v5, v8, :cond_d

    if-eqz v6, :cond_4

    .line 1562
    :try_start_1
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v5, :cond_4

    .line 1563
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1564
    iput-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    .line 1565
    iput v4, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v4

    .line 1567
    :cond_4
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v5

    .line 1568
    iget-boolean v8, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    const/16 v8, 0x3f

    if-ne v5, v8, :cond_6

    .line 1574
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parsePI()Z

    .line 1575
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v5, :cond_17

    const/16 v0, 0x8

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    :cond_6
    const/16 v8, 0x21

    if-ne v5, v8, :cond_a

    .line 1578
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v5

    .line 1579
    iget-boolean v8, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    if-eqz v8, :cond_7

    :goto_2
    move v3, v6

    goto/16 :goto_7

    :cond_7
    const/16 v8, 0x44

    if-ne v5, v8, :cond_8

    .line 1583
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseDocdecl()V

    .line 1584
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v5, :cond_17

    iput v9, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v9

    :cond_8
    const/16 v8, 0x2d

    if-ne v5, v8, :cond_9

    .line 1586
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseComment()V

    .line 1587
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v5, :cond_17

    const/16 v0, 0x9

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1589
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unexpected markup <!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1590
    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    const/16 v0, 0x2f

    if-eq v5, v0, :cond_c

    .line 1595
    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1596
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "start tag not allowed in epilog but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1597
    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1599
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog expected ignorable content and not "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1600
    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1593
    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "end tag not allowed in epilog but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1594
    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1603
    :cond_d
    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_18

    if-eqz v0, :cond_16

    const/16 v6, 0xd

    if-ne v5, v6, :cond_11

    .line 1611
    :try_start_2
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v5, :cond_f

    .line 1612
    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1613
    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v5, v6, :cond_e

    .line 1614
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_3

    .line 1616
    :cond_e
    iput-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 1617
    iput v3, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v3, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 1621
    :cond_f
    :goto_3
    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_10

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1622
    :cond_10
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_5

    :catch_0
    const/4 v3, 0x1

    goto :goto_6

    :cond_11
    if-ne v5, v9, :cond_14

    if-nez v7, :cond_13

    .line 1624
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v5, :cond_13

    .line 1625
    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_12

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1626
    :cond_12
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    :cond_13
    :goto_4
    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_5

    .line 1630
    :cond_14
    iget-boolean v6, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v6, :cond_13

    .line 1631
    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_15

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {p0, v6}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1632
    :cond_15
    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v5, v6, v7
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_16
    const/4 v6, 0x1

    .line 1642
    :cond_17
    :goto_5
    :try_start_3
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v5

    .line 1643
    iget-boolean v8, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    if-eqz v8, :cond_3

    goto/16 :goto_2

    .line 1638
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog non whitespace content is not allowed but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1639
    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move v3, v6

    .line 1654
    :catch_2
    :goto_6
    iput-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    .line 1656
    :cond_19
    :goto_7
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_1a

    if-eqz v3, :cond_1a

    .line 1657
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1658
    iput v4, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v4

    .line 1660
    :cond_1a
    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v2

    .line 1539
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "already reached end of XML input"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method private parsePI()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2445
    iget-boolean v0, v1, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v0, v1, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 2446
    :cond_0
    iget v2, v1, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    .line 2447
    iget v0, v1, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    add-int/lit8 v3, v0, -0x2

    .line 2448
    iget v0, v1, Lio/github/xstream/mxparser/MXParser;->pos:I

    .line 2450
    iget-boolean v4, v1, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 2456
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    .line 2457
    invoke-direct {v1, v7}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    if-nez v8, :cond_1b

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    const v14, 0xffff

    if-eq v7, v14, :cond_1a

    const/16 v14, 0x3f

    const-string v15, "processing instruction PITarget name not found"

    if-ne v7, v14, :cond_3

    if-eqz v10, :cond_2

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 2471
    :cond_2
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v15, v1, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    const/16 v14, 0x3e

    if-ne v7, v14, :cond_7

    if-eqz v12, :cond_5

    .line 2564
    iget-boolean v0, v1, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_4

    .line 2565
    iget v0, v1, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v1, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    if-eqz v4, :cond_4

    .line 2567
    iget v0, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    sub-int/2addr v0, v6

    iput v0, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    :cond_4
    return v5

    :cond_5
    if-eqz v10, :cond_6

    goto/16 :goto_3

    .line 2479
    :cond_6
    :try_start_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v15, v1, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    if-ne v11, v8, :cond_10

    .line 2482
    invoke-direct {v1, v7}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2483
    iget v10, v1, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v10, v6

    sub-int v11, v10, v0

    const/4 v12, 0x3

    if-ne v11, v12, :cond_f

    .line 2487
    iget-object v11, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v11, v11, v0

    const/16 v14, 0x78

    if-eq v11, v14, :cond_8

    iget-object v11, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v11, v11, v0

    const/16 v15, 0x58

    if-ne v11, v15, :cond_f

    :cond_8
    iget-object v11, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    add-int/lit8 v15, v0, 0x1

    aget-char v11, v11, v15

    const/16 v8, 0x6d

    if-eq v11, v8, :cond_9

    iget-object v11, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v11, v11, v15

    const/16 v5, 0x4d

    if-ne v11, v5, :cond_f

    :cond_9
    iget-object v5, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    add-int/lit8 v11, v0, 0x2

    aget-char v5, v5, v11

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_a

    iget-object v5, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v5, v5, v11

    const/16 v9, 0x4c

    if-ne v5, v9, :cond_f

    :cond_a
    if-gt v0, v12, :cond_e

    .line 2497
    iget-object v4, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v4, v4, v0

    if-eq v4, v14, :cond_c

    iget-object v4, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v4, v4, v15

    if-eq v4, v8, :cond_c

    iget-object v4, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v4, v4, v11

    if-ne v4, v6, :cond_b

    goto :goto_2

    .line 2501
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "XMLDecl must have xml name in lowercase"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2506
    :cond_c
    :goto_2
    invoke-direct {v1, v7}, Lio/github/xstream/mxparser/MXParser;->parseXmlDecl(C)V

    .line 2507
    iget-boolean v4, v1, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v4, :cond_d

    iget v4, v1, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v1, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    :cond_d
    add-int/2addr v0, v12

    .line 2509
    iget v4, v1, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x2

    sub-int/2addr v4, v0

    .line 2510
    iget-object v5, v1, Lio/github/xstream/mxparser/MXParser;->buf:[C

    invoke-direct {v1, v5, v0, v4}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/github/xstream/mxparser/MXParser;->xmlDeclContent:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    .line 2493
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "processing instruction can not have PITarget with reserved xml name"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    move v11, v10

    :cond_10
    const/4 v12, 0x0

    :goto_3
    if-eqz v4, :cond_19

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ne v7, v5, :cond_14

    .line 2523
    iget-boolean v5, v1, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v5, :cond_12

    .line 2524
    iget v5, v1, Lio/github/xstream/mxparser/MXParser;->pos:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    iput v5, v1, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 2525
    iget v7, v1, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v5, v7, :cond_11

    .line 2526
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_4

    :cond_11
    const/4 v5, 0x1

    .line 2528
    iput-boolean v5, v1, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    const/4 v8, 0x0

    .line 2529
    iput v8, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v8, v1, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    goto :goto_5

    :cond_12
    :goto_4
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2533
    :goto_5
    iget v7, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v9, v1, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_13

    iget v7, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {v1, v7}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2534
    :cond_13
    iget-object v7, v1, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v9, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v6, v7, v9

    const/4 v13, 0x1

    goto :goto_7

    :cond_14
    const/4 v5, 0x1

    const/4 v8, 0x0

    if-ne v7, v6, :cond_17

    if-nez v13, :cond_16

    .line 2536
    iget-boolean v7, v1, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v7, :cond_16

    .line 2537
    iget v7, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v9, v1, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_15

    iget v7, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {v1, v7}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2538
    :cond_15
    iget-object v7, v1, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v9, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v6, v7, v9

    :cond_16
    :goto_6
    const/4 v13, 0x0

    goto :goto_7

    .line 2542
    :cond_17
    iget-boolean v6, v1, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v6, :cond_16

    .line 2543
    iget v6, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v9, v1, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v9, v9

    if-lt v6, v9, :cond_18

    iget v6, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    invoke-direct {v1, v6}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 2544
    :cond_18
    iget-object v6, v1, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v9, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v1, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v7, v6, v9

    goto :goto_6

    :cond_19
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2550
    :goto_7
    invoke-direct/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 2467
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "no more data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Lio/github/xstream/mxparser/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2458
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "processing instruction PITarget must be exactly after <? and not white space character"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2554
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "processing instruction started on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and column "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " was not closed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    throw v4

    :goto_9
    goto :goto_8
.end method

.method private parseProlog()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1418
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v2, v1

    aget-char v0, v0, v2

    goto :goto_0

    .line 1421
    :cond_0
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    .line 1424
    :goto_0
    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const v2, 0xfffe

    if-eq v0, v2, :cond_1

    const v2, 0xfeff

    if-ne v0, v2, :cond_2

    .line 1435
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    goto :goto_1

    .line 1429
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 1438
    iput-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    .line 1440
    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v4, v1

    iput v4, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    .line 1441
    iget-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0x3c

    const/16 v8, 0xa

    if-ne v0, v7, :cond_d

    if-eqz v5, :cond_4

    .line 1449
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_4

    .line 1450
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1451
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    const/4 v0, 0x7

    .line 1452
    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1454
    :cond_4
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v7, 0x3f

    if-ne v0, v7, :cond_6

    .line 1458
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parsePI()Z

    move-result v0

    .line 1459
    iget-boolean v7, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v7, :cond_17

    if-eqz v0, :cond_5

    .line 1461
    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v2

    :cond_5
    const/16 v0, 0x8

    .line 1463
    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    :cond_6
    const/16 v7, 0x21

    if-ne v0, v7, :cond_a

    .line 1466
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    const/16 v7, 0x44

    if-ne v0, v7, :cond_8

    .line 1468
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->seenDocdecl:Z

    if-nez v0, :cond_7

    .line 1472
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenDocdecl:Z

    .line 1473
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseDocdecl()V

    .line 1474
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    iput v8, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v8

    .line 1469
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "only one docdecl allowed in XML document"

    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_9

    .line 1476
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseComment()V

    .line 1477
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1479
    :cond_9
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unexpected markup <!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1480
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    const/16 v2, 0x2f

    const-string v4, "expected start tag name and not "

    if-eq v0, v2, :cond_c

    .line 1485
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1486
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenRoot:Z

    .line 1487
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->parseStartTag()I

    move-result v0

    return v0

    .line 1489
    :cond_b
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1490
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1483
    :cond_c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1484
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1492
    :cond_d
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v4, :cond_16

    const/16 v5, 0xd

    if-ne v0, v5, :cond_11

    .line 1500
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-nez v0, :cond_f

    .line 1501
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1502
    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    if-le v0, v5, :cond_e

    .line 1503
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->joinPC()V

    goto :goto_4

    .line 1505
    :cond_e
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 1506
    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    .line 1510
    :cond_f
    :goto_4
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_10

    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1511
    :cond_10
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_6

    :cond_11
    if-ne v0, v8, :cond_13

    if-nez v6, :cond_15

    .line 1513
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v0, :cond_15

    .line 1514
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_12

    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1515
    :cond_12
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    goto :goto_5

    .line 1519
    :cond_13
    iget-boolean v5, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v5, :cond_15

    .line 1520
    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_14

    invoke-direct {p0, v5}, Lio/github/xstream/mxparser/MXParser;->ensurePC(I)V

    .line 1521
    :cond_14
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    aput-char v0, v5, v6

    :cond_15
    :goto_5
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_16
    const/4 v5, 0x1

    .line 1531
    :cond_17
    :goto_6
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    goto/16 :goto_3

    .line 1527
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "only whitespace content allowed before start tag and not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1528
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method private parseXmlDecl(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2593
    iput-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->preventBufferCompaction:Z

    const/4 v1, 0x0

    .line 2594
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    .line 2600
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    .line 2601
    sget-object v2, Lio/github/xstream/mxparser/MXParser;->VERSION:[C

    invoke-direct {p0, p1, v2}, Lio/github/xstream/mxparser/MXParser;->requireInput(C[C)C

    move-result p1

    .line 2603
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x3d

    if-ne p1, v3, :cond_8

    .line 2608
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    .line 2609
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    const/16 v3, 0x27

    if-eq p1, v3, :cond_1

    const/16 v3, 0x22

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 2611
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2613
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2617
    :cond_1
    :goto_0
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    .line 2618
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v4

    :goto_1
    if-eq v4, p1, :cond_7

    const/16 v5, 0x61

    if-lt v4, v5, :cond_2

    const/16 v5, 0x7a

    if-le v4, v5, :cond_6

    :cond_2
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    const/16 v5, 0x5a

    if-le v4, v5, :cond_6

    :cond_3
    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-le v4, v5, :cond_6

    :cond_4
    const/16 v5, 0x5f

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_6

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 2624
    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2626
    invoke-direct {p0, v4}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2628
    :cond_6
    :goto_2
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v4

    goto :goto_1

    .line 2630
    :cond_7
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr p1, v0

    .line 2631
    invoke-direct {p0, v3, p1}, Lio/github/xstream/mxparser/MXParser;->parseXmlDeclWithVersion(II)V

    .line 2632
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->preventBufferCompaction:Z

    return-void

    .line 2605
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected equals sign (=) after version and not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2606
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private parseXmlDeclWithVersion(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_16

    .line 2642
    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v2, v1, p1

    const/16 v3, 0x31

    if-ne v2, v3, :cond_16

    add-int/lit8 v2, p1, 0x1

    aget-char v2, v1, v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_16

    add-int/lit8 v2, p1, 0x2

    aget-char v2, v1, v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_16

    .line 2651
    invoke-direct {p0, v1, p1, p2}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 2654
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    .line 2655
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    const/16 p2, 0x65

    const-string v1, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    const/16 v2, 0x22

    const/16 v5, 0x27

    const/16 v6, 0x3d

    if-ne p1, p2, :cond_c

    .line 2657
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    .line 2658
    sget-object p2, Lio/github/xstream/mxparser/MXParser;->NCODING:[C

    invoke-direct {p0, p1, p2}, Lio/github/xstream/mxparser/MXParser;->requireInput(C[C)C

    move-result p1

    .line 2659
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    if-ne p1, v6, :cond_b

    .line 2664
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    .line 2665
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    if-eq p1, v5, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 2667
    :cond_0
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2669
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    .line 2672
    :cond_1
    :goto_0
    iget p2, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    .line 2673
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    const/16 v8, 0x5a

    const/16 v9, 0x7a

    const/16 v10, 0x41

    const/16 v11, 0x61

    if-lt v7, v11, :cond_2

    if-le v7, v9, :cond_3

    :cond_2
    if-lt v7, v10, :cond_a

    if-gt v7, v8, :cond_a

    .line 2681
    :cond_3
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    :goto_1
    if-eq v7, p1, :cond_9

    if-lt v7, v11, :cond_4

    if-le v7, v9, :cond_8

    :cond_4
    if-lt v7, v10, :cond_5

    if-le v7, v8, :cond_8

    :cond_5
    if-lt v7, v4, :cond_6

    const/16 v12, 0x39

    if-le v7, v12, :cond_8

    :cond_6
    if-eq v7, v3, :cond_8

    const/16 v12, 0x5f

    if-eq v7, v12, :cond_8

    const/16 v12, 0x2d

    if-ne v7, v12, :cond_7

    goto :goto_2

    .line 2686
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2688
    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2690
    :cond_8
    :goto_2
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    goto :goto_1

    .line 2692
    :cond_9
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 p1, p1, -0x1

    .line 2696
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    sub-int/2addr p1, p2

    invoke-direct {p0, v3, p2, p1}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->inputEncoding:Ljava/lang/String;

    .line 2697
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    goto :goto_3

    .line 2677
    :cond_a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2679
    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2661
    :cond_b
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected equals sign (=) after encoding and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2662
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    .line 2700
    :cond_c
    :goto_3
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    const/16 p2, 0x73

    if-ne p1, p2, :cond_13

    .line 2703
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    .line 2704
    sget-object p2, Lio/github/xstream/mxparser/MXParser;->TANDALONE:[C

    invoke-direct {p0, p1, p2}, Lio/github/xstream/mxparser/MXParser;->requireInput(C[C)C

    move-result p1

    .line 2705
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    if-ne p1, v6, :cond_12

    .line 2711
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    .line 2712
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    if-eq p1, v5, :cond_e

    if-ne p1, v2, :cond_d

    goto :goto_4

    .line 2714
    :cond_d
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2716
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    .line 2720
    :cond_e
    :goto_4
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p2

    const/16 v1, 0x79

    if-ne p2, v1, :cond_f

    .line 2722
    sget-object v1, Lio/github/xstream/mxparser/MXParser;->YES:[C

    invoke-direct {p0, p2, v1}, Lio/github/xstream/mxparser/MXParser;->requireInput(C[C)C

    move-result p2

    .line 2724
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    goto :goto_5

    :cond_f
    const/16 v1, 0x6e

    if-ne p2, v1, :cond_11

    .line 2726
    sget-object v1, Lio/github/xstream/mxparser/MXParser;->NO:[C

    invoke-direct {p0, p2, v1}, Lio/github/xstream/mxparser/MXParser;->requireInput(C[C)C

    move-result p2

    .line 2728
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    :goto_5
    if-ne p2, p1, :cond_10

    .line 2739
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    goto :goto_6

    .line 2735
    :cond_10
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, " after standalone value not "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2737
    invoke-direct {p0, p2}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2730
    :cond_11
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected \'yes\' or \'no\' after standalone and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2732
    invoke-direct {p0, p2}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2707
    :cond_12
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected equals sign (=) after standalone and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2708
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    .line 2743
    :cond_13
    :goto_6
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result p1

    const/16 p2, 0x3f

    const-string v1, "expected ?> as last part of <?xml not "

    if-ne p1, p2, :cond_15

    .line 2749
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    const/16 p2, 0x3e

    if-ne p1, p2, :cond_14

    return-void

    .line 2751
    :cond_14
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2753
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    .line 2745
    :cond_15
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2747
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    .line 2647
    :cond_16
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "only 1.0 is supported as <?xml version not \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    invoke-direct {v3, v4, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 2649
    invoke-direct {p0, v3}, Lio/github/xstream/mxparser/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method private printable(C)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-string p1, "\\n"

    return-object p1

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    const-string p1, "\\r"

    return-object p1

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const-string p1, "\\t"

    return-object p1

    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    const-string p1, "\\\'"

    return-object p1

    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_5

    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 3273
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3271
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3279
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3281
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3283
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private requireInput(C[C)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3137
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3139
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 3144
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3140
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-char v0, p2, v0

    .line 3141
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " and not "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3142
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v1, p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return p1
.end method

.method private requireNextS()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3152
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    .line 3153
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3157
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->skipS(C)C

    move-result v0

    return v0

    .line 3154
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "white space is required and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3155
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->location:Ljava/lang/String;

    const/4 v1, 0x1

    .line 383
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    .line 384
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    const/4 v1, 0x0

    .line 385
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenRoot:Z

    .line 386
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->reachedEnd:Z

    .line 387
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    .line 388
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->emptyElementTag:Z

    .line 390
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    .line 392
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    .line 394
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    .line 396
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    .line 398
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->reader:Ljava/io/Reader;

    .line 399
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->inputEncoding:Ljava/lang/String;

    .line 401
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->preventBufferCompaction:Z

    .line 402
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    .line 403
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->bufStart:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->bufEnd:I

    .line 404
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    .line 406
    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    .line 408
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    .line 410
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenStartTag:Z

    .line 411
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenEndTag:Z

    .line 412
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->pastEndTag:Z

    .line 413
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenAmpersand:Z

    .line 414
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenMarkup:Z

    .line 415
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->seenDocdecl:Z

    .line 417
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 418
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    .line 419
    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclContent:Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->resetStringCache()V

    return-void
.end method

.method private resetStringCache()V
    .locals 0

    return-void
.end method

.method private static final setName(C)V
    .locals 2

    .line 3177
    sget-object v0, Lio/github/xstream/mxparser/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2

    .line 3180
    sget-object v0, Lio/github/xstream/mxparser/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lio/github/xstream/mxparser/MXParser;->setName(C)V

    return-void
.end method

.method private skipS(C)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3163
    :goto_0
    invoke-direct {p0, p1}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "&#"

    .line 564
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 566
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 567
    :goto_0
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->entityName:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 569
    aget-object v5, v4, v3

    if-eqz v5, :cond_0

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    iget-object p2, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object p2, p2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    :cond_1
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->ensureEntityCapacity()V

    .line 580
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityName:[Ljava/lang/String;

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v4, v1, v5}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 581
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityNameBuf:[[C

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aput-object p1, v0, v3

    .line 583
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    aput-object p2, p1, v0

    .line 584
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->entityReplacementBuf:[[C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    aput-object p2, p1, v0

    .line 585
    iget-boolean p1, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez p1, :cond_2

    .line 586
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->entityNameHash:[I

    iget p2, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityNameBuf:[[C

    aget-object v3, v0, p2

    aget-object v0, v0, p2

    array-length v0, v0

    .line 587
    invoke-static {v3, v1, v0}, Lio/github/xstream/mxparser/MXParser;->fastHash([CII)I

    move-result v0

    aput v0, p1, p2

    .line 589
    :cond_2
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/github/xstream/mxparser/MXParser;->entityEnd:I

    return-void
.end method

.method public getAttributeCount()I
    .locals 2

    .line 877
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 878
    :cond_0
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3

    .line 893
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 895
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 897
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 895
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3

    .line 883
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 885
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    .line 886
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 888
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 886
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3

    .line 902
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 904
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    .line 905
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 907
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 905
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 3

    .line 911
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 913
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    const-string p1, "CDATA"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3

    .line 928
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 930
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 932
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 930
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 938
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    if-eqz p2, :cond_8

    .line 944
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 949
    :cond_0
    :goto_0
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge v2, v0, :cond_6

    .line 950
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v0, v2

    if-eq p1, v3, :cond_1

    aget-object v0, v0, v2

    .line 951
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 954
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 960
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object p1, v1

    :cond_4
    if-nez p1, :cond_7

    .line 965
    :goto_1
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge v2, p1, :cond_6

    .line 966
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 968
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v1

    .line 963
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when namespaces processing is disabled attribute namespace must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 941
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attribute name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 938
    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "only START_TAG can have attributes"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 939
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getColumnNumber()I
    .locals 1

    .line 717
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->columnNumber:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .line 662
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 979
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_4

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-boolean p1, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    return p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    .line 480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    .line 482
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 488
    iget-boolean p1, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    return p1

    :cond_3
    return v1

    .line 475
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 712
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 838
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 840
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 842
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 844
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 845
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v0, v1, v2}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    .line 847
    :cond_2
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->entityRefName:Ljava/lang/String;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 3

    .line 811
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const-string v1, ""

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 813
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v1, v0, v1

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 815
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v1, v0, v1

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    .line 638
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 639
    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "xml"

    .line 643
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_2
    const-string v0, "xmlns"

    .line 645
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    .line 649
    :cond_3
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_5

    .line 650
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 651
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaceCount(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 597
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 602
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    if-gt p1, v0, :cond_1

    .line 604
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elNamespaceCount:[I

    aget p1, v0, p1

    return p1

    .line 602
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "allowed namespace depth 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 613
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 616
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " exceeded number of available namespaces "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 625
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 626
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 628
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " exceeded number of available namespaces "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 7

    .line 693
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    const-string v2, "..."

    const/4 v3, 0x0

    if-gt v0, v1, :cond_2

    const/4 v4, 0x0

    .line 694
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    invoke-static {v4, v5, v0, v1}, Lio/github/xstream/mxparser/MXParser;->findFragment(I[CII)I

    move-result v0

    .line 696
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    if-ge v0, v1, :cond_0

    .line 697
    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v4, v0

    invoke-direct {v3, v1, v0, v4}, Ljava/lang/String;-><init>([CII)V

    .line 699
    :cond_0
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    if-gtz v1, :cond_1

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 704
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lio/github/xstream/mxparser/MXParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ""

    if-eqz v3, :cond_3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " seen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    invoke-direct {p0, v3}, Lio/github/xstream/mxparser/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->location:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v4, v1

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 855
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 859
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_4

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclVersion:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->xmlDeclContent:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    .line 514
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 515
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->location:Ljava/lang/String;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "property name should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 745
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 753
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    return-object v0

    .line 755
    :cond_1
    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 756
    iget-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 759
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    goto :goto_1

    .line 757
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    .line 762
    :cond_4
    :goto_1
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->text:Ljava/lang/String;

    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 4

    .line 767
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 768
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 769
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    aput v0, p1, v1

    .line 770
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 771
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    return-object p1

    .line 773
    :cond_0
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    aput v0, p1, v1

    .line 774
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 775
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    return-object p1

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 796
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unknown text eventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    .line 793
    aput v0, p1, v2

    aput v0, p1, v1

    const/4 p1, 0x0

    return-object p1

    .line 787
    :cond_5
    :goto_1
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    aput v0, p1, v1

    .line 788
    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 789
    iget-object p1, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    return-object p1
.end method

.method public isAttributeDefault(I)Z
    .locals 3

    .line 919
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 921
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 870
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 872
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->emptyElementTag:Z

    return v0

    .line 870
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "parser must be on START_TAG to check for empty element"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWhitespace()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 723
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    return v1

    .line 740
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no content available to check for white spaces"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->usePC:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 725
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pcStart:I

    :goto_1
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->pcEnd:I

    if-ge v0, v3, :cond_4

    .line 727
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-direct {p0, v3}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v1

    .line 731
    :cond_5
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    :goto_2
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    if-ge v0, v3, :cond_7

    .line 733
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-direct {p0, v3}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1103
    iput-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    .line 1104
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1089
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->next()I

    .line 1090
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->next()I

    .line 1093
    :cond_0
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1094
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected START_TAG or END_TAG not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lio/github/xstream/mxparser/MXParser;->TYPES:[Ljava/lang/String;

    .line 1095
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1097
    :cond_2
    :goto_0
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1069
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->next()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    .line 1071
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_0

    return-object v0

    .line 1074
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TEXT must be immediately followed by END_TAG and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lio/github/xstream/mxparser/MXParser;->TYPES:[Ljava/lang/String;

    .line 1076
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getEventType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, ""

    return-object v0

    .line 1082
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "parser must be on START_TAG or TEXT to read text"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1066
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "parser must be on START_TAG to read next text"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1110
    iput-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->tokenize:Z

    .line 1111
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method public parseEndTag()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1667
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    .line 1668
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->isNameStartChar(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1672
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v1, v0, -0x3

    iput v1, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1673
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v0

    .line 1675
    :cond_0
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    .line 1676
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->isNameChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1685
    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v4

    .line 1687
    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    .line 1688
    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v5, v5, v6

    .line 1689
    iget-object v7, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    aget v6, v7, v6

    const-string v7, "> from line "

    const-string v8, "end tag name </"

    const/4 v9, 0x0

    if-ne v6, v4, :cond_5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 1699
    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    add-int/lit8 v11, v3, 0x1

    aget-char v3, v10, v3

    aget-char v10, v5, v6

    if-ne v3, v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    move v3, v11

    goto :goto_0

    .line 1701
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v9, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1702
    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    sub-int/2addr v11, v6

    sub-int/2addr v11, v1

    invoke-direct {v3, v5, v11, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1703
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "> must be the same as start tag <"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1709
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_4

    .line 1719
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1720
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->pastEndTag:Z

    const/4 v0, 0x3

    .line 1721
    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v0

    .line 1711
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected > to finish end tag not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1712
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " from line "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1691
    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget v1, v1, v6

    invoke-direct {v0, v5, v9, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1692
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    invoke-direct {v1, v5, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1693
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "> must match start tag name <"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 1669
    :cond_6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected name start and not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1670
    invoke-direct {p0, v0}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public parseStartTag()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1728
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    .line 1730
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    add-int/lit8 v2, v0, -0x2

    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->posStart:I

    const/4 v2, 0x0

    .line 1732
    iput-boolean v2, p0, Lio/github/xstream/mxparser/MXParser;->emptyElementTag:Z

    .line 1733
    iput v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    add-int/lit8 v3, v0, -0x1

    .line 1735
    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v4

    .line 1737
    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    sub-int/2addr v0, v1

    aget-char v0, v4, v0

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    .line 1738
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "when namespaces processing enabled colon can not be at element name start"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    const/4 v6, -0x1

    .line 1742
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    .line 1743
    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->isNameChar(C)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 1753
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->ensureElementsCapacity()V

    .line 1758
    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v4, v1

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v8, v3, v8

    sub-int/2addr v4, v8

    .line 1759
    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v10, v8, v9

    if-eqz v10, :cond_3

    aget-object v8, v8, v9

    array-length v8, v8

    if-ge v8, v4, :cond_4

    .line 1760
    :cond_3
    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    mul-int/lit8 v10, v4, 0x2

    new-array v10, v10, [C

    aput-object v10, v8, v9

    .line 1762
    :cond_4
    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v9, v3, v9

    iget-object v10, p0, Lio/github/xstream/mxparser/MXParser;->elRawName:[[C

    iget v11, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aget-object v10, v10, v11

    invoke-static {v8, v9, v10, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1763
    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameEnd:[I

    iget v9, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aput v4, v8, v9

    .line 1764
    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->elRawNameLine:[I

    iget v10, p0, Lio/github/xstream/mxparser/MXParser;->lineNumber:I

    aput v10, v8, v9

    .line 1770
    iget-boolean v8, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    const/4 v10, 0x2

    if-eqz v8, :cond_6

    if-eq v6, v0, :cond_5

    .line 1772
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elPrefix:[Ljava/lang/String;

    iget-object v4, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int v8, v3, v8

    sub-int v3, v6, v3

    invoke-direct {p0, v4, v8, v3}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 1774
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    iget v4, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    add-int/lit8 v9, v6, 0x1

    iget v11, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v9, v11

    iget v12, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v12, v10

    sub-int/2addr v6, v11

    sub-int/2addr v12, v6

    invoke-direct {p0, v8, v9, v12}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    goto :goto_3

    .line 1778
    :cond_5
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elPrefix:[Ljava/lang/String;

    aput-object v5, v0, v9

    .line 1779
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v8

    invoke-direct {p0, v6, v3, v4}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    goto :goto_2

    .line 1783
    :cond_6
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elName:[Ljava/lang/String;

    iget-object v6, p0, Lio/github/xstream/mxparser/MXParser;->buf:[C

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v8

    invoke-direct {p0, v6, v3, v4}, Lio/github/xstream/mxparser/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    :goto_2
    move-object v3, v5

    .line 1790
    :goto_3
    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    goto :goto_3

    :cond_7
    const/16 v0, 0x3e

    if-ne v7, v0, :cond_8

    goto :goto_4

    :cond_8
    const/16 v4, 0x2f

    if-ne v7, v4, :cond_1c

    .line 1795
    iget-boolean v4, p0, Lio/github/xstream/mxparser/MXParser;->emptyElementTag:Z

    if-nez v4, :cond_1b

    .line 1797
    iput-boolean v1, p0, Lio/github/xstream/mxparser/MXParser;->emptyElementTag:Z

    .line 1798
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v4

    if-ne v4, v0, :cond_1a

    .line 1813
    :goto_4
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    const-string v4, " and "

    const-string v6, "duplicated attributes "

    if-eqz v0, :cond_14

    .line 1814
    invoke-virtual {p0, v3}, Lio/github/xstream/mxparser/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    if-nez v0, :cond_a

    if-nez v3, :cond_9

    move-object v0, v7

    goto :goto_5

    .line 1819
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not determine namespace bound to element prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1825
    :cond_a
    :goto_5
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->elUri:[Ljava/lang/String;

    iget v8, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    aput-object v0, v3, v8

    const/4 v0, 0x0

    .line 1833
    :goto_6
    iget v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge v0, v3, :cond_d

    .line 1835
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_c

    .line 1837
    invoke-virtual {p0, v3}, Lio/github/xstream/mxparser/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1844
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v8, v3, v0

    goto :goto_7

    .line 1839
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not determine namespace bound to attribute prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1846
    :cond_c
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v7, v3, v0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1854
    :cond_d
    :goto_8
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge v1, v0, :cond_19

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_13

    .line 1858
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    if-ne v7, v3, :cond_12

    iget-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    .line 1859
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    iget-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeNameHash:[I

    aget v7, v3, v0

    aget v3, v3, v1

    if-ne v7, v3, :cond_12

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    .line 1862
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1866
    :cond_f
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1867
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v7, ":"

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v8, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1868
    :cond_10
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 1869
    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lio/github/xstream/mxparser/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v8, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1870
    :cond_11
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 1881
    :cond_14
    :goto_a
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->attributeCount:I

    if-ge v1, v0, :cond_19

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_18

    .line 1885
    iget-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_15
    iget-boolean v3, p0, Lio/github/xstream/mxparser/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeNameHash:[I

    aget v7, v3, v0

    aget v3, v3, v1

    if-ne v7, v3, :cond_17

    iget-object v3, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    .line 1888
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_c

    .line 1892
    :cond_16
    iget-object v2, p0, Lio/github/xstream/mxparser/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v2, v0

    .line 1893
    aget-object v1, v2, v1

    .line 1894
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_17
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1901
    :cond_19
    iget-object v0, p0, Lio/github/xstream/mxparser/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lio/github/xstream/mxparser/MXParser;->depth:I

    iget v2, p0, Lio/github/xstream/mxparser/MXParser;->namespaceEnd:I

    aput v2, v0, v1

    .line 1902
    iget v0, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    iput v0, p0, Lio/github/xstream/mxparser/MXParser;->posEnd:I

    .line 1903
    iput v10, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    return v10

    .line 1799
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected > to end empty tag not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1800
    invoke-direct {p0, v4}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1795
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "repeated / in tag declaration"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1802
    :cond_1c
    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1803
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->parseAttribute()C

    .line 1804
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->more()C

    move-result v7

    goto/16 :goto_3

    .line 1806
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "start tag unexpected character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1807
    invoke-direct {p0, v7}, Lio/github/xstream/mxparser/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1e
    if-ne v7, v4, :cond_2

    .line 1744
    iget-boolean v7, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    if-eqz v7, :cond_2

    if-ne v6, v0, :cond_1f

    .line 1748
    iget v6, p0, Lio/github/xstream/mxparser/MXParser;->pos:I

    sub-int/2addr v6, v1

    iget v7, p0, Lio/github/xstream/mxparser/MXParser;->bufAbsoluteStart:I

    add-int/2addr v6, v7

    goto/16 :goto_1

    .line 1745
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "only one colon is allowed in name of element when namespaces are enabled"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    iget-boolean v0, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    const-string v1, ")"

    const-string v2, " (position:"

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "processing namespaces must be enabled on parser (or factory) to have possible namespaces declared on elements"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 991
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_2

    .line 992
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    .line 993
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 995
    :cond_4
    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lio/github/xstream/mxparser/MXParser;->TYPES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\'"

    const-string v5, ""

    if-eqz p3, :cond_5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v5

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " and"

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    move-object v7, v6

    goto :goto_3

    :cond_6
    move-object v7, v5

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_7

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " with namespace \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v5

    :goto_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " but got"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getEventType()I

    move-result v7

    if-eq p1, v7, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lio/github/xstream/mxparser/MXParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getEventType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    move-object p1, v5

    :goto_5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_9

    .line 1002
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " name \'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, v5

    :goto_6
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 1005
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1006
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    move-object v6, v5

    :goto_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_b

    .line 1008
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, " namespace \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1009
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1010
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_7

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget p1, p0, Lio/github/xstream/mxparser/MXParser;->eventType:I

    if-nez p1, :cond_0

    .line 444
    iput-boolean p2, p0, Lio/github/xstream/mxparser/MXParser;->processNamespaces:Z

    goto :goto_0

    .line 442
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 p2, 0x0

    const-string v0, "namespace processing feature can only be changed before parsing"

    invoke-direct {p1, v0, p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    .line 449
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "interning names in this implementation is not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    .line 454
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    .line 456
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "processing DOCDECL is not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    .line 461
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 466
    iput-boolean p2, p0, Lio/github/xstream/mxparser/MXParser;->roundtripSupported:Z

    :goto_0
    return-void

    .line 468
    :cond_6
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unsupported feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 440
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature name should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 537
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    invoke-virtual {p0, v0}, Lio/github/xstream/mxparser/MXParser;->setInput(Ljava/io/Reader;)V

    .line 551
    iput-object p2, p0, Lio/github/xstream/mxparser/MXParser;->inputEncoding:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 543
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not create reader for encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 531
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input stream can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Lio/github/xstream/mxparser/MXParser;->reset()V

    .line 524
    iput-object p1, p0, Lio/github/xstream/mxparser/MXParser;->reader:Ljava/io/Reader;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lio/github/xstream/mxparser/MXParser;->location:Ljava/lang/String;

    return-void

    .line 500
    :cond_0
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unsupported property: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public skipSubTree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1023
    invoke-virtual {p0, v0, v1, v1}, Lio/github/xstream/mxparser/MXParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-lez v1, :cond_2

    .line 1026
    invoke-virtual {p0}, Lio/github/xstream/mxparser/MXParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

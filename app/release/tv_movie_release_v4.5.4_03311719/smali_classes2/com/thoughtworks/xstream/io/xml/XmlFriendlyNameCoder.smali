.class public Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
.super Ljava/lang/Object;
.source "XmlFriendlyNameCoder.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/naming/NameCoder;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final XML_NAME_CHARS:Ljava/util/BitSet;

.field private static final XML_NAME_START_CHARS:Ljava/util/BitSet;


# instance fields
.field private final dollarReplacement:Ljava/lang/String;

.field private transient escapeCache:Ljava/util/Map;

.field private final escapeCharReplacement:Ljava/lang/String;

.field private final hexPrefix:Ljava/lang/String;

.field private transient unescapeCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 56
    new-instance v0, Ljava/util/BitSet;

    const v1, 0xfffff

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/16 v2, 0x3a

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x5f

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x41

    const/16 v4, 0x5b

    .line 59
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(II)V

    const/16 v3, 0x61

    const/16 v4, 0x7b

    .line 60
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(II)V

    const/16 v3, 0xc0

    const/16 v4, 0xd7

    .line 61
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(II)V

    const/16 v3, 0xd8

    const/16 v4, 0xf7

    .line 62
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(II)V

    .line 64
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    const/16 v4, 0xf8

    const/16 v5, 0x132

    .line 66
    invoke-virtual {v0, v4, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x134

    const/16 v6, 0x13f

    .line 67
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x141

    const/16 v6, 0x149

    .line 68
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x14a

    const/16 v6, 0x17f

    .line 69
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x180

    const/16 v6, 0x1c4

    .line 70
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x1cd

    const/16 v6, 0x1f1

    .line 71
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    .line 72
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x1f4

    const/16 v6, 0x1f6

    .line 73
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x1fa

    const/16 v6, 0x218

    .line 74
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x250

    const/16 v6, 0x2a9

    .line 75
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x2bb

    const/16 v6, 0x2c2

    .line 76
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x386

    .line 77
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x388

    const/16 v6, 0x38b

    .line 78
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x38c

    .line 79
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x38e

    const/16 v6, 0x3a2

    .line 80
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x3a3

    const/16 v6, 0x3cf

    .line 81
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x3d0

    const/16 v6, 0x3d7

    .line 82
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x3da

    .line 83
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x3dc

    .line 84
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x3de

    .line 85
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x3e0

    .line 86
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x3e2

    const/16 v6, 0x3f4

    .line 87
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x401

    const/16 v6, 0x40d

    .line 88
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x40e

    const/16 v6, 0x450

    .line 89
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x451

    const/16 v6, 0x45d

    .line 90
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x45e

    const/16 v6, 0x482

    .line 91
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x490

    const/16 v6, 0x4c5

    .line 92
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x4c7

    const/16 v6, 0x4c9

    .line 93
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x4cb

    const/16 v6, 0x4cd

    .line 94
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x4d0

    const/16 v6, 0x4ec

    .line 95
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x4ee

    const/16 v6, 0x4f6

    .line 96
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x4f8

    const/16 v6, 0x4fa

    .line 97
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x531

    const/16 v6, 0x557

    .line 98
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x559

    .line 99
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x561

    const/16 v6, 0x587

    .line 100
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x5d0

    const/16 v6, 0x5eb

    .line 101
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x5f0

    const/16 v6, 0x5f3

    .line 102
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x621

    const/16 v6, 0x63b

    .line 103
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x641

    const/16 v6, 0x64b

    .line 104
    invoke-virtual {v0, v5, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x671

    const/16 v7, 0x6b8

    .line 105
    invoke-virtual {v0, v5, v7}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x6ba

    const/16 v7, 0x6bf

    .line 106
    invoke-virtual {v0, v5, v7}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x6c0

    const/16 v7, 0x6cf

    .line 107
    invoke-virtual {v0, v5, v7}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x6d0

    const/16 v7, 0x6d4

    .line 108
    invoke-virtual {v0, v5, v7}, Ljava/util/BitSet;->set(II)V

    const/16 v5, 0x6d5

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v5, 0x6e5

    const/16 v7, 0x6e7

    .line 110
    invoke-virtual {v0, v5, v7}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x905

    const/16 v9, 0x93a

    .line 111
    invoke-virtual {v0, v8, v9}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x93d

    .line 112
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    const/16 v8, 0x958

    const/16 v9, 0x962

    .line 113
    invoke-virtual {v0, v8, v9}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x985

    const/16 v10, 0x98d

    .line 114
    invoke-virtual {v0, v8, v10}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x98f

    const/16 v10, 0x991

    .line 115
    invoke-virtual {v0, v8, v10}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x993

    const/16 v10, 0x9a9

    .line 116
    invoke-virtual {v0, v8, v10}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x9aa

    const/16 v10, 0x9b1

    .line 117
    invoke-virtual {v0, v8, v10}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x9b2

    .line 118
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    const/16 v8, 0x9b6

    const/16 v10, 0x9ba

    .line 119
    invoke-virtual {v0, v8, v10}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x9dc

    const/16 v10, 0x9de

    .line 120
    invoke-virtual {v0, v8, v10}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x9df

    const/16 v10, 0x9e2

    .line 121
    invoke-virtual {v0, v8, v10}, Ljava/util/BitSet;->set(II)V

    const/16 v8, 0x9f0

    const/16 v11, 0x9f2

    .line 122
    invoke-virtual {v0, v8, v11}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa05

    const/16 v12, 0xa0b

    .line 123
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa0f

    const/16 v12, 0xa11

    .line 124
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa13

    const/16 v12, 0xa29

    .line 125
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa2a

    const/16 v12, 0xa31

    .line 126
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa32

    const/16 v12, 0xa34

    .line 127
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa35

    const/16 v12, 0xa37

    .line 128
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa38

    const/16 v12, 0xa3a

    .line 129
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa59

    const/16 v12, 0xa5d

    .line 130
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v11, 0xa5e

    .line 131
    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    const/16 v11, 0xa72

    const/16 v12, 0xa75

    .line 132
    invoke-virtual {v0, v11, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xa85

    const/16 v13, 0xa8c

    .line 133
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xa8d

    .line 134
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xa8f

    const/16 v13, 0xa92

    .line 135
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xa93

    const/16 v13, 0xaa9

    .line 136
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xaaa

    const/16 v13, 0xab1

    .line 137
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xab2

    const/16 v13, 0xab4

    .line 138
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xab5

    const/16 v13, 0xaba

    .line 139
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xabd

    .line 140
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xae0

    .line 141
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xb05

    const/16 v13, 0xb0d

    .line 142
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb0f

    const/16 v13, 0xb11

    .line 143
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb13

    const/16 v13, 0xb29

    .line 144
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb2a

    const/16 v13, 0xb31

    .line 145
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb32

    const/16 v13, 0xb34

    .line 146
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb36

    const/16 v13, 0xb3a

    .line 147
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb3d

    .line 148
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xb5c

    const/16 v13, 0xb5e

    .line 149
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb5f

    const/16 v13, 0xb62

    .line 150
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb85

    const/16 v13, 0xb8b

    .line 151
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb8e

    const/16 v13, 0xb91

    .line 152
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb92

    const/16 v13, 0xb96

    .line 153
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb99

    const/16 v13, 0xb9b

    .line 154
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xb9c

    .line 155
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xb9e

    const/16 v13, 0xba0

    .line 156
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xba3

    const/16 v13, 0xba5

    .line 157
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xba8

    const/16 v13, 0xbab

    .line 158
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xbae

    const/16 v13, 0xbb6

    .line 159
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xbb7

    const/16 v13, 0xbba

    .line 160
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc05

    const/16 v13, 0xc0d

    .line 161
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc0e

    const/16 v13, 0xc11

    .line 162
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc12

    const/16 v13, 0xc29

    .line 163
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc2a

    const/16 v13, 0xc34

    .line 164
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc35

    const/16 v13, 0xc3a

    .line 165
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc60

    const/16 v13, 0xc62

    .line 166
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc85

    const/16 v13, 0xc8d

    .line 167
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc8e

    const/16 v13, 0xc91

    .line 168
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xc92

    const/16 v13, 0xca9

    .line 169
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xcaa

    const/16 v13, 0xcb4

    .line 170
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xcb5

    const/16 v13, 0xcba

    .line 171
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xcde

    .line 172
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xce0

    const/16 v13, 0xce2

    .line 173
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xd05

    const/16 v13, 0xd0d

    .line 174
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xd0e

    const/16 v13, 0xd11

    .line 175
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xd12

    const/16 v13, 0xd29

    .line 176
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xd2a

    const/16 v13, 0xd3a

    .line 177
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xd60

    const/16 v13, 0xd62

    .line 178
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xe01

    const/16 v13, 0xe2f

    .line 179
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xe30

    .line 180
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xe32

    const/16 v13, 0xe34

    .line 181
    invoke-virtual {v0, v12, v13}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xe40

    const/16 v14, 0xe46

    .line 182
    invoke-virtual {v0, v12, v14}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xe81

    const/16 v15, 0xe83

    .line 183
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xe84

    .line 184
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xe87

    const/16 v15, 0xe89

    .line 185
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xe8a

    .line 186
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xe8d

    .line 187
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xe94

    const/16 v15, 0xe98

    .line 188
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xe99

    const/16 v15, 0xea0

    .line 189
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xea1

    const/16 v15, 0xea4

    .line 190
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xea5

    .line 191
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xea7

    .line 192
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xeaa

    const/16 v15, 0xeac

    .line 193
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xead

    const/16 v15, 0xeaf

    .line 194
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xeb0

    .line 195
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xeb2

    const/16 v15, 0xeb4

    .line 196
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xebd

    .line 197
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0xec0

    const/16 v15, 0xec5

    .line 198
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xf40

    const/16 v15, 0xf48

    .line 199
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0xf49

    const/16 v15, 0xf6a

    .line 200
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x10a0

    const/16 v15, 0x10c6

    .line 201
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x10d0

    const/16 v15, 0x10f7

    .line 202
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1100

    .line 203
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1102

    const/16 v15, 0x1104

    .line 204
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1105

    const/16 v15, 0x1108

    .line 205
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1109

    .line 206
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x110b

    const/16 v15, 0x110d

    .line 207
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x110e

    const/16 v15, 0x1113

    .line 208
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x113c

    .line 209
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x113e

    .line 210
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1140

    .line 211
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x114c

    .line 212
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x114e

    .line 213
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1150

    .line 214
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1154

    const/16 v15, 0x1156

    .line 215
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1159

    .line 216
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x115f

    const/16 v15, 0x1162

    .line 217
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1163

    .line 218
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1165

    .line 219
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1167

    .line 220
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1169

    .line 221
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x116d

    const/16 v15, 0x116f

    .line 222
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1172

    const/16 v15, 0x1174

    .line 223
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1175

    .line 224
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x119e

    .line 225
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x11a8

    .line 226
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x11ab

    .line 227
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x11ae

    const/16 v15, 0x11b0

    .line 228
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x11b7

    const/16 v15, 0x11b9

    .line 229
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x11ba

    .line 230
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x11bc

    const/16 v15, 0x11c3

    .line 231
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x11eb

    .line 232
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x11f0

    .line 233
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x11f9

    .line 234
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1e00

    const/16 v15, 0x1e9c

    .line 235
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1ea0

    const/16 v15, 0x1efa

    .line 236
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1f00

    const/16 v15, 0x1f16

    .line 237
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1f18

    const/16 v15, 0x1f1e

    .line 238
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1f20

    const/16 v15, 0x1f46

    .line 239
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1f48

    const/16 v15, 0x1f4e

    .line 240
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1f50

    const/16 v15, 0x1f58

    .line 241
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1f59

    .line 242
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1f5b

    .line 243
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1f5d

    .line 244
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1f5f

    const/16 v15, 0x1f7e

    .line 245
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1f80

    const/16 v15, 0x1fb5

    .line 246
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1fb6

    const/16 v15, 0x1fbd

    .line 247
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1fbe

    .line 248
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x1fc2

    const/16 v15, 0x1fc5

    .line 249
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1fc6

    const/16 v15, 0x1fcd

    .line 250
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1fd0

    const/16 v15, 0x1fd4

    .line 251
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1fd6

    const/16 v15, 0x1fdc

    .line 252
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1fe0

    const/16 v15, 0x1fed

    .line 253
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1ff2

    const/16 v15, 0x1ff5

    .line 254
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x1ff6

    const/16 v15, 0x1ffd

    .line 255
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x2126

    .line 256
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x212a

    const/16 v15, 0x212c

    .line 257
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x212e

    .line 258
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x2180

    const/16 v15, 0x2183

    .line 259
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x3041

    const/16 v15, 0x3095

    .line 260
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x30a1

    const/16 v15, 0x30fb

    .line 261
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x3105

    const/16 v15, 0x312d

    .line 262
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x3007

    .line 263
    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    const/16 v12, 0x3021

    const/16 v15, 0x302a

    .line 264
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x4e00

    const v15, 0x9fa6

    .line 265
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const v12, 0xac00

    const v15, 0xd7a4

    .line 266
    invoke-virtual {v0, v12, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v12, 0x300

    .line 268
    invoke-virtual {v3, v4, v12}, Ljava/util/BitSet;->set(II)V

    const/16 v4, 0x370

    const/16 v15, 0x37e

    .line 269
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v15, 0x37f

    const/16 v4, 0x2000

    .line 270
    invoke-virtual {v3, v15, v4}, Ljava/util/BitSet;->set(II)V

    const/16 v4, 0x200c

    const/16 v15, 0x200e

    .line 271
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v4, 0x2070

    const/16 v15, 0x2190

    .line 272
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v4, 0x2c00

    const/16 v15, 0x2ff0

    .line 273
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v4, 0x3001

    const v15, 0xd800

    .line 274
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    const v4, 0xf900

    const v15, 0xfdd0

    .line 275
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    const v4, 0xfdf0

    const v15, 0xfffe

    .line 276
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    const/high16 v4, 0x10000

    const/high16 v15, 0xf0000

    .line 277
    invoke-virtual {v3, v4, v15}, Ljava/util/BitSet;->set(II)V

    .line 279
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4, v1}, Ljava/util/BitSet;-><init>(I)V

    const/16 v1, 0x2d

    .line 280
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x2e

    .line 281
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x30

    .line 282
    invoke-virtual {v4, v1, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v1, 0xb7

    .line 283
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 285
    invoke-virtual {v4}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 287
    invoke-virtual {v4, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 v2, 0x2d0

    .line 288
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x2d1

    .line 289
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x346

    .line 290
    invoke-virtual {v4, v12, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x360

    const/16 v15, 0x362

    .line 291
    invoke-virtual {v4, v2, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x387

    .line 292
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x483

    const/16 v15, 0x487

    .line 293
    invoke-virtual {v4, v2, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x591

    const/16 v15, 0x5a2

    .line 294
    invoke-virtual {v4, v2, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x5a3

    const/16 v15, 0x5ba

    .line 295
    invoke-virtual {v4, v2, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x5bb

    const/16 v15, 0x5be

    .line 296
    invoke-virtual {v4, v2, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x5bf

    .line 297
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x5c1

    const/16 v15, 0x5c3

    .line 298
    invoke-virtual {v4, v2, v15}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x5c4

    .line 299
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x640

    .line 300
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x653

    .line 301
    invoke-virtual {v4, v6, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x660

    const/16 v6, 0x66a

    .line 302
    invoke-virtual {v4, v2, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x670

    .line 303
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x6d6

    const/16 v6, 0x6dd

    .line 304
    invoke-virtual {v4, v2, v6}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x6e0

    .line 305
    invoke-virtual {v4, v6, v2}, Ljava/util/BitSet;->set(II)V

    .line 306
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x6e9

    .line 307
    invoke-virtual {v4, v7, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x6ea

    const/16 v5, 0x6ee

    .line 308
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x6f0

    const/16 v5, 0x6fa

    .line 309
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x901

    const/16 v5, 0x904

    .line 310
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x93c

    .line 311
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x93e

    const/16 v5, 0x94d

    .line 312
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    .line 313
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x951

    const/16 v5, 0x955

    .line 314
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x964

    .line 315
    invoke-virtual {v4, v9, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x966

    const/16 v5, 0x970

    .line 316
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x981

    const/16 v5, 0x984

    .line 317
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x9bc

    .line 318
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x9be

    .line 319
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x9bf

    .line 320
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x9c0

    const/16 v5, 0x9c5

    .line 321
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x9c7

    const/16 v5, 0x9c9

    .line 322
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x9cb

    const/16 v5, 0x9ce

    .line 323
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x9d7

    .line 324
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x9e4

    .line 325
    invoke-virtual {v4, v10, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x9e6

    .line 326
    invoke-virtual {v4, v2, v8}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xa02

    .line 327
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xa3c

    .line 328
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xa3e

    .line 329
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xa3f

    .line 330
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xa40

    const/16 v5, 0xa43

    .line 331
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xa47

    const/16 v5, 0xa49

    .line 332
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xa4b

    const/16 v5, 0xa4e

    .line 333
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xa66

    const/16 v5, 0xa70

    .line 334
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xa70

    .line 335
    invoke-virtual {v4, v2, v11}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xa81

    const/16 v5, 0xa84

    .line 336
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xabc

    .line 337
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xabe

    const/16 v5, 0xac6

    .line 338
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xac7

    const/16 v5, 0xaca

    .line 339
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xacb

    const/16 v5, 0xace

    .line 340
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xae6

    const/16 v5, 0xaf0

    .line 341
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xb01

    const/16 v5, 0xb04

    .line 342
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xb3c

    .line 343
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xb3e

    const/16 v5, 0xb44

    .line 344
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xb47

    const/16 v5, 0xb49

    .line 345
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xb4b

    const/16 v5, 0xb4e

    .line 346
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xb56

    const/16 v5, 0xb58

    .line 347
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xb66

    const/16 v5, 0xb70

    .line 348
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xb82

    const/16 v5, 0xb84

    .line 349
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xbbe

    const/16 v5, 0xbc3

    .line 350
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xbc6

    const/16 v5, 0xbc9

    .line 351
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xbca

    const/16 v5, 0xbce

    .line 352
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xbd7

    .line 353
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xbe7

    const/16 v5, 0xbf0

    .line 354
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xc01

    const/16 v5, 0xc04

    .line 355
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xc3e

    const/16 v5, 0xc45

    .line 356
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xc46

    const/16 v5, 0xc49

    .line 357
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xc4a

    const/16 v5, 0xc4e

    .line 358
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xc55

    const/16 v5, 0xc57

    .line 359
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xc66

    const/16 v5, 0xc70

    .line 360
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xc82

    const/16 v5, 0xc84

    .line 361
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xcbe

    const/16 v5, 0xcc5

    .line 362
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xcc6

    const/16 v5, 0xcc9

    .line 363
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xcca

    const/16 v5, 0xcce

    .line 364
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xcd5

    const/16 v5, 0xcd7

    .line 365
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xce6

    const/16 v5, 0xcf0

    .line 366
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xd02

    const/16 v5, 0xd04

    .line 367
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xd3e

    const/16 v5, 0xd44

    .line 368
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xd46

    const/16 v5, 0xd49

    .line 369
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xd4a

    const/16 v5, 0xd4e

    .line 370
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xd57

    .line 371
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xd66

    const/16 v5, 0xd70

    .line 372
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xe31

    .line 373
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xe3b

    .line 374
    invoke-virtual {v4, v13, v2}, Ljava/util/BitSet;->set(II)V

    .line 375
    invoke-virtual {v4, v14}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xe47

    const/16 v5, 0xe4f

    .line 376
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xe50

    const/16 v5, 0xe5a

    .line 377
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xeb1

    .line 378
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xeba

    const/16 v5, 0xeb4

    .line 379
    invoke-virtual {v4, v5, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xebb

    const/16 v5, 0xebd

    .line 380
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xec6

    .line 381
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xec8

    const/16 v5, 0xece

    .line 382
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xed0

    const/16 v5, 0xeda

    .line 383
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xf18

    const/16 v5, 0xf1a

    .line 384
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xf20

    const/16 v5, 0xf2a

    .line 385
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xf35

    .line 386
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xf37

    .line 387
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xf39

    .line 388
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xf3e

    .line 389
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xf3f

    .line 390
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xf71

    const/16 v5, 0xf85

    .line 391
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xf86

    const/16 v5, 0xf8c

    .line 392
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xf90

    const/16 v5, 0xf96

    .line 393
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xf97

    .line 394
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0xf99

    const/16 v5, 0xfae

    .line 395
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xfb1

    const/16 v5, 0xfb8

    .line 396
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0xfb9

    .line 397
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x20d0

    const/16 v5, 0x20dd

    .line 398
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x20e1

    .line 399
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x3005

    .line 400
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x3030

    const/16 v5, 0x302a

    .line 401
    invoke-virtual {v4, v5, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x3031

    const/16 v5, 0x3036

    .line 402
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x3099

    .line 403
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x309a

    .line 404
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x309d

    const/16 v5, 0x309f

    .line 405
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x30fc

    const/16 v5, 0x30ff

    .line 406
    invoke-virtual {v4, v2, v5}, Ljava/util/BitSet;->set(II)V

    .line 408
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 v2, 0x370

    .line 409
    invoke-virtual {v1, v12, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x203f

    const/16 v5, 0x2041

    .line 410
    invoke-virtual {v1, v2, v5}, Ljava/util/BitSet;->set(II)V

    .line 412
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_START_CHARS:Ljava/util/BitSet;

    .line 413
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 414
    invoke-virtual {v4}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_CHARS:Ljava/util/BitSet;

    .line 415
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "_-"

    const-string v1, "__"

    .line 430
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "_."

    .line 441
    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    .line 455
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    .line 456
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->readResolve()Ljava/lang/Object;

    return-void
.end method

.method private decodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 538
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    .line 540
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 541
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 542
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 549
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v0, :cond_1

    if-eq v6, v2, :cond_1

    if-ne v6, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v5, v4, :cond_2

    return-object p1

    .line 564
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x8

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v5, :cond_3

    .line 568
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    if-ge v5, v4, :cond_7

    .line 572
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_4

    .line 573
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 574
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v5, v1

    const/16 v1, 0x24

    .line 575
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    if-ne v1, v3, :cond_5

    .line 576
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 577
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x4

    .line 578
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    add-int/lit8 v5, v5, 0x3

    .line 580
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    if-ne v1, v2, :cond_6

    .line 581
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    .line 582
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 583
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v5, v1

    const/16 v1, 0x5f

    .line 584
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 586
    :cond_6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 590
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method

.method private encodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_e

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 497
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x7a

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v2, v0, :cond_3

    return-object p1

    .line 508
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v2, :cond_4

    .line 512
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    if-ge v2, v0, :cond_d

    .line 516
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x24

    if-ne v1, v4, :cond_5

    .line 518
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_6

    .line 520
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    if-nez v2, :cond_7

    .line 521
    invoke-static {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameStartChar(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    if-lez v2, :cond_c

    invoke-static {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameChar(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 522
    :cond_8
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x10

    if-ge v1, v4, :cond_9

    const-string v4, "000"

    .line 523
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    const/16 v4, 0x100

    if-ge v1, v4, :cond_a

    const-string v4, "00"

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    const/16 v4, 0x1000

    if-ge v1, v4, :cond_b

    const-string v4, "0"

    .line 525
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    :cond_b
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 528
    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 531
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-object v0
.end method

.method private static isXmlNameChar(I)Z
    .locals 1

    .line 622
    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_CHARS:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method private static isXmlNameStartChar(I)Z
    .locals 1

    .line 618
    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_START_CHARS:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->createCacheMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    .line 609
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->createCacheMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 598
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 599
    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->readResolve()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 603
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v2, "Cannot clone XmlFriendlyNameCoder"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createCacheMap()Ljava/util/Map;
    .locals 1

    .line 614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 464
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

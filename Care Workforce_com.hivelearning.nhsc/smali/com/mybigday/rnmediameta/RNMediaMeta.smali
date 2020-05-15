.class public Lcom/mybigday/rnmediameta/RNMediaMeta;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNMediaMeta.java"


# instance fields
.field private context:Landroid/content/Context;

.field private final metadatas:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "copyright"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "creation_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "disc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoder"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "encoded_by"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "genre"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "performer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "publisher"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "service_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "variant_bitrate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "icy_metadata"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "framerate"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "chapter_start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "chapter_end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "rotation"

    aput-object v2, v0, v1

    .line 38
    iput-object v0, p0, Lcom/mybigday/rnmediameta/RNMediaMeta;->metadatas:[Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/mybigday/rnmediameta/RNMediaMeta;->context:Landroid/content/Context;

    return-void
.end method

.method private RotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 152
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$000(Lcom/mybigday/rnmediameta/RNMediaMeta;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/mybigday/rnmediameta/RNMediaMeta;->getMetadata(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method private convertToBase64([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 68
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private getMetadata(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 6

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 88
    :cond_0
    new-instance v0, Lwseemann/media/FFmpegMediaMetadataRetriever;

    invoke-direct {v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;-><init>()V

    .line 89
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 91
    :try_start_0
    invoke-virtual {v0, p1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-string p1, "audio_codec"

    .line 94
    invoke-virtual {v0, p1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->extractMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "video_codec"

    .line 95
    invoke-virtual {v0, v2}, Lwseemann/media/FFmpegMediaMetadataRetriever;->extractMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    if-nez v2, :cond_1

    .line 98
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    return-void

    .line 104
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/mybigday/rnmediameta/RNMediaMeta;->metadatas:[Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 105
    invoke-virtual {v0, v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;->extractMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/mybigday/rnmediameta/RNMediaMeta;->putString(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "framerate"

    .line 108
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "rotation"

    if-eqz p1, :cond_3

    :try_start_2
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "rotate"

    .line 109
    invoke-virtual {v0, p1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->extractMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/mybigday/rnmediameta/RNMediaMeta;->putString(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "createTime"

    const-string v3, "creation_time"

    .line 113
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "getThumb"

    .line 115
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 117
    invoke-virtual {v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 128
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 129
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/mybigday/rnmediameta/RNMediaMeta;->RotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    move-object p1, p2

    .line 135
    :cond_4
    invoke-direct {p0, p1}, Lcom/mybigday/rnmediameta/RNMediaMeta;->convertToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    const-string v2, "width"

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "thumb"

    .line 138
    invoke-direct {p0, p2}, Lcom/mybigday/rnmediameta/RNMediaMeta;->convertToBase64([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 143
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :cond_5
    :goto_1
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    return-void

    .line 145
    :goto_2
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    .line 147
    throw p1

    :cond_6
    :goto_3
    const-string p1, "-15"

    const-string p2, "file not found"

    .line 84
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putString(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 78
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 161
    new-instance v0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mybigday/rnmediameta/RNMediaMeta$1;-><init>(Lcom/mybigday/rnmediameta/RNMediaMeta;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    .line 166
    invoke-virtual {v0}, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->start()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNMediaMeta"

    return-object v0
.end method

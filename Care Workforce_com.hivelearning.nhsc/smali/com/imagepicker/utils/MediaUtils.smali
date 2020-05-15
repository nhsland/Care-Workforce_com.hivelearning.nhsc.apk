.class public Lcom/imagepicker/utils/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imagepicker/utils/MediaUtils$ReadExifResult;,
        Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewFile(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Z)Ljava/io/File;
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "storageOptions"

    .line 51
    invoke-static {p1, v2}, Lcom/imagepicker/utils/ReadableMapUtils;->hasAndNotNullReadableMap(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string p2, "privateDirectory"

    .line 55
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 61
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_0
    const-string p0, "path"

    .line 65
    invoke-static {p1, p0}, Lcom/imagepicker/utils/ReadableMapUtils;->hasAndNotEmptyString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 67
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, p2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 72
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 75
    :cond_2
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static fileScan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 248
    new-instance v1, Lcom/imagepicker/utils/MediaUtils$1;

    invoke-direct {v1}, Lcom/imagepicker/utils/MediaUtils$1;-><init>()V

    invoke-static {p0, v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static getResizedImage(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/media/ImageConfig;III)Lcom/imagepicker/media/ImageConfig;
    .locals 15

    move-object/from16 v1, p2

    .line 108
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 109
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v3, 0x1

    .line 110
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    iget v4, v1, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    if-nez v4, :cond_1

    iget v4, v1, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    move/from16 v5, p4

    goto :goto_2

    :cond_1
    :goto_0
    move/from16 v4, p3

    move/from16 v5, p4

    .line 113
    :goto_1
    iget v6, v1, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    if-eqz v6, :cond_2

    iget v6, v1, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    mul-int/lit8 v6, v6, 0x2

    if-le v4, v6, :cond_3

    :cond_2
    iget v6, v1, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    if-eqz v6, :cond_13

    iget v6, v1, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    mul-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_3

    goto/16 :goto_8

    .line 121
    :cond_3
    :goto_2
    iget-object v6, v1, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_4
    iget v0, v1, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    if-eqz v0, :cond_6

    iget v0, v1, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    if-le v0, v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4

    .line 133
    :cond_6
    :goto_3
    invoke-virtual {v1, v4}, Lcom/imagepicker/media/ImageConfig;->withMaxWidth(I)Lcom/imagepicker/media/ImageConfig;

    move-result-object v0

    .line 135
    :goto_4
    iget v7, v1, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    if-eqz v7, :cond_7

    iget v7, v1, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    if-le v7, v5, :cond_8

    .line 137
    :cond_7
    invoke-virtual {v0, v5}, Lcom/imagepicker/media/ImageConfig;->withMaxHeight(I)Lcom/imagepicker/media/ImageConfig;

    move-result-object v0

    :cond_8
    move-object v14, v0

    .line 140
    iget v0, v14, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    int-to-double v7, v0

    int-to-double v9, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    .line 141
    iget v0, v14, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    int-to-double v9, v0

    int-to-double v4, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v4

    cmpg-double v0, v7, v9

    if-gez v0, :cond_9

    goto :goto_5

    :cond_9
    move-wide v7, v9

    .line 147
    :goto_5
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    iget v0, v14, Lcom/imagepicker/media/ImageConfig;->rotation:I

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v0, v7

    .line 149
    invoke-virtual {v12, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 154
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v4, v14, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    .line 156
    invoke-virtual {v0, v4, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_c

    const/4 v4, 0x6

    if-eq v0, v4, :cond_b

    const/16 v4, 0x8

    if-eq v0, v4, :cond_a

    goto :goto_6

    :cond_a
    const/high16 v0, 0x43870000    # 270.0f

    .line 167
    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_6

    :cond_b
    const/high16 v0, 0x42b40000    # 90.0f

    .line 161
    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_6

    :cond_c
    const/high16 v0, 0x43340000    # 180.0f

    .line 164
    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 176
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    move-object v7, v6

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 177
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, v14, Lcom/imagepicker/media/ImageConfig;->quality:I

    invoke-virtual {v4, v5, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v5, 0x32c9

    move/from16 v7, p5

    if-ne v7, v5, :cond_d

    const/4 v2, 0x1

    :cond_d
    xor-int/2addr v2, v3

    move-object v8, p0

    move-object/from16 v9, p1

    .line 181
    invoke-static {p0, v9, v2}, Lcom/imagepicker/utils/MediaUtils;->createNewFile(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Z)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_10

    if-eqz v6, :cond_e

    .line 187
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    if-eqz v4, :cond_f

    .line 192
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    return-object v1

    .line 198
    :cond_10
    invoke-virtual {v14, v2}, Lcom/imagepicker/media/ImageConfig;->withResizedFile(Ljava/io/File;)Lcom/imagepicker/media/ImageConfig;

    move-result-object v1

    .line 200
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 200
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 203
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    if-eqz v6, :cond_11

    .line 211
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    if-eqz v4, :cond_12

    .line 216
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    return-object v1

    :cond_13
    :goto_8
    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v7, p5

    .line 115
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    div-int/lit8 v5, v5, 0x2

    .line 117
    div-int/lit8 v4, v4, 0x2

    goto/16 :goto_1
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 365
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 367
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, v1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 375
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 380
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_3
    if-eqz v0, :cond_2

    .line 375
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    .line 376
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 380
    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    :cond_3
    :goto_6
    throw p0
.end method

.method public static readExifInterface(Lcom/imagepicker/ResponseHelper;Lcom/imagepicker/media/ImageConfig;)Lcom/imagepicker/utils/MediaUtils$ReadExifResult;
    .locals 7

    const/4 v0, 0x0

    .line 267
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object p1, p1, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 271
    invoke-virtual {v1, p1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    .line 272
    aget v2, p1, v0

    const/4 v3, 0x1

    .line 273
    aget p1, p1, v3

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-nez v5, :cond_0

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "latitude"

    float-to-double v5, v2

    .line 276
    invoke-virtual {p0, v4, v5, v6}, Lcom/imagepicker/ResponseHelper;->putDouble(Ljava/lang/String;D)V

    const-string v2, "longitude"

    float-to-double v4, p1

    .line 277
    invoke-virtual {p0, v2, v4, v5}, Lcom/imagepicker/ResponseHelper;->putDouble(Ljava/lang/String;D)V

    :cond_1
    const-string p1, "DateTime"

    .line 280
    invoke-virtual {v1, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 283
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "UTC"

    .line 284
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Z"

    .line 289
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "timestamp"

    .line 290
    invoke-virtual {p0, v2, p1}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    const-string p1, "Orientation"

    .line 294
    invoke-virtual {v1, p1, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x10e

    const/16 v0, 0x10e

    goto :goto_0

    :cond_3
    const/16 p1, 0x5a

    const/16 v0, 0x5a

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0xb4

    :goto_1
    const-string p1, "originalRotation"

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/imagepicker/ResponseHelper;->putInt(Ljava/lang/String;I)V

    const-string p1, "isVertical"

    .line 310
    invoke-virtual {p0, p1, v3}, Lcom/imagepicker/ResponseHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    new-instance p0, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;-><init>(ILjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    new-instance p1, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;

    invoke-direct {p1, v0, p0}, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;-><init>(ILjava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static removeUselessFiles(ILcom/imagepicker/media/ImageConfig;)V
    .locals 1

    const/16 v0, 0x32c9

    if-eq p0, v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object p0, p1, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 232
    iget-object p0, p1, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 235
    :cond_1
    iget-object p0, p1, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 237
    iget-object p0, p1, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public static rolloutPhotoFromCamera(Lcom/imagepicker/media/ImageConfig;)Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    .line 326
    :goto_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :try_start_0
    invoke-static {v0, v2}, Lcom/imagepicker/utils/MediaUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 333
    iget-object v0, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0, v2}, Lcom/imagepicker/media/ImageConfig;->withResizedFile(Ljava/io/File;)Lcom/imagepicker/media/ImageConfig;

    move-result-object v0

    goto :goto_1

    .line 339
    :cond_1
    invoke-virtual {p0, v2}, Lcom/imagepicker/media/ImageConfig;->withOriginalFile(Ljava/io/File;)Lcom/imagepicker/media/ImageConfig;

    move-result-object v0

    .line 341
    :goto_1
    new-instance v1, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;-><init>(Lcom/imagepicker/media/ImageConfig;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 346
    new-instance v1, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;

    invoke-direct {v1, p0, v0}, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;-><init>(Lcom/imagepicker/media/ImageConfig;Ljava/lang/Throwable;)V

    :goto_2
    return-object v1
.end method

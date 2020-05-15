.class public Lcom/imagepicker/media/ImageConfig;
.super Ljava/lang/Object;
.source "ImageConfig.java"


# instance fields
.field public final maxHeight:I

.field public final maxWidth:I

.field public final original:Ljava/io/File;

.field public final quality:I

.field public final resized:Ljava/io/File;

.field public final rotation:I

.field public final saveToCameraRoll:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;IIIIZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    .line 34
    iput-object p2, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    .line 35
    iput p3, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    .line 36
    iput p4, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    .line 37
    iput p5, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    .line 38
    iput p6, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    .line 39
    iput-boolean p7, p0, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    return-void
.end method


# virtual methods
.method public getActualFile()Ljava/io/File;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public updateFromOptions(Lcom/facebook/react/bridge/ReadableMap;)Lcom/imagepicker/media/ImageConfig;
    .locals 11

    const-string v0, "maxWidth"

    .line 118
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v0, "maxHeight"

    .line 123
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0x64

    const-string v1, "quality"

    .line 128
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v3

    double-to-int v0, v0

    move v8, v0

    goto :goto_2

    :cond_2
    const/16 v8, 0x64

    :goto_2
    const-string v0, "rotation"

    .line 133
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    move v9, v0

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    const-string v0, "storageOptions"

    .line 138
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string v0, "cameraRoll"

    .line 141
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v10, v2

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 146
    :goto_4
    new-instance p1, Lcom/imagepicker/media/ImageConfig;

    iget-object v4, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    iget-object v5, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object p1
.end method

.method public useOriginal(III)Z
    .locals 1

    .line 153
    iget v0, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    if-ge p1, v0, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    if-nez p1, :cond_5

    :cond_1
    iget p1, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    if-ge p2, p1, :cond_2

    if-gtz p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    if-nez p1, :cond_5

    :cond_3
    iget p1, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_5

    iget p1, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    if-eqz p1, :cond_4

    if-ne p3, p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public withMaxHeight(I)Lcom/imagepicker/media/ImageConfig;
    .locals 9

    .line 53
    new-instance v8, Lcom/imagepicker/media/ImageConfig;

    iget-object v1, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    iget-object v2, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    iget v3, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    iget v5, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    iget v6, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    iget-boolean v7, p0, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    move-object v0, v8

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object v8
.end method

.method public withMaxWidth(I)Lcom/imagepicker/media/ImageConfig;
    .locals 9

    .line 44
    new-instance v8, Lcom/imagepicker/media/ImageConfig;

    iget-object v1, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    iget-object v2, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    iget v4, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    iget v5, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    iget v6, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    iget-boolean v7, p0, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object v8
.end method

.method public withOriginalFile(Ljava/io/File;)Lcom/imagepicker/media/ImageConfig;
    .locals 9

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 90
    :cond_0
    new-instance v0, Lcom/imagepicker/media/ImageConfig;

    iget-object v3, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    iget v4, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    iget v5, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    iget v6, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    iget v7, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    iget-boolean v8, p0, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object v0
.end method

.method public withQuality(I)Lcom/imagepicker/media/ImageConfig;
    .locals 9

    .line 63
    new-instance v8, Lcom/imagepicker/media/ImageConfig;

    iget-object v1, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    iget-object v2, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    iget v3, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    iget v4, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    iget v6, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    iget-boolean v7, p0, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    move-object v0, v8

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object v8
.end method

.method public withResizedFile(Ljava/io/File;)Lcom/imagepicker/media/ImageConfig;
    .locals 9

    .line 99
    new-instance v8, Lcom/imagepicker/media/ImageConfig;

    iget-object v1, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    iget v3, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    iget v4, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    iget v5, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    iget v6, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    iget-boolean v7, p0, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object v8
.end method

.method public withRotation(I)Lcom/imagepicker/media/ImageConfig;
    .locals 9

    .line 72
    new-instance v8, Lcom/imagepicker/media/ImageConfig;

    iget-object v1, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    iget-object v2, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    iget v3, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    iget v4, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    iget v5, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    iget-boolean v7, p0, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    move-object v0, v8

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object v8
.end method

.method public withSaveToCameraRoll(Z)Lcom/imagepicker/media/ImageConfig;
    .locals 9

    .line 108
    new-instance v8, Lcom/imagepicker/media/ImageConfig;

    iget-object v1, p0, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    iget-object v2, p0, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    iget v3, p0, Lcom/imagepicker/media/ImageConfig;->maxWidth:I

    iget v4, p0, Lcom/imagepicker/media/ImageConfig;->maxHeight:I

    iget v5, p0, Lcom/imagepicker/media/ImageConfig;->quality:I

    iget v6, p0, Lcom/imagepicker/media/ImageConfig;->rotation:I

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    return-object v8
.end method

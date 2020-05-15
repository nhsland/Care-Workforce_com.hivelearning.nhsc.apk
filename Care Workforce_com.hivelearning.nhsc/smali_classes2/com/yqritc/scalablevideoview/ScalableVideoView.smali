.class public Lcom/yqritc/scalablevideoview/ScalableVideoView;
.super Landroid/view/TextureView;
.source "ScalableVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object p3, Lcom/yqritc/scalablevideoview/ScalableType;->NONE:Lcom/yqritc/scalablevideoview/ScalableType;

    iput-object p3, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    if-nez p2, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object p3, Lcom/yqritc/scalablevideoview/R$styleable;->scaleStyle:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 51
    :cond_1
    sget p2, Lcom/yqritc/scalablevideoview/R$styleable;->scaleStyle_scalableType:I

    sget-object p3, Lcom/yqritc/scalablevideoview/ScalableType;->NONE:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/ScalableType;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-static {}, Lcom/yqritc/scalablevideoview/ScalableType;->values()[Lcom/yqritc/scalablevideoview/ScalableType;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    return-void
.end method

.method private initializeMediaPlayer()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 112
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 113
    invoke-virtual {p0, p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->reset()V

    :goto_0
    return-void
.end method

.method private scaleVideoSize(II)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 101
    new-instance v1, Lcom/yqritc/scalablevideoview/Size;

    invoke-direct {v1, p1, p2}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 102
    new-instance p1, Lcom/yqritc/scalablevideoview/ScaleManager;

    invoke-direct {p1, v0, v1}, Lcom/yqritc/scalablevideoview/ScaleManager;-><init>(Lcom/yqritc/scalablevideoview/Size;Lcom/yqritc/scalablevideoview/Size;)V

    .line 103
    iget-object p2, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p1, p2}, Lcom/yqritc/scalablevideoview/ScaleManager;->getScaleMatrix(Lcom/yqritc/scalablevideoview/ScalableType;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 132
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->stop()V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->release()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 58
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 59
    iget-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->scaleVideoSize(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->prepare(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public prepare(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 170
    iget-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 176
    iget-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->reset()V

    .line 253
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAssetData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 148
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 143
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 159
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 154
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 137
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setRawData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setScalableType(Lcom/yqritc/scalablevideoview/ScalableType;)V
    .locals 1

    .line 163
    iput-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 164
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getVideoWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getVideoHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->scaleVideoSize(II)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

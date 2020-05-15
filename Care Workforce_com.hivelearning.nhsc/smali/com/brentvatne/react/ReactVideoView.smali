.class public Lcom/brentvatne/react/ReactVideoView;
.super Lcom/yqritc/scalablevideoview/ScalableVideoView;
.source "ReactVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/react/ReactVideoView$Events;
    }
.end annotation


# static fields
.field public static final EVENT_PROP_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field public static final EVENT_PROP_DURATION:Ljava/lang/String; = "duration"

.field public static final EVENT_PROP_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_PROP_EXTRA:Ljava/lang/String; = "extra"

.field public static final EVENT_PROP_FAST_FORWARD:Ljava/lang/String; = "canPlayFastForward"

.field public static final EVENT_PROP_HEIGHT:Ljava/lang/String; = "height"

.field public static final EVENT_PROP_NATURALSIZE:Ljava/lang/String; = "naturalSize"

.field public static final EVENT_PROP_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EVENT_PROP_PLAYABLE_DURATION:Ljava/lang/String; = "playableDuration"

.field public static final EVENT_PROP_REVERSE:Ljava/lang/String; = "canPlayReverse"

.field public static final EVENT_PROP_SEEKABLE_DURATION:Ljava/lang/String; = "seekableDuration"

.field public static final EVENT_PROP_SEEK_TIME:Ljava/lang/String; = "seekTime"

.field public static final EVENT_PROP_SLOW_FORWARD:Ljava/lang/String; = "canPlaySlowForward"

.field public static final EVENT_PROP_SLOW_REVERSE:Ljava/lang/String; = "canPlaySlowReverse"

.field public static final EVENT_PROP_STEP_BACKWARD:Ljava/lang/String; = "canStepBackward"

.field public static final EVENT_PROP_STEP_FORWARD:Ljava/lang/String; = "canStepForward"

.field public static final EVENT_PROP_WHAT:Ljava/lang/String; = "what"

.field public static final EVENT_PROP_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private isCompleted:Z

.field private mActiveRate:F

.field private mActiveStatePauseStatus:Z

.field private mActiveStatePauseStatusInitialized:Z

.field private mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

.field private mMainVer:I

.field private mMediaPlayerValid:Z

.field private mMuted:Z

.field private mPatchVer:I

.field private mPaused:Z

.field private mPlayInBackground:Z

.field private mProgressUpdateHandler:Landroid/os/Handler;

.field private mProgressUpdateInterval:F

.field private mProgressUpdateRunnable:Ljava/lang/Runnable;

.field private mRate:F

.field private mRepeat:Z

.field private mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

.field private mSrcIsAsset:Z

.field private mSrcIsNetwork:Z

.field private mSrcType:Ljava/lang/String;

.field private mSrcUriString:Ljava/lang/String;

.field private mStereoPan:F

.field private mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private mUseNativeControls:Z

.field private mVideoBufferedDuration:I

.field private mVideoDuration:I

.field private mVolume:F

.field private mediaController:Landroid/widget/MediaController;

.field private videoControlHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3

    .line 118
    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->videoControlHandler:Landroid/os/Handler;

    .line 90
    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    const-string v0, "mp4"

    .line 91
    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    .line 93
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    .line 94
    sget-object v1, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

    iput-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 95
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mRepeat:Z

    .line 96
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    .line 97
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 98
    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    const/4 v2, 0x0

    .line 99
    iput v2, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    const/high16 v2, 0x437a0000    # 250.0f

    .line 100
    iput v2, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    .line 101
    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    .line 102
    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveRate:F

    .line 103
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    .line 104
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveStatePauseStatus:Z

    .line 105
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveStatePauseStatusInitialized:Z

    .line 107
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    .line 108
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    .line 110
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 112
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    .line 113
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    .line 114
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    .line 115
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    .line 120
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 121
    const-class v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 122
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 124
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaPlayerIfNeeded()V

    .line 125
    invoke-virtual {p0, p0}, Lcom/brentvatne/react/ReactVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 127
    new-instance p1, Lcom/brentvatne/react/ReactVideoView$1;

    invoke-direct {p1, p0}, Lcom/brentvatne/react/ReactVideoView$1;-><init>(Lcom/brentvatne/react/ReactVideoView;)V

    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    return p0
.end method

.method static synthetic access$100(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/brentvatne/react/ReactVideoView;)Landroid/widget/MediaController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveStatePauseStatus:Z

    return p0
.end method

.method static synthetic access$200(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/brentvatne/react/ReactVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brentvatne/react/ReactVideoView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    return p0
.end method

.method static synthetic access$500(Lcom/brentvatne/react/ReactVideoView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    return p0
.end method

.method static synthetic access$600(Lcom/brentvatne/react/ReactVideoView;)Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/brentvatne/react/ReactVideoView;)Ljava/lang/Runnable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/brentvatne/react/ReactVideoView;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    return p0
.end method

.method static synthetic access$900(Lcom/brentvatne/react/ReactVideoView;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private calulateRelativeVolume()F
    .locals 4

    .line 366
    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    iget v1, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    .line 368
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method private initializeMediaControllerIfNeeded()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    :cond_0
    return-void
.end method

.method private initializeMediaPlayerIfNeeded()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 183
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 184
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 185
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 186
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 187
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 188
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 189
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 190
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyModifiers()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setResizeModeModifier(Lcom/yqritc/scalablevideoview/ScalableType;)V

    .line 424
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mRepeat:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setRepeatModifier(Z)V

    .line 425
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setPausedModifier(Z)V

    .line 426
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setMutedModifier(Z)V

    .line 427
    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setProgressUpdateInterval(F)V

    .line 428
    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setRateModifier(F)V

    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cleanupMediaPlayerResources()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 206
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->release()V

    :cond_1
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 579
    invoke-super {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onAttachedToWindow()V

    .line 581
    iget v5, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    if-lez v5, :cond_0

    .line 582
    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    iget-object v2, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    iget-boolean v4, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    iget v6, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brentvatne/react/ReactVideoView;->setSrc(Ljava/lang/String;Ljava/lang/String;ZZII)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    iget-boolean v3, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brentvatne/react/ReactVideoView;->setSrc(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 518
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    mul-int p1, p1, p2

    int-to-double p1, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 p1, 0x1

    .line 565
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    .line 566
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v0

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v1}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 573
    invoke-super {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onDetachedFromWindow()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 489
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "what"

    .line 490
    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra"

    .line 491
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 492
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string p3, "error"

    .line 493
    invoke-interface {p2, p3, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 494
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p3

    sget-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v0}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0, p2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    if-nez v0, :cond_0

    .line 593
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveStatePauseStatus:Z

    const/4 v0, 0x1

    .line 596
    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setPausedModifier(Z)V

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/brentvatne/react/ReactVideoView$3;

    invoke-direct {v1, p0}, Lcom/brentvatne/react/ReactVideoView$3;-><init>(Lcom/brentvatne/react/ReactVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p2

    sget-object p3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p2

    sget-object p3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p2

    sget-object p3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 158
    invoke-super/range {p0 .. p5}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    .line 160
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getVideoWidth()I

    move-result p1

    .line 165
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getVideoHeight()I

    move-result p2

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    new-instance p3, Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getHeight()I

    move-result p5

    invoke-direct {p3, p4, p5}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 172
    new-instance p4, Lcom/yqritc/scalablevideoview/Size;

    invoke-direct {p4, p1, p2}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 173
    new-instance p1, Lcom/yqritc/scalablevideoview/ScaleManager;

    invoke-direct {p1, p3, p4}, Lcom/yqritc/scalablevideoview/ScaleManager;-><init>(Lcom/yqritc/scalablevideoview/Size;Lcom/yqritc/scalablevideoview/Size;)V

    .line 174
    iget-object p2, p0, Lcom/brentvatne/react/ReactVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p1, p2}, Lcom/yqritc/scalablevideoview/ScaleManager;->getScaleMatrix(Lcom/yqritc/scalablevideoview/ScalableType;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 445
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    .line 447
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 448
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    const-string v3, "width"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 449
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    const-string v3, "height"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 450
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    const-string v4, "orientation"

    if-le v2, v3, :cond_0

    const-string v2, "landscape"

    .line 451
    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "portrait"

    .line 453
    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 456
    iget v3, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-string v7, "duration"

    invoke-interface {v2, v7, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 457
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-string p1, "currentTime"

    invoke-interface {v2, p1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "naturalSize"

    .line 458
    invoke-interface {v2, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p1, "canPlayFastForward"

    .line 460
    invoke-interface {v2, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "canPlaySlowForward"

    .line 461
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "canPlaySlowReverse"

    .line 462
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "canPlayReverse"

    .line 463
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    invoke-interface {v2, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "canStepBackward"

    .line 465
    invoke-interface {v2, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "canStepForward"

    .line 466
    invoke-interface {v2, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 467
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v0

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v1}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 469
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->applyModifiers()V

    .line 471
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    if-eqz p1, :cond_1

    .line 472
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaControllerIfNeeded()V

    .line 473
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 474
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 476
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->videoControlHandler:Landroid/os/Handler;

    new-instance v0, Lcom/brentvatne/react/ReactVideoView$2;

    invoke-direct {v0, p0}, Lcom/brentvatne/react/ReactVideoView$2;-><init>(Lcom/brentvatne/react/ReactVideoView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaControllerIfNeeded()V

    .line 149
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 152
    :cond_0
    invoke-super {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public seekTo(I)V
    .locals 6

    .line 524
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getCurrentPosition()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-string v5, "currentTime"

    invoke-interface {v0, v5, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v1, p1

    .line 527
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-string v3, "seekTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 528
    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v2

    sget-object v3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 530
    invoke-super {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->seekTo(I)V

    .line 531
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    if-eqz v0, :cond_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 532
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    :cond_0
    return-void
.end method

.method public setControls(Z)V
    .locals 0

    .line 437
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    return-void
.end method

.method public setMutedModifier(Z)V
    .locals 2

    .line 373
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    .line 375
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 380
    invoke-virtual {p0, v0, v0}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    goto :goto_0

    .line 381
    :cond_1
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    .line 383
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->calulateRelativeVolume()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    goto :goto_0

    :cond_2
    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 386
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->calulateRelativeVolume()F

    move-result p1

    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    invoke-virtual {p0, p1, v0}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    goto :goto_0

    .line 389
    :cond_3
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    invoke-virtual {p0, p1, p1}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public setPausedModifier(Z)V
    .locals 1

    .line 335
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    .line 337
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveStatePauseStatusInitialized:Z

    if-nez v0, :cond_0

    .line 338
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveStatePauseStatus:Z

    const/4 p1, 0x1

    .line 339
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveStatePauseStatusInitialized:Z

    .line 342
    :cond_0
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-nez p1, :cond_1

    return-void

    .line 346
    :cond_1
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    if-eqz p1, :cond_2

    .line 347
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 348
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->pause()V

    goto :goto_0

    .line 351
    :cond_2
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->start()V

    .line 354
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveRate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setRateModifier(F)V

    .line 359
    :cond_3
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setPlayInBackground(Z)V
    .locals 0

    .line 433
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    return-void
.end method

.method public setProgressUpdateInterval(F)V
    .locals 0

    .line 404
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    return-void
.end method

.method public setRateModifier(F)V
    .locals 2

    .line 408
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    .line 410
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_1

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 412
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 414
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveRate:F

    goto :goto_0

    :cond_0
    const-string p1, "RCTVideo"

    const-string v0, "Setting playback rate is not yet supported on Android versions below 6.0"

    .line 417
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setRepeatModifier(Z)V
    .locals 1

    .line 326
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mRepeat:Z

    .line 328
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setResizeModeModifier(Lcom/yqritc/scalablevideoview/ScalableType;)V
    .locals 1

    .line 316
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 318
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setScalableType(Lcom/yqritc/scalablevideoview/ScalableType;)V

    .line 320
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSrc(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 211
    invoke-virtual/range {v0 .. v6}, Lcom/brentvatne/react/ReactVideoView;->setSrc(Ljava/lang/String;Ljava/lang/String;ZZII)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 6

    const-string v0, ".mp4"

    .line 216
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    .line 218
    iput-boolean p3, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    .line 219
    iput-boolean p4, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    .line 220
    iput p5, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    .line 221
    iput p6, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    const/4 p5, 0x0

    .line 224
    iput-boolean p5, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 225
    iput p5, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    .line 226
    iput p5, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    .line 228
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaPlayerIfNeeded()V

    .line 229
    iget-object p6, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p6}, Landroid/media/MediaPlayer;->reset()V

    if-eqz p3, :cond_1

    .line 235
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p4

    .line 237
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 238
    invoke-virtual {p6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p6

    .line 240
    invoke-virtual {p6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p6

    invoke-virtual {p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 242
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_0

    const-string v0, "Cookie"

    .line 245
    invoke-interface {p6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    if-eqz p4, :cond_3

    const-string p4, "content://"

    .line 250
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 251
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 252
    iget-object p6, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p0, p6, p4}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 254
    :cond_2
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    .line 259
    iget p6, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p6, :cond_4

    .line 261
    :try_start_1
    iget-object p6, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget v1, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    iget v2, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    invoke-static {p6, v1, v2}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object p6

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception p6

    .line 266
    :try_start_2
    invoke-virtual {p6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p6

    .line 264
    invoke-virtual {p6}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_0
    if-nez p4, :cond_6

    .line 270
    iget-object p4, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const-string p6, "drawable"

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 273
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p4, p1, p6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_5

    .line 276
    iget-object p4, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const-string p6, "raw"

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 279
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p4, p1, p6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 282
    :cond_5
    invoke-virtual {p0, p4}, Lcom/brentvatne/react/ReactVideoView;->setRawData(I)V

    goto :goto_1

    .line 285
    :cond_6
    invoke-virtual {p4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    :goto_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    const-string p6, "uri"

    .line 294
    invoke-interface {p4, p6, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 295
    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isNetwork"

    .line 296
    invoke-interface {p4, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    if-lez p1, :cond_7

    const-string p2, "mainVer"

    .line 298
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 299
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    if-lez p1, :cond_7

    const-string p2, "patchVer"

    .line 300
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 303
    :cond_7
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "src"

    .line 304
    invoke-interface {p1, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 305
    iget-object p2, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p3

    sget-object p4, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p4}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4, p1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 306
    iput-boolean p5, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    .line 309
    :try_start_3
    invoke-virtual {p0, p0}, Lcom/brentvatne/react/ReactVideoView;->prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    .line 289
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setStereoPan(F)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    .line 400
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setMutedModifier(Z)V

    return-void
.end method

.method public setVolumeModifier(F)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    .line 395
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setMutedModifier(Z)V

    return-void
.end method

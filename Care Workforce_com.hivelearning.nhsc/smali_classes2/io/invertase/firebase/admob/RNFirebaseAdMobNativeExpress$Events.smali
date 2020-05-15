.class public final enum Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;
.super Ljava/lang/Enum;
.source "RNFirebaseAdMobNativeExpress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_LEFT_APPLICATION:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_SIZE_CHANGE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_VIDEO_CONTENT:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_VIDEO_END:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_VIDEO_MUTE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_VIDEO_PAUSE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_VIDEO_PLAY:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

.field public static final enum EVENT_AD_VIDEO_START:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 278
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v1, 0x0

    const-string v2, "EVENT_AD_SIZE_CHANGE"

    const-string v3, "onSizeChange"

    invoke-direct {v0, v2, v1, v3}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_SIZE_CHANGE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 279
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v2, 0x1

    const-string v3, "EVENT_AD_LOADED"

    const-string v4, "onAdLoaded"

    invoke-direct {v0, v3, v2, v4}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 280
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v3, 0x2

    const-string v4, "EVENT_AD_FAILED_TO_LOAD"

    const-string v5, "onAdFailedToLoad"

    invoke-direct {v0, v4, v3, v5}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 281
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v4, 0x3

    const-string v5, "EVENT_AD_OPENED"

    const-string v6, "onAdOpened"

    invoke-direct {v0, v5, v4, v6}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 282
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v5, 0x4

    const-string v6, "EVENT_AD_CLOSED"

    const-string v7, "onAdClosed"

    invoke-direct {v0, v6, v5, v7}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 283
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v6, 0x5

    const-string v7, "EVENT_AD_LEFT_APPLICATION"

    const-string v8, "onAdLeftApplication"

    invoke-direct {v0, v7, v6, v8}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_LEFT_APPLICATION:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 284
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v7, 0x6

    const-string v8, "EVENT_AD_VIDEO_END"

    const-string v9, "onVideoEnd"

    invoke-direct {v0, v8, v7, v9}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_END:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 285
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/4 v8, 0x7

    const-string v9, "EVENT_AD_VIDEO_MUTE"

    const-string v10, "onVideoMute"

    invoke-direct {v0, v9, v8, v10}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_MUTE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 286
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/16 v9, 0x8

    const-string v10, "EVENT_AD_VIDEO_PAUSE"

    const-string v11, "onVideoPause"

    invoke-direct {v0, v10, v9, v11}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_PAUSE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 287
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/16 v10, 0x9

    const-string v11, "EVENT_AD_VIDEO_PLAY"

    const-string v12, "onVideoPlay"

    invoke-direct {v0, v11, v10, v12}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_PLAY:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 288
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/16 v11, 0xa

    const-string v12, "EVENT_AD_VIDEO_START"

    const-string v13, "onVideoStart"

    invoke-direct {v0, v12, v11, v13}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_START:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 289
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/16 v12, 0xb

    const-string v13, "EVENT_AD_VIDEO_CONTENT"

    const-string v14, "hasVideoContent"

    invoke-direct {v0, v13, v12, v14}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_CONTENT:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    const/16 v13, 0xc

    new-array v13, v13, [Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 277
    sget-object v14, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_SIZE_CHANGE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v14, v13, v1

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v2

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v3

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v4

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v5

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_LEFT_APPLICATION:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v6

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_END:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v7

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_MUTE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v8

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_PAUSE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v9

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_PLAY:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v10

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_START:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->$VALUES:[Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput-object p3, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;
    .locals 1

    .line 277
    const-class v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    return-object p0
.end method

.method public static values()[Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;
    .locals 1

    .line 277
    sget-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->$VALUES:[Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v0}, [Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->event:Ljava/lang/String;

    return-object v0
.end method

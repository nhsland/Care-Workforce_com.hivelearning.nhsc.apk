.class public final enum Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;
.super Ljava/lang/Enum;
.source "RNFirebaseAdMobBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

.field public static final enum EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

.field public static final enum EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

.field public static final enum EVENT_AD_LEFT_APPLICATION:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

.field public static final enum EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

.field public static final enum EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

.field public static final enum EVENT_AD_SIZE_CHANGE:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 239
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    const/4 v1, 0x0

    const-string v2, "EVENT_AD_SIZE_CHANGE"

    const-string v3, "onSizeChange"

    invoke-direct {v0, v2, v1, v3}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_SIZE_CHANGE:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    .line 240
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    const/4 v2, 0x1

    const-string v3, "EVENT_AD_LOADED"

    const-string v4, "onAdLoaded"

    invoke-direct {v0, v3, v2, v4}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    .line 241
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    const/4 v3, 0x2

    const-string v4, "EVENT_AD_FAILED_TO_LOAD"

    const-string v5, "onAdFailedToLoad"

    invoke-direct {v0, v4, v3, v5}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    .line 242
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    const/4 v4, 0x3

    const-string v5, "EVENT_AD_OPENED"

    const-string v6, "onAdOpened"

    invoke-direct {v0, v5, v4, v6}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    .line 243
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    const/4 v5, 0x4

    const-string v6, "EVENT_AD_CLOSED"

    const-string v7, "onAdClosed"

    invoke-direct {v0, v6, v5, v7}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    .line 244
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    const/4 v6, 0x5

    const-string v7, "EVENT_AD_LEFT_APPLICATION"

    const-string v8, "onAdLeftApplication"

    invoke-direct {v0, v7, v6, v8}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_LEFT_APPLICATION:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    const/4 v7, 0x6

    new-array v7, v7, [Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    .line 238
    sget-object v8, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_SIZE_CHANGE:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    aput-object v8, v7, v1

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    aput-object v1, v7, v2

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    aput-object v1, v7, v3

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    aput-object v1, v7, v4

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->$VALUES:[Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

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

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput-object p3, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;
    .locals 1

    .line 238
    const-class v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    return-object p0
.end method

.method public static values()[Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;
    .locals 1

    .line 238
    sget-object v0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->$VALUES:[Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    invoke-virtual {v0}, [Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->event:Ljava/lang/String;

    return-object v0
.end method

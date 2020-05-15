.class public Lio/invertase/firebase/admob/RNFirebaseAdMob;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFirebaseAdMob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFirebaseAdMob"


# instance fields
.field private interstitials:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private rewardedVideos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->interstitials:Ljava/util/HashMap;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->rewardedVideos:Ljava/util/HashMap;

    const-string p1, "RNFirebaseAdMob"

    const-string v0, "New instance"

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getOrCreateInterstitial(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;
    .locals 2

    .line 85
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->interstitials:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->interstitials:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    return-object p1

    .line 88
    :cond_0
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    invoke-direct {v0, p1, p0}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;-><init>(Ljava/lang/String;Lio/invertase/firebase/admob/RNFirebaseAdMob;)V

    .line 89
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->interstitials:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getOrCreateRewardedVideo(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;
    .locals 2

    .line 98
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->rewardedVideos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->rewardedVideos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    return-object p1

    .line 101
    :cond_0
    new-instance v0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-direct {v0, p1, p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;-><init>(Ljava/lang/String;Lio/invertase/firebase/admob/RNFirebaseAdMob;)V

    .line 102
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMob;->rewardedVideos:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEVICE_ID_EMULATOR"

    const-string v2, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFirebaseAdMob"

    return-object v0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public interstitialLoadAd(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getOrCreateInterstitial(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    move-result-object p1

    .line 56
    invoke-static {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->buildRequest(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public interstitialShowAd(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getOrCreateInterstitial(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->show()V

    return-void
.end method

.method public openDebugMenu(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 49
    invoke-virtual {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/MobileAds;->openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public rewardedVideoLoadAd(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getOrCreateRewardedVideo(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    move-result-object p1

    .line 70
    invoke-static {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->buildRequest(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    .line 69
    invoke-virtual {p1, p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public rewardedVideoShowAd(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getOrCreateRewardedVideo(Ljava/lang/String;)Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->show()V

    return-void
.end method

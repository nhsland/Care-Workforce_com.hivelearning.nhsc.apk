.class public Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;
.super Ljava/lang/Object;
.source "RNFirebaseAdMobRewardedVideo.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# instance fields
.field private adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

.field private adUnit:Ljava/lang/String;

.field private rewardedVideo:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/invertase/firebase/admob/RNFirebaseAdMob;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adUnit:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    .line 28
    invoke-virtual {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 31
    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p2

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->rewardedVideo:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p2

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->rewardedVideo:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    :goto_0
    if-eqz p1, :cond_1

    .line 39
    new-instance p2, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$1;

    invoke-direct {p2, p0, p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$1;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->rewardedVideo:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object p0
.end method

.method static synthetic access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adUnit:Ljava/lang/String;

    return-object p0
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "type"

    .line 136
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adUnit:Ljava/lang/String;

    const-string v1, "adUnit"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "payload"

    .line 140
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 143
    :cond_0
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {p1}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string p2, "rewarded_video_event"

    invoke-static {p1, p2, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;

    invoke-direct {v1, p0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 3

    .line 84
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 85
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v1

    const-string v2, "amount"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onRewarded"

    .line 87
    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    const-string v0, "onAdClosed"

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 1

    .line 107
    invoke-static {p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->errorCodeToMap(I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "onAdFailedToLoad"

    .line 108
    invoke-direct {p0, v0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2

    const-string v0, "onAdLeftApplication"

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 2

    const-string v0, "onAdLoaded"

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    const-string v0, "onAdOpened"

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 2

    const-string v0, "onAdCompleted"

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2

    const-string v0, "onRewardedVideoStarted"

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method show()V
    .locals 2

    .line 69
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$3;

    invoke-direct {v1, p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$3;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

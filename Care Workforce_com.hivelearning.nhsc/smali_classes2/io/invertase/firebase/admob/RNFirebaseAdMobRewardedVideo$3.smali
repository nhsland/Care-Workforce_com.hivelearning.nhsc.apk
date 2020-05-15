.class Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$3;
.super Ljava/lang/Object;
.source "RNFirebaseAdMobRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$3;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$3;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-static {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$3;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-static {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    :cond_0
    return-void
.end method

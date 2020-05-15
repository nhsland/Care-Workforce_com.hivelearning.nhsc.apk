.class Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;
.super Ljava/lang/Object;
.source "RNFirebaseAdMobRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

.field final synthetic val$adRequest:Lcom/google/android/gms/ads/AdRequest;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-static {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-static {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$2;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

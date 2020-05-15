.class Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$1;
.super Ljava/lang/Object;
.source "RNFirebaseAdMobRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;-><init>(Ljava/lang/String;Lio/invertase/firebase/admob/RNFirebaseAdMob;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

.field final synthetic val$_this:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$1;->val$_this:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-static {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo$1;->val$_this:Lio/invertase/firebase/admob/RNFirebaseAdMobRewardedVideo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return-void
.end method

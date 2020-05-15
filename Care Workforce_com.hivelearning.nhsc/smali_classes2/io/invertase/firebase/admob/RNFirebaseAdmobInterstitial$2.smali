.class Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$2;
.super Ljava/lang/Object;
.source "RNFirebaseAdmobInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

.field final synthetic val$adRequest:Lcom/google/android/gms/ads/AdRequest;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$2;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$2;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$2;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    invoke-static {v0}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$2;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

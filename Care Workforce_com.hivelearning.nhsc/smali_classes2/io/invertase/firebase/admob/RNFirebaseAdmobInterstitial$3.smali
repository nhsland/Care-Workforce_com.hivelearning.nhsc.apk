.class Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$3;
.super Ljava/lang/Object;
.source "RNFirebaseAdmobInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$3;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$3;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    invoke-static {v0}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$3;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    invoke-static {v0}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_0
    return-void
.end method

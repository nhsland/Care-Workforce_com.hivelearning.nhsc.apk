.class Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;
.super Ljava/lang/Object;
.source "RNFirebaseAdmobInterstitial.java"


# instance fields
.field private adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

.field private adUnit:Ljava/lang/String;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/invertase/firebase/admob/RNFirebaseAdMob;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adUnit:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    .line 26
    invoke-virtual {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 33
    :goto_0
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adUnit:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 35
    new-instance p1, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;

    invoke-direct {p1, p0}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;)V

    .line 63
    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$100(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0

    .line 16
    iget-object p0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "type"

    .line 108
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adUnit:Ljava/lang/String;

    const-string v1, "adUnit"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "payload"

    .line 112
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 115
    :cond_0
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {p1}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string p2, "interstitial_event"

    invoke-static {p1, p2, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$2;

    invoke-direct {v1, p0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$2;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method show()V
    .locals 2

    .line 87
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->adMob:Lio/invertase/firebase/admob/RNFirebaseAdMob;

    invoke-virtual {v0}, Lio/invertase/firebase/admob/RNFirebaseAdMob;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$3;

    invoke-direct {v1, p0}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$3;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

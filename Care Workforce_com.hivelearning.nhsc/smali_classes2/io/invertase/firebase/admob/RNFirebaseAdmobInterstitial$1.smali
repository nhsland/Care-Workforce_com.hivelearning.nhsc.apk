.class Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "RNFirebaseAdmobInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;-><init>(Ljava/lang/String;Lio/invertase/firebase/admob/RNFirebaseAdMob;)V
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

    .line 35
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .line 53
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    const-string v1, "onAdClosed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 58
    invoke-static {p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->errorCodeToMap(I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 3

    .line 48
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    const-string v1, "onAdLeftApplication"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 38
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    const-string v1, "onAdLoaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 43
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;

    const-string v1, "onAdOpened"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdmobInterstitial;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

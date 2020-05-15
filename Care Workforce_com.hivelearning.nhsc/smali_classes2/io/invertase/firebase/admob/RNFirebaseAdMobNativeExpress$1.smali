.class Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "RNFirebaseAdMobNativeExpress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->setAdListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

.field final synthetic val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Lcom/google/android/gms/ads/NativeExpressAdView;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .line 250
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 239
    invoke-static {p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->errorCodeToMap(I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 3

    .line 255
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_LEFT_APPLICATION:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 7

    .line 188
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/NativeExpressAdView;->getLeft()I

    move-result v0

    .line 189
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->getTop()I

    move-result v1

    .line 191
    iget-object v2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 192
    invoke-virtual {v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iget-object v3, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    .line 193
    invoke-static {v3}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 194
    iget-object v3, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 195
    invoke-virtual {v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    .line 196
    invoke-static {v4}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v3

    .line 198
    iget-object v4, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->measure(II)V

    .line 199
    iget-object v4, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    add-int v5, v0, v2

    add-int v6, v1, v3

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/google/android/gms/ads/NativeExpressAdView;->layout(IIII)V

    .line 201
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/NativeExpressAdView;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 204
    sget-object v4, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_CONTENT:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v4}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->hasVideoContent()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "width"

    .line 205
    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    .line 206
    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 208
    iget-object v2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v3, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v3}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->hasVideoContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;

    invoke-direct {v1, p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 245
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

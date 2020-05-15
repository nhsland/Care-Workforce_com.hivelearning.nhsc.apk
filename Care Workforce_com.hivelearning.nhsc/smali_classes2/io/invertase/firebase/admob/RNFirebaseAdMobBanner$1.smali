.class Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "RNFirebaseAdMobBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->setAdListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

.field final synthetic val$adView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .line 211
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_CLOSED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 200
    invoke-static {p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->errorCodeToMap(I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_FAILED_TO_LOAD:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 3

    .line 216
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_LEFT_APPLICATION:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 7

    .line 173
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getLeft()I

    move-result v0

    .line 174
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getTop()I

    move-result v1

    .line 176
    iget-object v2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iget-object v3, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    .line 178
    invoke-static {v3}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 179
    iget-object v3, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    .line 180
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    .line 181
    invoke-static {v4}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v3

    .line 183
    iget-object v4, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/ads/AdView;->measure(II)V

    .line 184
    iget-object v4, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    add-int v5, v0, v2

    add-int v6, v1, v3

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/google/android/gms/ads/AdView;->layout(IIII)V

    .line 186
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 188
    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_CONTENT:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    .line 189
    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 188
    invoke-interface {v0, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "width"

    .line 192
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "height"

    .line 193
    invoke-interface {v0, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 195
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    sget-object v2, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_LOADED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    invoke-virtual {v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 206
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->EVENT_AD_OPENED:Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobBanner;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

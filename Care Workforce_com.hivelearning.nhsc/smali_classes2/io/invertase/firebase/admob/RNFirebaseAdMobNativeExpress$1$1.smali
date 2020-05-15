.class Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "RNFirebaseAdMobNativeExpress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;


# direct methods
.method constructor <init>(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;->this$1:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .locals 3

    .line 213
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;->this$1:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;

    iget-object v0, v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_END:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onVideoMute(Z)V
    .locals 2

    .line 217
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "isMuted"

    .line 218
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;->this$1:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;

    iget-object p1, p1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_MUTE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onVideoPause()V
    .locals 3

    .line 223
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;->this$1:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;

    iget-object v0, v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_PAUSE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onVideoPlay()V
    .locals 3

    .line 227
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;->this$1:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;

    iget-object v0, v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_PLAY:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onVideoStart()V
    .locals 3

    .line 231
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1$1;->this$1:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;

    iget-object v0, v0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;->this$0:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;

    sget-object v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_VIDEO_START:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {v1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

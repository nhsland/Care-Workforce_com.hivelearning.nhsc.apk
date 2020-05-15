.class public Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "RNFirebaseAdMobNativeExpress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final BANNER_EVENT:Ljava/lang/String; = "onBannerEvent"

.field private static final REACT_CLASS:Ljava/lang/String; = "RNFirebaseAdMobNativeExpress"


# instance fields
.field private context:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private emitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

.field private request:Lcom/google/android/gms/ads/AdRequest$Builder;

.field private requested:Ljava/lang/Boolean;

.field private size:Lcom/google/android/gms/ads/AdSize;

.field private unitId:Ljava/lang/String;

.field private videoOptions:Lcom/google/android/gms/ads/VideoOptions$Builder;

.field private viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->requested:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object p0
.end method

.method static synthetic access$100(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method private getAdView()Lcom/google/android/gms/ads/NativeExpressAdView;
    .locals 2

    .line 63
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    return-object v0
.end method

.method private requestAd()V
    .locals 3

    .line 161
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->unitId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->request:Lcom/google/android/gms/ads/AdRequest$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->videoOptions:Lcom/google/android/gms/ads/VideoOptions$Builder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->requested:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->resetAdView()V

    .line 169
    :cond_1
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->getAdView()Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->unitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 172
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->videoOptions:Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V

    .line 173
    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->request:Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 175
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->requested:Ljava/lang/Boolean;

    .line 176
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetAdView()V
    .locals 4

    .line 70
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->getAdView()Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object v2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/react/views/view/ReactViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/ads/NativeExpressAdView;->destroy()V

    .line 75
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->addView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->setAdListener()V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "type"

    .line 268
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "payload"

    .line 271
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 274
    :cond_0
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->emitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p2}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result p2

    const-string v1, "onBannerEvent"

    invoke-interface {p1, p2, v1, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method private setAdListener()V
    .locals 2

    .line 183
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->getAdView()Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    .line 185
    new-instance v1, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;

    invoke-direct {v1, p0, v0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$1;-><init>(Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;Lcom/google/android/gms/ads/NativeExpressAdView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 1

    .line 51
    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 52
    new-instance v0, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;

    .line 53
    const-class v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->emitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 55
    new-instance p1, Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/NativeExpressAdView;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->addView(Landroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->setAdListener()V

    .line 59
    iget-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->viewGroup:Lcom/facebook/react/views/view/ReactViewGroup;

    return-object p1
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const-string v1, "onBannerEvent"

    const-string v2, "registrationName"

    .line 87
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    .line 88
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFirebaseAdMobNativeExpress"

    return-object v0
.end method

.method public setRequest(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "request"
    .end annotation

    .line 111
    invoke-static {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->buildRequest(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->request:Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 112
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->requestAd()V

    return-void
.end method

.method public setSize(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "size"
    .end annotation

    .line 135
    invoke-static {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->stringToAdSize(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    .line 140
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    if-ne p2, v0, :cond_0

    .line 143
    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p2

    float-to-int p2, p2

    .line 144
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    iget-object v1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result p2

    .line 147
    iget-object v0, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->size:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    :goto_0
    int-to-double v1, p2

    const-string p2, "width"

    .line 150
    invoke-interface {p1, p2, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v0, v0

    const-string p2, "height"

    .line 151
    invoke-interface {p1, p2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 153
    sget-object p2, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->EVENT_AD_SIZE_CHANGE:Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;

    invoke-virtual {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress$Events;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 154
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->requestAd()V

    return-void
.end method

.method public setUnitId(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "unitId"
    .end annotation

    .line 99
    iput-object p2, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->unitId:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->requestAd()V

    return-void
.end method

.method public setVideoOptions(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "video"
    .end annotation

    .line 123
    invoke-static {p2}, Lio/invertase/firebase/admob/RNFirebaseAdMobUtils;->buildVideoOptions(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->videoOptions:Lcom/google/android/gms/ads/VideoOptions$Builder;

    .line 124
    invoke-direct {p0}, Lio/invertase/firebase/admob/RNFirebaseAdMobNativeExpress;->requestAd()V

    return-void
.end method

.class public Lcom/facebook/react/modules/appstate/AppStateModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "AppStateModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AppState"
.end annotation


# static fields
.field public static final APP_STATE_ACTIVE:Ljava/lang/String; = "active"

.field public static final APP_STATE_BACKGROUND:Ljava/lang/String; = "background"

.field private static final INITIAL_STATE:Ljava/lang/String; = "initialAppState"

.field protected static final NAME:Ljava/lang/String; = "AppState"


# instance fields
.field private mAppState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 39
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 40
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object p1

    sget-object v0, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne p1, v0, :cond_0

    const-string p1, "active"

    goto :goto_0

    :cond_0
    const-string p1, "background"

    :goto_0
    iput-object p1, p0, Lcom/facebook/react/modules/appstate/AppStateModule;->mAppState:Ljava/lang/String;

    return-void
.end method

.method private createAppStateEventMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 80
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/react/modules/appstate/AppStateModule;->mAppState:Ljava/lang/String;

    const-string v2, "app_state"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendAppStateChangeEvent()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/facebook/react/modules/appstate/AppStateModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 87
    invoke-direct {p0}, Lcom/facebook/react/modules/appstate/AppStateModule;->createAppStateEventMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "appStateDidChange"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
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

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/facebook/react/modules/appstate/AppStateModule;->mAppState:Ljava/lang/String;

    const-string v2, "initialAppState"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentAppState(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Lcom/facebook/react/modules/appstate/AppStateModule;->createAppStateEventMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AppState"

    return-object v0
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 1

    const-string v0, "background"

    .line 69
    iput-object v0, p0, Lcom/facebook/react/modules/appstate/AppStateModule;->mAppState:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/facebook/react/modules/appstate/AppStateModule;->sendAppStateChangeEvent()V

    return-void
.end method

.method public onHostResume()V
    .locals 1

    const-string v0, "active"

    .line 63
    iput-object v0, p0, Lcom/facebook/react/modules/appstate/AppStateModule;->mAppState:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/facebook/react/modules/appstate/AppStateModule;->sendAppStateChangeEvent()V

    return-void
.end method

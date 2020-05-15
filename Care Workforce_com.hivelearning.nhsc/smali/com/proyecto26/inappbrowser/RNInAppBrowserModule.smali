.class public Lcom/proyecto26/inappbrowser/RNInAppBrowserModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNInAppBrowserModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNInAppBrowser"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNInAppBrowser"


# instance fields
.field private final inAppBrowser:Lcom/proyecto26/inappbrowser/RNInAppBrowser;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    iput-object p1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowserModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 22
    new-instance p1, Lcom/proyecto26/inappbrowser/RNInAppBrowser;

    invoke-direct {p1}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;-><init>()V

    iput-object p1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowserModule;->inAppBrowser:Lcom/proyecto26/inappbrowser/RNInAppBrowser;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowserModule;->inAppBrowser:Lcom/proyecto26/inappbrowser/RNInAppBrowser;

    invoke-virtual {v0}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->close()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNInAppBrowser"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/proyecto26/inappbrowser/RNInAppBrowserModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowserModule;->inAppBrowser:Lcom/proyecto26/inappbrowser/RNInAppBrowser;

    iget-object v2, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowserModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->open(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Landroid/app/Activity;)V

    return-void
.end method

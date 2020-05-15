.class Lcom/hiveapp/MainApplication$1;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiveapp/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiveapp/MainApplication;


# direct methods
.method constructor <init>(Lcom/hiveapp/MainApplication;Landroid/app/Application;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/hiveapp/MainApplication$1;->this$0:Lcom/hiveapp/MainApplication;

    invoke-direct {p0, p2}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "index"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/facebook/react/ReactPackage;

    .line 51
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/proyecto26/inappbrowser/RNInAppBrowserPackage;

    invoke-direct {v1}, Lcom/proyecto26/inappbrowser/RNInAppBrowserPackage;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/psykar/cookiemanager/CookieManagerPackage;

    invoke-direct {v1}, Lcom/psykar/cookiemanager/CookieManagerPackage;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/reactnativecommunity/webview/RNCWebViewPackage;

    invoke-direct {v1}, Lcom/reactnativecommunity/webview/RNCWebViewPackage;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/rnappauth/RNAppAuthPackage;

    invoke-direct {v1}, Lcom/rnappauth/RNAppAuthPackage;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/facebook/react/modules/email/EmailPackage;

    invoke-direct {v1}, Lcom/facebook/react/modules/email/EmailPackage;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;

    invoke-direct {v1}, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/mybigday/rnmediameta/RNMediaMetaPackage;

    invoke-direct {v1}, Lcom/mybigday/rnmediameta/RNMediaMetaPackage;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 60
    invoke-static {}, Lcom/bugsnag/BugsnagReactNative;->getPackage()Lcom/facebook/react/ReactPackage;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/brentvatne/react/ReactVideoPackage;

    invoke-direct {v1}, Lcom/brentvatne/react/ReactVideoPackage;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/corbt/keepawake/KCKeepAwakePackage;

    invoke-direct {v1}, Lcom/corbt/keepawake/KCKeepAwakePackage;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/oblador/vectoricons/VectorIconsPackage;

    invoke-direct {v1}, Lcom/oblador/vectoricons/VectorIconsPackage;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/yamill/orientation/OrientationPackage;

    invoke-direct {v1}, Lcom/github/yamill/orientation/OrientationPackage;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/BV/LinearGradient/LinearGradientPackage;

    invoke-direct {v1}, Lcom/BV/LinearGradient/LinearGradientPackage;-><init>()V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/rnfingerprint/FingerprintAuthPackage;

    invoke-direct {v1}, Lcom/rnfingerprint/FingerprintAuthPackage;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;

    invoke-direct {v1}, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;-><init>()V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/oblador/keychain/KeychainPackage;

    invoke-direct {v1}, Lcom/oblador/keychain/KeychainPackage;-><init>()V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;

    invoke-direct {v1}, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;-><init>()V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/lugg/ReactNativeConfig/ReactNativeConfigPackage;

    invoke-direct {v1}, Lcom/lugg/ReactNativeConfig/ReactNativeConfigPackage;-><init>()V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/horcrux/svg/SvgPackage;

    invoke-direct {v1}, Lcom/horcrux/svg/SvgPackage;-><init>()V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/RNFetchBlob/RNFetchBlobPackage;

    invoke-direct {v1}, Lcom/RNFetchBlob/RNFetchBlobPackage;-><init>()V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lorg/wonday/pdf/RCTPdfView;

    invoke-direct {v1}, Lorg/wonday/pdf/RCTPdfView;-><init>()V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/imagepicker/ImagePickerPackage;

    invoke-direct {v1}, Lcom/imagepicker/ImagePickerPackage;-><init>()V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lio/invertase/firebase/RNFirebasePackage;

    invoke-direct {v1}, Lio/invertase/firebase/RNFirebasePackage;-><init>()V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationsPackage;

    invoke-direct {v1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationsPackage;-><init>()V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lio/invertase/firebase/messaging/RNFirebaseMessagingPackage;

    invoke-direct {v1}, Lio/invertase/firebase/messaging/RNFirebaseMessagingPackage;-><init>()V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/kevinresol/react_native_default_preference/RNDefaultPreferencePackage;

    invoke-direct {v1}, Lcom/kevinresol/react_native_default_preference/RNDefaultPreferencePackage;-><init>()V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

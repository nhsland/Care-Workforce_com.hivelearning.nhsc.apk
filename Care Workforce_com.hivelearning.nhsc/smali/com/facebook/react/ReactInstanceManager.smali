.class public Lcom/facebook/react/ReactInstanceManager;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;,
        Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mAttachedRootViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/react/ReactRootView;",
            ">;"
        }
    .end annotation
.end field

.field private final mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mCreateReactContextThread:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

.field private volatile mHasStartedCreatingInitialContext:Z

.field private volatile mHasStartedDestroying:Ljava/lang/Boolean;

.field private final mJSIModulePackage:Lcom/facebook/react/bridge/JSIModulePackage;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mJSMainModulePath:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

.field private volatile mLifecycleState:Lcom/facebook/react/common/LifecycleState;

.field private final mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

.field private final mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReactContextLock:Ljava/lang/Object;

.field private final mReactInstanceEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseDeveloperSupport:Z

.field private mViewManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    const-class v0, Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/ReactInstanceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;Ljava/lang/String;Ljava/util/List;ZLcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;Lcom/facebook/react/common/LifecycleState;Lcom/facebook/react/uimanager/UIImplementationProvider;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;Lcom/facebook/react/devsupport/RedBoxHandler;ZLcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;IILcom/facebook/react/bridge/JSIModulePackage;Ljava/util/Map;)V
    .locals 12
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/react/bridge/JSBundleLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/facebook/react/uimanager/UIImplementationProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/facebook/react/devsupport/RedBoxHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Lcom/facebook/react/bridge/JSIModulePackage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;",
            "Lcom/facebook/react/bridge/JavaScriptExecutorFactory;",
            "Lcom/facebook/react/bridge/JSBundleLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;Z",
            "Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;",
            "Lcom/facebook/react/common/LifecycleState;",
            "Lcom/facebook/react/uimanager/UIImplementationProvider;",
            "Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;",
            "Lcom/facebook/react/devsupport/RedBoxHandler;",
            "Z",
            "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
            "II",
            "Lcom/facebook/react/bridge/JSIModulePackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    .line 154
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mReactContextLock:Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    const/4 v2, 0x0

    .line 162
    iput-boolean v2, v1, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    .line 165
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mHasStartedDestroying:Ljava/lang/Boolean;

    const-string v2, "ReactNative"

    const-string v3, "ReactInstanceManager.ctor()"

    .line 218
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1}, Lcom/facebook/react/ReactInstanceManager;->initializeSoLoaderIfNecessary(Landroid/content/Context;)V

    .line 221
    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 223
    iput-object v0, v1, Lcom/facebook/react/ReactInstanceManager;->mApplicationContext:Landroid/content/Context;

    move-object v2, p2

    .line 224
    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    move-object v2, p3

    .line 225
    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    move-object/from16 v2, p4

    .line 226
    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-object/from16 v2, p5

    .line 227
    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    move-object/from16 v2, p6

    .line 228
    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mJSMainModulePath:Ljava/lang/String;

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    move/from16 v5, p8

    .line 230
    iput-boolean v5, v1, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    const-wide/16 v10, 0x0

    const-string v2, "ReactInstanceManager.initDevSupportManager"

    .line 231
    invoke-static {v10, v11, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->createDevHelperInterface()Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    move-result-object v3

    iget-object v4, v1, Lcom/facebook/react/ReactInstanceManager;->mJSMainModulePath:Ljava/lang/String;

    move-object v2, p1

    move-object/from16 v6, p13

    move-object/from16 v7, p15

    move/from16 v8, p16

    move-object/from16 v9, p19

    .line 234
    invoke-static/range {v2 .. v9}, Lcom/facebook/react/devsupport/DevSupportManagerFactory;->create(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 243
    invoke-static {v10, v11}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    move-object/from16 v2, p9

    .line 244
    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    move-object/from16 v2, p10

    .line 245
    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 246
    new-instance v2, Lcom/facebook/react/MemoryPressureRouter;

    invoke-direct {v2, p1}, Lcom/facebook/react/MemoryPressureRouter;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    move-object/from16 v0, p12

    .line 247
    iput-object v0, v1, Lcom/facebook/react/ReactInstanceManager;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .line 248
    iget-object v2, v1, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    monitor-enter v2

    .line 249
    :try_start_0
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v3, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const-string v4, "RNCore: Use Split Packages"

    .line 250
    invoke-interface {v0, v3, v4}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 251
    iget-object v0, v1, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage;

    new-instance v4, Lcom/facebook/react/ReactInstanceManager$1;

    invoke-direct {v4, p0}, Lcom/facebook/react/ReactInstanceManager$1;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    move-object p1, v3

    move-object p2, p0

    move-object p3, v4

    move-object/from16 p4, p11

    move/from16 p5, p14

    move/from16 p6, p17

    invoke-direct/range {p1 .. p6}, Lcom/facebook/react/CoreModulesPackage;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;Lcom/facebook/react/uimanager/UIImplementationProvider;ZI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-boolean v0, v1, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, v1, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    new-instance v3, Lcom/facebook/react/DebugCorePackage;

    invoke-direct {v3}, Lcom/facebook/react/DebugCorePackage;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    iget-object v0, v1, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    move-object/from16 v3, p7

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p18

    .line 268
    iput-object v0, v1, Lcom/facebook/react/ReactInstanceManager;->mJSIModulePackage:Lcom/facebook/react/bridge/JSIModulePackage;

    .line 271
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->initialize()V

    .line 272
    iget-boolean v0, v1, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, v1, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->startInspector()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 267
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->invokeDefaultOnBackPressed()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->setupReactContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/NativeDeltaClient;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->onJSBundleLoadedFromServer(Lcom/facebook/react/bridge/NativeDeltaClient;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->toggleElementInspector()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/ReactInstanceManager;)Landroid/app/Activity;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundFromBundleLoader()V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/react/ReactInstanceManager;)Ljava/lang/Boolean;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedDestroying:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/facebook/react/ReactInstanceManager;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    return p1
.end method

.method static synthetic access$900(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/ReactInstanceManager;->createReactContext(Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private attachRootViewToInstance(Lcom/facebook/react/ReactRootView;)V
    .locals 5

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.attachRootViewToInstance()"

    .line 1042
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    const-string v2, "attachRootViewToInstance"

    .line 1043
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v2

    .line 1046
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getAppProperties()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1047
    new-instance v3, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v3}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    goto :goto_0

    .line 1050
    :cond_0
    invoke-static {v3}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 1051
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getInitialUITemplate()Ljava/lang/String;

    move-result-object v4

    .line 1047
    invoke-interface {v2, p1, v3, v4}, Lcom/facebook/react/bridge/UIManager;->addRootView(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I

    move-result v2

    .line 1052
    invoke-virtual {p1, v2}, Lcom/facebook/react/ReactRootView;->setRootViewTag(I)V

    .line 1053
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->runApplication()V

    const-string v3, "pre_rootView.onAttachedToReactInstance"

    .line 1054
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;I)V

    .line 1058
    new-instance v3, Lcom/facebook/react/ReactInstanceManager$9;

    invoke-direct {v3, p0, v2, p1}, Lcom/facebook/react/ReactInstanceManager$9;-><init>(Lcom/facebook/react/ReactInstanceManager;ILcom/facebook/react/ReactRootView;)V

    invoke-static {v3}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1068
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void
.end method

.method public static builder()Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1

    .line 195
    new-instance v0, Lcom/facebook/react/ReactInstanceManagerBuilder;

    invoke-direct {v0}, Lcom/facebook/react/ReactInstanceManagerBuilder;-><init>()V

    return-object v0
.end method

.method private createDevHelperInterface()Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;
    .locals 1

    .line 278
    new-instance v0, Lcom/facebook/react/ReactInstanceManager$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactInstanceManager$2;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    return-object v0
.end method

.method private createReactContext(Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 5

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.createReactContext()"

    .line 1111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_REACT_CONTEXT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/JavaScriptExecutor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;)V

    .line 1113
    new-instance v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;-><init>(Landroid/content/Context;)V

    .line 1115
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 1118
    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->setNativeModuleCallExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V

    .line 1120
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/react/ReactInstanceManager;->processPackages(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Z)Lcom/facebook/react/bridge/NativeModuleRegistry;

    move-result-object v2

    .line 1122
    new-instance v3, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    invoke-direct {v3}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;-><init>()V

    .line 1123
    invoke-static {}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;->createDefault()Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setReactQueueConfigurationSpec(Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object v3

    .line 1124
    invoke-virtual {v3, p1}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setJSExecutor(Lcom/facebook/react/bridge/JavaScriptExecutor;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object p1

    .line 1125
    invoke-virtual {p1, v2}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setRegistry(Lcom/facebook/react/bridge/NativeModuleRegistry;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object p1

    .line 1126
    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setJSBundleLoader(Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object p1

    .line 1127
    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setNativeModuleCallExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object p1

    .line 1129
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_CATALYST_INSTANCE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-wide/16 v1, 0x0

    const-string p2, "createCatalystInstance"

    .line 1131
    invoke-static {v1, v2, p2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 1134
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->build()Lcom/facebook/react/bridge/CatalystInstanceImpl;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1137
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_CATALYST_INSTANCE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1139
    iget-object p2, p0, Lcom/facebook/react/ReactInstanceManager;->mJSIModulePackage:Lcom/facebook/react/bridge/JSIModulePackage;

    if-eqz p2, :cond_1

    .line 1141
    invoke-interface {p1}, Lcom/facebook/react/bridge/CatalystInstance;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Lcom/facebook/react/bridge/JSIModulePackage;->getJSIModules(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/JavaScriptContextHolder;)Ljava/util/List;

    move-result-object p2

    .line 1140
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/CatalystInstance;->addJSIModules(Ljava/util/List;)V

    .line 1144
    :cond_1
    iget-object p2, p0, Lcom/facebook/react/ReactInstanceManager;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    if-eqz p2, :cond_2

    .line 1145
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/CatalystInstance;->addBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V

    .line 1147
    :cond_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "__RCTProfileIsProfiling"

    const-string v3, "true"

    .line 1148
    invoke-interface {p1, p2, v3}, Lcom/facebook/react/bridge/CatalystInstance;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_3
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->PRE_RUN_JS_BUNDLE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-string p2, "runJSBundle"

    .line 1151
    invoke-static {v1, v2, p2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 1152
    invoke-interface {p1}, Lcom/facebook/react/bridge/CatalystInstance;->runJSBundle()V

    .line 1153
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1155
    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->initializeWithInstance(Lcom/facebook/react/bridge/CatalystInstance;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1136
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1137
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_CATALYST_INSTANCE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1138
    throw p1
.end method

.method private detachViewFromInstance(Lcom/facebook/react/ReactRootView;Lcom/facebook/react/bridge/CatalystInstance;)V
    .locals 2

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.detachViewFromInstance()"

    .line 1074
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 1076
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1077
    const-class v0, Lcom/facebook/react/modules/fabric/ReactFabric;

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/CatalystInstance;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/modules/fabric/ReactFabric;

    .line 1078
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/facebook/react/modules/fabric/ReactFabric;->unmountComponentAtNode(I)V

    goto :goto_0

    .line 1080
    :cond_0
    const-class v0, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/CatalystInstance;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/modules/appregistry/AppRegistry;

    .line 1081
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/facebook/react/modules/appregistry/AppRegistry;->unmountApplicationComponentAtRootTag(I)V

    :goto_0
    return-void
.end method

.method private static initializeSoLoaderIfNecessary(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 317
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method private invokeDefaultOnBackPressed()V
    .locals 1

    .line 445
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 446
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0}, Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;->invokeDefaultOnBackPressed()V

    :cond_0
    return-void
.end method

.method private declared-synchronized moveReactContextToCurrentLifecycleState()V
    .locals 2

    monitor-enter p0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 695
    invoke-direct {p0, v0}, Lcom/facebook/react/ReactInstanceManager;->moveToResumedLifecycleState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized moveToBeforeCreateLifecycleState()V
    .locals 3

    monitor-enter p0

    .line 680
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 684
    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_1

    .line 687
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostDestroy()V

    .line 690
    :cond_1
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized moveToBeforeResumeLifecycleState()V
    .locals 3

    monitor-enter p0

    .line 667
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_0

    .line 670
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->onHostResume(Landroid/app/Activity;)V

    .line 671
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    goto :goto_0

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_1

    .line 673
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 676
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized moveToResumedLifecycleState(Z)V
    .locals 2

    monitor-enter p0

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne p1, v1, :cond_1

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->onHostResume(Landroid/app/Activity;)V

    .line 663
    :cond_1
    sget-object p1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onJSBundleLoadedFromServer(Lcom/facebook/react/bridge/NativeDeltaClient;)V
    .locals 2
    .param p1    # Lcom/facebook/react/bridge/NativeDeltaClient;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.onJSBundleLoadedFromServer()"

    .line 878
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 880
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 882
    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 883
    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDownloadedJSBundleFile()Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-static {p1, v0}, Lcom/facebook/react/bridge/JSBundleLoader;->createCachedBundleFromNetworkLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 885
    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-static {v0, p1}, Lcom/facebook/react/bridge/JSBundleLoader;->createDeltaFromNetworkLoader(Ljava/lang/String;Lcom/facebook/react/bridge/NativeDeltaClient;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p1

    .line 887
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    invoke-direct {p0, v0, p1}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    return-void
.end method

.method private onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 2

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.onReloadWithJSDebugger()"

    .line 868
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v0, Lcom/facebook/react/bridge/ProxyJavaScriptExecutor$Factory;

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/ProxyJavaScriptExecutor$Factory;-><init>(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 872
    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getJSBundleURLForRemoteDebugging()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 873
    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-static {p1, v1}, Lcom/facebook/react/bridge/JSBundleLoader;->createRemoteDebuggerBundleLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p1

    .line 869
    invoke-direct {p0, v0, p1}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    return-void
.end method

.method private processPackage(Lcom/facebook/react/ReactPackage;Lcom/facebook/react/NativeModuleRegistryBuilder;)V
    .locals 5

    const-wide/16 v0, 0x0

    const-string v2, "processPackage"

    .line 1206
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 1207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "className"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 1208
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 1209
    instance-of v2, p1, Lcom/facebook/react/ReactPackageLogger;

    if-eqz v2, :cond_0

    .line 1210
    move-object v3, p1

    check-cast v3, Lcom/facebook/react/ReactPackageLogger;

    invoke-interface {v3}, Lcom/facebook/react/ReactPackageLogger;->startProcessPackage()V

    .line 1212
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/react/NativeModuleRegistryBuilder;->processPackage(Lcom/facebook/react/ReactPackage;)V

    if-eqz v2, :cond_1

    .line 1215
    check-cast p1, Lcom/facebook/react/ReactPackageLogger;

    invoke-interface {p1}, Lcom/facebook/react/ReactPackageLogger;->endProcessPackage()V

    .line 1217
    :cond_1
    invoke-static {v0, v1}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    return-void
.end method

.method private processPackages(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Z)Lcom/facebook/react/bridge/NativeModuleRegistry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;Z)",
            "Lcom/facebook/react/bridge/NativeModuleRegistry;"
        }
    .end annotation

    .line 1165
    new-instance v0, Lcom/facebook/react/NativeModuleRegistryBuilder;

    invoke-direct {v0, p1, p0}, Lcom/facebook/react/NativeModuleRegistryBuilder;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/ReactInstanceManager;)V

    .line 1169
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->PROCESS_PACKAGES_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1172
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    monitor-enter p1

    .line 1173
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/ReactPackage;

    if-eqz p3, :cond_0

    .line 1174
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "createAndProcessCustomReactPackage"

    .line 1177
    invoke-static {v2, v3, v4}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_1

    .line 1180
    :try_start_1
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/facebook/react/ReactInstanceManager;->processPackage(Lcom/facebook/react/ReactPackage;Lcom/facebook/react/NativeModuleRegistryBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    :try_start_2
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1185
    throw p2

    .line 1187
    :cond_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1188
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->PROCESS_PACKAGES_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1190
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_NATIVE_MODULE_REGISTRY_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-string p1, "buildNativeModuleRegistry"

    .line 1191
    invoke-static {v2, v3, p1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 1194
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/react/NativeModuleRegistryBuilder;->build()Lcom/facebook/react/bridge/NativeModuleRegistry;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1196
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1197
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_NATIVE_MODULE_REGISTRY_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object p1

    :catchall_1
    move-exception p1

    .line 1196
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1197
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_NATIVE_MODULE_REGISTRY_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1198
    throw p1

    :catchall_2
    move-exception p2

    .line 1187
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;)V
    .locals 2

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.recreateReactContextInBackground()"

    .line 894
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 897
    new-instance v0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    .line 900
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 901
    invoke-direct {p0, v0}, Lcom/facebook/react/ReactInstanceManager;->runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V

    goto :goto_0

    .line 903
    :cond_0
    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    :goto_0
    return-void
.end method

.method private recreateReactContextInBackgroundFromBundleLoader()V
    .locals 3

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.recreateReactContextInBackgroundFromBundleLoader()"

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const-string v2, "RNCore: load from BundleLoader"

    .line 414
    invoke-interface {v0, v1, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    return-void
.end method

.method private recreateReactContextInBackgroundInner()V
    .locals 3

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.recreateReactContextInBackgroundInner()"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const-string v2, "RNCore: recreateReactContextInBackground"

    .line 362
    invoke-interface {v0, v1, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 365
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mJSMainModulePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->hasUpToDateJSBundleInCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, v0}, Lcom/facebook/react/ReactInstanceManager;->onJSBundleLoadedFromServer(Lcom/facebook/react/bridge/NativeDeltaClient;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 377
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-nez v1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    new-instance v2, Lcom/facebook/react/ReactInstanceManager$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/react/ReactInstanceManager$3;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;)V

    invoke-interface {v1, v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    :goto_0
    return-void

    .line 405
    :cond_2
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundFromBundleLoader()V

    return-void
.end method

.method private runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V
    .locals 4

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.runCreateReactContextOnNewThread()"

    .line 909
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 911
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mReactContextLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 913
    :try_start_1
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 914
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p0, v2}, Lcom/facebook/react/ReactInstanceManager;->tearDownReactContext(Lcom/facebook/react/bridge/ReactContext;)V

    .line 915
    iput-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 917
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 920
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/react/ReactInstanceManager$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/ReactInstanceManager$5;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V

    const-string p1, "create_react_context"

    invoke-direct {v0, v3, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    .line 979
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->REACT_CONTEXT_THREAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 980
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 917
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 918
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private setupReactContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 5

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.setupReactContext()"

    .line 984
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->PRE_SETUP_REACT_CONTEXT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 986
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->SETUP_REACT_CONTEXT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-wide/16 v0, 0x0

    const-string v2, "setupReactContext"

    .line 987
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 988
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    monitor-enter v2

    .line 989
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mReactContextLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 990
    :try_start_1
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReactContext;

    iput-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 991
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/CatalystInstance;

    .line 996
    invoke-interface {v3}, Lcom/facebook/react/bridge/CatalystInstance;->initialize()V

    .line 997
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v4, p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V

    .line 998
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    invoke-virtual {v4, v3}, Lcom/facebook/react/MemoryPressureRouter;->addMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V

    .line 999
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveReactContextToCurrentLifecycleState()V

    .line 1001
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->ATTACH_MEASURED_ROOT_VIEWS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1002
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/ReactRootView;

    .line 1003
    invoke-direct {p0, v4}, Lcom/facebook/react/ReactInstanceManager;->attachRootViewToInstance(Lcom/facebook/react/ReactRootView;)V

    goto :goto_0

    .line 1005
    :cond_0
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->ATTACH_MEASURED_ROOT_VIEWS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1006
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1008
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    .line 1009
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .line 1010
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    .line 1011
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .line 1013
    new-instance v3, Lcom/facebook/react/ReactInstanceManager$6;

    invoke-direct {v3, p0, v2, p1}, Lcom/facebook/react/ReactInstanceManager$6;-><init>(Lcom/facebook/react/ReactInstanceManager;[Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-static {v3}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1022
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1023
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->SETUP_REACT_CONTEXT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1024
    new-instance v0, Lcom/facebook/react/ReactInstanceManager$7;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactInstanceManager$7;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)V

    .line 1032
    new-instance v0, Lcom/facebook/react/ReactInstanceManager$8;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactInstanceManager$8;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 991
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 1006
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private tearDownReactContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.tearDownReactContext()"

    .line 1087
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 1089
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 1090
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    monitor-enter v0

    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactRootView;

    .line 1095
    invoke-virtual {v2}, Lcom/facebook/react/ReactRootView;->removeAllViews()V

    const/4 v3, -0x1

    .line 1096
    invoke-virtual {v2, v3}, Lcom/facebook/react/ReactRootView;->setId(I)V

    goto :goto_0

    .line 1098
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->destroy()V

    .line 1101
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V

    .line 1102
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/react/MemoryPressureRouter;->removeMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1098
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private toggleElementInspector()V
    .locals 3

    .line 474
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 477
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const/4 v1, 0x0

    const-string v2, "toggleElementInspector"

    .line 478
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachRootView(Lcom/facebook/react/ReactRootView;)V
    .locals 2

    .line 723
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 724
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->removeAllViews()V

    const/4 v0, -0x1

    .line 728
    invoke-virtual {p1, v0}, Lcom/facebook/react/ReactRootView;->setId(I)V

    .line 732
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 734
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->attachRootViewToInstance(Lcom/facebook/react/ReactRootView;)V

    :cond_0
    return-void
.end method

.method public createReactContextInBackground()V
    .locals 3

    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.createReactContextInBackground()"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "createReactContextInBackground should only be called when creating the react application for the first time. When reloading JS, e.g. from a new file, explicitlyuse recreateReactContextInBackground"

    invoke-static {v0, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 338
    iput-boolean v1, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    .line 339
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundInner()V

    return-void
.end method

.method public createViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mReactContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 787
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 792
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    monitor-enter v3

    .line 793
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/ReactPackage;

    .line 794
    instance-of v5, v4, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    if-eqz v5, :cond_1

    .line 795
    check-cast v4, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    .line 797
    invoke-interface {v4, v1, p1}, Lcom/facebook/react/ViewManagerOnDemandReactPackage;->createViewManager(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 799
    monitor-exit v3

    return-object v4

    .line 803
    :cond_2
    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 788
    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p1

    .line 790
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public destroy()V
    .locals 4

    .line 619
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 620
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const-string v2, "RNCore: Destroy"

    invoke-interface {v0, v1, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 622
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedDestroying:Ljava/lang/Boolean;

    .line 624
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 626
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->stopInspector()V

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveToBeforeCreateLifecycleState()V

    .line 631
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 632
    iput-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/facebook/react/MemoryPressureRouter;->destroy(Landroid/content/Context;)V

    .line 637
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mReactContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v3, :cond_2

    .line 639
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactContext;->destroy()V

    .line 640
    iput-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 642
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 643
    iput-boolean v1, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    .line 644
    iput-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 646
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->clear()V

    .line 647
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedDestroying:Ljava/lang/Boolean;

    .line 648
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedDestroying:Ljava/lang/Boolean;

    monitor-enter v1

    .line 649
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedDestroying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 650
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 642
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public detachRootView(Lcom/facebook/react/ReactRootView;)V
    .locals 3

    .line 745
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 746
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 749
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->hasActiveCatalystInstance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/facebook/react/ReactInstanceManager;->detachViewFromInstance(Lcom/facebook/react/ReactRootView;Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 754
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mReactContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 855
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-object v0
.end method

.method public getJsExecutorName()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleState()Lcom/facebook/react/common/LifecycleState;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    return-object v0
.end method

.method public getMemoryPressureRouter()Lcom/facebook/react/MemoryPressureRouter;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    return-object v0
.end method

.method public getOrCreateViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 762
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_VIEW_MANAGERS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-wide/16 v0, 0x0

    const-string v2, "createAllViewManagers"

    .line 763
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 765
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mViewManagers:Ljava/util/List;

    if-nez v2, :cond_2

    .line 766
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 767
    :try_start_1
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mViewManagers:Ljava/util/List;

    if-nez v3, :cond_1

    .line 768
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mViewManagers:Ljava/util/List;

    .line 769
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/ReactPackage;

    .line 770
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mViewManagers:Ljava/util/List;

    invoke-interface {v4, p1}, Lcom/facebook/react/ReactPackage;->createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 772
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mViewManagers:Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    :goto_1
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 779
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_VIEW_MANAGERS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object p1

    .line 774
    :cond_1
    :try_start_2
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 776
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mViewManagers:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 778
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 779
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_VIEW_MANAGERS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 780
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getViewManagerNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-wide/16 v0, 0x0

    const-string v2, "ReactInstanceManager.getViewManagerNames"

    .line 808
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mReactContextLock:Ljava/lang/Object;

    monitor-enter v2

    .line 811
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v3, :cond_3

    .line 812
    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 815
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 817
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    monitor-enter v4

    .line 818
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 819
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/ReactPackage;

    const-string v7, "ReactInstanceManager.getViewManagerName"

    .line 820
    invoke-static {v0, v1, v7}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    const-string v8, "Package"

    .line 821
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    .line 822
    invoke-virtual {v7}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 823
    instance-of v7, v6, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    if-eqz v7, :cond_1

    .line 824
    check-cast v6, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    .line 825
    invoke-interface {v6, v3}, Lcom/facebook/react/ViewManagerOnDemandReactPackage;->getViewManagerNames(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 827
    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 830
    :cond_1
    invoke-static {v0, v1}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    goto :goto_0

    .line 832
    :cond_2
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v0

    .line 834
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 813
    :try_start_2
    monitor-exit v2

    return-object v0

    :catchall_1
    move-exception v0

    .line 815
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public hasStartedCreatingInitialContext()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/bridge/ReactContext;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 431
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 432
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const-string v0, "ReactNative"

    const-string v1, "Instance detached from instance manager"

    .line 435
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->invokeDefaultOnBackPressed()V

    goto :goto_0

    .line 438
    :cond_0
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    .line 439
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    .line 440
    invoke-virtual {v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->emitHardwareBackPressed()V

    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 2

    .line 590
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 592
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 596
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveToBeforeCreateLifecycleState()V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method

.method public onHostDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->onHostDestroy()V

    :cond_0
    return-void
.end method

.method public onHostPause()V
    .locals 2

    .line 490
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 493
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveToBeforeResumeLifecycleState()V

    return-void
.end method

.method public onHostPause(Landroid/app/Activity;)V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing an activity that is not the current activity, this is incorrect! Current activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 514
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Paused activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-static {v0, p1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->onHostPause()V

    return-void
.end method

.method public onHostResume(Landroid/app/Activity;)V
    .locals 1

    .line 543
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 545
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 547
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 559
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/facebook/react/ReactInstanceManager$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/ReactInstanceManager$4;-><init>(Lcom/facebook/react/ReactInstanceManager;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 579
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->moveToResumedLifecycleState(Z)V

    return-void
.end method

.method public onHostResume(Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)V
    .locals 0

    .line 532
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 534
    iput-object p2, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 535
    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->onHostResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 456
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 457
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ReactNative"

    const-string v0, "Instance detached from instance manager"

    .line 459
    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    .line 464
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 465
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    .line 466
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    .line 467
    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->emitNewIntentReceived(Landroid/net/Uri;)V

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/bridge/ReactContext;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public recreateReactContextInBackground()V
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    const-string v1, "recreateReactContextInBackground should only be called after the initial createReactContextInBackground call."

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundInner()V

    return-void
.end method

.method public removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 1

    .line 709
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 710
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->showDevOptionsDialog()V

    return-void
.end method

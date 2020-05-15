.class public Lcom/proyecto26/inappbrowser/RNInAppBrowser;
.super Ljava/lang/Object;
.source "RNInAppBrowser.java"


# static fields
.field private static final ERROR_CODE:Ljava/lang/String; = "InAppBrowser"

.field private static final KEY_ANIMATIONS:Ljava/lang/String; = "animations"

.field private static final KEY_ANIMATION_END_ENTER:Ljava/lang/String; = "endEnter"

.field private static final KEY_ANIMATION_END_EXIT:Ljava/lang/String; = "endExit"

.field private static final KEY_ANIMATION_START_ENTER:Ljava/lang/String; = "startEnter"

.field private static final KEY_ANIMATION_START_EXIT:Ljava/lang/String; = "startExit"

.field private static final KEY_DEFAULT_SHARE_MENU_ITEM:Ljava/lang/String; = "enableDefaultShare"

.field private static final KEY_ENABLE_URL_BAR_HIDING:Ljava/lang/String; = "enableUrlBarHiding"

.field private static final KEY_FORCE_CLOSE_ON_REDIRECTION:Ljava/lang/String; = "forceCloseOnRedirection"

.field private static final KEY_HEADERS:Ljava/lang/String; = "headers"

.field private static final KEY_SECONDARY_TOOLBAR_COLOR:Ljava/lang/String; = "secondaryToolbarColor"

.field private static final KEY_SHOW_PAGE_TITLE:Ljava/lang/String; = "showTitle"

.field private static final KEY_TOOLBAR_COLOR:Ljava/lang/String; = "toolbarColor"

.field private static final animationIdentifierPattern:Ljava/util/regex/Pattern;


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^.+:.+/"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->animationIdentifierPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private registerEventBus()V
    .locals 1

    .line 211
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private resolveAnimationIdentifierIfNeeded(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 203
    sget-object v0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->animationIdentifierPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "anim"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private unRegisterEventBus()V
    .locals 1

    .line 217
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method applyAnimation(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent$Builder;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6

    const-string v0, "startEnter"

    .line 180
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->resolveAnimationIdentifierIfNeeded(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "startExit"

    .line 183
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->resolveAnimationIdentifierIfNeeded(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const-string v3, "endEnter"

    .line 186
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->resolveAnimationIdentifierIfNeeded(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    const-string v4, "endExit"

    .line 189
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->resolveAnimationIdentifierIfNeeded(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    goto :goto_3

    :cond_3
    const/4 p3, -0x1

    :goto_3
    if-eq v0, v2, :cond_4

    if-eq v1, v2, :cond_4

    .line 194
    invoke-virtual {p2, p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setStartAnimations(Landroid/content/Context;II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_4
    if-eq v3, v2, :cond_5

    if-eq p3, v2, :cond_5

    .line 198
    invoke-virtual {p2, p1, v3, p3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setExitAnimations(Landroid/content/Context;II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_5
    return-void
.end method

.method public close()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->currentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "InAppBrowser"

    const-string v3, "No activity"

    .line 149
    invoke-interface {v0, v1, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object v2, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    return-void

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->unRegisterEventBus()V

    .line 156
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "type"

    const-string v3, "dismiss"

    .line 157
    invoke-interface {v0, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 159
    iput-object v2, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    .line 161
    iget-object v0, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->currentActivity:Landroid/app/Activity;

    .line 162
    invoke-static {v0}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->createDismissIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onEvent(Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->unRegisterEventBus()V

    .line 169
    iget-object v0, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 174
    iget-object p1, p1, Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;->resultType:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public open(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Landroid/app/Activity;)V
    .locals 6

    const-string v0, "url"

    .line 47
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iput-object p4, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->currentActivity:Landroid/app/Activity;

    .line 49
    iget-object v1, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "type"

    const-string p3, "cancel"

    .line 51
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 53
    iput-object v2, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    return-void

    .line 56
    :cond_0
    iput-object p3, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    if-nez p4, :cond_1

    const-string p1, "InAppBrowser"

    const-string p2, "No activity"

    .line 59
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object v2, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->mOpenBrowserPromise:Lcom/facebook/react/bridge/Promise;

    return-void

    .line 64
    :cond_1
    new-instance p3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const-string p4, "toolbarColor"

    .line 65
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\': "

    if-eqz v1, :cond_2

    .line 66
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 68
    :try_start_0
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid toolbar color \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    const-string p4, "secondaryToolbarColor"

    .line 74
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 77
    :try_start_1
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSecondaryToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 79
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid secondary toolbar color \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    const-string p4, "enableUrlBarHiding"

    .line 83
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 85
    invoke-virtual {p3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->enableUrlBarHiding()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_4
    const-string p4, "enableDefaultShare"

    .line 87
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 89
    invoke-virtual {p3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addDefaultShareMenuItem()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_5
    const-string p4, "animations"

    .line 91
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p4

    .line 93
    invoke-virtual {p0, p1, p3, p4}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->applyAnimation(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent$Builder;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 96
    :cond_6
    invoke-virtual {p3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    const-string p4, "headers"

    .line 98
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 99
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p4

    if-eqz p4, :cond_9

    .line 102
    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 104
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 105
    :goto_2
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 106
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-interface {p4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    .line 108
    sget-object v5, Lcom/proyecto26/inappbrowser/RNInAppBrowser$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    goto :goto_2

    .line 110
    :cond_7
    invoke-interface {p4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_8
    iget-object p4, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v1, "com.android.browser.headers"

    invoke-virtual {p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_9
    const-string p4, "forceCloseOnRedirection"

    .line 121
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 122
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 123
    iget-object p4, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    iget-object p4, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {p4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    iget-object p4, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {p4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    :cond_a
    iget-object p4, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 129
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "showTitle"

    .line 130
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 131
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_3

    :cond_b
    const/4 p2, 0x0

    const-string p3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 134
    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    :goto_3
    invoke-direct {p0}, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->registerEventBus()V

    .line 139
    iget-object p2, p0, Lcom/proyecto26/inappbrowser/RNInAppBrowser;->currentActivity:Landroid/app/Activity;

    .line 140
    invoke-static {p2, p4}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->createStartIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 139
    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

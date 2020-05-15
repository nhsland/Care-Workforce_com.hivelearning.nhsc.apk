.class public Lnet/openid/appauth/AuthorizationService;
.super Ljava/lang/Object;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;,
        Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;,
        Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;,
        Lnet/openid/appauth/AuthorizationService$TokenRequestTask;
    }
.end annotation


# instance fields
.field private final mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

.field private final mClientConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

.field mContext:Landroid/content/Context;

.field private final mCustomTabManager:Lnet/openid/appauth/browser/CustomTabManager;

.field private mDisposed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    sget-object v0, Lnet/openid/appauth/AppAuthConfiguration;->DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;

    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V
    .locals 2

    .line 98
    invoke-virtual {p2}, Lnet/openid/appauth/AppAuthConfiguration;->getBrowserMatcher()Lnet/openid/appauth/browser/BrowserMatcher;

    move-result-object v0

    .line 96
    invoke-static {p1, v0}, Lnet/openid/appauth/browser/BrowserSelector;->select(Landroid/content/Context;Lnet/openid/appauth/browser/BrowserMatcher;)Lnet/openid/appauth/browser/BrowserDescriptor;

    move-result-object v0

    new-instance v1, Lnet/openid/appauth/browser/CustomTabManager;

    invoke-direct {v1, p1}, Lnet/openid/appauth/browser/CustomTabManager;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0, p1, p2, v0, v1}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;Lnet/openid/appauth/browser/BrowserDescriptor;Lnet/openid/appauth/browser/CustomTabManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;Lnet/openid/appauth/browser/BrowserDescriptor;Lnet/openid/appauth/browser/CustomTabManager;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 110
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationService;->mClientConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    .line 112
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lnet/openid/appauth/browser/CustomTabManager;

    .line 113
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    if-eqz p3, :cond_0

    .line 115
    iget-object p1, p3, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lnet/openid/appauth/browser/CustomTabManager;

    iget-object p2, p3, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/openid/appauth/browser/CustomTabManager;->bind(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 361
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service has been disposed and rendered inoperable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;Landroidx/browser/customtabs/CustomTabsIntent;)Landroid/content/Intent;
    .locals 4

    .line 369
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    .line 371
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationRequest;->toUri()Landroid/net/Uri;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    iget-object v1, v1, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object p2, p2, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 380
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    :goto_0
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    iget-object v1, v1, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    iget-object v1, v1, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    .line 387
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Using %s as browser for auth, custom tab = %s"

    .line 385
    invoke-static {v1, v0}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Object;

    .line 389
    iget-object p1, p1, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object p1, p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    aput-object p1, v0, v2

    const-string p1, "Initiating authorization request to %s"

    invoke-static {p1, v0}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 372
    :cond_1
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs createCustomTabsIntentBuilder([Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 1

    .line 137
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    .line 138
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lnet/openid/appauth/browser/CustomTabManager;

    invoke-virtual {v0, p1}, Lnet/openid/appauth/browser/CustomTabManager;->createTabBuilder([Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 353
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lnet/openid/appauth/browser/CustomTabManager;

    invoke-virtual {v0}, Lnet/openid/appauth/browser/CustomTabManager;->dispose()V

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    return-void
.end method

.method public getAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    .line 296
    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationService;->createCustomTabsIntentBuilder([Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/AuthorizationService;->getAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;Landroidx/browser/customtabs/CustomTabsIntent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;Landroidx/browser/customtabs/CustomTabsIntent;)Landroid/content/Intent;
    .locals 1

    .line 267
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/AuthorizationService;->prepareAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;Landroidx/browser/customtabs/CustomTabsIntent;)Landroid/content/Intent;

    move-result-object p2

    .line 268
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lnet/openid/appauth/AuthorizationManagementActivity;->createStartForResultIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationRequest;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getBrowserDescriptor()Lnet/openid/appauth/browser/BrowserDescriptor;
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    return-object v0
.end method

.method public getCustomTabManager()Lnet/openid/appauth/browser/CustomTabManager;
    .locals 1

    .line 121
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lnet/openid/appauth/browser/CustomTabManager;

    return-object v0
.end method

.method public performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    .line 157
    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationService;->createCustomTabsIntentBuilder([Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/openid/appauth/AuthorizationService;->performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/browser/customtabs/CustomTabsIntent;)V

    return-void
.end method

.method public performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    .line 178
    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationService;->createCustomTabsIntentBuilder([Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 174
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/openid/appauth/AuthorizationService;->performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/browser/customtabs/CustomTabsIntent;)V

    return-void
.end method

.method public performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/browser/customtabs/CustomTabsIntent;)V
    .locals 1

    .line 227
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    .line 228
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {p2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {p4}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-direct {p0, p1, p4}, Lnet/openid/appauth/AuthorizationService;->prepareAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;Landroidx/browser/customtabs/CustomTabsIntent;)Landroid/content/Intent;

    move-result-object p4

    .line 233
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p4, p2, p3}, Lnet/openid/appauth/AuthorizationManagementActivity;->createStartIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationRequest;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroidx/browser/customtabs/CustomTabsIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/openid/appauth/AuthorizationService;->performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/browser/customtabs/CustomTabsIntent;)V

    return-void
.end method

.method public performRegistrationRequest(Lnet/openid/appauth/RegistrationRequest;Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;)V
    .locals 3

    .line 337
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 338
    iget-object v1, p1, Lnet/openid/appauth/RegistrationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationServiceConfiguration;->registrationEndpoint:Landroid/net/Uri;

    .line 339
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Initiating dynamic client registration %s"

    .line 338
    invoke-static {v1, v0}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    new-instance v0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService;->mClientConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    .line 342
    invoke-virtual {v1}, Lnet/openid/appauth/AppAuthConfiguration;->getConnectionBuilder()Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;-><init>(Lnet/openid/appauth/RegistrationRequest;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 344
    invoke-virtual {v0, p1}, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V
    .locals 1

    .line 307
    sget-object v0, Lnet/openid/appauth/NoClientAuthentication;->INSTANCE:Lnet/openid/appauth/NoClientAuthentication;

    invoke-virtual {p0, p1, v0, p2}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    return-void
.end method

.method public performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V
    .locals 3

    .line 319
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService;->checkNotDisposed()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 320
    iget-object v1, p1, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Initiating code exchange request to %s"

    invoke-static {v1, v0}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    new-instance v0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService;->mClientConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    .line 325
    invoke-virtual {v1}, Lnet/openid/appauth/AppAuthConfiguration;->getConnectionBuilder()Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;-><init>(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 327
    invoke-virtual {v0, p1}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

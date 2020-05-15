.class public Lnet/openid/appauth/AppAuthConfiguration$Builder;
.super Ljava/lang/Object;
.source "AppAuthConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AppAuthConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

.field private mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lnet/openid/appauth/browser/AnyBrowserMatcher;->INSTANCE:Lnet/openid/appauth/browser/AnyBrowserMatcher;

    iput-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    .line 73
    sget-object v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    iput-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/AppAuthConfiguration;
    .locals 4

    .line 102
    new-instance v0, Lnet/openid/appauth/AppAuthConfiguration;

    iget-object v1, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    iget-object v2, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/openid/appauth/AppAuthConfiguration;-><init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/AppAuthConfiguration$1;)V

    return-object v0
.end method

.method public setBrowserMatcher(Lnet/openid/appauth/browser/BrowserMatcher;)Lnet/openid/appauth/AppAuthConfiguration$Builder;
    .locals 1

    const-string v0, "browserMatcher cannot be null"

    .line 81
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    return-object p0
.end method

.method public setConnectionBuilder(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration$Builder;
    .locals 1

    const-string v0, "connectionBuilder cannot be null"

    .line 92
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-object p0
.end method

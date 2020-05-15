.class public Lnet/openid/appauth/AppAuthConfiguration;
.super Ljava/lang/Object;
.source "AppAuthConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AppAuthConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;


# instance fields
.field private final mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

.field private final mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lnet/openid/appauth/AppAuthConfiguration$Builder;

    invoke-direct {v0}, Lnet/openid/appauth/AppAuthConfiguration$Builder;-><init>()V

    .line 35
    invoke-virtual {v0}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->build()Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AppAuthConfiguration;->DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lnet/openid/appauth/AppAuthConfiguration;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    .line 47
    iput-object p2, p0, Lnet/openid/appauth/AppAuthConfiguration;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/AppAuthConfiguration$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/AppAuthConfiguration;-><init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    return-void
.end method


# virtual methods
.method public getBrowserMatcher()Lnet/openid/appauth/browser/BrowserMatcher;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    return-object v0
.end method

.method public getConnectionBuilder()Lnet/openid/appauth/connectivity/ConnectionBuilder;
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-object v0
.end method

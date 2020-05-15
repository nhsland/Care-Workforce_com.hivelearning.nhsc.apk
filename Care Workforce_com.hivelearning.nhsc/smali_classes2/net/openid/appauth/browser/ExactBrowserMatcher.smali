.class public Lnet/openid/appauth/browser/ExactBrowserMatcher;
.super Ljava/lang/Object;
.source "ExactBrowserMatcher.java"

# interfaces
.implements Lnet/openid/appauth/browser/BrowserMatcher;


# instance fields
.field private mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/browser/BrowserDescriptor;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lnet/openid/appauth/browser/ExactBrowserMatcher;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    return-void
.end method


# virtual methods
.method public matches(Lnet/openid/appauth/browser/BrowserDescriptor;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lnet/openid/appauth/browser/ExactBrowserMatcher;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    invoke-virtual {v0, p1}, Lnet/openid/appauth/browser/BrowserDescriptor;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.class public Lnet/openid/appauth/browser/BrowserBlacklist;
.super Ljava/lang/Object;
.source "BrowserBlacklist.java"

# interfaces
.implements Lnet/openid/appauth/browser/BrowserMatcher;


# instance fields
.field private mBrowserMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/openid/appauth/browser/BrowserMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lnet/openid/appauth/browser/BrowserMatcher;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/browser/BrowserBlacklist;->mBrowserMatchers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public matches(Lnet/openid/appauth/browser/BrowserDescriptor;)Z
    .locals 2

    .line 60
    iget-object v0, p0, Lnet/openid/appauth/browser/BrowserBlacklist;->mBrowserMatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/openid/appauth/browser/BrowserMatcher;

    .line 61
    invoke-interface {v1, p1}, Lnet/openid/appauth/browser/BrowserMatcher;->matches(Lnet/openid/appauth/browser/BrowserDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

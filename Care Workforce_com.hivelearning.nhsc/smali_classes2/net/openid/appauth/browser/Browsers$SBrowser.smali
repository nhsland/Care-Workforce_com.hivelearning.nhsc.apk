.class public final Lnet/openid/appauth/browser/Browsers$SBrowser;
.super Ljava/lang/Object;
.source "Browsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/browser/Browsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SBrowser"
.end annotation


# static fields
.field public static final MINIMUM_VERSION_FOR_CUSTOM_TAB:Lnet/openid/appauth/browser/DelimitedVersion;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field public static final SIGNATURE_HASH:Ljava/lang/String; = "ABi2fbt8vkzj7SJ8aD5jc4xJFTDFntdkMrYXL3itsvqY1QIw-dZozdop5rgKNxjbrQAd5nntAGpgh9w84O1Xgg=="

.field public static final SIGNATURE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABi2fbt8vkzj7SJ8aD5jc4xJFTDFntdkMrYXL3itsvqY1QIw-dZozdop5rgKNxjbrQAd5nntAGpgh9w84O1Xgg=="

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/browser/Browsers$SBrowser;->SIGNATURE_SET:Ljava/util/Set;

    const-string v0, "4.0"

    .line 156
    invoke-static {v0}, Lnet/openid/appauth/browser/DelimitedVersion;->parse(Ljava/lang/String;)Lnet/openid/appauth/browser/DelimitedVersion;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/browser/Browsers$SBrowser;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lnet/openid/appauth/browser/DelimitedVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customTab(Ljava/lang/String;)Lnet/openid/appauth/browser/BrowserDescriptor;
    .locals 4

    .line 171
    new-instance v0, Lnet/openid/appauth/browser/BrowserDescriptor;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$SBrowser;->SIGNATURE_SET:Ljava/util/Set;

    const-string v2, "com.sec.android.app.sbrowser"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, p0, v3}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static standaloneBrowser(Ljava/lang/String;)Lnet/openid/appauth/browser/BrowserDescriptor;
    .locals 4

    .line 163
    new-instance v0, Lnet/openid/appauth/browser/BrowserDescriptor;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$SBrowser;->SIGNATURE_SET:Ljava/util/Set;

    const-string v2, "com.sec.android.app.sbrowser"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, p0, v3}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method

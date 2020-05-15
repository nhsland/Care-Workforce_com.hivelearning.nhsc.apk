.class public Lnet/openid/appauth/RedirectUriReceiverActivity;
.super Landroid/app/Activity;
.source "RedirectUriReceiverActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lnet/openid/appauth/RedirectUriReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->createResponseHandlingIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/RedirectUriReceiverActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lnet/openid/appauth/RedirectUriReceiverActivity;->finish()V

    return-void
.end method

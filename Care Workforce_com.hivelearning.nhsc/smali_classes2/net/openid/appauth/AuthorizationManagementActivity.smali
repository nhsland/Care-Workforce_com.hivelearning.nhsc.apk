.class public Lnet/openid/appauth/AuthorizationManagementActivity;
.super Landroid/app/Activity;
.source "AuthorizationManagementActivity.java"


# static fields
.field static final KEY_AUTHORIZATION_STARTED:Ljava/lang/String; = "authStarted"

.field static final KEY_AUTH_INTENT:Ljava/lang/String; = "authIntent"

.field static final KEY_AUTH_REQUEST:Ljava/lang/String; = "authRequest"

.field static final KEY_CANCEL_INTENT:Ljava/lang/String; = "cancelIntent"

.field static final KEY_COMPLETE_INTENT:Ljava/lang/String; = "completeIntent"


# instance fields
.field private mAuthIntent:Landroid/content/Intent;

.field private mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;

.field private mAuthorizationStarted:Z

.field private mCancelIntent:Landroid/app/PendingIntent;

.field private mCompleteIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    return-void
.end method

.method private static createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/openid/appauth/AuthorizationManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createResponseHandlingIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 187
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    .line 188
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 189
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static createStartForResultIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-static {p0, p1, p2, v0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->createStartIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationRequest;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createStartIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationRequest;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 1

    .line 159
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "authIntent"

    .line 160
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerializeString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "authRequest"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "completeIntent"

    .line 162
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "cancelIntent"

    .line 163
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method private extractResponseData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 318
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {p1}, Lnet/openid/appauth/AuthorizationException;->fromOAuthRedirect(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 321
    :cond_0
    new-instance v0, Lnet/openid/appauth/AuthorizationResponse$Builder;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;

    invoke-direct {v0, v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;-><init>(Lnet/openid/appauth/AuthorizationRequest;)V

    .line 322
    invoke-virtual {v0, p1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->fromUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->build()Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    iget-object v1, p1, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 328
    iget-object p1, p1, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "State returned in authorization response (%s) does not match state from request (%s) - discarding response"

    invoke-static {p1, v0}, Lnet/openid/appauth/internal/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    sget-object p1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STATE_MISMATCH:Lnet/openid/appauth/AuthorizationException;

    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 336
    :cond_3
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationResponse;->toIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private extractState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "No stored state - unable to handle response"

    .line 298
    invoke-static {v0, p1}, Lnet/openid/appauth/internal/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "authIntent"

    .line 303
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    const-string v1, "authStarted"

    .line 304
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    :try_start_0
    const-string v0, "authRequest"

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "completeIntent"

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    const-string v0, "cancelIntent"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    return-void

    :catch_0
    move-exception p1

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to deserialize authorization request"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private handleAuthorizationCanceled()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Authorization flow canceled by user"

    .line 279
    invoke-static {v2, v1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    sget-object v1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->USER_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 286
    :try_start_0
    invoke-virtual {v2, p0, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "Failed to send cancel intent"

    .line 288
    invoke-static {v0, v2}, Lnet/openid/appauth/internal/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/openid/appauth/AuthorizationManagementActivity;->setResult(ILandroid/content/Intent;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No cancel intent set - will return to previous activity"

    .line 292
    invoke-static {v1, v0}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleAuthorizationComplete()V
    .locals 4

    .line 258
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 259
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractResponseData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Failed to extract OAuth2 response from redirect"

    .line 261
    invoke-static {v1, v0}, Lnet/openid/appauth/internal/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 264
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Authorization complete - invoking completion intent"

    .line 267
    invoke-static {v3, v0}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :try_start_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Failed to send completion intent"

    .line 271
    invoke-static {v0, v1}, Lnet/openid/appauth/internal/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 274
    invoke-virtual {p0, v0, v1}, Lnet/openid/appauth/AuthorizationManagementActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractState(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->handleAuthorizationComplete()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->handleAuthorizationCanceled()V

    .line 238
    :goto_0
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    const-string v1, "authStarted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    const-string v1, "authIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationRequest;

    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerializeString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    const-string v1, "completeIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    const-string v1, "cancelIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

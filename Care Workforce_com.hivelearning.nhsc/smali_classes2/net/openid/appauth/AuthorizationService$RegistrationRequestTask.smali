.class Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;
.super Landroid/os/AsyncTask;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;

.field private final mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private mException:Lnet/openid/appauth/AuthorizationException;

.field private mRequest:Lnet/openid/appauth/RegistrationRequest;


# direct methods
.method constructor <init>(Lnet/openid/appauth/RegistrationRequest;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;)V
    .locals 0

    .line 556
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 557
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mRequest:Lnet/openid/appauth/RegistrationRequest;

    .line 558
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    .line 559
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 546
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 6

    const-string p1, "Failed to complete registration request"

    .line 565
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mRequest:Lnet/openid/appauth/RegistrationRequest;

    invoke-virtual {v0}, Lnet/openid/appauth/RegistrationRequest;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 567
    :try_start_0
    iget-object v3, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mRequest:Lnet/openid/appauth/RegistrationRequest;

    iget-object v4, v4, Lnet/openid/appauth/RegistrationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v4, v4, Lnet/openid/appauth/AuthorizationServiceConfiguration;->registrationEndpoint:Landroid/net/Uri;

    invoke-interface {v3, v4}, Lnet/openid/appauth/connectivity/ConnectionBuilder;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v3

    const-string v4, "POST"

    .line 569
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 570
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 571
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "Content-Length"

    .line 572
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 574
    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 577
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :try_start_1
    invoke-static {v0}, Lnet/openid/appauth/Utils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 579
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    invoke-static {v0}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v4

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v0, v2

    :goto_0
    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 585
    invoke-static {v3, p1, v1}, Lnet/openid/appauth/internal/Logger;->debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {p1, v3}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v0, v2

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 581
    invoke-static {v3, p1, v1}, Lnet/openid/appauth/internal/Logger;->debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {p1, v3}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 589
    :goto_2
    invoke-static {v0}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_3
    invoke-static {v2}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 590
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 546
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 5

    .line 596
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 597
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;

    invoke-interface {p1, v1, v0}, Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;->onRegistrationRequestCompleted(Lnet/openid/appauth/RegistrationResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    :cond_0
    const-string v0, "error"

    .line 601
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v2

    const-string v3, "error_description"

    .line 608
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_uri"

    .line 610
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-static {p1}, Lnet/openid/appauth/internal/UriUtil;->parseUriIfAvailable(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 605
    invoke-static {v2, v0, v3, p1}, Lnet/openid/appauth/AuthorizationException;->fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 612
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    .line 616
    :goto_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;

    invoke-interface {v0, v1, p1}, Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;->onRegistrationRequestCompleted(Lnet/openid/appauth/RegistrationResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 622
    :try_start_1
    new-instance v2, Lnet/openid/appauth/RegistrationResponse$Builder;

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mRequest:Lnet/openid/appauth/RegistrationRequest;

    invoke-direct {v2, v3}, Lnet/openid/appauth/RegistrationResponse$Builder;-><init>(Lnet/openid/appauth/RegistrationRequest;)V

    .line 623
    invoke-virtual {v2, p1}, Lnet/openid/appauth/RegistrationResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/openid/appauth/RegistrationResponse$Builder;->build()Lnet/openid/appauth/RegistrationResponse;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnet/openid/appauth/RegistrationResponse$MissingArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 637
    iget-object v3, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mRequest:Lnet/openid/appauth/RegistrationRequest;

    iget-object v3, v3, Lnet/openid/appauth/RegistrationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v3, v3, Lnet/openid/appauth/AuthorizationServiceConfiguration;->registrationEndpoint:Landroid/net/Uri;

    aput-object v3, v2, v0

    const-string v0, "Dynamic registration with %s completed"

    invoke-static {v0, v2}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;

    invoke-interface {v0, p1, v1}, Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;->onRegistrationRequestCompleted(Lnet/openid/appauth/RegistrationResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    :catch_1
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Malformed registration response"

    .line 631
    invoke-static {p1, v1, v0}, Lnet/openid/appauth/internal/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->INVALID_REGISTRATION_RESPONSE:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    return-void

    :catch_2
    move-exception p1

    .line 625
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$RegistrationRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;

    sget-object v2, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 626
    invoke-static {v2, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    .line 625
    invoke-interface {v0, v1, p1}, Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;->onRegistrationRequestCompleted(Lnet/openid/appauth/RegistrationResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void
.end method

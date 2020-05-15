.class Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;
.super Landroid/os/AsyncTask;
.source "AuthorizationServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationRetrievalAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

.field private mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private mException:Lnet/openid/appauth/AuthorizationException;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 317
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mUri:Landroid/net/Uri;

    .line 318
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    .line 319
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 305
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->doInBackground([Ljava/lang/Void;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 327
    :try_start_0
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lnet/openid/appauth/connectivity/ConnectionBuilder;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v2, "GET"

    .line 328
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 329
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 330
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 332
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lnet/openid/appauth/Utils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    new-instance v3, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    invoke-direct {v3, v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;-><init>(Lorg/json/JSONObject;)V

    .line 337
    new-instance v2, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-direct {v2, v3}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    invoke-static {v1}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v1, p1

    :goto_0
    :try_start_2
    const-string v3, "Malformed discovery document"

    new-array v0, v0, [Ljava/lang/Object;

    .line 349
    invoke-static {v2, v3, v0}, Lnet/openid/appauth/internal/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->INVALID_DISCOVERY_DOCUMENT:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v1, p1

    :goto_1
    const-string v3, "Error parsing discovery document"

    new-array v0, v0, [Ljava/lang/Object;

    .line 344
    invoke-static {v2, v3, v0}, Lnet/openid/appauth/internal/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v1, p1

    :goto_2
    const-string v3, "Network error when retrieving discovery document"

    new-array v0, v0, [Ljava/lang/Object;

    .line 339
    invoke-static {v2, v3, v0}, Lnet/openid/appauth/internal/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    :goto_3
    invoke-static {v1}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_4
    invoke-static {v1}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 355
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 305
    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->onPostExecute(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    return-void
.end method

.method protected onPostExecute(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 362
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    invoke-interface {p1, v1, v0}, Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;->onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    invoke-interface {v0, p1, v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;->onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V

    :goto_0
    return-void
.end method

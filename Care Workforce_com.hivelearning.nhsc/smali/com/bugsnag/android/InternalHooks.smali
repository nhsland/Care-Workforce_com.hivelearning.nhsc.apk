.class public Lcom/bugsnag/android/InternalHooks;
.super Ljava/lang/Object;
.source "InternalHooks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureClient(Lcom/bugsnag/android/Client;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/InternalHooks$1;

    invoke-direct {v1}, Lcom/bugsnag/android/InternalHooks$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->addBeforeSendSession(Lcom/bugsnag/android/BeforeSendSession;)V

    .line 18
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object p0

    new-instance v0, Lcom/bugsnag/android/InternalHooks$2;

    invoke-direct {v0}, Lcom/bugsnag/android/InternalHooks$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->beforeSend(Lcom/bugsnag/android/BeforeSend;)V

    return-void
.end method

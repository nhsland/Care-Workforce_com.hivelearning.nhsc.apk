.class final Lcom/bugsnag/android/InternalHooks$1;
.super Ljava/lang/Object;
.source "InternalHooks.java"

# interfaces
.implements Lcom/bugsnag/android/BeforeSendSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/InternalHooks;->configureClient(Lcom/bugsnag/android/Client;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeSendSession(Lcom/bugsnag/android/SessionTrackingPayload;)V
    .locals 0

    .line 14
    invoke-virtual {p1}, Lcom/bugsnag/android/SessionTrackingPayload;->getDevice()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/bugsnag/RuntimeVersions;->addRuntimeVersions(Ljava/util/Map;)V

    return-void
.end method

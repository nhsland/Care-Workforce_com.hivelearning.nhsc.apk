.class final Lcom/bugsnag/android/InternalHooks$2;
.super Ljava/lang/Object;
.source "InternalHooks.java"

# interfaces
.implements Lcom/bugsnag/android/BeforeSend;


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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/bugsnag/android/Report;)Z
    .locals 0

    .line 21
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getDeviceData()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/bugsnag/RuntimeVersions;->addRuntimeVersions(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method

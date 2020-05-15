.class public Lcom/bugsnag/android/SessionTrackingPayload;
.super Ljava/lang/Object;
.source "SessionTrackingPayload.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private final appDataSummary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceDataSummary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final notifier:Lcom/bugsnag/android/Notifier;

.field private final session:Lcom/bugsnag/android/Session;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Session;Ljava/util/List;Lcom/bugsnag/android/AppData;Lcom/bugsnag/android/DeviceData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bugsnag/android/Session;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/bugsnag/android/AppData;",
            "Lcom/bugsnag/android/DeviceData;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p3}, Lcom/bugsnag/android/AppData;->getAppDataSummary()Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/bugsnag/android/SessionTrackingPayload;->appDataSummary:Ljava/util/Map;

    .line 23
    invoke-virtual {p4}, Lcom/bugsnag/android/DeviceData;->getDeviceDataSummary()Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/bugsnag/android/SessionTrackingPayload;->deviceDataSummary:Ljava/util/Map;

    .line 24
    invoke-static {}, Lcom/bugsnag/android/Notifier;->getInstance()Lcom/bugsnag/android/Notifier;

    move-result-object p3

    iput-object p3, p0, Lcom/bugsnag/android/SessionTrackingPayload;->notifier:Lcom/bugsnag/android/Notifier;

    .line 25
    iput-object p1, p0, Lcom/bugsnag/android/SessionTrackingPayload;->session:Lcom/bugsnag/android/Session;

    .line 26
    iput-object p2, p0, Lcom/bugsnag/android/SessionTrackingPayload;->files:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getDevice()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/bugsnag/android/SessionTrackingPayload;->deviceDataSummary:Ljava/util/Map;

    return-object v0
.end method

.method getSession()Lcom/bugsnag/android/Session;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bugsnag/android/SessionTrackingPayload;->session:Lcom/bugsnag/android/Session;

    return-object v0
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "notifier"

    .line 32
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/SessionTrackingPayload;->notifier:Lcom/bugsnag/android/Notifier;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v0, "app"

    .line 33
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/SessionTrackingPayload;->appDataSummary:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Object;)V

    const-string v0, "device"

    .line 34
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/SessionTrackingPayload;->deviceDataSummary:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Object;)V

    const-string v0, "sessions"

    .line 35
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 37
    iget-object v0, p0, Lcom/bugsnag/android/SessionTrackingPayload;->session:Lcom/bugsnag/android/Session;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/bugsnag/android/SessionTrackingPayload;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 39
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/io/File;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 46
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method

.class public Lcom/bugsnag/android/Report;
.super Ljava/lang/Object;
.source "Report.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private apiKey:Ljava/lang/String;

.field private transient cachingDisabled:Z

.field private final error:Lcom/bugsnag/android/Error;

.field private final errorFile:Ljava/io/File;

.field private final notifier:Lcom/bugsnag/android/Notifier;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bugsnag/android/Error;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lcom/bugsnag/android/Report;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/bugsnag/android/Error;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/bugsnag/android/Report;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/bugsnag/android/Error;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/bugsnag/android/Error;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/bugsnag/android/Report;->error:Lcom/bugsnag/android/Error;

    .line 40
    iput-object p2, p0, Lcom/bugsnag/android/Report;->errorFile:Ljava/io/File;

    .line 41
    invoke-static {}, Lcom/bugsnag/android/Notifier;->getInstance()Lcom/bugsnag/android/Notifier;

    move-result-object p2

    iput-object p2, p0, Lcom/bugsnag/android/Report;->notifier:Lcom/bugsnag/android/Notifier;

    .line 42
    iput-object p1, p0, Lcom/bugsnag/android/Report;->apiKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/bugsnag/android/Report;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/bugsnag/android/Error;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/bugsnag/android/Report;->error:Lcom/bugsnag/android/Error;

    return-object v0
.end method

.method public getNotifier()Lcom/bugsnag/android/Notifier;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/bugsnag/android/Report;->notifier:Lcom/bugsnag/android/Notifier;

    return-object v0
.end method

.method isCachingDisabled()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/bugsnag/android/Report;->cachingDisabled:Z

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/bugsnag/android/Report;->apiKey:Ljava/lang/String;

    return-void
.end method

.method setCachingDisabled(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/bugsnag/android/Report;->cachingDisabled:Z

    return-void
.end method

.method public setNotifierName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/bugsnag/android/Report;->notifier:Lcom/bugsnag/android/Notifier;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Notifier;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setNotifierURL(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/bugsnag/android/Report;->notifier:Lcom/bugsnag/android/Notifier;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Notifier;->setURL(Ljava/lang/String;)V

    return-void
.end method

.method public setNotifierVersion(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/bugsnag/android/Report;->notifier:Lcom/bugsnag/android/Notifier;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Notifier;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "apiKey"

    .line 50
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Report;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "payloadVersion"

    .line 51
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "notifier"

    .line 54
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Report;->notifier:Lcom/bugsnag/android/Notifier;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v0, "events"

    .line 57
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 60
    iget-object v0, p0, Lcom/bugsnag/android/Report;->error:Lcom/bugsnag/android/Error;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Report;->errorFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->value(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const-string v0, "Expected error or errorFile, found empty payload instead"

    .line 65
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 72
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method

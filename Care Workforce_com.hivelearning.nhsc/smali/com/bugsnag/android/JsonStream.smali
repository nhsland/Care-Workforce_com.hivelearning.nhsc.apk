.class public Lcom/bugsnag/android/JsonStream;
.super Lcom/bugsnag/android/JsonWriter;
.source "JsonStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/JsonStream$Streamable;
    }
.end annotation


# instance fields
.field private final objectJsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/bugsnag/android/JsonStream;->setSerializeNulls(Z)V

    .line 32
    iput-object p1, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    .line 33
    new-instance p1, Lcom/bugsnag/android/ObjectJsonStreamer;

    invoke-direct {p1}, Lcom/bugsnag/android/ObjectJsonStreamer;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/JsonStream;->objectJsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    return-void
.end method


# virtual methods
.method public bridge synthetic beginArray()Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->beginArray()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic beginObject()Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->beginObject()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->close()V

    return-void
.end method

.method public bridge synthetic endArray()Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->endArray()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic endObject()Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->endObject()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->flush()V

    return-void
.end method

.method public bridge synthetic isLenient()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->isLenient()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic jsonValue(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->jsonValue(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic nullValue()Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->nullValue()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic value(D)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1, p2}, Lcom/bugsnag/android/JsonWriter;->value(D)Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(J)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1, p2}, Lcom/bugsnag/android/JsonWriter;->value(J)Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/Boolean;)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->value(Ljava/lang/Boolean;)Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Z)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->value(Z)Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Lcom/bugsnag/android/JsonStream$Streamable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonStream;->nullValue()Lcom/bugsnag/android/JsonWriter;

    return-void

    .line 52
    :cond_0
    invoke-interface {p1, p0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    return-void
.end method

.method public value(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->flush()V

    .line 72
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonStream;->beforeValue()V

    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    invoke-static {p1, v0}, Lcom/bugsnag/android/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {p1}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    iget-object p1, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 81
    :goto_0
    invoke-static {p1}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public value(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/bugsnag/android/JsonStream;->objectJsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    invoke-virtual {v0, p1, p0}, Lcom/bugsnag/android/ObjectJsonStreamer;->objectToStream(Ljava/lang/Object;Lcom/bugsnag/android/JsonStream;)V

    return-void
.end method

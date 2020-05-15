.class public Lcom/bugsnag/android/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# static fields
.field private static final NOTIFIER_NAME:Ljava/lang/String; = "Android Bugsnag Notifier"

.field private static final NOTIFIER_URL:Ljava/lang/String; = "https://bugsnag.com"

.field private static final NOTIFIER_VERSION:Ljava/lang/String; = "4.22.3"

.field private static final instance:Lcom/bugsnag/android/Notifier;


# instance fields
.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/bugsnag/android/Notifier;

    invoke-direct {v0}, Lcom/bugsnag/android/Notifier;-><init>()V

    sput-object v0, Lcom/bugsnag/android/Notifier;->instance:Lcom/bugsnag/android/Notifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Android Bugsnag Notifier"

    .line 16
    iput-object v0, p0, Lcom/bugsnag/android/Notifier;->name:Ljava/lang/String;

    const-string v0, "4.22.3"

    .line 19
    iput-object v0, p0, Lcom/bugsnag/android/Notifier;->version:Ljava/lang/String;

    const-string v0, "https://bugsnag.com"

    .line 22
    iput-object v0, p0, Lcom/bugsnag/android/Notifier;->url:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/bugsnag/android/Notifier;
    .locals 1

    .line 29
    sget-object v0, Lcom/bugsnag/android/Notifier;->instance:Lcom/bugsnag/android/Notifier;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bugsnag/android/Notifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bugsnag/android/Notifier;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bugsnag/android/Notifier;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/bugsnag/android/Notifier;->name:Ljava/lang/String;

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/bugsnag/android/Notifier;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bugsnag/android/Notifier;->version:Ljava/lang/String;

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "name"

    .line 35
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Notifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "version"

    .line 36
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Notifier;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "url"

    .line 37
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Notifier;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 38
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method

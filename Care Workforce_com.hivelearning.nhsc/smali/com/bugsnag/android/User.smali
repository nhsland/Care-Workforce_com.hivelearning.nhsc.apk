.class Lcom/bugsnag/android/User;
.super Ljava/util/Observable;
.source "User.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/User;)V
    .locals 2

    .line 33
    iget-object v0, p1, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    iget-object p1, p1, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/bugsnag/android/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2

    .line 81
    iput-object p1, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/bugsnag/android/User;->setChanged()V

    .line 83
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_EMAIL:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/User;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2

    .line 61
    iput-object p1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/bugsnag/android/User;->setChanged()V

    .line 63
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_ID:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/User;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 101
    iput-object p1, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/bugsnag/android/User;->setChanged()V

    .line 103
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_NAME:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/User;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "id"

    .line 40
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "email"

    .line 41
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "name"

    .line 42
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 44
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method

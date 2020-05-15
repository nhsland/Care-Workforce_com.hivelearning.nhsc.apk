.class public Lcom/bugsnag/android/BugsnagException;
.super Ljava/lang/Throwable;
.source "BugsnagException.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# static fields
.field private static final serialVersionUID:J = 0x4655cd3dd8355182L


# instance fields
.field private final customStackframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private projectPackages:[Ljava/lang/String;

.field private streamable:Lcom/bugsnag/android/JsonStream$Streamable;

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p2, "android"

    .line 22
    iput-object p2, p0, Lcom/bugsnag/android/BugsnagException;->type:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/StackTraceElement;

    .line 61
    invoke-virtual {p0, p2}, Lcom/bugsnag/android/BugsnagException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 62
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->name:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/bugsnag/android/BugsnagException;->customStackframes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p2, "android"

    .line 22
    iput-object p2, p0, Lcom/bugsnag/android/BugsnagException;->type:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p3}, Lcom/bugsnag/android/BugsnagException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 39
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->customStackframes:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    .line 22
    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->type:Ljava/lang/String;

    .line 46
    instance-of v0, p1, Lcom/bugsnag/android/JsonStream$Streamable;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/bugsnag/android/JsonStream$Streamable;

    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->streamable:Lcom/bugsnag/android/JsonStream$Streamable;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->name:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->name:Ljava/lang/String;

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/BugsnagException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/BugsnagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->customStackframes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->name:Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->message:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->name:Ljava/lang/String;

    return-void
.end method

.method setProjectPackages([Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->projectPackages:[Ljava/lang/String;

    return-void
.end method

.method setType(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->type:Ljava/lang/String;

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->streamable:Lcom/bugsnag/android/JsonStream$Streamable;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->customStackframes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 123
    new-instance v1, Lcom/bugsnag/android/Stacktrace;

    invoke-direct {v1, v0}, Lcom/bugsnag/android/Stacktrace;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v1, Lcom/bugsnag/android/Stacktrace;

    invoke-virtual {p0}, Lcom/bugsnag/android/BugsnagException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v2, p0, Lcom/bugsnag/android/BugsnagException;->projectPackages:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/bugsnag/android/Stacktrace;-><init>([Ljava/lang/StackTraceElement;[Ljava/lang/String;)V

    .line 128
    :goto_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "errorClass"

    .line 129
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bugsnag/android/BugsnagException;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "message"

    .line 130
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bugsnag/android/BugsnagException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "type"

    .line 131
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v2, p0, Lcom/bugsnag/android/BugsnagException;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "stacktrace"

    .line 132
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 133
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    :goto_1
    return-void
.end method

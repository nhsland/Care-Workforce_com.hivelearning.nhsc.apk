.class Lcom/bugsnag/android/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private final exception:Lcom/bugsnag/android/BugsnagException;

.field private exceptionType:Ljava/lang/String;

.field private projectPackages:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/BugsnagException;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/bugsnag/android/Exceptions;->exception:Lcom/bugsnag/android/BugsnagException;

    .line 20
    invoke-virtual {p2}, Lcom/bugsnag/android/BugsnagException;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bugsnag/android/Exceptions;->exceptionType:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/bugsnag/android/Configuration;->getProjectPackages()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/Exceptions;->projectPackages:[Ljava/lang/String;

    return-void
.end method

.method private exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "errorClass"

    .line 72
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string p2, "message"

    .line 73
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string p2, "type"

    .line 74
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object p2

    iget-object p3, p0, Lcom/bugsnag/android/Exceptions;->exceptionType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 76
    new-instance p2, Lcom/bugsnag/android/Stacktrace;

    iget-object p3, p0, Lcom/bugsnag/android/Exceptions;->projectPackages:[Ljava/lang/String;

    invoke-direct {p2, p4, p3}, Lcom/bugsnag/android/Stacktrace;-><init>([Ljava/lang/StackTraceElement;[Ljava/lang/String;)V

    const-string p3, "stacktrace"

    .line 77
    invoke-virtual {p1, p3}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 78
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method


# virtual methods
.method getException()Lcom/bugsnag/android/BugsnagException;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Lcom/bugsnag/android/BugsnagException;

    return-object v0
.end method

.method getExceptionType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exceptionType:Ljava/lang/String;

    return-object v0
.end method

.method getProjectPackages()[Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->projectPackages:[Ljava/lang/String;

    return-object v0
.end method

.method setExceptionType(Ljava/lang/String;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/bugsnag/android/Exceptions;->exceptionType:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/BugsnagException;->setType(Ljava/lang/String;)V

    return-void
.end method

.method setProjectPackages([Ljava/lang/String;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/bugsnag/android/Exceptions;->projectPackages:[Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/BugsnagException;->setProjectPackages([Ljava/lang/String;)V

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 29
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Lcom/bugsnag/android/BugsnagException;

    :goto_0
    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lcom/bugsnag/android/JsonStream$Streamable;

    if-eqz v1, :cond_0

    .line 32
    move-object v1, v0

    check-cast v1, Lcom/bugsnag/android/JsonStream$Streamable;

    invoke-interface {v1, p1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 37
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/bugsnag/android/Exceptions;->exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method

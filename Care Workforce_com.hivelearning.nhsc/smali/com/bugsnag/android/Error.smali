.class public Lcom/bugsnag/android/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/Error$Builder;
    }
.end annotation


# instance fields
.field private appData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

.field final config:Lcom/bugsnag/android/Configuration;

.field private context:Ljava/lang/String;

.field private deviceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final exception:Lcom/bugsnag/android/BugsnagException;

.field private final exceptions:Lcom/bugsnag/android/Exceptions;

.field private groupingHash:Ljava/lang/String;

.field private final handledState:Lcom/bugsnag/android/HandledState;

.field private incomplete:Z

.field private metaData:Lcom/bugsnag/android/MetaData;

.field private projectPackages:[Ljava/lang/String;

.field private final session:Lcom/bugsnag/android/Session;

.field private severity:Lcom/bugsnag/android/Severity;

.field private final threadState:Lcom/bugsnag/android/ThreadState;

.field private user:Lcom/bugsnag/android/User;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/HandledState;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/Session;Lcom/bugsnag/android/ThreadState;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->appData:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->deviceData:Ljava/util/Map;

    .line 27
    new-instance v0, Lcom/bugsnag/android/User;

    invoke-direct {v0}, Lcom/bugsnag/android/User;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 33
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/bugsnag/android/Error;->incomplete:Z

    .line 56
    iput-object p6, p0, Lcom/bugsnag/android/Error;->threadState:Lcom/bugsnag/android/ThreadState;

    .line 57
    iput-object p1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    .line 59
    instance-of p6, p2, Lcom/bugsnag/android/BugsnagException;

    if-eqz p6, :cond_0

    .line 60
    check-cast p2, Lcom/bugsnag/android/BugsnagException;

    iput-object p2, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    goto :goto_0

    .line 62
    :cond_0
    new-instance p6, Lcom/bugsnag/android/BugsnagException;

    invoke-direct {p6, p2}, Lcom/bugsnag/android/BugsnagException;-><init>(Ljava/lang/Throwable;)V

    iput-object p6, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    .line 64
    :goto_0
    iput-object p3, p0, Lcom/bugsnag/android/Error;->handledState:Lcom/bugsnag/android/HandledState;

    .line 65
    iput-object p4, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    .line 66
    iput-object p5, p0, Lcom/bugsnag/android/Error;->session:Lcom/bugsnag/android/Session;

    .line 68
    invoke-virtual {p1}, Lcom/bugsnag/android/Configuration;->getProjectPackages()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bugsnag/android/Error;->projectPackages:[Ljava/lang/String;

    .line 69
    new-instance p2, Lcom/bugsnag/android/Exceptions;

    iget-object p3, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    invoke-direct {p2, p1, p3}, Lcom/bugsnag/android/Exceptions;-><init>(Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/BugsnagException;)V

    iput-object p2, p0, Lcom/bugsnag/android/Error;->exceptions:Lcom/bugsnag/android/Exceptions;

    return-void
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/MetaData;->clearTab(Ljava/lang/String;)V

    return-void
.end method

.method getAppData()Ljava/util/Map;
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

    .line 369
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appData:Ljava/util/Map;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceData()Ljava/util/Map;
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

    .line 379
    iget-object v0, p0, Lcom/bugsnag/android/Error;->deviceData:Ljava/util/Map;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    return-object v0
.end method

.method public getExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0}, Lcom/bugsnag/android/BugsnagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0}, Lcom/bugsnag/android/BugsnagException;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getExceptions()Lcom/bugsnag/android/Exceptions;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exceptions:Lcom/bugsnag/android/Exceptions;

    return-object v0
.end method

.method public getGroupingHash()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    return-object v0
.end method

.method public getHandledState()Lcom/bugsnag/android/HandledState;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/bugsnag/android/Error;->handledState:Lcom/bugsnag/android/HandledState;

    return-object v0
.end method

.method public getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    return-object v0
.end method

.method getProjectPackages()[Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/bugsnag/android/Error;->projectPackages:[Ljava/lang/String;

    return-object v0
.end method

.method getSession()Lcom/bugsnag/android/Session;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/bugsnag/android/Error;->session:Lcom/bugsnag/android/Session;

    return-object v0
.end method

.method public getSeverity()Lcom/bugsnag/android/Severity;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    return-object v0
.end method

.method public getUser()Lcom/bugsnag/android/User;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    return-object v0
.end method

.method isIncomplete()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/bugsnag/android/Error;->incomplete:Z

    return v0
.end method

.method setAppData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/bugsnag/android/Error;->appData:Ljava/util/Map;

    return-void
.end method

.method setBreadcrumbs(Lcom/bugsnag/android/Breadcrumbs;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    return-void
.end method

.method setDeviceData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lcom/bugsnag/android/Error;->deviceData:Ljava/util/Map;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/bugsnag/android/Error;->deviceData:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExceptionMessage(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/BugsnagException;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setExceptionName(Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/BugsnagException;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setGroupingHash(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    return-void
.end method

.method setIncomplete(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/bugsnag/android/Error;->incomplete:Z

    return-void
.end method

.method public setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 0

    if-nez p1, :cond_0

    .line 308
    new-instance p1, Lcom/bugsnag/android/MetaData;

    invoke-direct {p1}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    goto :goto_0

    .line 310
    :cond_0
    iput-object p1, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    :goto_0
    return-void
.end method

.method setProjectPackages([Ljava/lang/String;)V
    .locals 1

    .line 416
    iput-object p1, p0, Lcom/bugsnag/android/Error;->projectPackages:[Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exceptions:Lcom/bugsnag/android/Exceptions;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Exceptions;->setProjectPackages([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSeverity(Lcom/bugsnag/android/Severity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 187
    iput-object p1, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    .line 188
    iget-object v0, p0, Lcom/bugsnag/android/Error;->handledState:Lcom/bugsnag/android/HandledState;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/HandledState;->setCurrentSeverity(Lcom/bugsnag/android/Severity;)V

    :cond_0
    return-void
.end method

.method setUser(Lcom/bugsnag/android/User;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 210
    new-instance v0, Lcom/bugsnag/android/User;

    invoke-direct {v0, p1, p2, p3}, Lcom/bugsnag/android/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 2

    .line 241
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 242
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .line 231
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 232
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    .line 251
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 252
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    return-void
.end method

.method shouldIgnoreClass()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p0}, Lcom/bugsnag/android/Error;->getExceptionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->shouldIgnoreClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bugsnag/android/MetaData;

    .line 75
    iget-object v1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/bugsnag/android/MetaData;->merge([Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/MetaData;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v1, "context"

    .line 79
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v3, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v1, "metaData"

    .line 80
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v0, "severity"

    .line 82
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v0, "severityReason"

    .line 83
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->handledState:Lcom/bugsnag/android/HandledState;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v0, "unhandled"

    .line 84
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v3, p0, Lcom/bugsnag/android/Error;->handledState:Lcom/bugsnag/android/HandledState;

    invoke-virtual {v3}, Lcom/bugsnag/android/HandledState;->isUnhandled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/bugsnag/android/JsonStream;->value(Z)Lcom/bugsnag/android/JsonWriter;

    const-string v1, "incomplete"

    .line 85
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-boolean v3, p0, Lcom/bugsnag/android/Error;->incomplete:Z

    invoke-virtual {v1, v3}, Lcom/bugsnag/android/JsonStream;->value(Z)Lcom/bugsnag/android/JsonWriter;

    .line 87
    iget-object v1, p0, Lcom/bugsnag/android/Error;->projectPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "projectPackages"

    .line 88
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 89
    iget-object v1, p0, Lcom/bugsnag/android/Error;->projectPackages:[Ljava/lang/String;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 90
    invoke-virtual {p1, v4}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    :cond_1
    const-string v1, "exceptions"

    .line 96
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->exceptions:Lcom/bugsnag/android/Exceptions;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v1, "user"

    .line 99
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v1, "app"

    .line 102
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->appData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Object;)V

    const-string v1, "device"

    .line 103
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->deviceData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Object;)V

    const-string v1, "breadcrumbs"

    .line 104
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    const-string v1, "groupingHash"

    .line 105
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 107
    iget-object v1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getSendThreads()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "threads"

    .line 108
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->threadState:Lcom/bugsnag/android/ThreadState;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/bugsnag/android/Error;->session:Lcom/bugsnag/android/Session;

    if-eqz v1, :cond_3

    const-string v1, "session"

    .line 112
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v1, "id"

    .line 113
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->session:Lcom/bugsnag/android/Session;

    invoke-virtual {v2}, Lcom/bugsnag/android/Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v1, "startedAt"

    .line 114
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->session:Lcom/bugsnag/android/Session;

    invoke-virtual {v2}, Lcom/bugsnag/android/Session;->getStartedAt()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/bugsnag/android/DateUtils;->toIso8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v1, "events"

    .line 116
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v1, "handled"

    .line 117
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Error;->session:Lcom/bugsnag/android/Session;

    invoke-virtual {v2}, Lcom/bugsnag/android/Session;->getHandledCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bugsnag/android/JsonStream;->value(J)Lcom/bugsnag/android/JsonWriter;

    .line 118
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->session:Lcom/bugsnag/android/Session;

    invoke-virtual {v1}, Lcom/bugsnag/android/Session;->getUnhandledCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bugsnag/android/JsonStream;->value(J)Lcom/bugsnag/android/JsonWriter;

    .line 119
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 120
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 123
    :cond_3
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method

.class public Lcom/bugsnag/android/MetaData;
.super Ljava/util/Observable;
.source "MetaData.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field final jsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

.field final store:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/bugsnag/android/MetaData;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    .line 40
    new-instance p1, Lcom/bugsnag/android/ObjectJsonStreamer;

    invoke-direct {p1}, Lcom/bugsnag/android/ObjectJsonStreamer;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/MetaData;->jsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    return-void
.end method

.method static varargs merge([Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/MetaData;
    .locals 7

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_0

    .line 115
    iget-object v6, v5, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v6, v5, Lcom/bugsnag/android/MetaData;->jsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    iget-object v6, v6, Lcom/bugsnag/android/ObjectJsonStreamer;->filters:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 118
    iget-object v5, v5, Lcom/bugsnag/android/MetaData;->jsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    iget-object v5, v5, Lcom/bugsnag/android/ObjectJsonStreamer;->filters:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_1
    new-instance p0, Lcom/bugsnag/android/MetaData;

    new-array v2, v3, [Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map;

    invoke-static {v0}, Lcom/bugsnag/android/MetaData;->mergeMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bugsnag/android/MetaData;-><init>(Ljava/util/Map;)V

    new-array v0, v3, [Ljava/lang/String;

    .line 125
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/MetaData;->setFilters([Ljava/lang/String;)V

    return-object p0
.end method

.method private static varargs mergeMaps([Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 135
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p0, v3

    if-nez v4, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 142
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 145
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 146
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 149
    instance-of v9, v7, Ljava/util/Map;

    if-eqz v9, :cond_2

    instance-of v9, v8, Ljava/util/Map;

    if-eqz v9, :cond_2

    .line 152
    check-cast v7, Ljava/util/Map;

    .line 154
    check-cast v8, Ljava/util/Map;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/util/Map;

    aput-object v7, v9, v2

    const/4 v7, 0x1

    aput-object v8, v9, v7

    .line 155
    invoke-static {v9}, Lcom/bugsnag/android/MetaData;->mergeMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_1

    .line 161
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 61
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/MetaData;->getTab(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/bugsnag/android/MetaData;->setChanged()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p3, :cond_0

    .line 64
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v4, Lcom/bugsnag/android/NativeInterface$MessageType;->ADD_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    aput-object p3, v5, v3

    .line 67
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/bugsnag/android/MetaData;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance p3, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->REMOVE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 72
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, p3}, Lcom/bugsnag/android/MetaData;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/bugsnag/android/MetaData;->setChanged()V

    .line 84
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->CLEAR_METADATA_TAB:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/MetaData;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method getFilters()[Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->jsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    iget-object v0, v0, Lcom/bugsnag/android/ObjectJsonStreamer;->filters:[Ljava/lang/String;

    return-object v0
.end method

.method getTab(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method varargs setFilters([Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->jsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    iput-object p1, v0, Lcom/bugsnag/android/ObjectJsonStreamer;->filters:[Ljava/lang/String;

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->jsonStreamer:Lcom/bugsnag/android/ObjectJsonStreamer;

    iget-object v1, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/bugsnag/android/ObjectJsonStreamer;->objectToStream(Ljava/lang/Object;Lcom/bugsnag/android/JsonStream;)V

    return-void
.end method

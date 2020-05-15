.class Lcom/bugsnag/DiagnosticsCallback;
.super Ljava/lang/Object;
.source "DiagnosticsCallback.java"

# interfaces
.implements Lcom/bugsnag/android/Callback;


# static fields
.field static final NOTIFIER_NAME:Ljava/lang/String; = "Bugsnag for React Native"

.field static final NOTIFIER_URL:Ljava/lang/String; = "https://github.com/bugsnag/bugsnag-react-native"


# instance fields
.field private final bugsnagAndroidVersion:Ljava/lang/String;

.field private final context:Ljava/lang/String;

.field private final groupingHash:Ljava/lang/String;

.field private final libraryVersion:Ljava/lang/String;

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final severity:Lcom/bugsnag/android/Severity;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bugsnag/DiagnosticsCallback;->libraryVersion:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/bugsnag/DiagnosticsCallback;->bugsnagAndroidVersion:Ljava/lang/String;

    const-string p1, "severity"

    .line 34
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bugsnag/DiagnosticsCallback;->parseSeverity(Ljava/lang/String;)Lcom/bugsnag/android/Severity;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/DiagnosticsCallback;->severity:Lcom/bugsnag/android/Severity;

    const-string p1, "metadata"

    .line 35
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bugsnag/DiagnosticsCallback;->readObjectMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/DiagnosticsCallback;->metadata:Ljava/util/Map;

    const-string p1, "context"

    .line 37
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 38
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/DiagnosticsCallback;->context:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_0
    iput-object v0, p0, Lcom/bugsnag/DiagnosticsCallback;->context:Ljava/lang/String;

    :goto_0
    const-string p1, "groupingHash"

    .line 43
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 44
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/DiagnosticsCallback;->groupingHash:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_1
    iput-object v0, p0, Lcom/bugsnag/DiagnosticsCallback;->groupingHash:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public beforeNotify(Lcom/bugsnag/android/Report;)V
    .locals 6

    .line 94
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getNotifier()Lcom/bugsnag/android/Notifier;

    move-result-object v0

    const-string v1, "Bugsnag for React Native"

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Notifier;->setName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getNotifier()Lcom/bugsnag/android/Notifier;

    move-result-object v0

    const-string v1, "https://github.com/bugsnag/bugsnag-react-native"

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Notifier;->setURL(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getNotifier()Lcom/bugsnag/android/Notifier;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/bugsnag/DiagnosticsCallback;->libraryVersion:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/bugsnag/DiagnosticsCallback;->bugsnagAndroidVersion:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s (Android %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Notifier;->setVersion(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/bugsnag/DiagnosticsCallback;->groupingHash:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/DiagnosticsCallback;->groupingHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Error;->setGroupingHash(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/DiagnosticsCallback;->context:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/DiagnosticsCallback;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/DiagnosticsCallback;->metadata:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/bugsnag/DiagnosticsCallback;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/bugsnag/DiagnosticsCallback;->metadata:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 113
    check-cast v2, Ljava/util/Map;

    .line 115
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v1, v4, v5}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method parseSeverity(Ljava/lang/String;)Lcom/bugsnag/android/Severity;
    .locals 3

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3164ae

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x5c4d208

    if-eq v0, v1, :cond_1

    const v1, 0x4305af9c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "warning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    .line 58
    sget-object p1, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    return-object p1

    .line 55
    :cond_4
    sget-object p1, Lcom/bugsnag/android/Severity;->INFO:Lcom/bugsnag/android/Severity;

    return-object p1

    .line 53
    :cond_5
    sget-object p1, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    return-object p1
.end method

.method readObjectMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    const-string v4, "type"

    .line 72
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "boolean"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "map"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    const-string v6, "string"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "number"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_1
    const-string v4, "value"

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bugsnag/DiagnosticsCallback;->readObjectMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_4
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_3
        -0x352a9fef -> :sswitch_2
        0x1a55c -> :sswitch_1
        0x3db6c28 -> :sswitch_0
    .end sparse-switch
.end method

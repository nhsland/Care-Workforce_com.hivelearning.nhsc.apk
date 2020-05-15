.class Lcom/bugsnag/android/SessionStore;
.super Lcom/bugsnag/android/FileStore;
.source "SessionStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bugsnag/android/FileStore<",
        "Lcom/bugsnag/android/Session;",
        ">;"
    }
.end annotation


# static fields
.field static final SESSION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/bugsnag/android/SessionStore$1;

    invoke-direct {v0}, Lcom/bugsnag/android/SessionStore$1;-><init>()V

    sput-object v0, Lcom/bugsnag/android/SessionStore;->SESSION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;Lcom/bugsnag/android/FileStore$Delegate;)V
    .locals 7

    .line 38
    sget-object v5, Lcom/bugsnag/android/SessionStore;->SESSION_COMPARATOR:Ljava/util/Comparator;

    const-string v3, "/bugsnag-sessions/"

    const/16 v4, 0x80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/FileStore;-><init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;Ljava/lang/String;ILjava/util/Comparator;Lcom/bugsnag/android/FileStore$Delegate;)V

    return-void
.end method


# virtual methods
.method getFilename(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 45
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bugsnag/android/SessionStore;->storeDirectory:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s%s%d.json"

    .line 45
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference;
.super Ljava/lang/Object;
.source "RNFirebaseDatabaseReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFirebaseDBReference"


# instance fields
.field private appName:Ljava/lang/String;

.field private childEventListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/ChildEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private dbURL:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private query:Lcom/google/firebase/database/Query;

.field private valueEventListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/ValueEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    .line 56
    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->key:Ljava/lang/String;

    const/4 p3, 0x0

    .line 57
    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    .line 58
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->appName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->dbURL:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p4, p5}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->buildDatabaseQueryAtPathAndModifiers(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Lcom/google/firebase/database/Query;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    return-object p0
.end method

.method static synthetic access$100(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->handleDatabaseEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->handleDatabaseError(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic access$300(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->key:Ljava/lang/String;

    return-object p0
.end method

.method private addChildEventListener(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 2

    const-string v0, "eventRegistrationKey"

    .line 276
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "registrationCancellationKey"

    .line 277
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    invoke-direct {p0, v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->hasEventListener(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;

    invoke-direct {v1, p0, p2, p1, v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addEventListener(Ljava/lang/String;Lcom/google/firebase/database/ChildEventListener;)V

    :cond_0
    return-void
.end method

.method private addChildOnceEventListener(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 195
    new-instance v0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;

    invoke-direct {v0, p0, p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 239
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    return-void
.end method

.method private addEventListener(Ljava/lang/String;Lcom/google/firebase/database/ChildEventListener;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    return-void
.end method

.method private addEventListener(Ljava/lang/String;Lcom/google/firebase/database/ValueEventListener;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    return-void
.end method

.method private addOnceValueEventListener(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 163
    new-instance v0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;

    invoke-direct {v0, p0, p0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lcom/facebook/react/bridge/Promise;)V

    .line 172
    new-instance v1, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;

    invoke-direct {v1, p0, v0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;Lcom/facebook/react/bridge/Promise;)V

    .line 184
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/Query;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added OnceValueEventListener for key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RNFirebaseDBReference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addValueEventListener(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    const-string v0, "eventRegistrationKey"

    .line 326
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-direct {p0, v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->hasEventListener(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;

    invoke-direct {v1, p0, p1, v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addEventListener(Ljava/lang/String;Lcom/google/firebase/database/ValueEventListener;)V

    :cond_0
    return-void
.end method

.method private applyEndAtFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const-string v0, "number"

    .line 524
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "value"

    if-eqz v0, :cond_1

    .line 525
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    if-nez p1, :cond_0

    .line 527
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p2, p3, p1}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    :cond_1
    const-string v0, "boolean"

    .line 531
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p1, :cond_2

    .line 534
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 536
    :cond_2
    iget-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    :cond_3
    const-string v0, "string"

    .line 538
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 539
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p1, :cond_4

    .line 541
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 543
    :cond_4
    iget-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    :cond_5
    :goto_0
    return-void
.end method

.method private applyEqualToFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const-string v0, "number"

    .line 488
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "value"

    if-eqz v0, :cond_1

    .line 489
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    if-nez p1, :cond_0

    .line 491
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/Query;->equalTo(D)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p2, p3, p1}, Lcom/google/firebase/database/Query;->equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    :cond_1
    const-string v0, "boolean"

    .line 495
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p1, :cond_2

    .line 498
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->equalTo(Z)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 500
    :cond_2
    iget-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/database/Query;->equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    :cond_3
    const-string v0, "string"

    .line 502
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 503
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p1, :cond_4

    .line 505
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 507
    :cond_4
    iget-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/database/Query;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    :cond_5
    :goto_0
    return-void
.end method

.method private applyFilterModifier(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "valueType"

    .line 471
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "key"

    .line 472
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "equalTo"

    .line 473
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-direct {p0, v1, v0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->applyEqualToFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v2, "endAt"

    .line 475
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-direct {p0, v1, v0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->applyEndAtFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v2, "startAt"

    .line 477
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 478
    invoke-direct {p0, v1, v0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->applyStartAtFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private applyLimitModifier(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    const-string p2, "limit"

    .line 458
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    const-string p3, "limitToLast"

    .line 459
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 460
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->limitToLast(I)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    :cond_0
    const-string p3, "limitToFirst"

    .line 461
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 462
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->limitToFirst(I)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    :cond_1
    :goto_0
    return-void
.end method

.method private applyOrderByModifier(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "orderByValue"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string p2, "orderByChild"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "orderByKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string p2, "orderByPriority"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "key"

    .line 442
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 443
    iget-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/Query;->orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_2

    .line 439
    :cond_2
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1}, Lcom/google/firebase/database/Query;->orderByValue()Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_2

    .line 436
    :cond_3
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1}, Lcom/google/firebase/database/Query;->orderByPriority()Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_2

    .line 433
    :cond_4
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1}, Lcom/google/firebase/database/Query;->orderByKey()Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x255242f7 -> :sswitch_3
        0x2b7f0fda -> :sswitch_2
        0x478af3d7 -> :sswitch_1
        0x4893902c -> :sswitch_0
    .end sparse-switch
.end method

.method private applyStartAtFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const-string v0, "number"

    .line 554
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "value"

    if-eqz v0, :cond_1

    .line 555
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    if-nez p1, :cond_0

    .line 557
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p2, p3, p1}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    :cond_1
    const-string v0, "boolean"

    .line 561
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p1, :cond_2

    .line 564
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 566
    :cond_2
    iget-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    :cond_3
    const-string v0, "string"

    .line 568
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 569
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p1, :cond_4

    .line 571
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    goto :goto_0

    .line 573
    :cond_4
    iget-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    :cond_5
    :goto_0
    return-void
.end method

.method private buildDatabaseQueryAtPathAndModifiers(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->appName:Ljava/lang/String;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->dbURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getDatabaseForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    .line 407
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    .line 408
    invoke-static {p2}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p1

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 411
    check-cast p2, Ljava/util/Map;

    const-string v0, "type"

    .line 412
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "name"

    .line 413
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "orderBy"

    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    invoke-direct {p0, v1, v0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->applyOrderByModifier(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v2, "limit"

    .line 417
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    invoke-direct {p0, v1, v0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->applyLimitModifier(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v2, "filter"

    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0, v1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->applyFilterModifier(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleDatabaseError(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DatabaseError;)V
    .locals 3

    .line 387
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->key:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {p2}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getJSError(Lcom/google/firebase/database/DatabaseError;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v1, "error"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 391
    invoke-static {p1}, Lio/invertase/firebase/Utils;->readableMapToWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "registration"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 394
    invoke-static {}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContextInstance()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string p2, "database_sync_event"

    .line 393
    invoke-static {p1, p2, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleDatabaseEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 360
    new-instance v0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p4, p1, p2

    .line 378
    invoke-virtual {v0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private hasEventListener(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getQuery()Lcom/google/firebase/database/Query;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    return-object v0
.end method

.method hasListeners()Ljava/lang/Boolean;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method on(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "value"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addValueEventListener(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addChildEventListener(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method once(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "value"

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addOnceValueEventListener(Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addChildOnceEventListener(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    :goto_0
    return-void
.end method

.method removeAllEventListeners()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->hasListeners()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/ValueEventListener;

    .line 70
    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/ChildEventListener;

    .line 79
    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method removeEventListener(Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 124
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->valueEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->query:Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    .line 129
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->childEventListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

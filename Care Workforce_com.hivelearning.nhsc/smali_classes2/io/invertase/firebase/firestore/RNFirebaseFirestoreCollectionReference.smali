.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;
.super Ljava/lang/Object;
.source "RNFirebaseFirestoreCollectionReference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFSCollectionReference"

.field private static collectionSnapshotListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appName:Ljava/lang/String;

.field private final filters:Lcom/facebook/react/bridge/ReadableArray;

.field private final options:Lcom/facebook/react/bridge/ReadableMap;

.field private final orders:Lcom/facebook/react/bridge/ReadableArray;

.field private final path:Ljava/lang/String;

.field private final query:Lcom/google/firebase/firestore/Query;

.field private reactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->collectionSnapshotListeners:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->appName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->path:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->filters:Lcom/facebook/react/bridge/ReadableArray;

    .line 56
    iput-object p5, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->orders:Lcom/facebook/react/bridge/ReadableArray;

    .line 57
    iput-object p6, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 58
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->buildQuery()Lcom/google/firebase/firestore/Query;

    move-result-object p2

    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->query:Lcom/google/firebase/firestore/Query;

    .line 59
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->handleQuerySnapshotEvent(Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 33
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->collectionSnapshotListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->handleQuerySnapshotError(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method static synthetic access$300(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->appName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method private applyFilters(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 166
    :goto_0
    iget-object v4, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->filters:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 167
    iget-object v4, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->filters:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    const-string v5, "fieldPath"

    .line 168
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    const-string v6, "type"

    .line 169
    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "operator"

    .line 171
    invoke-interface {v4, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    .line 172
    invoke-interface {v4, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    move-object/from16 v8, p1

    .line 173
    invoke-static {v8, v4}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseTypeMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/Object;

    move-result-object v4

    const-string v9, "string"

    .line 175
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v10, "GREATER_THAN_OR_EQUAL"

    const-string v11, "GREATER_THAN"

    const-string v12, "ARRAY_CONTAINS"

    const-string v13, "EQUAL"

    const-string v14, "LESS_THAN"

    const-string v15, "LESS_THAN_OR_EQUAL"

    const/16 v16, -0x1

    const/4 v1, 0x1

    if-eqz v6, :cond_7

    .line 176
    invoke-interface {v5, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_3
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_4
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_5
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eqz v6, :cond_6

    if-eq v6, v1, :cond_5

    const/4 v1, 0x2

    if-eq v6, v1, :cond_4

    const/4 v1, 0x3

    if-eq v6, v1, :cond_3

    const/4 v1, 0x4

    if-eq v6, v1, :cond_2

    const/4 v1, 0x5

    if-eq v6, v1, :cond_1

    goto/16 :goto_7

    .line 194
    :cond_1
    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/firestore/Query;->whereArrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    goto/16 :goto_7

    .line 191
    :cond_2
    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/firestore/Query;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    goto/16 :goto_7

    .line 188
    :cond_3
    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/firestore/Query;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    goto/16 :goto_7

    .line 185
    :cond_4
    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/firestore/Query;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    goto/16 :goto_7

    .line 182
    :cond_5
    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/firestore/Query;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    goto/16 :goto_7

    .line 179
    :cond_6
    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    goto/16 :goto_7

    :cond_7
    const-string v6, "elements"

    .line 198
    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    .line 199
    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 200
    :goto_3
    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    .line 201
    invoke-interface {v5, v9}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 203
    :cond_8
    invoke-static {v6}, Lcom/google/firebase/firestore/FieldPath;->of([Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v1

    .line 204
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_4

    :sswitch_6
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_7
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_8
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x5

    goto :goto_5

    :sswitch_9
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    :sswitch_a
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x3

    goto :goto_5

    :sswitch_b
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x4

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_f

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_d

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    const/4 v6, 0x4

    if-eq v5, v6, :cond_b

    const/4 v6, 0x5

    if-eq v5, v6, :cond_a

    goto :goto_7

    .line 221
    :cond_a
    invoke-virtual {v2, v1, v4}, Lcom/google/firebase/firestore/Query;->whereArrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    goto :goto_6

    .line 218
    :cond_b
    invoke-virtual {v2, v1, v4}, Lcom/google/firebase/firestore/Query;->whereLessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    goto :goto_6

    .line 215
    :cond_c
    invoke-virtual {v2, v1, v4}, Lcom/google/firebase/firestore/Query;->whereLessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    goto :goto_6

    .line 212
    :cond_d
    invoke-virtual {v2, v1, v4}, Lcom/google/firebase/firestore/Query;->whereGreaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    goto :goto_6

    .line 209
    :cond_e
    invoke-virtual {v2, v1, v4}, Lcom/google/firebase/firestore/Query;->whereGreaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    goto :goto_6

    .line 206
    :cond_f
    invoke-virtual {v2, v1, v4}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    :goto_6
    move-object v2, v1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c157d90 -> :sswitch_5
        -0x42548379 -> :sswitch_4
        0x3f26f14 -> :sswitch_3
        0x4018d65 -> :sswitch_2
        0x39f1dee6 -> :sswitch_1
        0x3af35af1 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7c157d90 -> :sswitch_b
        -0x42548379 -> :sswitch_a
        0x3f26f14 -> :sswitch_9
        0x4018d65 -> :sswitch_8
        0x39f1dee6 -> :sswitch_7
        0x3af35af1 -> :sswitch_6
    .end sparse-switch
.end method

.method private applyOptions(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;
    .locals 2

    .line 250
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "endAt"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 253
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 251
    invoke-static {p1, v0}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/Query;->endAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    .line 258
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "endBefore"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 261
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 259
    invoke-static {p1, v0}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/Query;->endBefore([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    .line 266
    :cond_1
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "limit"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 268
    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    .line 276
    :cond_2
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "startAfter"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 279
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 277
    invoke-static {p1, v0}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/Query;->startAfter([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    .line 284
    :cond_3
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "startAt"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 287
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 285
    invoke-static {p1, v0}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p1

    .line 289
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/Query;->startAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method private applyOrders(Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;
    .locals 5

    .line 230
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->orders:Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v0}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    check-cast v1, Ljava/util/Map;

    const-string v2, "direction"

    .line 233
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fieldPath"

    .line 234
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "type"

    .line 235
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "string"

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    invoke-static {v2}, Lcom/google/firebase/firestore/Query$Direction;->valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/Query$Direction;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v3, "elements"

    .line 241
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 242
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/firestore/FieldPath;->of([Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v1

    .line 243
    invoke-static {v2}, Lcom/google/firebase/firestore/Query$Direction;->valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/Query$Direction;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private buildQuery()Lcom/google/firebase/firestore/Query;
    .locals 2

    .line 156
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->appName:Ljava/lang/String;

    invoke-static {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    .line 158
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->applyFilters(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    .line 159
    invoke-direct {p0, v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->applyOrders(Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    .line 160
    invoke-direct {p0, v0, v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->applyOptions(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method private handleQuerySnapshotError(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    .line 326
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "listenerId"

    .line 330
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getJSError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "error"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 333
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string p2, "firestore_collection_sync_event"

    invoke-static {p1, p2, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleQuerySnapshotEvent(Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 2

    .line 302
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$4;

    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p0, v1, p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$4;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 316
    invoke-virtual {v0, p1}, Lio/invertase/firebase/firestore/QuerySnapshotSerializeAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static offSnapshot(Ljava/lang/String;)V
    .locals 1

    .line 63
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->collectionSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method get(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "source"

    .line 71
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "server"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object p1, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    :cond_0
    const-string v0, "cache"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    sget-object p1, Lcom/google/firebase/firestore/Source;->CACHE:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    .line 78
    :cond_1
    sget-object p1, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    .line 81
    :cond_2
    sget-object p1, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    .line 84
    :goto_0
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$1;

    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p0, v1, p0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$1;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Lcom/facebook/react/bridge/Promise;)V

    .line 93
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->query:Lcom/google/firebase/firestore/Query;

    .line 94
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/Query;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$2;

    invoke-direct {v1, p0, v0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$2;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Lio/invertase/firebase/firestore/QuerySnapshotSerializeAsyncTask;Lcom/facebook/react/bridge/Promise;)V

    .line 95
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method hasListeners()Z
    .locals 1

    .line 152
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->collectionSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method onSnapshot(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    .line 113
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->collectionSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;

    invoke-direct {v0, p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "includeMetadataChanges"

    .line 132
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    sget-object p2, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    goto :goto_0

    .line 136
    :cond_0
    sget-object p2, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 139
    :goto_0
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->query:Lcom/google/firebase/firestore/Query;

    invoke-virtual {v1, p2, v0}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p2

    .line 143
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->collectionSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

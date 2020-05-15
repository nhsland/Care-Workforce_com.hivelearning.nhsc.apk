.class public Lio/invertase/firebase/database/RNFirebaseDatabase;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFirebaseDatabase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFirebaseDatabase"

.field private static enableLogging:Z = false

.field private static loggingLevelSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private static references:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/invertase/firebase/database/RNFirebaseDatabaseReference;",
            ">;"
        }
    .end annotation
.end field

.field private static transactionHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/invertase/firebase/database/RNFirebaseTransactionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->loggingLevelSet:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->references:Ljava/util/HashMap;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->transactionHandlers:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/database/RNFirebaseDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .line 37
    sget-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->transactionHandlers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lio/invertase/firebase/database/RNFirebaseDatabase;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/invertase/firebase/database/RNFirebaseDatabase;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private getCachedInternalReferenceForApp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Lio/invertase/firebase/database/RNFirebaseDatabaseReference;
    .locals 7

    const-string v0, "key"

    .line 841
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 842
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "modifiers"

    .line 843
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    .line 845
    sget-object p3, Lio/invertase/firebase/database/RNFirebaseDatabase;->references:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    if-nez p3, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    .line 848
    invoke-direct/range {v1 .. v6}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getInternalReferenceForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    move-result-object p3

    .line 849
    sget-object p1, Lio/invertase/firebase/database/RNFirebaseDatabase;->references:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method static getDatabaseForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 4

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    .line 89
    invoke-static {p0, p1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p0

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    .line 95
    invoke-static {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p0

    .line 98
    :goto_0
    sget-object p1, Lio/invertase/firebase/database/RNFirebaseDatabase;->loggingLevelSet:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 102
    sget-boolean v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->enableLogging:Z

    const-string v1, "WARNING: enableLogging(bool) must be called before any other use of database(). \nIf you are sure you\'ve done this then this message can be ignored during development as \nRN reloads can cause false positives. APP: "

    const-string v2, "RNFirebaseDatabase"

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    :cond_2
    :try_start_0
    sget-object p1, Lio/invertase/firebase/database/RNFirebaseDatabase;->loggingLevelSet:Ljava/util/HashMap;

    .line 105
    invoke-virtual {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lio/invertase/firebase/database/RNFirebaseDatabase;->enableLogging:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 104
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object p1, Lcom/google/firebase/database/Logger$Level;->DEBUG:Lcom/google/firebase/database/Logger$Level;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/FirebaseDatabase;->setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :cond_3
    sget-boolean v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->enableLogging:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 122
    :try_start_1
    sget-object p1, Lio/invertase/firebase/database/RNFirebaseDatabase;->loggingLevelSet:Ljava/util/HashMap;

    .line 123
    invoke-virtual {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lio/invertase/firebase/database/RNFirebaseDatabase;->enableLogging:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 122
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object p1, Lcom/google/firebase/database/Logger$Level;->WARN:Lcom/google/firebase/database/Logger$Level;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/FirebaseDatabase;->setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    :try_end_1
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 129
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-object p0
.end method

.method private getInternalReferenceForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)Lio/invertase/firebase/database/RNFirebaseDatabaseReference;
    .locals 7

    .line 820
    new-instance v6, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v6
.end method

.method static getJSError(Lcom/google/firebase/database/DatabaseError;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 151
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v1

    const-string v2, "nativeErrorCode"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeErrorMessage"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result p0

    const/16 v1, -0x19

    const-string v2, "Database"

    if-eq p0, v1, :cond_5

    const/16 v1, -0x18

    if-eq p0, v1, :cond_4

    const/4 v1, -0x4

    if-eq p0, v1, :cond_3

    const/4 v1, -0x3

    if-eq p0, v1, :cond_2

    const/4 v1, -0x2

    if-eq p0, v1, :cond_1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    .line 253
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "An unknown error occurred."

    .line 254
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "expired-token"

    .line 193
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The supplied auth token has expired."

    .line 194
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "invalid-token"

    .line 201
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The supplied auth token was invalid."

    .line 202
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "max-retries"

    .line 209
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The transaction had too many retries."

    .line 210
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "overridden-by-set"

    .line 217
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The transaction was overridden by a subsequent set."

    .line 218
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const-string p0, "unavailable"

    .line 225
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The service is unavailable."

    .line 226
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    const-string p0, "user-code-exception"

    .line 229
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "User code called from the Firebase Database runloop threw an exception."

    .line 230
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string p0, "data-stale"

    .line 161
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The transaction needs to be run again with current data."

    .line 162
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string p0, "failure"

    .line 169
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The server indicated that this operation failed."

    .line 170
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string p0, "permission-denied"

    .line 177
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Client doesn\'t have permission to access the desired data."

    .line 178
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string p0, "disconnected"

    .line 185
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The operation had to be aborted due to a network disconnect."

    .line 186
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string p0, "network-error"

    .line 237
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The operation could not be performed due to a network error."

    .line 238
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string p0, "write-cancelled"

    .line 245
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The write was canceled by the user."

    .line 246
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "code"

    .line 257
    invoke-interface {v0, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "message"

    .line 258
    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getReactApplicationContextInstance()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 50
    sget-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method private getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 0

    .line 801
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getDatabaseForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    return-object p1
.end method

.method static handlePromise(Lcom/facebook/react/bridge/Promise;Lcom/google/firebase/database/DatabaseError;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p1}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getJSError(Lcom/google/firebase/database/DatabaseError;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "code"

    .line 63
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    .line 64
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object p1

    .line 62
    invoke-interface {p0, v1, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 68
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enableLogging(Ljava/lang/Boolean;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 326
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->enableLogging:Z

    .line 327
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 329
    sget-object v2, Lio/invertase/firebase/database/RNFirebaseDatabase;->loggingLevelSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :try_start_0
    sget-boolean v2, Lio/invertase/firebase/database/RNFirebaseDatabase;->enableLogging:Z

    if-eqz v2, :cond_0

    .line 333
    invoke-static {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/database/Logger$Level;->DEBUG:Lcom/google/firebase/database/Logger$Level;

    .line 334
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/FirebaseDatabase;->setLogLevel(Lcom/google/firebase/database/Logger$Level;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/database/Logger$Level;->WARN:Lcom/google/firebase/database/Logger$Level;

    .line 338
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/FirebaseDatabase;->setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: enableLogging(bool) must be called before any other use of database(). \nIf you are sure you\'ve done this then this message can be ignored during development as \nRN reloads can cause false positives. APP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNFirebaseDatabase"

    .line 343
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 872
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 873
    sget-object v1, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    const-string v2, "serverValueTimestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFirebaseDatabase"

    return-object v0
.end method

.method public goOffline(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 295
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getDatabaseForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->goOffline()V

    return-void
.end method

.method public goOnline(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 287
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getDatabaseForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->goOnline()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    const-string v0, "RNFirebaseDatabase"

    const-string v1, "RNFirebaseDatabase:initialized"

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    sput-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method public keepSynced(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 372
    invoke-direct/range {p0 .. p5}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getInternalReferenceForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->getQuery()Lcom/google/firebase/database/Query;

    move-result-object p1

    .line 374
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/Query;->keepSynced(Z)V

    return-void
.end method

.method public off(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 783
    sget-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->references:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->removeEventListener(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->hasListeners()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 788
    sget-object p2, Lio/invertase/firebase/database/RNFirebaseDatabase;->references:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public on(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 767
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getCachedInternalReferenceForApp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    move-result-object p1

    const-string p2, "eventType"

    .line 769
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "registration"

    .line 770
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    .line 768
    invoke-virtual {p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->on(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    .line 271
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 273
    sget-object v0, Lio/invertase/firebase/database/RNFirebaseDatabase;->references:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 274
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    .line 277
    invoke-virtual {v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->removeAllEventListeners()V

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisconnectCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 583
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseReference;->onDisconnect()Lcom/google/firebase/database/OnDisconnect;

    move-result-object p1

    .line 586
    new-instance p2, Lio/invertase/firebase/database/RNFirebaseDatabase$5;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/database/RNFirebaseDatabase$5;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/OnDisconnect;->cancel(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public onDisconnectRemove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseReference;->onDisconnect()Lcom/google/firebase/database/OnDisconnect;

    move-result-object p1

    .line 566
    new-instance p2, Lio/invertase/firebase/database/RNFirebaseDatabase$4;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/database/RNFirebaseDatabase$4;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/OnDisconnect;->removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public onDisconnectSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "type"

    .line 490
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseReference;->onDisconnect()Lcom/google/firebase/database/OnDisconnect;

    move-result-object p1

    .line 494
    new-instance p2, Lio/invertase/firebase/database/RNFirebaseDatabase$2;

    invoke-direct {p2, p0, p5}, Lio/invertase/firebase/database/RNFirebaseDatabase$2;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 p5, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "array"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :sswitch_1
    const-string p3, "boolean"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_2
    const-string p3, "null"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_1

    :sswitch_3
    const-string p3, "string"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_1

    :sswitch_4
    const-string p3, "object"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :sswitch_5
    const-string p3, "number"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p3, -0x1

    :goto_1
    const-string v0, "value"

    if-eqz p3, :cond_6

    if-eq p3, v4, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, p5, :cond_1

    goto :goto_2

    :cond_1
    const/4 p3, 0x0

    .line 520
    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    goto :goto_2

    .line 517
    :cond_2
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    goto :goto_2

    .line 514
    :cond_3
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    goto :goto_2

    .line 511
    :cond_4
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    goto :goto_2

    .line 507
    :cond_5
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p3

    invoke-static {p3}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p3

    .line 508
    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    goto :goto_2

    .line 503
    :cond_6
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-static {p3}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p3

    .line 504
    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_5
        -0x3cff5cc1 -> :sswitch_4
        -0x352a9fef -> :sswitch_3
        0x33c587 -> :sswitch_2
        0x3db6c28 -> :sswitch_1
        0x58c7259 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDisconnectUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 541
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseReference;->onDisconnect()Lcom/google/firebase/database/OnDisconnect;

    move-result-object p1

    .line 544
    invoke-static {p4}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p2

    .line 546
    new-instance p3, Lio/invertase/firebase/database/RNFirebaseDatabase$3;

    invoke-direct {p3, p0, p5}, Lio/invertase/firebase/database/RNFirebaseDatabase$3;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/OnDisconnect;->updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public once(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 756
    invoke-direct/range {p0 .. p5}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getInternalReferenceForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->once(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 720
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 722
    new-instance p2, Lio/invertase/firebase/database/RNFirebaseDatabase$10;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/database/RNFirebaseDatabase$10;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    .line 729
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/DatabaseReference;->removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 608
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 610
    invoke-static {p4}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "value"

    .line 611
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 613
    new-instance p3, Lio/invertase/firebase/database/RNFirebaseDatabase$6;

    invoke-direct {p3, p0, p5}, Lio/invertase/firebase/database/RNFirebaseDatabase$6;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    .line 620
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public setPersistence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 304
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getDatabaseForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/FirebaseDatabase;->setPersistenceEnabled(Z)V

    return-void
.end method

.method public setPersistenceCacheSizeBytes(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 318
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getDatabaseForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/FirebaseDatabase;->setPersistenceCacheSizeBytes(J)V

    return-void
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 637
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 639
    invoke-static {p4}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "value"

    .line 640
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 642
    new-instance p3, Lio/invertase/firebase/database/RNFirebaseDatabase$7;

    invoke-direct {p3, p0, p5}, Lio/invertase/firebase/database/RNFirebaseDatabase$7;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    .line 649
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/DatabaseReference;->setPriority(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public setWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 668
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 670
    invoke-static {p4}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "value"

    .line 671
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 673
    invoke-static {p5}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p4

    .line 674
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 676
    new-instance p4, Lio/invertase/firebase/database/RNFirebaseDatabase$8;

    invoke-direct {p4, p0, p6}, Lio/invertase/firebase/database/RNFirebaseDatabase$8;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    .line 683
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public transactionStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 411
    new-instance v7, Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/invertase/firebase/database/RNFirebaseDatabase$1;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    invoke-static {v7}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public transactionTryCommit(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 388
    sget-object p1, Lio/invertase/firebase/database/RNFirebaseDatabase;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1, p4}, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->signalUpdateReceived(Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 700
    invoke-direct {p0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReferenceForAppPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 701
    invoke-static {p4}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p2

    .line 703
    new-instance p3, Lio/invertase/firebase/database/RNFirebaseDatabase$9;

    invoke-direct {p3, p0, p5}, Lio/invertase/firebase/database/RNFirebaseDatabase$9;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V

    .line 710
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

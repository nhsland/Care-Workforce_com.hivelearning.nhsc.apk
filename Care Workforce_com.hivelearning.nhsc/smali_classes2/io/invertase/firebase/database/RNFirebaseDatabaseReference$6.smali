.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;
.super Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;
.source "RNFirebaseDatabaseReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->handleDatabaseEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$registration:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->val$eventType:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->isAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "data"

    .line 365
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 366
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    invoke-static {p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$300(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->val$eventType:Ljava/lang/String;

    const-string v1, "eventType"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {p1}, Lio/invertase/firebase/Utils;->readableMapToWritableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "registration"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 370
    invoke-static {}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContextInstance()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string v1, "database_sync_event"

    .line 369
    invoke-static {p1, v1, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$6;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

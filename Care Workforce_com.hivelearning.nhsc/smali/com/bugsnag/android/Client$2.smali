.class Lcom/bugsnag/android/Client$2;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/bugsnag/android/FileStore$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/Client;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Client;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/bugsnag/android/Client$2;->this$0:Lcom/bugsnag/android/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorIOFailure(Ljava/lang/Exception;Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    .line 215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 216
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v0, p0, Lcom/bugsnag/android/Client$2;->this$0:Lcom/bugsnag/android/Client;

    iget-object v1, v0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    invoke-virtual {v6}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 217
    invoke-virtual {p1, p3}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object p3

    .line 220
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "BugsnagDiagnostics"

    const-string v2, "canRead"

    invoke-virtual {p3, v1, v2, v0}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "canWrite"

    invoke-virtual {p3, v1, v2, v0}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "exists"

    invoke-virtual {p3, v1, v2, v0}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/bugsnag/android/Client$2;->this$0:Lcom/bugsnag/android/Client;

    iget-object v0, v0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "usableSpace"

    invoke-virtual {p3, v1, v2, v0}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "filename"

    invoke-virtual {p3, v1, v2, v0}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "fileLength"

    invoke-virtual {p3, v1, v0, p2}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    iget-object p2, p0, Lcom/bugsnag/android/Client$2;->this$0:Lcom/bugsnag/android/Client;

    invoke-virtual {p2, p3}, Lcom/bugsnag/android/Client;->recordStorageCacheBehavior(Lcom/bugsnag/android/MetaData;)V

    .line 230
    iget-object p2, p0, Lcom/bugsnag/android/Client$2;->this$0:Lcom/bugsnag/android/Client;

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/Client;->reportInternalBugsnagError(Lcom/bugsnag/android/Error;)V

    return-void
.end method

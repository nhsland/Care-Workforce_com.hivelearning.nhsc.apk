.class Lcom/bugsnag/android/ErrorStore$2;
.super Ljava/lang/Object;
.source "ErrorStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/ErrorStore;->flushOnLaunch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/ErrorStore;

.field final synthetic val$crashReports:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/ErrorStore;Ljava/util/List;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/bugsnag/android/ErrorStore$2;->this$0:Lcom/bugsnag/android/ErrorStore;

    iput-object p2, p0, Lcom/bugsnag/android/ErrorStore$2;->val$crashReports:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/bugsnag/android/ErrorStore$2;->this$0:Lcom/bugsnag/android/ErrorStore;

    iget-object v1, p0, Lcom/bugsnag/android/ErrorStore$2;->val$crashReports:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/ErrorStore;->flushReports(Ljava/util/Collection;)V

    .line 76
    iget-object v0, p0, Lcom/bugsnag/android/ErrorStore$2;->this$0:Lcom/bugsnag/android/ErrorStore;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bugsnag/android/ErrorStore;->flushOnLaunchCompleted:Z

    return-void
.end method

.class Lcom/bugsnag/android/ErrorStore$3;
.super Ljava/lang/Object;
.source "ErrorStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/ErrorStore;->flushAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/ErrorStore;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/ErrorStore;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/bugsnag/android/ErrorStore$3;->this$0:Lcom/bugsnag/android/ErrorStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/bugsnag/android/ErrorStore$3;->this$0:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {v0}, Lcom/bugsnag/android/ErrorStore;->findStoredFiles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/ErrorStore;->flushReports(Ljava/util/Collection;)V

    return-void
.end method

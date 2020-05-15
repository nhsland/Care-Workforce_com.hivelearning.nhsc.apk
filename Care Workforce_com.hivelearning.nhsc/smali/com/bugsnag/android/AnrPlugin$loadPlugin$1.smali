.class final Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;
.super Ljava/lang/Object;
.source "AnrPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/AnrPlugin;->loadPlugin(Lcom/bugsnag/android/Client;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $client:Lcom/bugsnag/android/Client;

.field final synthetic this$0:Lcom/bugsnag/android/AnrPlugin;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/AnrPlugin;Lcom/bugsnag/android/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;->this$0:Lcom/bugsnag/android/AnrPlugin;

    iput-object p2, p0, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;->$client:Lcom/bugsnag/android/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;->this$0:Lcom/bugsnag/android/AnrPlugin;

    iget-object v1, p0, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;->$client:Lcom/bugsnag/android/Client;

    invoke-static {v0, v1}, Lcom/bugsnag/android/AnrPlugin;->access$setClient$p(Lcom/bugsnag/android/AnrPlugin;Lcom/bugsnag/android/Client;)V

    .line 26
    iget-object v0, p0, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;->this$0:Lcom/bugsnag/android/AnrPlugin;

    iget-object v1, p0, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;->$client:Lcom/bugsnag/android/Client;

    iget-object v1, v1, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    const-string v2, "client.config"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getCallPreviousSigquitHandler()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bugsnag/android/AnrPlugin;->access$enableAnrReporting(Lcom/bugsnag/android/AnrPlugin;Z)V

    const-string v0, "Initialised ANR Plugin"

    .line 27
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

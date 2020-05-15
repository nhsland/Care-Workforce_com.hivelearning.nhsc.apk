.class Lcom/bugsnag/android/Client$7;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/Client;->deliverReportAsync(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/Report;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/Client;

.field final synthetic val$finalError:Lcom/bugsnag/android/Error;

.field final synthetic val$finalReport:Lcom/bugsnag/android/Report;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Error;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/bugsnag/android/Client$7;->this$0:Lcom/bugsnag/android/Client;

    iput-object p2, p0, Lcom/bugsnag/android/Client$7;->val$finalReport:Lcom/bugsnag/android/Report;

    iput-object p3, p0, Lcom/bugsnag/android/Client$7;->val$finalError:Lcom/bugsnag/android/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1107
    iget-object v0, p0, Lcom/bugsnag/android/Client$7;->this$0:Lcom/bugsnag/android/Client;

    iget-object v1, p0, Lcom/bugsnag/android/Client$7;->val$finalReport:Lcom/bugsnag/android/Report;

    iget-object v2, p0, Lcom/bugsnag/android/Client$7;->val$finalError:Lcom/bugsnag/android/Error;

    invoke-virtual {v0, v1, v2}, Lcom/bugsnag/android/Client;->deliver(Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Error;)V

    return-void
.end method

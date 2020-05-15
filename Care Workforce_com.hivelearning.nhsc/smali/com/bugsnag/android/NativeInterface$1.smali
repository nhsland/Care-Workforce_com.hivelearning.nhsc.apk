.class final Lcom/bugsnag/android/NativeInterface$1;
.super Ljava/lang/Object;
.source "NativeInterface.java"

# interfaces
.implements Lcom/bugsnag/android/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/NativeInterface;->notify(Ljava/lang/String;Ljava/lang/String;Lcom/bugsnag/android/Severity;[Ljava/lang/StackTraceElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$severity:Lcom/bugsnag/android/Severity;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Severity;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/bugsnag/android/NativeInterface$1;->val$severity:Lcom/bugsnag/android/Severity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeNotify(Lcom/bugsnag/android/Report;)V
    .locals 1

    .line 563
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 565
    iget-object v0, p0, Lcom/bugsnag/android/NativeInterface$1;->val$severity:Lcom/bugsnag/android/Severity;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 568
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getExceptions()Lcom/bugsnag/android/Exceptions;

    move-result-object p1

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Exceptions;->setExceptionType(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.class final Lcom/bugsnag/android/Bugsnag$3;
.super Ljava/lang/Object;
.source "Bugsnag.java"

# interfaces
.implements Lcom/bugsnag/android/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/Bugsnag;->notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalMetaData:Lcom/bugsnag/android/MetaData;

.field final synthetic val$finalSeverity:Lcom/bugsnag/android/Severity;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/bugsnag/android/Bugsnag$3;->val$finalSeverity:Lcom/bugsnag/android/Severity;

    iput-object p2, p0, Lcom/bugsnag/android/Bugsnag$3;->val$finalMetaData:Lcom/bugsnag/android/MetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeNotify(Lcom/bugsnag/android/Report;)V
    .locals 2

    .line 501
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Bugsnag$3;->val$finalSeverity:Lcom/bugsnag/android/Severity;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 502
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object p1

    iget-object v0, p0, Lcom/bugsnag/android/Bugsnag$3;->val$finalMetaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

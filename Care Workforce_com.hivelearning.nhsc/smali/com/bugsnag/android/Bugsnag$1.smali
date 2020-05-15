.class final Lcom/bugsnag/android/Bugsnag$1;
.super Ljava/lang/Object;
.source "Bugsnag.java"

# interfaces
.implements Lcom/bugsnag/android/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/Bugsnag;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$metaData:Lcom/bugsnag/android/MetaData;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/MetaData;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/bugsnag/android/Bugsnag$1;->val$metaData:Lcom/bugsnag/android/MetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeNotify(Lcom/bugsnag/android/Report;)V
    .locals 1

    .line 451
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->getError()Lcom/bugsnag/android/Error;

    move-result-object p1

    iget-object v0, p0, Lcom/bugsnag/android/Bugsnag$1;->val$metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

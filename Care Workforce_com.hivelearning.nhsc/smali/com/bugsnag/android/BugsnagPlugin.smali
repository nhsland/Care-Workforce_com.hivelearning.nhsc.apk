.class public interface abstract Lcom/bugsnag/android/BugsnagPlugin;
.super Ljava/lang/Object;
.source "BugsnagPluginInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\tH&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/bugsnag/android/BugsnagPlugin;",
        "",
        "loaded",
        "",
        "getLoaded",
        "()Z",
        "setLoaded",
        "(Z)V",
        "loadPlugin",
        "",
        "client",
        "Lcom/bugsnag/android/Client;",
        "unloadPlugin",
        "bugsnag-android-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getLoaded()Z
.end method

.method public abstract loadPlugin(Lcom/bugsnag/android/Client;)V
.end method

.method public abstract setLoaded(Z)V
.end method

.method public abstract unloadPlugin()V
.end method

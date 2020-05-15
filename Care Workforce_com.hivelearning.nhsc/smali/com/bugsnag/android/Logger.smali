.class final Lcom/bugsnag/android/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Bugsnag"

.field private static volatile enabled:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnabled()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/bugsnag/android/Logger;->enabled:Z

    return v0
.end method

.method static info(Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/bugsnag/android/Logger;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bugsnag"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static setEnabled(Z)V
    .locals 0

    .line 32
    sput-boolean p0, Lcom/bugsnag/android/Logger;->enabled:Z

    return-void
.end method

.method static warn(Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/bugsnag/android/Logger;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bugsnag"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/bugsnag/android/Logger;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bugsnag"

    .line 27
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

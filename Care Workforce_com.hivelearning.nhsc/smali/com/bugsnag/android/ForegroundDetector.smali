.class Lcom/bugsnag/android/ForegroundDetector;
.super Ljava/lang/Object;
.source "ForegroundDetector.java"


# instance fields
.field private final activityManager:Landroid/app/ActivityManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/bugsnag/android/ForegroundDetector;->activityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private getProcessInfo()Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 2

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 48
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 50
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    return-object v0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/bugsnag/android/ForegroundDetector;->getProcessInfoPreApi16()Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method private getProcessInfoPreApi16()Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/bugsnag/android/ForegroundDetector;->activityManager:Landroid/app/ActivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method isInForeground()Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/bugsnag/android/ForegroundDetector;->getProcessInfo()Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 36
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

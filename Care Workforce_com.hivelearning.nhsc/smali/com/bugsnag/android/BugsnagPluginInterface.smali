.class public final Lcom/bugsnag/android/BugsnagPluginInterface;
.super Ljava/lang/Object;
.source "BugsnagPluginInterface.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBugsnagPluginInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BugsnagPluginInterface.kt\ncom/bugsnag/android/BugsnagPluginInterface\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1591#2,2:52\n*E\n*S KotlinDebug\n*F\n+ 1 BugsnagPluginInterface.kt\ncom/bugsnag/android/BugsnagPluginInterface\n*L\n20#1,2:52\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0001J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0001J\u0012\u0010\u000f\u001a\u00020\n2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u0005J\u0014\u0010\u0010\u001a\u00020\n2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0001R\u001e\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/bugsnag/android/BugsnagPluginInterface;",
        "",
        "()V",
        "plugins",
        "",
        "Ljava/lang/Class;",
        "Lcom/bugsnag/android/BugsnagPlugin;",
        "registeredPluginClasses",
        "",
        "loadPlugin",
        "",
        "client",
        "Lcom/bugsnag/android/Client;",
        "clz",
        "loadRegisteredPlugins",
        "registerPlugin",
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


# static fields
.field public static final INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

.field private static plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bugsnag/android/BugsnagPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredPluginClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/bugsnag/android/BugsnagPluginInterface;

    invoke-direct {v0}, Lcom/bugsnag/android/BugsnagPluginInterface;-><init>()V

    sput-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->plugins:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->registeredPluginClasses:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadPlugin(Lcom/bugsnag/android/Client;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bugsnag/android/Client;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->plugins:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/BugsnagPlugin;

    if-nez v0, :cond_1

    .line 29
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bugsnag/android/BugsnagPlugin;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bugsnag.android.BugsnagPlugin"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 34
    invoke-interface {v0}, Lcom/bugsnag/android/BugsnagPlugin;->getLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    sget-object v1, Lcom/bugsnag/android/BugsnagPluginInterface;->plugins:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-interface {v0, p1}, Lcom/bugsnag/android/BugsnagPlugin;->loadPlugin(Lcom/bugsnag/android/Client;)V

    const/4 p1, 0x1

    .line 37
    invoke-interface {v0, p1}, Lcom/bugsnag/android/BugsnagPlugin;->setLoaded(Z)V

    :cond_2
    return-void
.end method

.method public final loadRegisteredPlugins(Lcom/bugsnag/android/Client;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->registeredPluginClasses:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 20
    sget-object v2, Lcom/bugsnag/android/BugsnagPluginInterface;->INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

    invoke-virtual {v2, p1, v1}, Lcom/bugsnag/android/BugsnagPluginInterface;->loadPlugin(Lcom/bugsnag/android/Client;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerPlugin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "clz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->registeredPluginClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unloadPlugin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "clz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bugsnag/android/BugsnagPlugin;

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/bugsnag/android/BugsnagPlugin;->getLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/bugsnag/android/BugsnagPlugin;->unloadPlugin()V

    const/4 v0, 0x0

    .line 47
    invoke-interface {p1, v0}, Lcom/bugsnag/android/BugsnagPlugin;->setLoaded(Z)V

    :cond_0
    return-void
.end method

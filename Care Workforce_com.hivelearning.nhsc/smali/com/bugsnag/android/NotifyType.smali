.class public final enum Lcom/bugsnag/android/NotifyType;
.super Ljava/lang/Enum;
.source "NotifyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bugsnag/android/NotifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bugsnag/android/NotifyType;

.field public static final enum ALL:Lcom/bugsnag/android/NotifyType;

.field public static final enum APP:Lcom/bugsnag/android/NotifyType;

.field public static final enum BREADCRUMB:Lcom/bugsnag/android/NotifyType;

.field public static final enum CONTEXT:Lcom/bugsnag/android/NotifyType;

.field public static final enum DEVICE:Lcom/bugsnag/android/NotifyType;

.field public static final enum FILTERS:Lcom/bugsnag/android/NotifyType;

.field public static final enum META:Lcom/bugsnag/android/NotifyType;

.field public static final enum RELEASE_STAGES:Lcom/bugsnag/android/NotifyType;

.field public static final enum USER:Lcom/bugsnag/android/NotifyType;


# instance fields
.field private final intValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3, v2}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->ALL:Lcom/bugsnag/android/NotifyType;

    .line 11
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "USER"

    invoke-direct {v0, v5, v1, v4}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->USER:Lcom/bugsnag/android/NotifyType;

    .line 12
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "APP"

    invoke-direct {v0, v6, v2, v5}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->APP:Lcom/bugsnag/android/NotifyType;

    .line 13
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "DEVICE"

    invoke-direct {v0, v7, v4, v6}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->DEVICE:Lcom/bugsnag/android/NotifyType;

    .line 14
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "CONTEXT"

    invoke-direct {v0, v8, v5, v7}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->CONTEXT:Lcom/bugsnag/android/NotifyType;

    .line 15
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "RELEASE_STAGES"

    invoke-direct {v0, v9, v6, v8}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->RELEASE_STAGES:Lcom/bugsnag/android/NotifyType;

    .line 16
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "FILTERS"

    invoke-direct {v0, v10, v7, v9}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->FILTERS:Lcom/bugsnag/android/NotifyType;

    .line 17
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "BREADCRUMB"

    invoke-direct {v0, v11, v8, v10}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->BREADCRUMB:Lcom/bugsnag/android/NotifyType;

    .line 18
    new-instance v0, Lcom/bugsnag/android/NotifyType;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "META"

    invoke-direct {v0, v12, v9, v11}, Lcom/bugsnag/android/NotifyType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/bugsnag/android/NotifyType;->META:Lcom/bugsnag/android/NotifyType;

    new-array v10, v10, [Lcom/bugsnag/android/NotifyType;

    .line 9
    sget-object v11, Lcom/bugsnag/android/NotifyType;->ALL:Lcom/bugsnag/android/NotifyType;

    aput-object v11, v10, v3

    sget-object v3, Lcom/bugsnag/android/NotifyType;->USER:Lcom/bugsnag/android/NotifyType;

    aput-object v3, v10, v1

    sget-object v1, Lcom/bugsnag/android/NotifyType;->APP:Lcom/bugsnag/android/NotifyType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/bugsnag/android/NotifyType;->DEVICE:Lcom/bugsnag/android/NotifyType;

    aput-object v1, v10, v4

    sget-object v1, Lcom/bugsnag/android/NotifyType;->CONTEXT:Lcom/bugsnag/android/NotifyType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/bugsnag/android/NotifyType;->RELEASE_STAGES:Lcom/bugsnag/android/NotifyType;

    aput-object v1, v10, v6

    sget-object v1, Lcom/bugsnag/android/NotifyType;->FILTERS:Lcom/bugsnag/android/NotifyType;

    aput-object v1, v10, v7

    sget-object v1, Lcom/bugsnag/android/NotifyType;->BREADCRUMB:Lcom/bugsnag/android/NotifyType;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/bugsnag/android/NotifyType;->$VALUES:[Lcom/bugsnag/android/NotifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/bugsnag/android/NotifyType;->intValue:Ljava/lang/Integer;

    return-void
.end method

.method public static fromInt(Ljava/lang/Integer;)Lcom/bugsnag/android/NotifyType;
    .locals 5

    if-eqz p0, :cond_1

    .line 39
    invoke-static {}, Lcom/bugsnag/android/NotifyType;->values()[Lcom/bugsnag/android/NotifyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lcom/bugsnag/android/NotifyType;->getValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bugsnag/android/NotifyType;
    .locals 1

    .line 9
    const-class v0, Lcom/bugsnag/android/NotifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bugsnag/android/NotifyType;

    return-object p0
.end method

.method public static values()[Lcom/bugsnag/android/NotifyType;
    .locals 1

    .line 9
    sget-object v0, Lcom/bugsnag/android/NotifyType;->$VALUES:[Lcom/bugsnag/android/NotifyType;

    invoke-virtual {v0}, [Lcom/bugsnag/android/NotifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bugsnag/android/NotifyType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bugsnag/android/NotifyType;->intValue:Ljava/lang/Integer;

    return-object v0
.end method

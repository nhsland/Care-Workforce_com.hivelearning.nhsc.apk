.class public final enum Lcom/bugsnag/android/NativeInterface$MessageType;
.super Ljava/lang/Enum;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/NativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bugsnag/android/NativeInterface$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum ADD_BREADCRUMB:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum ADD_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum CLEAR_BREADCRUMBS:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum CLEAR_METADATA_TAB:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum DELIVER_PENDING:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum DISABLE_NATIVE_CRASH_REPORTING:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum ENABLE_NATIVE_CRASH_REPORTING:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum INSTALL:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum NOTIFY_HANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum NOTIFY_UNHANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum REMOVE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum START_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum STOP_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_APP_VERSION:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_BUILD_UUID:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_CONTEXT:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_IN_FOREGROUND:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_LOW_MEMORY:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_NOTIFY_RELEASE_STAGES:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_ORIENTATION:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_RELEASE_STAGE:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_USER_EMAIL:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_USER_ID:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum UPDATE_USER_NAME:Lcom/bugsnag/android/NativeInterface$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v1, 0x0

    const-string v2, "ADD_BREADCRUMB"

    invoke-direct {v0, v2, v1}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->ADD_BREADCRUMB:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 31
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v2, 0x1

    const-string v3, "ADD_METADATA"

    invoke-direct {v0, v3, v2}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->ADD_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 35
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v3, 0x2

    const-string v4, "CLEAR_BREADCRUMBS"

    invoke-direct {v0, v4, v3}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->CLEAR_BREADCRUMBS:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 40
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v4, 0x3

    const-string v5, "CLEAR_METADATA_TAB"

    invoke-direct {v0, v5, v4}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->CLEAR_METADATA_TAB:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 44
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v5, 0x4

    const-string v6, "DELIVER_PENDING"

    invoke-direct {v0, v6, v5}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->DELIVER_PENDING:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 48
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v6, 0x5

    const-string v7, "INSTALL"

    invoke-direct {v0, v7, v6}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->INSTALL:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 52
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v7, 0x6

    const-string v8, "ENABLE_NATIVE_CRASH_REPORTING"

    invoke-direct {v0, v8, v7}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->ENABLE_NATIVE_CRASH_REPORTING:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 56
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v8, 0x7

    const-string v9, "DISABLE_NATIVE_CRASH_REPORTING"

    invoke-direct {v0, v9, v8}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->DISABLE_NATIVE_CRASH_REPORTING:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 60
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v9, 0x8

    const-string v10, "NOTIFY_HANDLED"

    invoke-direct {v0, v10, v9}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->NOTIFY_HANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 64
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v10, 0x9

    const-string v11, "NOTIFY_UNHANDLED"

    invoke-direct {v0, v11, v10}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->NOTIFY_UNHANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 69
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v11, 0xa

    const-string v12, "REMOVE_METADATA"

    invoke-direct {v0, v12, v11}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->REMOVE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 75
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v12, 0xb

    const-string v13, "START_SESSION"

    invoke-direct {v0, v13, v12}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->START_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 80
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v13, 0xc

    const-string v14, "STOP_SESSION"

    invoke-direct {v0, v14, v13}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->STOP_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 86
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v14, 0xd

    const-string v15, "UPDATE_APP_VERSION"

    invoke-direct {v0, v15, v14}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_APP_VERSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 91
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v15, 0xe

    const-string v14, "UPDATE_BUILD_UUID"

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_BUILD_UUID:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 95
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v14, 0xf

    const-string v15, "UPDATE_CONTEXT"

    invoke-direct {v0, v15, v14}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_CONTEXT:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 101
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v15, 0x10

    const-string v14, "UPDATE_IN_FOREGROUND"

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_IN_FOREGROUND:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 106
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v14, 0x11

    const-string v15, "UPDATE_LOW_MEMORY"

    invoke-direct {v0, v15, v14}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_LOW_MEMORY:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 111
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v15, 0x12

    const-string v14, "UPDATE_METADATA"

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 116
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v14, 0x13

    const-string v15, "UPDATE_ORIENTATION"

    invoke-direct {v0, v15, v14}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_ORIENTATION:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 121
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v15, 0x14

    const-string v14, "UPDATE_NOTIFY_RELEASE_STAGES"

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_NOTIFY_RELEASE_STAGES:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 126
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v14, 0x15

    const-string v15, "UPDATE_RELEASE_STAGE"

    invoke-direct {v0, v15, v14}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_RELEASE_STAGE:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 130
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v15, "UPDATE_USER_EMAIL"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_EMAIL:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 134
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_USER_NAME"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_NAME:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 138
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_USER_ID"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_ID:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v14, 0x19

    new-array v14, v14, [Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 22
    sget-object v15, Lcom/bugsnag/android/NativeInterface$MessageType;->ADD_BREADCRUMB:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->ADD_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->CLEAR_BREADCRUMBS:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->CLEAR_METADATA_TAB:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->DELIVER_PENDING:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->INSTALL:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->ENABLE_NATIVE_CRASH_REPORTING:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->DISABLE_NATIVE_CRASH_REPORTING:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->NOTIFY_HANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->NOTIFY_UNHANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->REMOVE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->START_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->STOP_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v14, v13

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_APP_VERSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_BUILD_UUID:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_CONTEXT:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_IN_FOREGROUND:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_LOW_MEMORY:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_ORIENTATION:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_NOTIFY_RELEASE_STAGES:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_RELEASE_STAGE:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_EMAIL:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_USER_NAME:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    const/16 v1, 0x18

    aput-object v0, v14, v1

    sput-object v14, Lcom/bugsnag/android/NativeInterface$MessageType;->$VALUES:[Lcom/bugsnag/android/NativeInterface$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bugsnag/android/NativeInterface$MessageType;
    .locals 1

    .line 22
    const-class v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bugsnag/android/NativeInterface$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/bugsnag/android/NativeInterface$MessageType;
    .locals 1

    .line 22
    sget-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->$VALUES:[Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-virtual {v0}, [Lcom/bugsnag/android/NativeInterface$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bugsnag/android/NativeInterface$MessageType;

    return-object v0
.end method

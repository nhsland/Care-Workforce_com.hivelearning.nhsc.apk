.class public final enum Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
.super Ljava/lang/Enum;
.source "BundleDeltaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/BundleDeltaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

.field public static final enum DEV_SUPPORT:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

.field public static final enum NATIVE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

.field public static final enum NONE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->NONE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    .line 32
    new-instance v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    const/4 v2, 0x1

    const-string v3, "DEV_SUPPORT"

    invoke-direct {v0, v3, v2}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->DEV_SUPPORT:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    .line 33
    new-instance v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    const/4 v3, 0x2

    const-string v4, "NATIVE"

    invoke-direct {v0, v4, v3}, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->NATIVE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    .line 30
    sget-object v5, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->NONE:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->DEV_SUPPORT:Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->$VALUES:[Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .locals 1

    .line 30
    const-class v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;
    .locals 1

    .line 30
    sget-object v0, Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->$VALUES:[Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    invoke-virtual {v0}, [Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/devsupport/BundleDeltaClient$ClientType;

    return-object v0
.end method

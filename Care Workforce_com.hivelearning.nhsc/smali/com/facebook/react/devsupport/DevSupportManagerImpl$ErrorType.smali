.class final enum Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;
.super Ljava/lang/Enum;
.source "DevSupportManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

.field public static final enum JS:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

.field public static final enum NATIVE:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    const/4 v1, 0x0

    const-string v2, "JS"

    invoke-direct {v0, v2, v1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->JS:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    .line 109
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    const/4 v2, 0x1

    const-string v3, "NATIVE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->NATIVE:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    .line 107
    sget-object v4, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->JS:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->$VALUES:[Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;
    .locals 1

    .line 107
    const-class v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;
    .locals 1

    .line 107
    sget-object v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->$VALUES:[Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    invoke-virtual {v0}, [Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    return-object v0
.end method

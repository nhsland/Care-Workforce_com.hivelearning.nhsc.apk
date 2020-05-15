.class public final enum Lcom/brentvatne/react/ReactVideoView$Events;
.super Ljava/lang/Enum;
.source "ReactVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/react/ReactVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brentvatne/react/ReactVideoView$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 38
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x0

    const-string v2, "EVENT_LOAD_START"

    const-string v3, "onVideoLoadStart"

    invoke-direct {v0, v2, v1, v3}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 39
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v2, 0x1

    const-string v3, "EVENT_LOAD"

    const-string v4, "onVideoLoad"

    invoke-direct {v0, v3, v2, v4}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 40
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v3, 0x2

    const-string v4, "EVENT_ERROR"

    const-string v5, "onVideoError"

    invoke-direct {v0, v4, v3, v5}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 41
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v4, 0x3

    const-string v5, "EVENT_PROGRESS"

    const-string v6, "onVideoProgress"

    invoke-direct {v0, v5, v4, v6}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 42
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v5, 0x4

    const-string v6, "EVENT_SEEK"

    const-string v7, "onVideoSeek"

    invoke-direct {v0, v6, v5, v7}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 43
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v6, 0x5

    const-string v7, "EVENT_END"

    const-string v8, "onVideoEnd"

    invoke-direct {v0, v7, v6, v8}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 44
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v7, 0x6

    const-string v8, "EVENT_STALLED"

    const-string v9, "onPlaybackStalled"

    invoke-direct {v0, v8, v7, v9}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 45
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v8, 0x7

    const-string v9, "EVENT_RESUME"

    const-string v10, "onPlaybackResume"

    invoke-direct {v0, v9, v8, v10}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 46
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v9, 0x8

    const-string v10, "EVENT_READY_FOR_DISPLAY"

    const-string v11, "onReadyForDisplay"

    invoke-direct {v0, v10, v9, v11}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/brentvatne/react/ReactVideoView$Events;

    .line 37
    sget-object v11, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v11, v10, v1

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v10, v2

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v10, v3

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v10, v4

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v10, v5

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v10, v6

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v10, v7

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/brentvatne/react/ReactVideoView$Events;->$VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/brentvatne/react/ReactVideoView$Events;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brentvatne/react/ReactVideoView$Events;
    .locals 1

    .line 37
    const-class v0, Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brentvatne/react/ReactVideoView$Events;

    return-object p0
.end method

.method public static values()[Lcom/brentvatne/react/ReactVideoView$Events;
    .locals 1

    .line 37
    sget-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->$VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v0}, [Lcom/brentvatne/react/ReactVideoView$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brentvatne/react/ReactVideoView$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$Events;->mName:Ljava/lang/String;

    return-object v0
.end method

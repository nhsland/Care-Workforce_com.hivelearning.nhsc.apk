.class Lcom/brentvatne/react/ReactVideoView$1;
.super Ljava/lang/Object;
.source "ReactVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/react/ReactVideoView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brentvatne/react/ReactVideoView;


# direct methods
.method constructor <init>(Lcom/brentvatne/react/ReactVideoView;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v0}, Lcom/brentvatne/react/ReactVideoView;->access$000(Lcom/brentvatne/react/ReactVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v0}, Lcom/brentvatne/react/ReactVideoView;->access$100(Lcom/brentvatne/react/ReactVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v0}, Lcom/brentvatne/react/ReactVideoView;->access$200(Lcom/brentvatne/react/ReactVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v1}, Lcom/brentvatne/react/ReactVideoView;->access$300(Lcom/brentvatne/react/ReactVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-string v5, "currentTime"

    invoke-interface {v0, v5, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 134
    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v1}, Lcom/brentvatne/react/ReactVideoView;->access$400(Lcom/brentvatne/react/ReactVideoView;)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-string v5, "playableDuration"

    invoke-interface {v0, v5, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 135
    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v1}, Lcom/brentvatne/react/ReactVideoView;->access$500(Lcom/brentvatne/react/ReactVideoView;)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-string v3, "seekableDuration"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 136
    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v1}, Lcom/brentvatne/react/ReactVideoView;->access$600(Lcom/brentvatne/react/ReactVideoView;)Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object v1

    iget-object v2, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-virtual {v2}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v2

    sget-object v3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 139
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v0}, Lcom/brentvatne/react/ReactVideoView;->access$900(Lcom/brentvatne/react/ReactVideoView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v1}, Lcom/brentvatne/react/ReactVideoView;->access$700(Lcom/brentvatne/react/ReactVideoView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/brentvatne/react/ReactVideoView$1;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v2}, Lcom/brentvatne/react/ReactVideoView;->access$800(Lcom/brentvatne/react/ReactVideoView;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

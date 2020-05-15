.class Lcom/brentvatne/react/ReactVideoView$2;
.super Ljava/lang/Object;
.source "ReactVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/react/ReactVideoView;->onPrepared(Landroid/media/MediaPlayer;)V
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

    .line 476
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView$2;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$2;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v0}, Lcom/brentvatne/react/ReactVideoView;->access$1000(Lcom/brentvatne/react/ReactVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$2;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v0}, Lcom/brentvatne/react/ReactVideoView;->access$1000(Lcom/brentvatne/react/ReactVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    return-void
.end method

.class Lcom/brentvatne/react/ReactVideoView$3;
.super Ljava/lang/Object;
.source "ReactVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/react/ReactVideoView;->onHostResume()V
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

    .line 603
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView$3;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$3;->this$0:Lcom/brentvatne/react/ReactVideoView;

    invoke-static {v0}, Lcom/brentvatne/react/ReactVideoView;->access$1100(Lcom/brentvatne/react/ReactVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brentvatne/react/ReactVideoView;->setPausedModifier(Z)V

    return-void
.end method

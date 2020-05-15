.class Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;
.super Landroid/content/BroadcastReceiver;
.source "RNDeviceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/learnium/RNDeviceInfo/RNDeviceModule;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;


# direct methods
.method constructor <init>(Lcom/learnium/RNDeviceInfo/RNDeviceModule;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 94
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-static {p1, p2}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$000(Lcom/learnium/RNDeviceInfo/RNDeviceModule;Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-static {v0}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$300(Lcom/learnium/RNDeviceInfo/RNDeviceModule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-static {v0}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$400(Lcom/learnium/RNDeviceInfo/RNDeviceModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-string v2, "RNDeviceInfo_powerStateDidChange"

    invoke-static {v0, v1, v2, p2}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$500(Lcom/learnium/RNDeviceInfo/RNDeviceModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-static {v0, p2}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$302(Lcom/learnium/RNDeviceInfo/RNDeviceModule;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    :cond_1
    iget-object p2, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-static {p2}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$600(Lcom/learnium/RNDeviceInfo/RNDeviceModule;)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_3

    .line 109
    iget-object p2, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-static {p2}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$700(Lcom/learnium/RNDeviceInfo/RNDeviceModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "RNDeviceInfo_batteryLevelDidChange"

    invoke-static {p2, v0, v1, p1}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$500(Lcom/learnium/RNDeviceInfo/RNDeviceModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_2

    .line 112
    iget-object p2, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-static {p2}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$800(Lcom/learnium/RNDeviceInfo/RNDeviceModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "RNDeviceInfo_batteryLevelIsLow"

    invoke-static {p2, v0, v1, p1}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$500(Lcom/learnium/RNDeviceInfo/RNDeviceModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$1;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/learnium/RNDeviceInfo/RNDeviceModule;->access$602(Lcom/learnium/RNDeviceInfo/RNDeviceModule;D)D

    :cond_3
    return-void
.end method

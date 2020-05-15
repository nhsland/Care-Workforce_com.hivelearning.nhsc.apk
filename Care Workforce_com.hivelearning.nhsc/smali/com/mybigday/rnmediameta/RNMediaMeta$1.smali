.class Lcom/mybigday/rnmediameta/RNMediaMeta$1;
.super Ljava/lang/Thread;
.source "RNMediaMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybigday/rnmediameta/RNMediaMeta;->get(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mybigday/rnmediameta/RNMediaMeta;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/mybigday/rnmediameta/RNMediaMeta;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->this$0:Lcom/mybigday/rnmediameta/RNMediaMeta;

    iput-object p2, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p4, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->this$0:Lcom/mybigday/rnmediameta/RNMediaMeta;

    iget-object v1, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v3, p0, Lcom/mybigday/rnmediameta/RNMediaMeta$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, v2, v3}, Lcom/mybigday/rnmediameta/RNMediaMeta;->access$000(Lcom/mybigday/rnmediameta/RNMediaMeta;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

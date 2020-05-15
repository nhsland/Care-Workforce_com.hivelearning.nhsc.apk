.class Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;
.super Ljava/lang/Object;
.source "RNFirebaseAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/analytics/RNFirebaseAnalytics;->setCurrentScreen(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/analytics/RNFirebaseAnalytics;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screenClassOverride:Ljava/lang/String;

.field final synthetic val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/invertase/firebase/analytics/RNFirebaseAnalytics;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->this$0:Lio/invertase/firebase/analytics/RNFirebaseAnalytics;

    iput-object p2, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->val$screenName:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->val$screenClassOverride:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    iget-object v0, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->this$0:Lio/invertase/firebase/analytics/RNFirebaseAnalytics;

    .line 64
    invoke-static {v0}, Lio/invertase/firebase/analytics/RNFirebaseAnalytics;->access$000(Lio/invertase/firebase/analytics/RNFirebaseAnalytics;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iget-object v1, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->val$screenName:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/analytics/RNFirebaseAnalytics$1;->val$screenClassOverride:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

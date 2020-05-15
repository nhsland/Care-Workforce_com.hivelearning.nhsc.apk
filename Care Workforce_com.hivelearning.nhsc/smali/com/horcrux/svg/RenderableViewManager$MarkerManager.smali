.class Lcom/horcrux/svg/RenderableViewManager$MarkerManager;
.super Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkerManager"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 912
    sget-object v0, Lcom/horcrux/svg/RenderableViewManager$SVGClass;->RNSVGMarker:Lcom/horcrux/svg/RenderableViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;-><init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V

    return-void
.end method


# virtual methods
.method public setAlign(Lcom/horcrux/svg/MarkerView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "align"
    .end annotation

    .line 967
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setAlign(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerHeight(Lcom/horcrux/svg/MarkerView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerHeight"
    .end annotation

    .line 932
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setMarkerHeight(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setMarkerUnits(Lcom/horcrux/svg/MarkerView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerUnits"
    .end annotation

    .line 937
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setMarkerUnits(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerWidth(Lcom/horcrux/svg/MarkerView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerWidth"
    .end annotation

    .line 927
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setMarkerWidth(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setMeetOrSlice(Lcom/horcrux/svg/MarkerView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "meetOrSlice"
    .end annotation

    .line 972
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setMeetOrSlice(I)V

    return-void
.end method

.method public setMinX(Lcom/horcrux/svg/MarkerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minX"
    .end annotation

    .line 947
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setMinX(F)V

    return-void
.end method

.method public setMinY(Lcom/horcrux/svg/MarkerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minY"
    .end annotation

    .line 952
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setMinY(F)V

    return-void
.end method

.method public setOrient(Lcom/horcrux/svg/MarkerView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "orient"
    .end annotation

    .line 942
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setOrient(Ljava/lang/String;)V

    return-void
.end method

.method public setRefX(Lcom/horcrux/svg/MarkerView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "refX"
    .end annotation

    .line 917
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setRefX(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setRefY(Lcom/horcrux/svg/MarkerView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "refY"
    .end annotation

    .line 922
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setRefY(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setVbHeight(Lcom/horcrux/svg/MarkerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbHeight"
    .end annotation

    .line 962
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setVbHeight(F)V

    return-void
.end method

.method public setVbWidth(Lcom/horcrux/svg/MarkerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbWidth"
    .end annotation

    .line 957
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/MarkerView;->setVbWidth(F)V

    return-void
.end method

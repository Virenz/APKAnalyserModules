.class Landroid/support/v4/widget/ScrollerCompatIcs;
.super Ljava/lang/Object;
.source "ScrollerCompatIcs.java"


# direct methods
.method public static getCurrVelocity(Ljava/lang/Object;)F
    .registers 2
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

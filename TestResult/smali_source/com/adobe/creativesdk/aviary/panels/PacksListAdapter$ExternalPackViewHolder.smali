.class Lcom/adobe/creativesdk/aviary/panels/PacksListAdapter$ExternalPackViewHolder;
.super Lcom/adobe/creativesdk/aviary/panels/PacksListAdapter$BaseViewHolder;
.source "PacksListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/creativesdk/aviary/panels/PacksListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalPackViewHolder"
.end annotation


# instance fields
.field free:I

.field identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/aviary/panels/PacksListAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 575
    return-void
.end method

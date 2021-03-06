.class public Lorg/apache/http/config/MessageConstraints;
.super Ljava/lang/Object;
.source "MessageConstraints.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/config/MessageConstraints$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/config/MessageConstraints;


# instance fields
.field private final maxHeaderCount:I

.field private final maxLineLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/http/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/MessageConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/config/MessageConstraints$Builder;->build()Lorg/apache/http/config/MessageConstraints;

    move-result-object v0

    sput-object v0, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3
    .param p1, "maxLineLength"    # I
    .param p2, "maxHeaderCount"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/http/config/MessageConstraints;->maxLineLength:I

    .line 47
    iput p2, p0, Lorg/apache/http/config/MessageConstraints;->maxHeaderCount:I

    .line 48
    return-void
.end method

.method public static copy(Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/config/MessageConstraints$Builder;
    .registers 3
    .param p0, "config"    # Lorg/apache/http/config/MessageConstraints;

    .prologue
    .line 81
    const-string v0, "Message constraints"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lorg/apache/http/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/MessageConstraints$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/MessageConstraints$Builder;->setMaxHeaderCount(I)Lorg/apache/http/config/MessageConstraints$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/MessageConstraints;->getMaxLineLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/MessageConstraints$Builder;->setMaxLineLength(I)Lorg/apache/http/config/MessageConstraints$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lorg/apache/http/config/MessageConstraints$Builder;
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lorg/apache/http/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/MessageConstraints$Builder;-><init>()V

    return-object v0
.end method

.method public static lineLen(I)Lorg/apache/http/config/MessageConstraints;
    .registers 4
    .param p0, "max"    # I

    .prologue
    .line 73
    new-instance v0, Lorg/apache/http/config/MessageConstraints;

    const-string v1, "Max line length"

    invoke-static {p0, v1}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/http/config/MessageConstraints;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/apache/http/config/MessageConstraints;->clone()Lorg/apache/http/config/MessageConstraints;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/http/config/MessageConstraints;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/config/MessageConstraints;

    return-object v0
.end method

.method public getMaxHeaderCount()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lorg/apache/http/config/MessageConstraints;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLength()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/http/config/MessageConstraints;->maxLineLength:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[maxLineLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/config/MessageConstraints;->maxLineLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxHeaderCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/config/MessageConstraints;->maxHeaderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

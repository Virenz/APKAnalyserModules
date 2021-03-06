.class public final Lrx/internal/util/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lrx/Subscription;)V
    .registers 3
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 42
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .registers 4
    .param p1, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 38
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    if-nez p0, :cond_3

    .line 133
    :goto_2
    return-void

    .line 121
    :cond_3
    const/4 v1, 0x0

    .line 122
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Subscription;

    .line 124
    .local v3, "s":Lrx/Subscription;
    :try_start_14
    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 125
    :catch_18
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_20

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_20
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 132
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "s":Lrx/Subscription;
    :cond_24
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    goto :goto_2
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 59
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    :goto_6
    return-void

    .line 62
    :cond_7
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v1, :cond_24

    .line 63
    monitor-enter p0

    .line 64
    :try_start_c
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v1, :cond_23

    .line 65
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 66
    .local v0, "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    if-nez v0, :cond_1b

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 68
    .restart local v0    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 70
    :cond_1b
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit p0

    goto :goto_6

    .line 73
    .end local v0    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    :catchall_20
    move-exception v1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 76
    :cond_24
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_6
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    return v0
.end method

.method public remove(Lrx/Subscription;)V
    .registers 5
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 80
    iget-boolean v2, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v2, :cond_f

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "unsubscribe":Z
    monitor-enter p0

    .line 83
    :try_start_6
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 84
    .local v0, "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    iget-boolean v2, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v2, :cond_e

    if-nez v0, :cond_10

    .line 85
    :cond_e
    monitor-exit p0

    .line 94
    .end local v0    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    .end local v1    # "unsubscribe":Z
    :cond_f
    :goto_f
    return-void

    .line 87
    .restart local v0    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    .restart local v1    # "unsubscribe":Z
    :cond_10
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 88
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1b

    .line 89
    if-eqz v1, :cond_f

    .line 91
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_f

    .line 88
    .end local v0    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public unsubscribe()V
    .registers 3

    .prologue
    .line 102
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v1, :cond_a

    .line 104
    monitor-enter p0

    .line 105
    :try_start_5
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-eqz v1, :cond_b

    .line 106
    monitor-exit p0

    .line 115
    :cond_a
    :goto_a
    return-void

    .line 108
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    .line 109
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 110
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 111
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 113
    invoke-static {v0}, Lrx/internal/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_a

    .line 111
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

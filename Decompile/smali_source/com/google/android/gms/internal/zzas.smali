.class Lcom/google/android/gms/internal/zzas;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaq;


# instance fields
.field private zznF:Lcom/google/android/gms/internal/zzrq;

.field private zznG:[B

.field private final zznH:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzas;->zznH:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzas;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzas;->zznH:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzas;->zznG:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zznG:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zzA([B)Lcom/google/android/gms/internal/zzrq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzas;->zznF:Lcom/google/android/gms/internal/zzrq;

    return-void
.end method

.method public zzac()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zznF:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->zzDi()I

    move-result v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_f
    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zznG:[B

    :goto_13
    return-object v0

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzas;->zznG:[B

    array-length v1, v1

    sub-int v0, v1, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzas;->zznG:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13
.end method

.method public zzb(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zznF:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzrq;->zzb(IJ)V

    return-void
.end method

.method public zzb(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zznF:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzrq;->zzb(ILjava/lang/String;)V

    return-void
.end method

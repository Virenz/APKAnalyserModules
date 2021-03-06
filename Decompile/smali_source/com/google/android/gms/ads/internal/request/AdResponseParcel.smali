.class public final Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/request/zzh;


# instance fields
.field public body:Ljava/lang/String;

.field public final errorCode:I

.field public final orientation:I

.field public final versionCode:I

.field public final zzAT:Ljava/lang/String;

.field public final zzDG:Z

.field public final zzDW:J

.field public final zzDX:Z

.field public final zzDY:J

.field public final zzDZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzEa:Ljava/lang/String;

.field public final zzEb:J

.field public final zzEc:Ljava/lang/String;

.field public final zzEd:Z

.field public final zzEe:Ljava/lang/String;

.field public final zzEf:Ljava/lang/String;

.field public final zzEg:Z

.field public final zzEh:Z

.field public final zzEi:Z

.field public final zzEj:I

.field public zzEk:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

.field public zzEl:Ljava/lang/String;

.field public final zzsJ:Z

.field public final zzyA:J

.field private zzyd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzyw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->CREATOR:Lcom/google/android/gms/ads/internal/request/zzh;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 34
    .param p1, "errorCode"    # I

    .prologue
    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 36
    .param p1, "errorCode"    # I
    .param p2, "refreshIntervalInMillis"    # J

    .prologue
    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;)V
    .registers 36
    .param p1, "versionCode"    # I
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p5, "errorCode"    # I
    .param p7, "interstitialTimeoutInMillis"    # J
    .param p9, "isMediation"    # Z
    .param p10, "mediationConfigCacheTimeInMillis"    # J
    .param p13, "refreshIntervalInMillis"    # J
    .param p15, "orientation"    # I
    .param p16, "adSizeString"    # Ljava/lang/String;
    .param p17, "fetchTime"    # J
    .param p19, "debugDialog"    # Ljava/lang/String;
    .param p20, "isJavascriptTag"    # Z
    .param p21, "passbackUrl"    # Ljava/lang/String;
    .param p22, "activeViewJSON"    # Ljava/lang/String;
    .param p23, "isCustomRenderAllowed"    # Z
    .param p24, "isNative"    # Z
    .param p25, "useHTTPS"    # Z
    .param p26, "contentUrlOptedOut"    # Z
    .param p27, "isPrefetched"    # Z
    .param p28, "panTokenStatus"    # I
    .param p29, "bodyTeleporter"    # Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;
    .param p30, "csiLatencyInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZI",
            "Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "clickUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "impressionUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p12, "manualTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzAT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    if-eqz p4, :cond_8e

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_f
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyw:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    if-eqz p6, :cond_90

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_19
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyx:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzDW:J

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzDX:Z

    iput-wide p10, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzDY:J

    if-eqz p12, :cond_92

    invoke-static/range {p12 .. p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_27
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzDZ:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyA:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEa:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEb:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEc:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEd:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEe:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEf:Ljava/lang/String;

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEg:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzsJ:Z

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzDG:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEh:Z

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEi:Z

    move/from16 v0, p28

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEj:I

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEk:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    if-nez v2, :cond_8d

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEk:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEk:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    sget-object v3, Lcom/google/android/gms/ads/internal/request/StringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/internal/request/StringParcel;

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;->zzfF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8d

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;->zzfF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    :cond_8d
    return-void

    :cond_8e
    const/4 v2, 0x0

    goto :goto_f

    :cond_90
    const/4 v2, 0x0

    goto :goto_19

    :cond_92
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZI)V
    .registers 60
    .param p1, "adRequestInfo"    # Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p6, "interstitialTimeoutInMillis"    # J
    .param p8, "isMediation"    # Z
    .param p9, "mediationConfigCacheTimeInMillis"    # J
    .param p12, "refreshIntervalInMillis"    # J
    .param p14, "orientation"    # I
    .param p15, "adSizeString"    # Ljava/lang/String;
    .param p16, "fetchTime"    # J
    .param p18, "debugDialog"    # Ljava/lang/String;
    .param p19, "activeViewJSON"    # Ljava/lang/String;
    .param p20, "isCustomRenderAllowed"    # Z
    .param p21, "isNative"    # Z
    .param p22, "useHTTPS"    # Z
    .param p23, "contentUrlOptedOut"    # Z
    .param p24, "isPrefetched"    # Z
    .param p25, "panTokenStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZI)V"
        }
    .end annotation

    .prologue
    .local p4, "clickUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "impressionUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "manualTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0xd

    const/4 v8, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-wide/from16 v20, p16

    move-object/from16 v22, p18

    move-object/from16 v25, p19

    move/from16 v26, p20

    move/from16 v27, p21

    move/from16 v28, p22

    move/from16 v29, p23

    move/from16 v30, p24

    move/from16 v31, p25

    invoke-direct/range {v3 .. v33}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZI)V
    .registers 62
    .param p1, "adRequestInfo"    # Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p6, "interstitialTimeoutInMillis"    # J
    .param p8, "isMediation"    # Z
    .param p9, "mediationConfigCacheTimeInMillis"    # J
    .param p12, "refreshIntervalInMillis"    # J
    .param p14, "orientation"    # I
    .param p15, "adSizeString"    # Ljava/lang/String;
    .param p16, "fetchTime"    # J
    .param p18, "debugDialog"    # Ljava/lang/String;
    .param p19, "isJavascriptTag"    # Z
    .param p20, "passbackUrl"    # Ljava/lang/String;
    .param p21, "activeViewJSON"    # Ljava/lang/String;
    .param p22, "isCustomRenderAllowed"    # Z
    .param p23, "isNative"    # Z
    .param p24, "useHTTPS"    # Z
    .param p25, "contentUrlOptedOut"    # Z
    .param p26, "isPrefetched"    # Z
    .param p27, "panTokenStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZI)V"
        }
    .end annotation

    .prologue
    .local p4, "clickUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "impressionUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "manualTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0xd

    const/4 v8, -0x2

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-wide/from16 v20, p16

    move-object/from16 v22, p18

    move/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    move/from16 v26, p22

    move/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    move/from16 v30, p26

    move/from16 v31, p27

    invoke-direct/range {v3 .. v33}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyd:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    new-instance v1, Lcom/google/android/gms/ads/internal/request/StringParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEk:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    :cond_25
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzh;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Landroid/os/Parcel;I)V

    return-void
.end method

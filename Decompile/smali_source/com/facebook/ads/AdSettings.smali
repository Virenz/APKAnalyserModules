.class public Lcom/facebook/ads/AdSettings;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Z

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-class v0, Lcom/facebook/ads/AdSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/AdSettings;->b:Ljava/lang/String;

    sput-object v1, Lcom/facebook/ads/AdSettings;->e:Ljava/lang/String;

    sput-boolean v2, Lcom/facebook/ads/AdSettings;->f:Z

    sput-object v1, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/AdSettings;->c:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/AdSettings;->d:Ljava/util/Collection;

    sget-object v0, Lcom/facebook/ads/AdSettings;->d:Ljava/util/Collection;

    const-string v1, "sdk"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/AdSettings;->d:Ljava/util/Collection;

    const-string v1, "google_sdk"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/AdSettings;->d:Ljava/util/Collection;

    const-string v1, "vbox86p"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/AdSettings;->d:Ljava/util/Collection;

    const-string v1, "vbox86tp"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sput-boolean v2, Lcom/facebook/ads/AdSettings;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/facebook/ads/AdSettings;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/AdSettings;->a:Z

    sget-object v0, Lcom/facebook/ads/AdSettings;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test mode device hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/facebook/ads/AdSettings;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "When testing your app with Facebook\'s ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static getUrlPrefix()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/AdSettings;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static isChildDirected()Z
    .registers 1

    sget-boolean v0, Lcom/facebook/ads/AdSettings;->f:Z

    return v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/ads/AdSettings;->d:Ljava/util/Collection;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    sget-object v2, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    if-nez v2, :cond_4f

    const-string v2, "FBAdPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "deviceIdHash"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/ads/internal/util/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/util/g;->a(Landroid/content/ContentResolver;)Lcom/facebook/ads/internal/util/g$a;

    move-result-object v3

    iget-object v4, v3, Lcom/facebook/ads/internal/util/g$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/ads/internal/util/s;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_60

    iget-object v3, v3, Lcom/facebook/ads/internal/util/g$a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/ads/internal/util/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    :goto_40
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "deviceIdHash"

    sget-object v4, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4f
    sget-object v2, Lcom/facebook/ads/AdSettings;->c:Ljava/util/Collection;

    sget-object v3, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v0, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_c

    :cond_60
    iget-object v4, v3, Lcom/facebook/ads/internal/util/g$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/ads/internal/util/s;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_71

    iget-object v3, v3, Lcom/facebook/ads/internal/util/g$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/ads/internal/util/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    goto :goto_40

    :cond_71
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/util/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/AdSettings;->g:Ljava/lang/String;

    goto :goto_40
.end method

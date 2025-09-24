.class public Lcom/app/thestream/databases/prefs/SharedPref;
.super Ljava/lang/Object;
.source "SharedPref.java"


# static fields
.field private static final IS_FIRST_TIME_LAUNCH:Ljava/lang/String; = "IsFirstTimeLaunch"


# instance fields
.field context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->context:Landroid/content/Context;

    const-string v0, "setting"

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "application_id"

    const-string v2, "com.mexicotv.futbolenvivoabierta"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "api_url"

    const-string v2, "https://brarcmx.com/mex2/mexico_applicationId_com.mexicotv.futbolenvivoabierta"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "rest_api_key"

    const-string v2, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
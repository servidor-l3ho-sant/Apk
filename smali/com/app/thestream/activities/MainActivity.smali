.class public Lcom/app/thestream/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# instance fields
.field private sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initializeApp()V
    .locals 2

    .line 30
    new-instance v0, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v0, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 32
    const-string v0, "MainActivity"

    const-string v1, "Iniciando aplicación Liga MX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/app/thestream/activities/MainActivity;->initializeApp()V

    return-void
.end method
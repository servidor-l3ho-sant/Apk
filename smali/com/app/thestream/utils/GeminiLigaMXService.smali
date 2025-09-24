.class public Lcom/app/thestream/utils/GeminiLigaMXService;
.super Ljava/lang/Object;
.source "GeminiLigaMXService.java"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;
    }
.end annotation

# static fields
.field private static final API_KEY:Ljava/lang/String;

.field private static final GEMINI_API_URL:Ljava/lang/String; = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent"

.field private static final TAG:Ljava/lang/String; = "GeminiLigaMX"

# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "GEMINI_API_KEY"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method
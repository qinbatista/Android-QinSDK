.class public Lcom/east2west/testapp/GameSdkApplication;
.super Landroid/app/Application;
.source "GameSdkApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    const-string v1, "E2W"

    const-string v2, "1->Applcation [change application->UnicomApplicationWrapper \ufffd\ufffd]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/east2west/game/SdkApplication;

    invoke-direct {v0}, Lcom/east2west/game/SdkApplication;-><init>()V

    .line 23
    .local v0, "sdkapp":Lcom/east2west/game/SdkApplication;
    invoke-virtual {v0, p0}, Lcom/east2west/game/SdkApplication;->APPApplicationInit(Landroid/app/Application;)V

    .line 24
    return-void
.end method

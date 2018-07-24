.class Lcom/ironhidegames/android/e2w/E2WUnityActivity$4$1;
.super Ljava/lang/Object;
.source "E2WUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;


# direct methods
.method constructor <init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4$1;->this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7.2->ExitGame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4$1;->this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;

    invoke-static {v0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;->access$0(Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;)Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->ExitGame()V

    .line 253
    return-void
.end method

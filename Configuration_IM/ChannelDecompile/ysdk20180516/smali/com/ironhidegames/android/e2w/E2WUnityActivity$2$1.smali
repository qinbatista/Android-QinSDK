.class Lcom/ironhidegames/android/e2w/E2WUnityActivity$2$1;
.super Ljava/lang/Object;
.source "E2WUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;


# direct methods
.method constructor <init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$2$1;->this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowVideoAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$2$1;->this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;

    invoke-static {v0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;->access$0(Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;)Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->ShowVideoAd()V

    .line 218
    return-void
.end method

.class Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;
.super Ljava/lang/Object;
.source "E2WUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;

.field private final synthetic val$strProductId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;->this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;

    iput-object p2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;->val$strProductId:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchaseProduct=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;->val$strProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;->this$1:Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;

    invoke-static {v0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;->access$0(Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;)Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    iget-object v1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;->val$strProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->purchaseProduct(Ljava/lang/String;)V

    .line 201
    return-void
.end method

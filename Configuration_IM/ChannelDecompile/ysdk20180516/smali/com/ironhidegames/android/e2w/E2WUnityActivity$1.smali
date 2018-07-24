.class Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;
.super Ljava/lang/Object;
.source "E2WUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironhidegames/android/e2w/E2WUnityActivity;->PurchaseProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

.field private final synthetic val$strProductId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;->this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    iput-object p2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;->val$strProductId:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;)Lcom/ironhidegames/android/e2w/E2WUnityActivity;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;->this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->access$0()Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    move-result-object v0

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;

    iget-object v2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;->val$strProductId:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1$1;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.class Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;
.super Ljava/lang/Object;
.source "E2WUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironhidegames/android/e2w/E2WUnityActivity;->ExitGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;


# direct methods
.method constructor <init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;->this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;)Lcom/ironhidegames/android/e2w/E2WUnityActivity;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;->this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->access$0()Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    move-result-object v0

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4$1;

    invoke-direct {v1, p0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4$1;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

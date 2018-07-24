.class Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;
.super Ljava/lang/Object;
.source "E2WUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironhidegames/android/e2w/E2WUnityActivity;->login(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

.field private final synthetic val$kind:I


# direct methods
.method constructor <init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;->this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    iput p2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;->val$kind:I

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;)Lcom/ironhidegames/android/e2w/E2WUnityActivity;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;->this$0:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->access$0()Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    move-result-object v0

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6$1;

    iget v2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;->val$kind:I

    invoke-direct {v1, p0, v2}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6$1;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;I)V

    invoke-virtual {v0, v1}, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

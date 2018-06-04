.class Lcom/east2west/game/E2WApp$1$1$1;
.super Ljava/lang/Object;
.source "E2WApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/E2WApp$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/east2west/game/E2WApp$1$1;

.field private final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/east2west/game/E2WApp$1$1;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/east2west/game/E2WApp$1$1$1;->this$2:Lcom/east2west/game/E2WApp$1$1;

    iput-object p2, p0, Lcom/east2west/game/E2WApp$1$1$1;->val$image:Landroid/widget/ImageView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/east2west/game/E2WApp$1$1$1;->val$image:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 104
    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/east2west/game/E2WApp$1$1$1;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    return-void
.end method

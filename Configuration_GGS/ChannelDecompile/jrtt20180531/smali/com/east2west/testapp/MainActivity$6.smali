.class Lcom/east2west/testapp/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/testapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/testapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/east2west/testapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/east2west/testapp/MainActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/east2west/testapp/MainActivity$6;->this$0:Lcom/east2west/testapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    const-string v0, "E2W"

    const-string v1, "8.2->show_push"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity$6;->this$0:Lcom/east2west/testapp/MainActivity;

    iget-object v0, v0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->show_video()V

    .line 141
    return-void
.end method

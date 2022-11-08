.class public Lcom/androidquery/util/Progress;
.super Ljava/lang/Object;
.source "Progress.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private act:Landroid/app/Activity;

.field private bytes:I

.field private current:I

.field private pb:Landroid/widget/ProgressBar;

.field private pd:Landroid/app/ProgressDialog;

.field private unknown:Z

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Landroid/widget/ProgressBar;

    .end local p1    # "p":Ljava/lang/Object;
    iput-object p1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 26
    .restart local p1    # "p":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Landroid/app/ProgressDialog;

    .end local p1    # "p":Ljava/lang/Object;
    iput-object p1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 28
    .restart local p1    # "p":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "p":Ljava/lang/Object;
    iput-object p1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    goto :goto_0

    .line 30
    .restart local p1    # "p":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Landroid/view/View;

    .end local p1    # "p":Ljava/lang/Object;
    iput-object p1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    goto :goto_0
.end method

.method private dismiss(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const v5, 0x40ff0001

    const/4 v4, 0x0

    .line 164
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 165
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v3, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "aq":Lcom/androidquery/AQuery;
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 169
    .end local v0    # "aq":Lcom/androidquery/AQuery;
    :cond_0
    iget-object v3, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 171
    iget-object v3, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    .line 176
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    .line 180
    .local v1, "pv":Landroid/view/View;
    if-nez v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    .line 184
    :cond_3
    if-eqz v1, :cond_5

    .line 186
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 187
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 190
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "p"    # Ljava/lang/Object;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "show"    # Z

    .prologue
    const v8, 0x40ff0001

    const/4 v7, 0x0

    .line 201
    if-eqz p1, :cond_1

    .line 203
    instance-of v6, p1, Landroid/view/View;

    if-eqz v6, :cond_4

    move-object v4, p1

    .line 205
    check-cast v4, Landroid/view/View;

    .line 207
    .local v4, "pv":Landroid/view/View;
    const/4 v2, 0x0

    .line 209
    .local v2, "pbar":Landroid/widget/ProgressBar;
    instance-of v6, p1, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    move-object v2, p1

    .line 210
    check-cast v2, Landroid/widget/ProgressBar;

    .line 213
    :cond_0
    if-eqz p3, :cond_2

    .line 214
    invoke-virtual {v4, v8, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 215
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 216
    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 218
    const/16 v6, 0x64

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 255
    .end local v2    # "pbar":Landroid/widget/ProgressBar;
    .end local v4    # "pv":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 222
    .restart local v2    # "pbar":Landroid/widget/ProgressBar;
    .restart local v4    # "pv":Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 223
    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_3

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v8, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 226
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 231
    .end local v2    # "pbar":Landroid/widget/ProgressBar;
    .end local v4    # "pv":Landroid/view/View;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_4
    instance-of v6, p1, Landroid/app/Dialog;

    if-eqz v6, :cond_6

    move-object v3, p1

    .line 233
    check-cast v3, Landroid/app/Dialog;

    .line 235
    .local v3, "pd":Landroid/app/Dialog;
    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 237
    .local v1, "aq":Lcom/androidquery/AQuery;
    if-eqz p3, :cond_5

    .line 238
    invoke-virtual {v1, v3}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    .line 240
    :cond_5
    invoke-virtual {v1, v3}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    .line 243
    .end local v1    # "aq":Lcom/androidquery/AQuery;
    .end local v3    # "pd":Landroid/app/Dialog;
    :cond_6
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_1

    move-object v0, p1

    .line 245
    check-cast v0, Landroid/app/Activity;

    .line 246
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0, p3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 247
    invoke-virtual {v0, p3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 249
    if-eqz p3, :cond_1

    .line 250
    invoke-virtual {v0, v7}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public done()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 118
    :cond_2
    return-void
.end method

.method public hide(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, p1}, Lcom/androidquery/util/Progress;->dismiss(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/androidquery/util/Progress;->url:Ljava/lang/String;

    .line 157
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public increment(I)V
    .locals 4
    .param p1, "delta"    # I

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 81
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    iget-boolean v3, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 90
    iget-boolean v1, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v1, :cond_6

    .line 91
    iget v0, p0, Lcom/androidquery/util/Progress;->current:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/androidquery/util/Progress;->current:I

    .line 96
    .local v0, "p":I
    :goto_2
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    .line 97
    const/16 v0, 0x270f

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setProgress(I)V

    .line 102
    .end local v0    # "p":I
    :cond_3
    return-void

    :cond_4
    move v1, p1

    .line 81
    goto :goto_0

    :cond_5
    move v2, p1

    .line 85
    goto :goto_1

    .line 93
    :cond_6
    iget v1, p0, Lcom/androidquery/util/Progress;->current:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/androidquery/util/Progress;->current:I

    .line 94
    iget v1, p0, Lcom/androidquery/util/Progress;->current:I

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p0, Lcom/androidquery/util/Progress;->bytes:I

    div-int v0, v1, v2

    .restart local v0    # "p":I
    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 44
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 51
    :cond_2
    iput-boolean v1, p0, Lcom/androidquery/util/Progress;->unknown:Z

    .line 52
    iput v1, p0, Lcom/androidquery/util/Progress;->current:I

    .line 53
    iput v2, p0, Lcom/androidquery/util/Progress;->bytes:I

    .line 55
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/androidquery/util/Progress;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/androidquery/util/Progress;->dismiss(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setBytes(I)V
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    if-gtz p1, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/util/Progress;->unknown:Z

    .line 61
    const/16 p1, 0x2710

    .line 64
    :cond_0
    iput p1, p0, Lcom/androidquery/util/Progress;->bytes:I

    .line 66
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 72
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 76
    :cond_2
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const v4, 0x40ff0001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/androidquery/util/Progress;->reset()V

    .line 129
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "aq":Lcom/androidquery/AQuery;
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 134
    .end local v0    # "aq":Lcom/androidquery/AQuery;
    :cond_0
    iget-object v1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 136
    iget-object v1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    invoke-virtual {v1, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_3
    return-void
.end method

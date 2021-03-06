.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 92
    sget-object v6, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v6, p0, Landroid/widget/RatingBar;->mNumStars:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 95
    .local v1, "numStars":I
    const/4 v6, 0x3

    iget-boolean v7, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    if-nez v7, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 96
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 97
    .local v2, "rating":F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 98
    .local v3, "stepSize":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    if-lez v1, :cond_1

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq v1, v4, :cond_1

    .line 101
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 104
    :cond_1
    cmpl-float v4, v3, v9

    if-ltz v4, :cond_3

    .line 105
    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 110
    :goto_0
    cmpl-float v4, v2, v9

    if-ltz v4, :cond_2

    .line 111
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 116
    :cond_2
    const v4, 0x3f8ccccd    # 1.1f

    iput v4, p0, Landroid/widget/RatingBar;->mTouchProgressOffset:F

    .line 117
    return-void

    .line 107
    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_0
.end method

.method private getProgressPerStar()F
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 240
    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-lez v1, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 243
    :cond_0
    return v0
.end method

.method private updateSecondaryProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    .line 275
    .local v1, "ratio":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 276
    int-to-float v3, p1

    div-float v0, v3, v1

    .line 277
    .local v0, "progressInStars":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 278
    .local v2, "secondaryProgress":I
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    .line 280
    .end local v0    # "progressInStars":F
    .end local v2    # "secondaryProgress":I
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchRatingChange(Z)V
    .locals 2
    .param p1, "fromUser"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 322
    :cond_0
    return-void
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public getNumStars()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public getRating()F
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isIndicator()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 337
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 343
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method onKeyChange()V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 315
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 286
    iget-object v1, p0, Landroid/widget/RatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Landroid/widget/RatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int v0, v1, v2

    .line 290
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/RatingBar;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v0    # "width":I
    :cond_0
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 258
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    .line 260
    if-nez p2, :cond_0

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    .line 299
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 300
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 306
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_0

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 3
    .param p1, "isIndicator"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    .line 154
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setFocusable(Z)V

    .line 155
    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v1, v2

    .line 154
    goto :goto_1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 327
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 332
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNumStars(I)V
    .locals 0
    .param p1, "numStars"    # I

    .prologue
    .line 174
    if-gtz p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 181
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    goto :goto_0
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .prologue
    .line 133
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 134
    return-void
.end method

.method public setRating(F)V
    .locals 1
    .param p1, "rating"    # F

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 199
    return-void
.end method

.method public setStepSize(F)V
    .locals 4
    .param p1, "stepSize"    # F

    .prologue
    .line 217
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v2, v2

    div-float v0, v2, p1

    .line 222
    .local v0, "newMax":F
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 223
    .local v1, "newProgress":I
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    .line 224
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    goto :goto_0
.end method

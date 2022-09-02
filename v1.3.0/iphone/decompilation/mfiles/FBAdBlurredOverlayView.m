@implementation FBAdBlurredOverlayView

-(void *)initWithBackgroundImage:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[UIColor blackColor] retain];
            [r20 setupViewWithImage:r19 andOverlayColor:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithBackgroundImage:(void *)arg2 andOverlayColor:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setupViewWithImage:r19 andOverlayColor:r20];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setupOverlayViewWithColor:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 overlayView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
    }
    r22 = [UIView new];
    [r21 release];
    r21 = [[r20 colorWithAlphaComponent:r2] retain];
    [r20 release];
    [r22 setBackgroundColor:r21];
    [r21 release];
    [r19 addSubview:r22];
    objc_storeWeak((int64_t *)&r19->_overlayView, r22);
    [r22 release];
    return;
}

-(void)setupBlurEffectView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self blurEffectView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 removeFromSuperview];
    }
    r22 = [[UIVisualEffectView alloc] initWithEffect:[[UIBlurEffect effectWithStyle:0x1] retain]];
    [r20 release];
    [r19 addSubview:r22];
    objc_storeWeak((int64_t *)&r19->_blurEffectView, r22);
    [r21 release];
    [r22 release];
    return;
}

-(void)setupBackgroundImageViewWithImage:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 backgroundImageView];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 removeFromSuperview];
    }
    r20 = [UIImageView new];
    [r22 release];
    [r21 addSubview:r20];
    objc_storeWeak((int64_t *)&r21->_backgroundImageView, r20);
    objc_initWeak(&stack[-56], r21);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r19 loadImageAsyncWithBlock:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r20 release];
    [r19 release];
    return;
}

-(void)setupViewWithImage:(void *)arg2 andOverlayColor:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self setupBackgroundImageViewWithImage:r21];
    [r21 release];
    [self setupBlurEffectView];
    [self setupOverlayViewWithColor:r19];
    [r19 release];
    return;
}

-(void)layoutSubviews {
    [self bounds];
    r0 = [self backgroundImageView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [self bounds];
    r0 = [self blurEffectView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [self bounds];
    r0 = [self overlayView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_overlayView);
    objc_destroyWeak((int64_t *)&self->_blurEffectView);
    objc_destroyWeak((int64_t *)&self->_backgroundImageView);
    return;
}

-(void *)backgroundImageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_backgroundImageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBackgroundImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_backgroundImageView, arg2);
    return;
}

-(void *)blurEffectView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_blurEffectView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBlurEffectView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_blurEffectView, arg2);
    return;
}

-(void *)overlayView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_overlayView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOverlayView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_overlayView, arg2);
    return;
}

@end
@implementation FBAdBlurredImageView

-(void *)init {
    r0 = [self initWithImage:0x0];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_10 super] initWithFrame:r2];
    return r0;
}

-(void *)initWithImage:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_image, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [[&var_10 super] initWithCoder:arg2];
    return r0;
}

-(void)setImage:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = self;
    r0 = (int64_t *)&self->_image;
    if (*r0 != r2) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    objc_storeStrong(r0, r2);
    r19 = [r19 retain];
    [r20 updateView:r21];
    [r19 release];
    return;
}

-(void)setupViewsWithImage:(void *)arg2 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 bounds];
    v10 = v0;
    v11 = v1;
    v8 = v2;
    v9 = v3;
    r0 = [r20 blurredImageView];
    r0 = [r0 retain];
    r21 = r0;
    [r0 setFrame:r2];
    [r21 setImage:r19];
    [r21 setClipsToBounds:0x1];
    r0 = [r20 blurEffectView];
    r0 = [r0 retain];
    r24 = r0;
    [r0 setFrame:0x1];
    r0 = [r20 blurEffectView];
    r29 = &saved_fp;
    r26 = [r0 retain];
    [r20 bringSubviewToFront:r26];
    [r26 release];
    if (([r20 showBlurImageOnly] & 0x1) == 0x0) {
            r26 = [[r20 imageView] retain];
            if (r19 != 0x0) {
                    [r19 size];
            }
            sub_100aabfa0();
            [r26 setFrame:r2];
            [r26 setImage:r19];
            [r20 bringSubviewToFront:r26];
            [r26 release];
    }
    [r24 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)layoutSubviews {
    [[&var_20 super] layoutSubviews];
    [self updateView:0x1];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 setupViewsWithImage:r0->_image];
    }
    return;
}

-(void *)imageView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_imageView;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r0 = [UIImageView new];
            r21 = r0;
            [r0 setContentMode:0x2];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)blurredImageView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_blurredImageView;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r23 = [r0 shouldBlurImages];
            [r0 release];
            if (r23 != 0x0) {
                    r22 = [UIImageView new];
                    [r21 release];
                    [r22 setContentMode:0x2];
                    [r20 addSubview:r2];
                    objc_storeStrong(r19, r22);
                    r21 = r22;
            }
            else {
                    r21 = 0x0;
            }
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_blurEffectView, 0x0);
    objc_storeStrong((int64_t *)&self->_blurredImageView, 0x0);
    objc_destroyWeak((int64_t *)&self->_imageView);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    return;
}

-(void *)image {
    r0 = self->_image;
    return r0;
}

-(void *)blurEffectView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_blurEffectView;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 shouldBlurImages];
            [r0 release];
            if (r23 != 0x0) {
                    [[UIVisualEffectView alloc] initWithEffect:[[UIBlurEffect effectWithStyle:0x1] retain]];
                    [r21 release];
                    [r20 addSubview:r2];
                    objc_storeStrong(r19, r23);
                    [r22 release];
                    r21 = r23;
            }
            else {
                    r21 = 0x0;
            }
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)setImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_imageView, arg2);
    return;
}

-(bool)showBlurImageOnly {
    r0 = *(int8_t *)(int64_t *)&self->_showBlurImageOnly;
    return r0;
}

-(void)setBlurredImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_blurredImageView, arg2);
    return;
}

-(void)setShowBlurImageOnly:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showBlurImageOnly = arg2;
    return;
}

-(void)setBlurEffectView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_blurEffectView, arg2);
    return;
}

-(bool)needsImageBlurring {
    r0 = *(int8_t *)(int64_t *)&self->_needsImageBlurring;
    return r0;
}

-(void)setNeedsImageBlurring:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_needsImageBlurring = arg2;
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdBlurredImageView");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end
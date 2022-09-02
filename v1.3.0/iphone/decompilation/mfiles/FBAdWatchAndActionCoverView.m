@implementation FBAdWatchAndActionCoverView

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    r19 = [arg2 retain];
    [self setNeedsLayout];
    [r19 release];
    return;
}

-(void)hideImageOverlay {
    r0 = [self backgroundImageView];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r19 release];
    return;
}

-(void)increaseYOffsetOfView:(void *)arg2 by:(double)arg3 {
    r0 = [arg2 retain];
    [r0 frame];
    [r0 setFrame:r2];
    [r20 release];
    return;
}

-(void *)arrowIconView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_arrowIconView;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdArrowIconView new];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)blurEffectView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_blurEffectView;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [[UIVisualEffectView alloc] initWithEffect:[[UIBlurEffect effectWithStyle:0x2] retain]];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
            [r22 release];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)backgroundImageView {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    var_58 = &var_60;
    r20 = (int64_t *)&self->_backgroundImageView;
    var_38 = objc_loadWeakRetained(r20);
    r0 = *(var_58 + 0x28);
    if (r0 == 0x0) {
            r0 = [UIImageView new];
            r8 = *(var_58 + 0x28);
            *(var_58 + 0x28) = r0;
            [r8 release];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 image];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r21 image];
                    r0 = [r0 retain];
                    [r0 loadImageAsyncWithBlock:&var_88];
                    [r0 release];
            }
            [r19 addSubview:*(var_58 + 0x28)];
            objc_storeWeak(r20, *(var_58 + 0x28));
            [r21 release];
            r0 = *(var_58 + 0x28);
    }
    [r0 retain];
    _Block_object_dispose(&var_60, 0x8);
    [var_38 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)textContainerView {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = (int64_t *)&self->_textContainerView;
    r23 = [*r19 retain];
    r0 = [r20 dataModel];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r23 == 0x0) {
            asm { ccmp       x0, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            r22 = [FBInterstitialAdTextView new];
            [r23 release];
            r0 = [r21 title];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r0;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [r22 setTitle:r2];
            [r23 release];
            r23 = [[r21 body] retain];
            [r22 setSubtitle:r23];
            [r23 release];
            [r22 setMaxLinesForTitle:0x1];
            [r22 setMaxLinesForSubtitle:0x2];
            r24 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 setTitleTextColor:r24];
            [r24 release];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 setSubtitleTextColor:r23];
            [r23 release];
            [r22 setVerticalTextSpacing:r23];
            [r22 setAlignment:0x1];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r23 = r22;
    }
    [r21 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)ctaButton {
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
    r19 = (int64_t *)&self->_ctaButton;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [[UIButton buttonWithType:0x0] retain];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r2 = r22;
            [r21 setTitleColor:r2 forState:0x0];
            [r22 release];
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r23 = [[r0 callToAction] retain];
            [r21 setTitle:r23 forState:0x0];
            [r23 release];
            [r0 release];
            r22 = [[r21 titleLabel] retain];
            r23 = [[UIFont boldSystemFontOfSize:r2] retain];
            [r22 setFont:r23];
            [r23 release];
            [r22 release];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)iconView {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self dataModel] retain];
    var_58 = &var_60;
    r21 = (int64_t *)&r20->_iconView;
    var_38 = objc_loadWeakRetained(r21);
    r0 = [r19 icon];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r23 = *(var_58 + 0x28);
            [r0 release];
            if (r23 == 0x0) {
                    r0 = [UIImageView new];
                    r8 = *(var_58 + 0x28);
                    *(var_58 + 0x28) = r0;
                    [r8 release];
                    r0 = *(var_58 + 0x28);
                    r0 = [r0 layer];
                    r0 = [r0 retain];
                    [r0 setMasksToBounds:0x1];
                    [r0 release];
                    r0 = [r19 icon];
                    r0 = [r0 retain];
                    [r0 loadImageAsyncWithBlock:&var_88];
                    [r0 release];
                    [r20 addSubview:*(var_58 + 0x28)];
                    objc_storeWeak(r21, *(var_58 + 0x28));
            }
    }
    else {
            [r0 release];
    }
    [*(var_58 + 0x28) retain];
    _Block_object_dispose(&var_60, 0x8);
    [var_38 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)ctaButtonLandscape {
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
    r19 = (int64_t *)&self->_ctaButtonLandscape;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdCTAButton alloc] initWithStyle:0x3];
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r23 = [[r0 callToAction] retain];
            [r21 setTitle:r23 forState:0x0];
            [r23 release];
            [r0 release];
            r22 = [[r21 titleLabel] retain];
            r23 = [[UIFont boldSystemFontOfSize:0x3] retain];
            [r22 setFont:r23];
            [r23 release];
            [r22 release];
            [r20 addSubview:r21];
            [r21 setHidden:0x1];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)dealloc {
    [self startAnimatingArrowIcon:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0xe0;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setBackgroundColor:r20];
    [r20 release];
    r0 = [r19 bounds];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    CGRectGetWidth(r0);
    r0 = [r19 backgroundImageView];
    r0 = [r0 retain];
    var_B8 = r0;
    [r0 setFrame:r20];
    r0 = [r19 blurEffectView];
    r0 = [r0 retain];
    var_C0 = r0;
    [r0 setFrame:r20];
    r0 = [r19 iconView];
    r29 = &var_10;
    r0 = [r0 retain];
    r23 = r0;
    v0 = v8;
    v1 = v9;
    CGRectGetMidX(r0);
    d0 = d0 + 0xc040000000000000;
    [r23 setFrame:r20];
    if ([r19 style] == 0x1) {
            r0 = [r23 layer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r0 release];
            r24 = @selector(frame);
    }
    else {
            r24 = @selector(frame);
            CGRectGetWidth(objc_msgSend(r23, r24));
            r0 = [r23 layer];
            r29 = r29;
            r0 = [r0 retain];
            v0 = v13;
            [r0 setCornerRadius:r2];
            [r0 release];
    }
    r0 = [r19 textContainerView];
    r0 = [r0 retain];
    r25 = r0;
    [r0 sizeThatFits:r2];
    v12 = v0;
    CGRectGetMaxY(objc_msgSend(r23, r24));
    [r25 setFrame:r2];
    r26 = [[r19 arrowIconView] retain];
    CGRectGetMidX(objc_msgSend(r25, r24));
    CGRectGetMaxY(objc_msgSend(r25, r24));
    v0 = v12;
    [r26 setFrame:r2];
    r22 = [[r19 ctaButton] retain];
    r0 = [r19 ctaButtonLandscape];
    r29 = r29;
    r27 = [r0 retain];
    r0 = [FBAdScreen isPortrait];
    var_D0 = r22;
    var_D8 = r27;
    if (r0 != 0x0) {
            r20 = [r22 retain];
            [r27 setHidden:r2];
            objc_msgSend(r26, r21);
            r0 = r26;
    }
    else {
            r20 = [r27 retain];
            [r22 setHidden:r2];
            objc_msgSend(r26, r21);
            objc_msgSend(r26, r21);
            r0 = r25;
    }
    CGRectGetMaxY(objc_msgSend(r0, r24));
    [r20 setHidden:r2];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r21 = r0;
    r27 = [[r0 callToAction] retain];
    r0 = [r20 titleLabel];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 font];
    r29 = r29;
    r22 = [r0 retain];
    [r27 sizeWithFont:r22];
    [r20 contentEdgeInsets];
    [r22 release];
    [r28 release];
    [r27 release];
    [r21 release];
    CGRectGetMidX(objc_msgSend(r25, r24));
    d1 = 0x0;
    r22 = @selector(setFrame:);
    objc_msgSend(r20, r22);
    r2 = 0x1;
    [r19 startAnimatingArrowIcon:r2];
    CGRectGetMaxY(objc_msgSend(r20, r24));
    CGRectGetHeight(CGRectGetMinY(objc_msgSend(r23, r24)));
    CGRectGetMinY(objc_msgSend(r23, r24));
    if (r23 != 0x0) {
            r2 = r23;
            [r19 increaseYOffsetOfView:r2 by:r3];
    }
    if (r25 != 0x0) {
            r2 = r25;
            [r19 increaseYOffsetOfView:r2 by:r3];
    }
    r27 = var_D8;
    if (r26 != 0x0) {
            r2 = r26;
            [r19 increaseYOffsetOfView:r2 by:r3];
    }
    if (r20 != 0x0) {
            r2 = r20;
            [r19 increaseYOffsetOfView:r2 by:r3];
    }
    [[r19 coverButton] retain];
    CGRectInset(objc_msgSend(r20, r24), r24, r2);
    objc_msgSend(r21, r22);
    [[&var_B0 super] layoutSubviews];
    [r21 release];
    [r27 release];
    [var_D0 release];
    [r20 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [var_C0 release];
    [var_B8 release];
    return;
}

-(void *)coverButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_coverButton;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [UIButton new];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            [r21 addTarget:r20 action:@selector(handleTap:event:) forControlEvents:0x40];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)handleTap:(void *)arg2 event:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 onTap];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 onTap];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_arrowIconView);
    objc_destroyWeak((int64_t *)&self->_blurEffectView);
    objc_destroyWeak((int64_t *)&self->_coverButton);
    objc_destroyWeak((int64_t *)&self->_ctaButtonLandscape);
    objc_destroyWeak((int64_t *)&self->_ctaButton);
    objc_storeStrong((int64_t *)&self->_textContainerView, 0x0);
    objc_destroyWeak((int64_t *)&self->_backgroundImageView);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_storeStrong((int64_t *)&self->_onTap, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)startAnimatingArrowIcon:(bool)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self arrowIconView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 layer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 removeAllAnimations];
    [r0 release];
    if (arg2 != 0x0) {
            r0 = [CABasicAnimation animationWithKeyPath:@"position"];
            r0 = [r0 retain];
            r21 = r0;
            [r0 setAdditive:0x1];
            r23 = [[NSValue valueWithCGPoint:0x1] retain];
            [r21 setFromValue:r23];
            [r23 release];
            r22 = [[NSValue valueWithCGPoint:r23] retain];
            [r21 setToValue:r22];
            [r22 release];
            [r21 setAutoreverses:0x1];
            [r21 setDuration:0x1];
            [r21 setRepeatCount:0x1];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 addAnimation:r21 forKey:@"arrowIconAnimation"];
            [r0 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void *)onTap {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onTap)), 0x0);
    return r0;
}

-(void)setOnTap:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(long long)style {
    r0 = self->_style;
    return r0;
}

-(void)setIconView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_iconView, arg2);
    return;
}

-(void)setStyle:(long long)arg2 {
    self->_style = arg2;
    return;
}

-(void)setBackgroundImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_backgroundImageView, arg2);
    return;
}

-(void)setTextContainerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_textContainerView, arg2);
    return;
}

-(void)setCtaButtonLandscape:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ctaButtonLandscape, arg2);
    return;
}

-(void)setCtaButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ctaButton, arg2);
    return;
}

-(void)setCoverButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_coverButton, arg2);
    return;
}

-(void)setArrowIconView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_arrowIconView, arg2);
    return;
}

-(void)setBlurEffectView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_blurEffectView, arg2);
    return;
}

@end
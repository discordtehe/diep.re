@implementation FBAdMultiProductCell

-(void *)imageView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_imageView;
    r0 = objc_loadWeakRetained(r20);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdBlurredImageView new];
            objc_storeWeak(r20, r21);
            [r19 addSubview:r2];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initWithViewablePercentage:(long long)arg2 multiProductCellStyle:(unsigned long long)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = arg2;
    r0 = [[&var_40 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_multiProductCellStyle = r21;
            r21 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(gestureRecognizerTappedCell:)];
            [r19 addGestureRecognizer:r21];
            r22 = [FBAdViewabilityValidator alloc];
            r23 = [[r19 imageView] retain];
            r20 = [r22 initWithView:r23 withMinViewability:r20 shouldObserveNotifications:0x1];
            [r23 release];
            [r20 setDelegate:r19];
            [r20 scheduleViewabilityCheck];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewabilityValidator));
            r0 = *(r19 + r8);
            *(r19 + r8) = r20;
            [r0 release];
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(void *)linkDescriptionLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_linkDescriptionLabel;
    r0 = objc_loadWeakRetained(r20);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [UILabel new];
            objc_storeWeak(r20, r21);
            [r19 addSubview:r2];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)headlineLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = (int64_t *)&self->_headlineLabel;
    r0 = objc_loadWeakRetained(r20);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [UILabel new];
            r22 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
            [r21 setFont:r22];
            [r22 release];
            objc_storeWeak(r20, r21);
            [r19 addSubview:r2];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)ctaLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = (int64_t *)&self->_ctaLabel;
    r0 = objc_loadWeakRetained(r20);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [UILabel new];
            r22 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
            [r21 setFont:r22];
            [r22 release];
            r22 = [[r19 fdsHighlightColor] retain];
            [r21 setTextColor:r22];
            [r22 release];
            objc_storeWeak(r20, r21);
            [r19 addSubview:r2];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)fdsSecondaryTextColor {
    r0 = [UIColor colorWithUInt:0x616671 withAlpha:r3];
    return r0;
}

-(void *)fdsHighlightColor {
    r0 = [UIColor colorWithUInt:0x3578e5 withAlpha:r3];
    return r0;
}

-(void *)gradientView {
    r31 = r31 - 0x60;
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
    r20 = (int64_t *)&self->_gradientView;
    r0 = objc_loadWeakRetained(r20);
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
            r24 = [r0 retain];
            r21 = [FBGradientView newWithColors:r24 locations:0x0 startPoint:r4 endPoint:r5 opacity:r6];
            [r24 release];
            [r23 release];
            [r22 release];
            objc_storeWeak(r20, r21);
            [r19 addSubview:r2];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setHidden:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self viewabilityValidator];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            r23 = [r21 isValid];
            [r21 release];
            r21 = [[r20 viewabilityValidator] retain];
            if ((r23 & 0x1) != 0x0) {
                    r8 = &@selector(stopViewabilityCheck);
            }
            else {
                    r8 = &@selector(scheduleViewabilityCheck);
            }
    }
    else {
            r8 = &@selector(scheduleViewabilityCheck);
    }
    objc_msgSend(r21, *r8);
    [r21 release];
    [[&var_40 super] setHidden:r19];
    return;
}

-(void)setContent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_content;
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained(r20);
    if (r0 != r21) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    [r0 release];
    objc_storeWeak(r20, r21);
    [r21 release];
    [r19 updateView:r22];
    return;
}

-(void)layoutSubviews {
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void)setupCornerRadiusAndShadow {
    r0 = [self layer];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setCornerRadius:r2];
    [FBAdScreen scale];
    r1 = @selector(setBorderWidth:);
    asm { fdiv       d0, d1, d0 };
    objc_msgSend(r19, r1);
    r0 = [UIColor colorWithUInt:0xe6e6e6 withAlpha:r3];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r19 setBorderColor:[r0 CGColor]];
    [r0 release];
    [r19 setMasksToBounds:0x1];
    [r19 release];
    return;
}

-(void)updateViewForImageStyleWithBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self imageView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)tellDelegateIfLoadedAndVisible {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self lastAdViewabilityStatus] == 0x1 && [r19 imageLoaded] != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 respondsToSelector:@selector(multiProductCellLoadedAndVisible:)] != 0x0) {
                    [r20 multiProductCellLoadedAndVisible:r19];
            }
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 stopViewabilityCheck];
            [r0 release];
            [r20 release];
    }
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0xb0;
    var_60 = d11;
    stack[-104] = d10;
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
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            r20 = r0;
            r0 = [r0 imageView];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 image];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r2 = 0x0;
                    [r19 setImage:r2];
            }
            r21 = [[r20 content] retain];
            objc_initWeak(&stack[-120], r19);
            objc_initWeak(&stack[-128], r20);
            r0 = [r21 image];
            r0 = [r0 retain];
            r24 = [[r0 url] retain];
            [r0 release];
            r22 = &var_A0 + 0x20;
            r23 = &var_A0 + 0x28;
            objc_copyWeak(r22, &stack[-120]);
            objc_copyWeak(r23, &stack[-128]);
            [FBAdUtility loadRemoteImageWithURL:r24 withBlock:&var_A0];
            [r20 bounds];
            v11 = v0;
            v10 = v1;
            v9 = v2;
            v8 = v3;
            if ((sub_100aab508() & 0x1) != 0x0) {
                    r0 = [r20 multiProductCellStyle];
                    if (r0 != 0x1) {
                            if (r0 == 0x0) {
                                    [r20 updateViewForImageStyleWithBounds:r2];
                            }
                    }
                    else {
                            [r20 updateViewForImageAndTextStyleWithBounds:r2];
                    }
            }
            objc_destroyWeak(r23);
            objc_destroyWeak(r22);
            [r24 release];
            objc_destroyWeak(&stack[-128]);
            objc_destroyWeak(&stack[-120]);
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)gestureRecognizerTappedCell:(void *)arg2 {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 window];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r20 window] retain];
            [r20 bounds];
            [r21 convertRect:r20 fromView:r3];
            [r21 release];
            [r19 locationInView:r20];
            [r20 dispatchClickedWithPosition:r20 inRect:r3];
    }
    [r19 release];
    return;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    [self setLastAdViewabilityStatus:arg3];
    [self tellDelegateIfLoadedAndVisible];
    return 0x0;
}

-(void)updateCellWithData:(void *)arg2 {
    [self setContent:arg2];
    return;
}

-(void)dispatchClickedWithPosition:(struct CGPoint)arg2 inRect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = v1;
    v13 = v0;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(multiProductCellClicked:withPosition:inRect:), r3, r4] != 0x0) {
            [r20 multiProductCellClicked:r19 withPosition:r3 inRect:r4];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_gradientView);
    objc_destroyWeak((int64_t *)&self->_ctaLabel);
    objc_destroyWeak((int64_t *)&self->_linkDescriptionLabel);
    objc_destroyWeak((int64_t *)&self->_headlineLabel);
    objc_storeStrong((int64_t *)&self->_eaglSharegroup, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_imageView);
    objc_destroyWeak((int64_t *)&self->_content);
    return;
}

-(void)updateViewForImageAndTextStyleWithBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xf0;
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
    v8 = v2;
    r21 = self;
    r8 = *_CGRectZero;
    d11 = *(int128_t *)(r8 + 0x10);
    d12 = *(int128_t *)(r8 + 0x18);
    r22 = [[self headlineLabel] retain];
    r20 = [[r21 linkDescriptionLabel] retain];
    r27 = [[r21 ctaLabel] retain];
    var_C8 = [[r21 imageView] retain];
    r19 = [[r21 gradientView] retain];
    r24 = [[r21 content] retain];
    r0 = [r21 delegate];
    r29 = &var_10;
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 respondsToSelector:r2];
    var_C0 = d8;
    var_E8 = r25;
    var_E0 = r19;
    var_A8 = d12;
    if ((r0 & 0x1) != 0x0) {
            r23 = [r25 shouldUseLargeLayoutStyle];
            [r21 setupCornerRadiusAndShadow];
            if (r23 != 0x0) {
                    r0 = [r21 fdsSecondaryTextColor];
                    r29 = r29;
                    r28 = 0x1;
                    v8 = v9;
            }
            else {
                    r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
                    r28 = 0x0;
                    r29 = r29;
            }
    }
    else {
            [r21 setupCornerRadiusAndShadow];
            r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
            r28 = 0x0;
            r29 = r29;
    }
    r19 = [r0 retain];
    [r22 setTextColor:r19];
    var_F0 = r19;
    [r20 setTextColor:r19];
    r23 = [[FBAdFont sfuiTextRegularWithSize:r19] retain];
    [r20 setFont:r23];
    [r23 release];
    r19 = r20;
    r20 = r24;
    r0 = [r24 callToAction];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r22;
    [r27 setText:r0];
    [r0 release];
    [r27 sizeThatFits:r0];
    var_AC = r28;
    if (r28 != 0x0) {
            asm { fcsel      d1, d0, d9, ne };
    }
    var_D8 = r27;
    var_B8 = d10 - d1 - d3;
    [r27 setFrame:@selector(shouldUseLargeLayoutStyle)];
    r0 = [r20 linkDescription];
    r29 = r29;
    r27 = [r0 retain];
    r22 = [FBAdUtility isStringEmpty:r27];
    r0 = r27;
    r27 = r20;
    r20 = r19;
    [r0 release];
    v9 = v14;
    v10 = v15;
    var_D0 = d11;
    d8 = var_A8;
    if ((r22 & 0x1) == 0x0) {
            r0 = [r27 linkDescription];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setText:r22];
            [r22 release];
            [r20 sizeThatFits:r22];
            v8 = v12;
            if (var_AC != 0x0) {
                    asm { fcsel      d0, d1, d0, ne };
            }
            d10 = var_B8 - 0x4034000000000000 - d8;
            v11 = v13;
    }
    [r20 setFrame:@selector(shouldUseLargeLayoutStyle)];
    r22 = [[r27 headline] retain];
    [r25 setText:r22];
    [r22 release];
    r0 = [r25 sizeThatFits:r22];
    v12 = v12;
    r0 = CGRectEqualToRect(r0, @selector(sizeThatFits:));
    r19 = var_AC;
    if (r19 != 0x0) {
            asm { fcsel      d1, d2, d1, ne };
    }
    d9 = var_B8;
    if (r0 == 0x0) {
            asm { fcsel      d8, d0, d1, eq };
    }
    [r25 setFrame:@selector(shouldUseLargeLayoutStyle)];
    d8 = d8 + 0xc020000000000000;
    d9 = d9 + 0xc028000000000000;
    if (r19 != 0x0) {
            asm { fcsel      d3, d8, d9, ne };
    }
    r23 = var_C8;
    [r23 setFrame:@selector(shouldUseLargeLayoutStyle)];
    if (r19 != 0x0) {
            r24 = var_E0;
            [r24 setHidden:r2];
    }
    else {
            r24 = var_E0;
            [r24 setHidden:r2];
            [r24 setFrame:0x0];
            [r21 bringSubviewToFront:r24];
            [r21 bringSubviewToFront:r25];
            [r21 bringSubviewToFront:r20];
    }
    [var_F0 release];
    [var_E8 release];
    [r27 release];
    [r24 release];
    [r23 release];
    [var_D8 release];
    [r20 release];
    [r25 release];
    return;
}

-(void)setImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_imageView, arg2);
    return;
}

-(void *)content {
    r0 = objc_loadWeakRetained((int64_t *)&self->_content);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void *)eaglSharegroup {
    r0 = self->_eaglSharegroup;
    return r0;
}

-(void)setEaglSharegroup:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_eaglSharegroup, arg2);
    return;
}

-(unsigned long long)multiProductCellStyle {
    r0 = self->_multiProductCellStyle;
    return r0;
}

-(long long)lastAdViewabilityStatus {
    r0 = self->_lastAdViewabilityStatus;
    return r0;
}

-(void)setLastAdViewabilityStatus:(long long)arg2 {
    self->_lastAdViewabilityStatus = arg2;
    return;
}

-(bool)imageLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_imageLoaded;
    return r0;
}

-(void)setLinkDescriptionLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_linkDescriptionLabel, arg2);
    return;
}

-(void)setImageLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_imageLoaded = arg2;
    return;
}

-(void)setHeadlineLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headlineLabel, arg2);
    return;
}

-(void)setGradientView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_gradientView, arg2);
    return;
}

-(void)setCtaLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ctaLabel, arg2);
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
    r0 = objc_getClass("FBAdMultiProductCell");
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
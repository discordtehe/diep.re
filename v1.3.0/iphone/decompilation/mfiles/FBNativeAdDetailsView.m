@implementation FBNativeAdDetailsView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_10 super] initWithFrame:r2];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [[&var_10 super] initWithCoder:arg2];
    return r0;
}

-(void)reinitializeView {
    [self resetView];
    [self createView];
    [self updateView:0x1];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 nativeAdBase:(void *)arg3 attributes:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
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
    r19 = [r2 retain];
    r20 = [r3 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setClipsToBounds:0x1];
            objc_storeWeak((int64_t *)&r21->_nativeAdBase, r19);
            objc_storeWeak((int64_t *)&r21->_attributes, r20);
            [r21 reinitializeView];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setNativeAdBase:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_nativeAdBase;
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

-(void)resetView {
    r0 = [self iconView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setIconView:0x0];
    r0 = [self bodyView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setBodyView:0x0];
    r0 = [self callToActionButton];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setCallToActionButton:0x0];
    return;
}

-(void)createView {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r0 = [FBAdIconView new];
    r19 = r0;
    [r0 setClipsToBounds:0x1];
    [r19 setUserInteractionEnabled:0x1];
    [r20 addSubview:r19];
    [r20 setIconView:r19];
    r21 = [[r20 nativeAdBase] retain];
    r22 = [FBAdBodyView alloc];
    r24 = [[r20 attributes] retain];
    r22 = [r22 initWithFrame:r21 nativeAd:r24 attributes:r4];
    [r24 release];
    [r22 setAnimationEnabled:0x1];
    [r20 addSubview:r22];
    [r20 setBodyView:r22];
    r24 = [UILabel new];
    r26 = [[FBAdFont sfuiTextRegularWithSize:r22] retain];
    [r24 setFont:r26];
    [r26 release];
    [r24 setNumberOfLines:0x3];
    [r20 addSubview:r24];
    [r20 setBodyLabel:r24];
    r0 = [FBAdOptionsView new];
    r25 = r0;
    var_58 = r21;
    [r0 setNativeAd:r21];
    r0 = [UIButton buttonWithType:0x1];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 titleLabel];
    r0 = [r0 retain];
    [r0 setTextAlignment:0x1];
    [r0 release];
    r0 = [r26 titleLabel];
    r0 = [r0 retain];
    [r0 setLineBreakMode:0x0];
    [r0 release];
    r0 = [r26 titleLabel];
    r0 = [r0 retain];
    [r0 setNumberOfLines:0x2];
    [r0 release];
    [r26 setTitleEdgeInsets:0x2];
    [r20 addSubview:r26];
    r0 = [r26 titleForState:0x0];
    r0 = [r0 retain];
    r23 = [r0 length];
    [r0 release];
    if (r23 == 0x0) {
            [r26 setTitle:@"Loading..." forState:0x0];
    }
    [r20 setCallToActionButton:r26];
    [r20 setLoaded:0x1];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [var_58 release];
    [r19 release];
    return;
}

-(void)layoutSubviews {
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void)setAttributes:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_attributes;
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

-(void)layoutNativeBanner {
    CGRectGetHeight(CGRectGetHeight([self bounds]));
    r0 = [self iconView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)setBodyTextEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bodyTextEnabled = arg2;
    [self updateView:0x1];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_bodyLabel);
    objc_destroyWeak((int64_t *)&self->_callToActionButton);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_destroyWeak((int64_t *)&self->_bodyView);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_destroyWeak((int64_t *)&self->_nativeAdBase);
    return;
}

-(bool)pointInside:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r21 = self;
    r0 = [self superview];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [FBNativeAdView class];
    if ([r22 isKindOfClass:r2] != 0x0) {
            r0 = [r21 superview];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r20 = 0x0;
    }
    [r22 release];
    r0 = [r21 window];
    r0 = [r0 retain];
    v1 = v8;
    [r0 convertPoint:r21 fromView:r3];
    [r0 release];
    r22 = [[r20 mediaView] retain];
    r21 = [[r21 window] retain];
    [r22 frame];
    r19 = [[r22 superview] retain];
    [r21 convertRect:r19 fromView:r3];
    [r19 release];
    r19 = CGRectContainsPoint([r21 release], @selector(convertRect:fromView:)) ^ 0x1;
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)nativeAdBase {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdBase);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)attributes {
    r0 = objc_loadWeakRetained((int64_t *)&self->_attributes);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)bodyView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bodyView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBodyView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bodyView, arg2);
    return;
}

-(void)updateView:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 == 0x0) goto .l7;

loc_100b12588:
    r31 = r31 - 0x130;
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
    r29 = &var_10;
    r20 = r0;
    if (([r0 isLoaded] & 0x1) == 0x0) {
            [r20 createView];
    }
    r0 = [r20 nativeAdBase];
    r29 = r29;
    r28 = [r0 retain];
    r22 = [r20 nativeBannerAdViewType];
    [r20 bounds];
    r8 = *_CGRectZero;
    d9 = *(int128_t *)r8;
    d10 = *(int128_t *)(r8 + 0x8);
    d15 = *(int128_t *)(r8 + 0x10);
    d8 = *(int128_t *)(r8 + 0x18);
    if (d2 >= *double_value_260) {
            if ([FBAdDevice deviceModel] < 0x8) {
                    if (CPU_FLAGS & B) {
                            r24 = 0x1;
                    }
            }
    }
    else {
            r24 = 0x1;
    }
    r0 = [r28 callToAction];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 release];
    [r20 bounds];
    v11 = v0;
    v13 = v1;
    var_C0 = d15;
    var_B8 = d3;
    var_F8 = d10;
    var_F0 = d9;
    var_100 = d8;
    if (r24 != 0x0) {
            v12 = v11;
            var_118 = d13;
            d0 = d2 * 0x3fe0000000000000;
            if (r19 == 0x0) {
                    asm { fcsel      d0, d2, d0, eq };
            }
            var_B0 = d0;
            r0 = [r20 bounds];
            v6 = v0;
            v11 = v9;
            v13 = v10;
            asm { fdiv       d10, d2, d0 };
    }
    else {
            d14 = d2 * 0x3fd0000000000000;
            [r20 bounds];
            var_D0 = d1;
            v10 = v2;
            var_D8 = d3;
            r0 = [r20 bounds];
            v9 = v0;
            v12 = v1;
            v8 = v3;
            if (r19 != 0x0) {
                    var_B0 = d9;
                    v9 = v8;
                    d8 = d2 * 0x3fe0000000000000;
            }
            else {
                    r0 = [r20 bounds];
                    d2 = d2 * 0x3fe0000000000000;
                    r0 = CGRectOffset(r0, @selector(bounds), r2);
                    v6 = v2;
                    v3 = v8;
                    r0 = CGRectUnion(r0, @selector(bounds));
                    var_B0 = 0x3fd0000000000000;
                    v12 = v12;
                    v8 = v15;
                    v9 = v3;
            }
            d10 = d10 * 0x3fd0000000000000;
            r0 = CGRectGetMaxX(r0);
            r0 = CGRectOffset(r0, @selector(bounds), r2);
            v12 = v11;
            var_118 = d1;
            var_B8 = d3;
            var_B0 = d2;
            v8 = v15;
            v15 = v14;
            d1 = var_D0;
            d3 = var_D8;
    }
    r0 = CGRectOffset(r0, @selector(bounds), r2);
    v9 = v6;
    var_D8 = d1;
    var_D0 = d3;
    var_E8 = d2;
    v14 = v12;
    d12 = 0x401c000000000000;
    v0 = v11;
    v1 = v13;
    v2 = v15;
    v3 = v8;
    r0 = CGRectInset(r0, @selector(bounds), r2);
    var_E0 = r22;
    var_108 = d9;
    if (r22 == 0x5) {
            CGRectGetHeight([r20 bounds]);
            asm { fmin       d13, d0, d1 };
            CGRectGetMaxX(CGRectGetHeight(objc_msgSend(r20, r27)));
            d12 = 0x0 + d12;
            r0 = objc_msgSend(r20, r27);
            r0 = CGRectGetWidth(r0);
            d2 = var_B0;
            CGRectGetMinX(r0);
            r0 = objc_msgSend(r20, r27);
            r0 = CGRectGetWidth(r0);
            v8 = v12;
            d3 = var_D0;
            d9 = var_E8;
            CGRectGetMinX(r0);
            d8 = (d10 - 0x0 - d8) + 0x0;
            v14 = v13;
            v10 = v15;
            v11 = v13;
    }
    else {
            v10 = v1;
            v13 = v2;
            v11 = v3;
            d8 = var_B0;
            d9 = var_E8;
            v12 = v14;
            if (d2 < d3) {
                    d2 = 0x3fe0000000000000;
                    CGRectOffset(r0, @selector(bounds), r2);
                    v10 = v10;
                    v13 = v2;
                    v11 = v2;
            }
            else {
                    if (!CPU_FLAGS & LE) {
                            d2 = 0x3fe0000000000000;
                            CGRectOffset(r0, @selector(bounds), r2);
                            v10 = v10;
                            v13 = v11;
                            v11 = v11;
                    }
            }
    }
    r0 = [r20 iconView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    d8 = d8 + 0xc01c000000000000;
    r0 = [r20 bodyView];
    r0 = [r0 retain];
    r26 = r0;
    v0 = v12;
    [r0 setFrame:r2];
    [r26 sizeToFit];
    r2 = r28;
    [r26 setNativeAdBase:r2];
    r0 = [r20 callToActionButton];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    var_110 = r19;
    if (r19 == 0x0) goto loc_100b12c48;

loc_100b12a78:
    d3 = var_D0;
    CGRectInset(r0, @selector(callToActionButton), r2);
    d1 = var_D8 + (d3 * 0x3ff4000000000000 - d3) * 0xbfe0000000000000;
    d11 = d3 + (d3 * 0x3ff4000000000000 - d3);
    var_C8 = d2;
    [r21 setFrame:r2];
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    var_120 = r28;
    if (r0 == 0x0) goto loc_100b12b88;

loc_100b12ae4:
    r0 = [r21 titleForState:0x0];
    r0 = [r0 retain];
    r27 = r24;
    r24 = r0;
    r0 = [r28 callToAction];
    r29 = r29;
    r19 = [r0 retain];
    r2 = r19;
    r28 = [r24 isEqualToString:r2];
    [r19 release];
    r0 = r24;
    r24 = r27;
    [r0 release];
    [r22 release];
    if ((r28 & 0x1) != 0x0) goto loc_100b12b90;

loc_100b12b58:
    r0 = [var_120 callToAction];
    r29 = r29;
    r22 = [r0 retain];
    [r21 setTitle:r22 forState:0x0];
    goto loc_100b12b88;

loc_100b12b88:
    [r22 release];
    goto loc_100b12b90;

loc_100b12b90:
    v9 = v8;
    v8 = v12;
    [r21 sizeToFit];
    [r21 frame];
    v12 = v0;
    d2 = 0x3fe0000000000000;
    d0 = (d11 - d3 + 0x4024000000000000) * d2;
    r22 = var_E0;
    if (r22 != 0x5) goto loc_100b12c6c;

loc_100b12bdc:
    r27 = @selector(bounds);
    CGRectGetHeight(objc_msgSend(r20, r27));
    asm { fmin       d13, d0, d1 };
    r0 = objc_msgSend(r20, r27);
    r0 = CGRectGetHeight(r0);
    v10 = v0;
    CGRectGetHeight(r0);
    r28 = var_120;
    d10 = var_F0;
    goto loc_100b12c64;

loc_100b12c64:
    r19 = @selector(setNativeAdBase:);
    goto loc_100b12c7c;

loc_100b12c7c:
    [r21 setFrame:r2];
    v0 = v8;
    v1 = v15;
    v2 = v9;
    v3 = v14;
    [r26 setFrame:r2];
    r2 = r28;
    objc_msgSend(r26, r19);
    r0 = [r20 bodyLabel];
    r29 = r29;
    r23 = [r0 retain];
    r0 = [r20 isBodyTextEnabled];
    if (r22 != 0x5 && r0 != 0x0) {
            [r26 spareSpace];
            [r26 convertRect:r20 toView:r3];
            [r23 setFrame:r20];
            r19 = [[r28 bodyText] retain];
            r2 = r19;
            [r23 setText:r2];
            [r19 release];
            [r23 sizeToFit];
            [r23 frame];
            objc_msgSend(r26, r19);
            objc_msgSend(r23, r27);
            if (d8 > d9) {
                    asm { fdiv       d0, d3, d0 };
            }
            [r26 setAdditionalYSpacing:r2];
            if (r24 != 0x0) {
                    if (var_110 != 0x0) {
                            [r21 frame];
                            objc_msgSend(r20, r27);
                            v1 = v1;
                            var_C0 = d10;
                            v3 = v3;
                            [r21 setFrame:r2];
                    }
                    CGRectOffset([r26 frame], @selector(frame), r2);
                    objc_msgSend(r20, r27);
                    [r26 setFrame:r2];
                    [r23 frame];
                    [r26 frame];
                    [r23 setFrame:r2];
            }
    }
    else {
            v0 = v10;
            d2 = var_C0;
            [r23 setFrame:r2];
            if (r24 != 0x0) {
                    if (var_110 != 0x0) {
                            [r21 frame];
                            objc_msgSend(r20, r27);
                            v1 = v1;
                            var_C0 = d10;
                            v3 = v3;
                            [r21 setFrame:r2];
                    }
                    CGRectOffset([r26 frame], @selector(frame), r2);
                    objc_msgSend(r20, r27);
                    [r26 setFrame:r2];
                    [r23 frame];
                    [r26 frame];
                    [r23 setFrame:r2];
            }
    }
    [r23 release];
    [r21 release];
    [r26 release];
    [r28 release];
    return;

.l7:
    return;

loc_100b12c6c:
    r27 = @selector(bounds);
    r28 = var_120;
    d10 = var_F0;
    r19 = @selector(setNativeAdBase:);
    d2 = var_C8;
    goto loc_100b12c7c;

loc_100b12c48:
    r27 = @selector(bounds);
    v9 = v8;
    v8 = v12;
    d2 = var_C0;
    d10 = var_F0;
    v12 = v10;
    r22 = var_E0;
    goto loc_100b12c64;
}

-(void *)iconView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_iconView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setIconView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_iconView, arg2);
    return;
}

-(void *)callToActionButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_callToActionButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCallToActionButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_callToActionButton, arg2);
    return;
}

-(void *)bodyLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bodyLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBodyLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bodyLabel, arg2);
    return;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

-(bool)isBodyTextEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_bodyTextEnabled;
    return r0;
}

-(long long)nativeBannerAdViewType {
    r0 = self->_nativeBannerAdViewType;
    return r0;
}

-(void)setNativeBannerAdViewType:(long long)arg2 {
    self->_nativeBannerAdViewType = arg2;
    return;
}

@end
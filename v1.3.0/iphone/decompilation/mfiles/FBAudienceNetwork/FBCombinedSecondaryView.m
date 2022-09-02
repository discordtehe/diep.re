@implementation FBCombinedSecondaryView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_10 super] initWithFrame:r2];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [[&var_10 super] initWithCoder:arg2];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 nativeAdBase:(void *)arg3 attributes:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r19 = [r2 retain];
    r20 = [r3 retain];
    r0 = [[&var_60 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setClipsToBounds:0x1];
            objc_storeWeak((int64_t *)&r21->_nativeAdBase, r19);
            objc_storeWeak((int64_t *)&r21->_attributes, r20);
            r0 = [r20 ratingEnabled];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 ratingEnabled];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_ratingEnabledInternal));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
            }
            r0 = [r20 socialContextEnabled];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 socialContextEnabled];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_socialContextEnabledInternal));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
            }
            [r21 createView];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)isRatingEnabled {
    r0 = self->_ratingEnabledInternal;
    r0 = [r0 boolValue];
    return r0;
}

-(void)setRatingEnabled:(bool)arg2 {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_ratingEnabledInternal));
    r21 = [*(self + r22) boolValue] ^ arg2;
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    [self updateView:r21];
    return;
}

-(bool)isSocialContextEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_socialContextEnabledInternal));
    if ([*(self + r21) boolValue] != 0x0) {
            r0 = *(r19 + r21);
            r0 = [r0 boolValue];
    }
    else {
            r0 = [r19 nativeAdBase];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 socialContext];
            r0 = [r0 retain];
            r21 = [r0 length];
            [r0 release];
            r0 = [r19 release];
            if (r21 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void)setSocialContextEnabled:(bool)arg2 {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_socialContextEnabledInternal));
    r21 = [*(self + r22) boolValue] ^ arg2;
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    [self updateView:r21];
    return;
}

-(void)createTitleLabel {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [UILabel new];
    r22 = [[UIFont boldSystemFontOfSize:r2] retain];
    [r20 setFont:r22];
    [r22 release];
    [r20 setNumberOfLines:0x2];
    r0 = [r19 attributes];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 titleColor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r22 titleColor];
            r29 = r29;
            [r0 retain];
            [r20 setTextColor:r2];
            [r23 release];
    }
    r0 = [r22 titleFont];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r22 titleFont] retain];
            [r20 setFont:r23];
            [r23 release];
    }
    [r19 addSubview:r20];
    [r19 setTitleLabel:r20];
    [r22 release];
    [r20 release];
    return;
}

-(void)createAdOptionsView {
    r20 = [FBAdOptionsView new];
    r21 = [[self nativeAdBase] retain];
    [r20 setNativeAd:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [self addSubview:r20];
    [self setAdOptionsView:r20];
    [r20 release];
    return;
}

-(void)createSocialContextView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UILabel new];
    r20 = r0;
    [r0 setAdjustsFontSizeToFitWidth:0x1];
    [r20 setMinimumScaleFactor:0x1];
    r22 = [[UIFont systemFontOfSize:0x1] retain];
    [r20 setFont:r22];
    [r22 release];
    [r20 setLineBreakMode:0x4];
    r0 = [r19 attributes];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 descriptionColor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r22 descriptionColor];
            r29 = r29;
            [r0 retain];
            [r20 setTextColor:r2];
            [r23 release];
    }
    r0 = [r22 descriptionFont];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r22 descriptionFont] retain];
            [r20 setFont:r23];
            [r23 release];
    }
    [r19 addSubview:r20];
    [r19 setSocialContextLabel:r20];
    [r22 release];
    [r20 release];
    return;
}

-(void)createView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19 setSocialContextEnabledLast:[self isSocialContextEnabled]];
    [r19 setRatingEnabledLast:[r19 isRatingEnabled]];
    [r19 createTitleLabel];
    [r19 createAdOptionsView];
    if ([r19 isSocialContextEnabled] != 0x0) {
            [r19 createSocialContextView];
    }
    return;
}

-(void)resetView {
    r0 = [self titleLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setTitleLabel:0x0];
    r0 = [self adOptionsView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setAdOptionsView:0x0];
    r0 = [self socialContextLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setSocialContextLabel:0x0];
    return;
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

-(void)updateTitle:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self nativeAdBase];
    r0 = [r0 retain];
    r20 = [[r0 advertiserName] retain];
    [r21 setText:r20];
    [r21 release];
    [r20 release];
    [r0 release];
    return;
}

-(void)layoutSubviews {
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_socialContextEnabledInternal, 0x0);
    objc_storeStrong((int64_t *)&self->_ratingEnabledInternal, 0x0);
    objc_destroyWeak((int64_t *)&self->_adOptionsView);
    objc_destroyWeak((int64_t *)&self->_socialContextLabel);
    objc_destroyWeak((int64_t *)&self->_titleLabel);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_destroyWeak((int64_t *)&self->_nativeAdBase);
    return;
}

-(struct CGRect)spareSpace {
    r0 = [self titleLabel];
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    [r20 frame];
    [r20 bounds];
    r0 = [self socialContextLabel];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    [self frame];
    [self bounds];
    r0 = [r20 release];
    return r0;
}

-(void *)nativeAdBase {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdBase);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAttributes:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_attributes, arg2);
    return;
}

-(void *)attributes {
    r0 = objc_loadWeakRetained((int64_t *)&self->_attributes);
    r0 = [r0 autorelease];
    return r0;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0x120;
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
    if (arg2 != 0x0) {
            r19 = r0;
            r21 = [r0 isSocialContextEnabled];
            r20 = [r19 isRatingEnabled];
            if (r21 != [r19 isSocialContextEnabledLast] || (r20 ^ [r19 isRatingEnabledLast]) == 0x1) {
                    [r19 resetView];
                    [r19 createView];
            }
            [r19 bounds];
            objc_msgSend(r19, r22);
            objc_msgSend(r19, r22);
            objc_msgSend(r19, r22);
            var_F8 = d2;
            objc_msgSend(r19, r22);
            r20 = [[r19 nativeAdBase] retain];
            r21 = [[r19 titleLabel] retain];
            r23 = [[r19 socialContextLabel] retain];
            r0 = [r20 advertiserName];
            r29 = r29;
            r27 = [r0 retain];
            r8 = *_CGRectZero;
            d0 = *(int128_t *)r8;
            var_E8 = *(int128_t *)(r8 + 0x8);
            stack[-224] = d0;
            [r21 setFrame:r2];
            r2 = r27;
            [r21 setText:r2];
            [r21 sizeToFit];
            r0 = [r21 frame];
            v10 = v15;
            CGRectGetWidth(r0);
            v8 = v0;
            d11 = d3 * 0x3fe0000000000000 - d10;
            r1 = @selector(additionalYSpacing);
            r0 = objc_msgSend(r19, r1);
            asm { fmax       d5, d0, d1 };
            var_F0 = d5;
            CGRectOffset(r0, r1, r2);
            v9 = v9;
            v12 = v12;
            v13 = v10;
            CGRectGetWidth(objc_msgSend(r19, r22));
            d0 = d0 - d8 + 0x805b000000000000;
            if (d0 < 0x0) {
                    CGRectGetWidth([r19 bounds]);
                    d0 = d0 + 0xc047000000000000;
            }
            [r21 setFrame:r2];
            r0 = [r19 adOptionsView];
            r0 = [r0 retain];
            r0 = CGRectGetMaxX(r0);
            d10 = d0 + 0x4014000000000000;
            r0 = CGRectGetMinY(r0);
            v1 = v12;
            CGRectGetHeight(r0);
            d0 = (0x4032000000000000 - d0) * 0xbfe0000000000000;
            var_D8 = r24;
            v0 = v10;
            [r24 setFrame:r2];
            r1 = @selector(socialContext);
            r0 = objc_msgSend(r20, r1);
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    var_100 = r27;
                    r1 = @selector(bounds);
                    r27 = CGRectIsEmpty(objc_msgSend(r19, r1));
                    r0 = [r24 release];
                    if ((r27 & 0x1) == 0x0) {
                            var_108 = [[r20 socialContext] retain];
                            r0 = [r19 attributes];
                            r0 = [r0 retain];
                            var_118 = r0;
                            r0 = [r0 descriptionFont];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = r0;
                            var_110 = r20;
                            if (r0 != 0x0) {
                                    var_11C = 0x0;
                                    r24 = r27;
                            }
                            else {
                                    [UIFont smallSystemFontSize];
                                    r0 = [UIFont systemFontOfSize:r2];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    var_11C = 0x1;
                            }
                            r0 = [NSDictionary dictionaryWithObjects:&var_B8 forKeys:&var_C0 count:0x1];
                            r29 = r29;
                            r20 = [r0 retain];
                            r2 = r20;
                            [var_108 sizeWithAttributes:r2];
                            v8 = v1;
                            [r20 release];
                            if (var_11C != 0x0) {
                                    [r24 release];
                            }
                            [r27 release];
                            [var_118 release];
                            r0 = [var_108 release];
                            asm { frintp     d0, d9 };
                            asm { fmax       d1, d0, d1 };
                            if (d0 > var_F8) {
                                    asm { fcsel      d14, d2, d1, gt };
                            }
                            r1 = @selector(sizeWithAttributes:);
                            asm { frintp     d15, d8 };
                            r20 = var_110;
                    }
                    r27 = var_100;
            }
            else {
                    r0 = [r24 release];
            }
            d8 = d12 + d13;
            CGRectOffset(r0, r1, r2);
            v9 = v0;
            v10 = v1;
            [r19 bounds];
            v12 = v14;
            d11 = d10 + d11;
            [r19 bounds];
            d0 = 0x4032000000000000 - var_F0 + d8;
            asm { fmax       d1, d11, d13 };
            if (d11 > d0) {
                    asm { fcsel      d8, d0, d1, gt };
            }
            r0 = [r20 socialContext];
            r0 = [r0 retain];
            r24 = r20;
            r2 = r0;
            [r23 setText:r2];
            [r20 release];
            v0 = v9;
            v1 = v10;
            v3 = v8;
            [r23 setFrame:r2];
            r20 = @selector(sizeToFit);
            objc_msgSend(r23, r20);
            [r23 frame];
            [r23 frame];
            [r19 bounds];
            if (d8 <= 0x0) {
                    asm { csinc      x2, x8, xzr, le };
            }
            [r23 setNumberOfLines:r2];
            objc_msgSend(r23, r20);
            [r23 frame];
            [r19 bounds];
            [r23 setFrame:r2];
            CGRectOffset(CGRectInset([r23 frame], @selector(frame), r2), @selector(frame), r2);
            [r23 setFrame:r2];
            [var_D8 release];
            [r27 release];
            [r23 release];
            [r21 release];
            [r24 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)titleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_titleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void *)socialContextLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_socialContextLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adOptionsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adOptionsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSocialContextLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_socialContextLabel, arg2);
    return;
}

-(void)setAdOptionsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adOptionsView, arg2);
    return;
}

-(void *)isRatingEnabledInternal {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_ratingEnabledInternal)), 0x0);
    return r0;
}

-(void *)isSocialContextEnabledInternal {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_socialContextEnabledInternal)), 0x0);
    return r0;
}

-(void)setRatingEnabledInternal:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSocialContextEnabledInternal:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isRatingEnabledLast {
    r0 = *(int8_t *)(int64_t *)&self->_ratingEnabledLast;
    return r0;
}

-(bool)isSocialContextEnabledLast {
    r0 = *(int8_t *)(int64_t *)&self->_socialContextEnabledLast;
    return r0;
}

-(void)setRatingEnabledLast:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ratingEnabledLast = arg2;
    return;
}

-(void)setSocialContextEnabledLast:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_socialContextEnabledLast = arg2;
    return;
}

-(bool)isFullRatingView {
    r0 = *(int8_t *)(int64_t *)&self->_fullRatingView;
    return r0;
}

-(double)additionalYSpacing {
    r0 = self;
    return r0;
}

-(void)setAdditionalYSpacing:(double)arg2 {
    self->_additionalYSpacing = d0;
    return;
}

-(void)setFullRatingView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_fullRatingView = arg2;
    return;
}

@end
@implementation FBAdTemplateFooterView

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
            *(int8_t *)(int64_t *)&r21->_renderCTAOnly = 0x0;
            [r21 updateView:0x1];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)bodyTextExistsInNativeAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[arg2 bodyText] retain];
    r20 = [[NSCharacterSet whitespaceCharacterSet] retain];
    r0 = [r19 stringByTrimmingCharactersInSet:r20];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 length] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)setNativeAdBase:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAdBase, arg2);
    [self updateView:0x1];
    return;
}

-(double)intrinsicHeightForNativeAd:(void *)arg2 width:(double)arg3 {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d9;
    stack[-104] = d8;
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
    r29 = &saved_fp;
    v8 = v0;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 bodyTextExistsInNativeAd:r19] & 0x1) == 0x0) {
            r0 = [r20 attributes];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 titleFont];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r0 = [r22 retain];
            }
            else {
                    r0 = [FBAdFont sfuiDisplaySemiboldWithSize:r2];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            r21 = r0;
            [r22 release];
            r22 = [FBAdLabel alloc];
            r25 = [[r19 headline] retain];
            r22 = [r22 initWithText:r25 numberOfLines:0x2 font:r21];
            [r25 release];
            r0 = [r20 descriptionFont];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if (r0 != 0x0) {
                    r0 = [r26 retain];
            }
            else {
                    r0 = [FBAdFont sfuiTextRegularWithSize:r2];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            r25 = r0;
            [r26 release];
            r23 = [FBAdLabel alloc];
            r26 = [[r19 rawBodyText] retain];
            r23 = [r23 initWithText:r26 numberOfLines:0x0 font:r25];
            [r26 release];
            [r22 sizeThatFits:r26];
            [r23 sizeThatFits:r26];
            d2 = d10 + 0x4010000000000000;
            d0 = d1 + 0x4010000000000000;
            if (d1 > 0x0) {
                    asm { fcsel      d0, d0, d1, gt };
            }
            [r23 release];
            [r25 release];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    r0 = [r19 release];
    return r0;
}

-(void)setBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    [[&var_40 super] setBounds:r2];
    r0 = [r19 bounds];
    r0 = CGRectEqualToRect(r0, @selector(bounds));
    if ((r0 & 0x1) != 0x0) {
            r2 = 0x0;
    }
    else {
            r2 = CGRectIsEmpty(r0) ^ 0x1;
    }
    [r19 updateView:r2];
    return;
}

-(void)createView {
    r31 = r31 - 0x80;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [self attributes];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 titleFont];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r22 retain];
    }
    else {
            r0 = [FBAdFont sfuiDisplaySemiboldWithSize:r2];
            r29 = r29;
            r0 = [r0 retain];
    }
    r23 = r0;
    [r22 release];
    r0 = [FBAdLabel alloc];
    var_68 = r23;
    r22 = [r0 initWithText:0x0 numberOfLines:0x2 font:r23];
    r0 = [r19 titleColor];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r2 = r23;
            [r22 setTextColor:r2];
    }
    else {
            r0 = [UIColor colorWithUInt:0x1c1e21 withAlpha:0x2];
            r29 = r29;
            r2 = [r0 retain];
            [r22 setTextColor:r2];
            [r27 release];
    }
    [r23 release];
    r0 = [r19 descriptionFont];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 != 0x0) {
            r0 = [r27 retain];
    }
    else {
            r0 = [FBAdFont sfuiTextRegularWithSize:r2];
            r29 = r29;
            r0 = [r0 retain];
    }
    r23 = r0;
    [r27 release];
    r24 = [[FBAdLabel alloc] initWithText:0x0 numberOfLines:0x0 font:r23];
    r0 = [r19 descriptionColor];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            [r24 setTextColor:r2];
    }
    else {
            r26 = @selector(setTextColor:);
            r0 = [UIColor colorWithUInt:0x616671 withAlpha:0x0];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r24, r26);
            [r27 release];
    }
    var_70 = r23;
    [r25 release];
    r25 = [[UIButton buttonWithType:0x1] retain];
    r27 = @selector(buttonBorderRadius);
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            r0 = [r19 buttonBorderRadius];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            [r0 floatValue];
            asm { fcvt       d8, s0 };
            r23 = 0x1;
    }
    else {
            r23 = 0x0;
    }
    r0 = [r25 layer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setCornerRadius:0x1];
    [r0 release];
    if (r23 != 0x0) {
            [r27 release];
    }
    [r26 release];
    r0 = [r25 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    [r20 addSubview:r22];
    [r20 addSubview:r24];
    [r20 addSubview:r25];
    [r20 setFooterTitleLabel:r22];
    [r20 setFooterBodyLabel:r24];
    [r20 setCtaButton:r25];
    [r20 setLoaded:0x1];
    [r25 release];
    [r24 release];
    [var_70 release];
    [r22 release];
    [var_68 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_ctaButton);
    objc_destroyWeak((int64_t *)&self->_footerBodyLabel);
    objc_destroyWeak((int64_t *)&self->_footerTitleLabel);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_destroyWeak((int64_t *)&self->_nativeAdBase);
    return;
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
    if (arg2 != 0x0) {
            var_A0 = d15;
            stack[-152] = d14;
            r31 = r31 + 0xffffffffffffff60;
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
            r23 = r0;
            if (([r0 isLoaded] & 0x1) == 0x0) {
                    [r23 createView];
            }
            r19 = [[r23 nativeAdBase] retain];
            r20 = [[r23 footerTitleLabel] retain];
            r21 = [[r23 footerBodyLabel] retain];
            r0 = [r23 ctaButton];
            r29 = r29;
            r22 = [r0 retain];
            [r23 bounds];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            d12 = *(int128_t *)*_CGRectZero;
            [r20 setFrame:r2];
            v0 = v12;
            [r21 setFrame:r2];
            if ([r23 renderCTAOnly] == 0x0) {
                    r26 = [[r19 headline] retain];
                    [r20 setText:r26];
                    [r26 release];
                    r0 = [r19 rawBodyText];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r21 setText:r26];
                    CGRectGetHeight([r26 release]);
                    if (d0 < *0x100bd2e50) {
                            if (CPU_FLAGS & BE) {
                                    r26 = 0x1;
                            }
                    }
                    if (CPU_FLAGS & A) {
                            asm { csinc      x2, x8, xzr, hi };
                    }
                    [r20 setNumberOfLines:r2];
                    r2 = r26;
                    r0 = [r21 setNumberOfLines:r2];
                    r0 = CGRectGetWidth(r0);
                    CGRectGetHeight(r0);
                    CGRectGetWidth([r20 sizeThatFits:r2]);
                    CGRectGetHeight([r20 setFrame:r2]);
                    CGRectGetMaxY([r20 frame]);
                    d12 = (0x5d000000000000 + d12 - 0x5d000000000000) + 0xc020000000000000;
                    v0 = v13;
                    [r21 sizeThatFits:r2];
                    v13 = v14;
                    CGRectGetMaxY(objc_msgSend(r20, r26));
                    CGRectGetWidth(objc_msgSend(r20, r26));
                    if (d13 < d12) {
                            asm { fcsel      d0, d13, d12, mi };
                    }
                    if (d12 > 0x402a000000000000) {
                            asm { fcsel      d3, d0, d1, hi };
                    }
                    d0 = 0x4020000000000000;
                    [r21 setFrame:r2];
            }
            CGRectGetHeight([r23 bounds]);
            r0 = objc_msgSend(r21, r26);
            r0 = CGRectGetMaxY(r0);
            asm { fminnm     d0, d0, d1 };
            asm { fmax       d12, d0, d1 };
            CGRectGetWidth(CGRectGetHeight(r0));
            objc_msgSend(r22, r24);
            r23 = [[r19 callToAction] retain];
            [r22 setTitle:r23 forState:0x0];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void *)footerTitleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_footerTitleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)footerBodyLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_footerBodyLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFooterTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_footerTitleLabel, arg2);
    return;
}

-(void)setFooterBodyLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_footerBodyLabel, arg2);
    return;
}

-(void *)ctaButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_ctaButton);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)renderCTAOnly {
    r0 = *(int8_t *)(int64_t *)&self->_renderCTAOnly;
    return r0;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setCtaButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ctaButton, arg2);
    return;
}

-(void)setRenderCTAOnly:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_renderCTAOnly = arg2;
    return;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

@end
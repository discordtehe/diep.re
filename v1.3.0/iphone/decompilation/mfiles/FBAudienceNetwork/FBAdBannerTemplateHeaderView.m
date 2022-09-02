@implementation FBAdBannerTemplateHeaderView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_10 super] initWithFrame:r2];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [[&var_10 super] initWithCoder:arg2];
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
            [r21 updateView:0x1];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setNativeAdBase:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAdBase, arg2);
    [self updateView:0x1];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adOptionsView);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_destroyWeak((int64_t *)&self->_ctaButton);
    objc_destroyWeak((int64_t *)&self->_headerBodyLabel);
    objc_destroyWeak((int64_t *)&self->_headerTitleLabel);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_destroyWeak((int64_t *)&self->_nativeAdBase);
    return;
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

-(void)setAttributes:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_attributes, arg2);
    return;
}

-(void)createView {
    r31 = r31 - 0xa0;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = self;
    r0 = [UILabel alloc];
    r26 = [r0 initWithFrame:r2];
    r0 = [r19 attributes];
    r0 = [r0 retain];
    var_78 = r0;
    r0 = [r0 titleFont];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r26 setFont:r2];
    }
    else {
            r0 = [FBAdFont sfuiDisplaySemiboldWithSize:r2];
            r29 = r29;
            [r0 retain];
            [r26 setFont:r2];
            [r25 release];
    }
    [r20 release];
    r0 = [var_78 titleColor];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    var_80 = r26;
    if (r0 != 0x0) {
            r2 = r20;
            [r26 setTextColor:r2];
    }
    else {
            r0 = [UIColor colorWithUInt:0x1c1e21 withAlpha:r3];
            r29 = r29;
            r2 = [r0 retain];
            [var_80 setTextColor:r2];
            [r26 release];
    }
    [r20 release];
    r22 = [[UILabel alloc] initWithFrame:r2];
    r26 = var_78;
    r0 = [r26 descriptionFont];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r22 setFont:r2];
    }
    else {
            r0 = [FBAdFont sfuiTextRegularWithSize:r2];
            r29 = r29;
            [r0 retain];
            [r22 setFont:r2];
            [r23 release];
    }
    [r20 release];
    r0 = [r26 descriptionColor];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r22 setTextColor:r2];
            r27 = @selector(colorWithUInt:withAlpha:);
    }
    else {
            r25 = @selector(setTextColor:);
            r27 = @selector(colorWithUInt:withAlpha:);
            r0 = objc_msgSend(@class(UIColor), r27);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r22, r25);
            [r23 release];
    }
    [r20 release];
    [r22 setNumberOfLines:0x0];
    [r22 setMinimumFontSize:0x0];
    [r22 setAdjustsFontSizeToFitWidth:0x1];
    r0 = [FBAdIconView new];
    r23 = r0;
    [r0 setUserInteractionEnabled:0x1];
    r0 = [r23 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    r24 = [FBAdOptionsView new];
    r20 = [[r19 nativeAdBase] retain];
    [r24 setNativeAd:r20];
    [r20 release];
    r20 = [objc_msgSend(@class(UIColor), r27) retain];
    [r24 setBackgroundColor:r20];
    [r20 release];
    r27 = [[UIButton buttonWithType:0x1] retain];
    r20 = @selector(buttonBorderRadius);
    r0 = objc_msgSend(r26, r20);
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (r0 != 0x0) {
            r0 = [r26 buttonBorderRadius];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 floatValue];
            asm { fcvt       d8, s0 };
            r26 = 0x1;
    }
    else {
            r26 = 0x0;
    }
    r0 = [r27 layer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setCornerRadius:0x1];
    [r0 release];
    if (r26 != 0x0) {
            [r20 release];
    }
    [r28 release];
    r0 = [r27 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:r2];
    [r20 release];
    [r19 addSubview:r23];
    [r19 addSubview:var_80];
    [r19 addSubview:r22];
    [r19 addSubview:r24];
    [r19 addSubview:r27];
    [r19 setIconView:r23];
    [r19 setHeaderTitleLabel:var_80];
    [r19 setHeaderBodyLabel:r22];
    [r19 setAdOptionsView:r24];
    [r19 setCtaButton:r27];
    [r19 setLoaded:0x1];
    [r27 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [var_78 release];
    [var_80 release];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            var_90 = d13;
            stack[-136] = d12;
            r31 = r31 + 0xffffffffffffff70;
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
            r24 = r0;
            if (([r0 isLoaded] & 0x1) == 0x0) {
                    [r24 createView];
            }
            r0 = [r24 bounds];
            v8 = v0;
            r0 = CGRectGetHeight(r0);
            CGRectGetWidth(r0);
            r19 = [[r24 nativeAdBase] retain];
            r20 = [[r24 headerTitleLabel] retain];
            r21 = [[r24 headerBodyLabel] retain];
            r22 = [[r24 iconView] retain];
            r23 = [[r24 adOptionsView] retain];
            r24 = [[r24 ctaButton] retain];
            r25 = [[r19 advertiserName] retain];
            [r20 setText:r25];
            [r25 release];
            r25 = [[r19 bodyText] retain];
            r2 = r25;
            [r21 setText:r2];
            CGRectGetWidth([r25 release]);
            [r23 setFrame:r2];
            objc_msgSend(r24, r25);
            r0 = [r19 callToAction];
            r26 = [r0 retain];
            [r24 setTitle:r26 forState:0x0];
            [r26 release];
            CGRectGetMinY([r24 frame]);
            asm { fmin       d9, d0, d1 };
            objc_msgSend(r22, r25);
            r0 = [r22 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r0 release];
            CGRectGetMinX(objc_msgSend(r23, r26));
            v9 = v0;
            CGRectGetMaxX(objc_msgSend(r22, r26));
            CGRectGetMaxX(objc_msgSend(r22, r26));
            objc_msgSend(r20, r25);
            CGRectGetMaxY(objc_msgSend(r20, r26));
            CGRectGetMinY(objc_msgSend(r24, r26));
            CGRectGetMinX(objc_msgSend(r20, r26));
            v11 = v0;
            [r21 sizeThatFits:r2];
            if (0xc010000000000000 < 0xc010000000000000 + d0 + d8 - 0x4000000000000000 + d0 + d8) {
                    asm { fcsel      d3, d1, d10, mi };
            }
            [r21 setFrame:r2];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void *)headerTitleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerTitleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerTitleLabel, arg2);
    return;
}

-(void *)headerBodyLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerBodyLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderBodyLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerBodyLabel, arg2);
    return;
}

-(void *)ctaButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_ctaButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCtaButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ctaButton, arg2);
    return;
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

-(void *)adOptionsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adOptionsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdOptionsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adOptionsView, arg2);
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

@end
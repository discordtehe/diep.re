@implementation FBAdTemplateHeaderView

-(void *)initWithCoder:(void *)arg2 {
    r0 = [[&var_10 super] initWithCoder:arg2];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_10 super] initWithFrame:r2];
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
            *(int8_t *)(int64_t *)&r21->_hideLinkDescription = 0x0;
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

-(double)intrinsicHeightForNativeAd:(void *)arg2 width:(double)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r22 = r0;
    r19 = [[r0 linkDescription] retain];
    r0 = [r22 bodyText];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (([r21 hideLinkDescription] & 0x1) == 0x0) {
            r2 = r20;
            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                    r22 = [[NSCharacterSet whitespaceCharacterSet] retain];
                    r0 = [r19 stringByTrimmingCharactersInSet:r22];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 length];
                    [r0 release];
                    [r22 release];
                    if (r24 != 0x0) {
                            r0 = [r21 attributes];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 descriptionFont];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            if (r0 != 0x0) {
                                    r0 = [r24 retain];
                            }
                            else {
                                    r0 = [FBAdFont sfuiTextRegularWithSize:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                            }
                            r22 = r0;
                            [r24 release];
                            [r23 release];
                            r0 = [FBAdLabel alloc];
                            r0 = [r0 initWithText:r19 numberOfLines:0x2 font:r22];
                            [r0 sizeThatFits:r19];
                            r0 = [r21 iconView];
                            r0 = [r0 retain];
                            CGRectGetMaxY([r0 frame]);
                            [r21 release];
                            [r23 release];
                            [r22 release];
                    }
            }
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void *)nativeAdBase {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdBase);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adOptionsView);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_destroyWeak((int64_t *)&self->_headerDescriptionLabel);
    objc_destroyWeak((int64_t *)&self->_headerBodyLabel);
    objc_destroyWeak((int64_t *)&self->_headerTitleLabel);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_destroyWeak((int64_t *)&self->_nativeAdBase);
    return;
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
    r31 = r31 - 0x90;
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
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 retain];
    }
    else {
            r0 = [FBAdFont sfuiDisplaySemiboldWithSize:r2];
            r29 = r29;
            r0 = [r0 retain];
    }
    r22 = r0;
    [r21 release];
    r24 = [[FBAdLabel alloc] initWithText:0x0 numberOfLines:0x1 font:r22];
    r0 = [r19 titleColor];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r2 = r21;
            [r24 setTextColor:r2];
    }
    else {
            r0 = [UIColor colorWithUInt:0x1c1e21 withAlpha:0x1];
            r29 = r29;
            r2 = [r0 retain];
            [r24 setTextColor:r2];
            [r23 release];
    }
    [r21 release];
    r0 = [r19 descriptionFont];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    var_68 = r24;
    var_60 = r22;
    if (r0 != 0x0) {
            r0 = [r21 retain];
    }
    else {
            r0 = [FBAdFont sfuiTextRegularWithSize:r2];
            r29 = r29;
            r0 = [r0 retain];
    }
    r22 = r0;
    [r21 release];
    r24 = &@class(MoPubAdapterMediatedNativeAd);
    r0 = *(&@class(MoPubAdapterMediatedNativeAd) + 0x2d0);
    r0 = [r0 alloc];
    var_70 = r22;
    r22 = [r0 initWithText:0x0 numberOfLines:0x2 font:r22];
    r0 = [r19 descriptionColor];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    var_58 = r22;
    if (r0 != 0x0) {
            r2 = r23;
            [r22 setTextColor:r2];
    }
    else {
            r28 = @selector(setTextColor:);
            r0 = [UIColor colorWithUInt:0x616671 withAlpha:0x2];
            r29 = r29;
            r2 = [r0 retain];
            objc_msgSend(var_58, r28);
            [r22 release];
    }
    [r23 release];
    r0 = [r19 descriptionFont];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r23 retain];
    }
    else {
            r0 = [FBAdFont sfuiTextRegularWithSize:r2];
            r29 = r29;
            r0 = [r0 retain];
    }
    r22 = r0;
    [r23 release];
    r0 = *(r24 + 0x2d0);
    r0 = [r0 alloc];
    var_78 = r22;
    r26 = [r0 initWithText:0x0 numberOfLines:0x1 font:r22];
    r0 = [r19 descriptionColor];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 != 0x0) {
            [r26 setTextColor:r2];
    }
    else {
            r28 = @selector(setTextColor:);
            r0 = [UIColor colorWithUInt:r2 withAlpha:r3];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r26, r28);
            [r22 release];
    }
    [r27 release];
    r0 = [FBAdIconView new];
    r27 = r0;
    [r0 setUserInteractionEnabled:0x1];
    r0 = [r27 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    r28 = [FBAdOptionsView new];
    r22 = [[r20 nativeAdBase] retain];
    [r28 setNativeAd:r22];
    [r22 release];
    r21 = [[UIColor colorWithUInt:r2 withAlpha:r3] retain];
    [r28 setBackgroundColor:r21];
    [r21 release];
    [r20 addSubview:r27];
    [r20 addSubview:var_68];
    [r20 addSubview:var_58];
    [r20 addSubview:r26];
    [r20 addSubview:r28];
    [r20 setIconView:r27];
    [r20 setHeaderTitleLabel:var_68];
    [r20 setHeaderDescriptionLabel:var_58];
    [r20 setHeaderBodyLabel:r26];
    [r20 setAdOptionsView:r28];
    [r20 setLoaded:0x1];
    [r28 release];
    [r27 release];
    [r26 release];
    [var_78 release];
    [var_58 release];
    [var_70 release];
    [var_68 release];
    [var_60 release];
    [r19 release];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            r31 = r31 - 0xb0;
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
            r25 = r0;
            if (([r0 isLoaded] & 0x1) == 0x0) {
                    [r25 createView];
            }
            r19 = [[r25 nativeAdBase] retain];
            r20 = [[r25 headerTitleLabel] retain];
            r22 = [[r25 headerBodyLabel] retain];
            var_A8 = [[r25 headerDescriptionLabel] retain];
            r23 = [[r25 iconView] retain];
            r24 = [[r25 adOptionsView] retain];
            [r25 bounds];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            r21 = [[r19 advertiserName] retain];
            [r20 setText:r21];
            [r21 release];
            r21 = [[r19 sponsoredTranslation] retain];
            [r22 setText:r21];
            [r21 release];
            [r23 setFrame:r21];
            r0 = [r23 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r21];
            CGRectGetWidth([r0 release]);
            [r24 setFrame:r2];
            CGRectGetMinX([r24 frame]);
            CGRectGetMaxX([r23 frame]);
            CGRectGetMaxX([r23 frame]);
            d0 = d0 + 0x4020000000000000;
            [r20 setFrame:r2];
            CGRectGetMinX([r20 frame]);
            v14 = v8;
            CGRectGetMaxY([r20 frame]);
            r26 = r22;
            [r22 setFrame:r2];
            r22 = [[r19 linkDescription] retain];
            r21 = [[r19 bodyText] retain];
            r0 = r25;
            r25 = var_A8;
            if (([r0 hideLinkDescription] & 0x1) == 0x0) {
                    r2 = r21;
                    if (([r22 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = [r22 length];
                            if (r0 != 0x0) {
                                    CGRectGetWidth(r0);
                                    [r25 sizeThatFits:r2];
                                    CGRectGetWidth(CGRectGetMaxY([r23 frame]));
                                    [r25 setFrame:r2];
                                    [r25 setText:r2];
                            }
                    }
            }
            [r21 release];
            [r22 release];
            [r24 release];
            [r23 release];
            [r25 release];
            [r26 release];
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

-(void *)headerDescriptionLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerDescriptionLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderDescriptionLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerDescriptionLabel, arg2);
    return;
}

-(void *)iconView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_iconView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdOptionsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adOptionsView, arg2);
    return;
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

-(bool)hideLinkDescription {
    r0 = *(int8_t *)(int64_t *)&self->_hideLinkDescription;
    return r0;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setHideLinkDescription:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hideLinkDescription = arg2;
    return;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

@end
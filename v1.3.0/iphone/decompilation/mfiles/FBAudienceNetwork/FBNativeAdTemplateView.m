@implementation FBNativeAdTemplateView

-(bool)shouldUseNewTemplateLayout {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 useRedesignedTemplates];
    [r0 release];
    r8 = &@selector(addObserver:userInfoKeys:targetObject:);
    if (objc_msgSend(self, *(r8 + 0x548)) == 0x6) {
            r8 = &@selector(addObserver:userInfoKeys:targetObject:);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    r0 = r21 | r8;
    return r0;
}

-(void)constructIconView {
    return;
}

-(void)constructCallToActionButton {
    return;
}

-(void)constructBodyView {
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
    r29 = &saved_fp;
    r19 = self;
    if ([self shouldUseNewTemplateLayout] != 0x0) {
            r20 = [FBAdTemplateHeaderView alloc];
            r25 = [[r19 nativeAd] retain];
            r26 = [[r19 attributes] retain];
            r20 = [r20 initWithFrame:r25 nativeAdBase:r26 attributes:r4];
            [r26 release];
            [r25 release];
            [r19 addSubview:r20];
            [r19 setTemplateHeaderView:r20];
            r26 = [[r20 iconView] retain];
            [r19 setIconView:r26];
            [r26 release];
            r26 = [[r20 adOptionsView] retain];
            [r19 setAdOptionsView:r26];
            [r26 release];
            r26 = [[r20 headerTitleLabel] retain];
            [r19 setAdvertiserNameLabel:r26];
            [r26 release];
            r21 = [FBAdTemplateFooterView alloc];
            r22 = [[r19 nativeAd] retain];
            r23 = [[r19 attributes] retain];
            r21 = [r21 initWithFrame:r22 nativeAdBase:r23 attributes:r4];
            [r23 release];
            [r22 release];
            [r19 addSubview:r21];
            [r19 setTemplateFooterView:r21];
            r22 = [[r21 ctaButton] retain];
            [r19 setCallToActionButton:r22];
            [r22 release];
            r22 = [[r21 footerTitleLabel] retain];
            [r19 setTitleLabel:r22];
            [r22 release];
            r22 = [[r21 footerBodyLabel] retain];
            r1 = @selector(setDescriptionLabel:);
    }
    else {
            r20 = [FBNativeAdHeaderView alloc];
            r25 = [[r19 nativeAd] retain];
            r26 = [[r19 attributes] retain];
            r20 = [r20 initWithFrame:r25 nativeAdBase:r26 attributes:r4];
            [r26 release];
            [r25 release];
            [r19 addSubview:r20];
            [r19 setHeaderView:r20];
            r21 = [FBNativeAdDetailsView alloc];
            r22 = [[r19 nativeAd] retain];
            r23 = [[r19 attributes] retain];
            r21 = [r21 initWithFrame:r22 nativeAdBase:r23 attributes:r4];
            [r23 release];
            [r22 release];
            [r19 addSubview:r21];
            [r19 setDetailsView:r21];
            r0 = [r21 bodyView];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 titleLabel] retain];
            [r19 setTitleLabel:r23];
            [r23 release];
            r23 = [[r22 descriptionLabel] retain];
            [r19 setDescriptionLabel:r23];
            [r23 release];
            r23 = [[r22 socialContextLabel] retain];
            [r19 setSocialContextLabel:r23];
            [r23 release];
            r23 = [[r22 adOptionsView] retain];
            [r19 setAdOptionsView:r23];
            [r23 release];
            r23 = [[r21 iconView] retain];
            [r19 setIconView:r23];
            [r23 release];
            r23 = [[r21 callToActionButton] retain];
            [r19 setCallToActionButton:r23];
            [r23 release];
            r1 = @selector(setBodyView:);
    }
    objc_msgSend(r19, r1);
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)headerSize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = [FBAdScreen isLandscape];
    r0 = r19->_headerSize;
    if (r8 == 0x0) goto loc_100b19438;

loc_100b193e4:
    if (r0 != 0x0) goto loc_100b1943c;

loc_100b193e8:
    [r19 bounds];
    d0 = 0x4014000000000000;
    asm { fdiv       d0, d3, d0 };
    asm { fmax       d1, d0, d1 };
    if (d0 > 0x4059000000000000) {
            asm { fcsel      d0, d2, d1, gt };
    }
    r0 = [NSNumber numberWithDouble:r2];
    goto loc_100b19494;

loc_100b19494:
    r0 = [r0 retain];
    goto loc_100b19498;

loc_100b19498:
    r0 = [r0 autorelease];
    return r0;

loc_100b1943c:
    r0 = [r0 retain];
    goto loc_100b19498;

loc_100b19438:
    if (r0 == 0x0) goto loc_100b19444;
    goto loc_100b1943c;

loc_100b19444:
    [r19 bounds];
    d0 = 0x4008000000000000;
    asm { fdiv       d0, d3, d0 };
    asm { fmax       d1, d0, d1 };
    if (d0 > 0x4059000000000000) {
            asm { fcsel      d0, d2, d1, gt };
    }
    r0 = [NSNumber numberWithDouble:r2];
    goto loc_100b19494;
}

-(void *)mediaViewSize {
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
    r29 = &saved_fp;
    r19 = self;
    r0 = self->_mediaViewSize;
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            [r19 bounds];
            r0 = [r19 headerSize];
            r0 = [r0 retain];
            r21 = r0;
            [r0 doubleValue];
            r0 = [r19 detailsSize];
            r0 = [r0 retain];
            [r0 doubleValue];
            r19 = [[NSNumber numberWithDouble:r2] retain];
            [r0 release];
            [r21 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isBodyTextEnabled {
    r0 = [self detailsView];
    r0 = [r0 retain];
    r20 = [r0 isBodyTextEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setBodyTextEnabled:(bool)arg2 {
    r0 = [self detailsView];
    r0 = [r0 retain];
    [r0 setBodyTextEnabled:arg2];
    [r0 release];
    return;
}

-(void *)detailsSize {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = [FBAdScreen isLandscape];
    r0 = r19->_detailsSize;
    if (r8 == 0x0) goto loc_100b19660;

loc_100b195d4:
    if (r0 != 0x0) goto loc_100b19664;

loc_100b195d8:
    [r19 bounds];
    r0 = [r19 headerSize];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 doubleValue];
    asm { fdiv       d8, d0, d1 };
    [r19 release];
    asm { fmax       d0, d8, d0 };
    if (d8 > *double_value_150) {
            asm { fcsel      d0, d1, d0, gt };
    }
    r0 = [NSNumber numberWithDouble:r2];
    goto loc_100b196f4;

loc_100b196f4:
    r0 = [r0 retain];
    goto loc_100b196f8;

loc_100b196f8:
    r0 = [r0 autorelease];
    return r0;

loc_100b19664:
    r0 = [r0 retain];
    goto loc_100b196f8;

loc_100b19660:
    if (r0 == 0x0) goto loc_100b1966c;
    goto loc_100b19664;

loc_100b1966c:
    [r19 bounds];
    r0 = [r19 headerSize];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 doubleValue];
    asm { fdiv       d8, d0, d1 };
    [r19 release];
    asm { fmax       d0, d8, d0 };
    if (d8 > *double_value_150) {
            asm { fcsel      d0, d1, d0, gt };
    }
    r0 = [NSNumber numberWithDouble:r2];
    goto loc_100b196f4;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_templateFooterView);
    objc_destroyWeak((int64_t *)&self->_templateHeaderView);
    objc_destroyWeak((int64_t *)&self->_detailsView);
    objc_destroyWeak((int64_t *)&self->_headerView);
    objc_destroyWeak((int64_t *)&self->_headerBodyLabel);
    objc_destroyWeak((int64_t *)&self->_headerTitleLabel);
    objc_storeStrong((int64_t *)&self->_detailsSize, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaViewSize, 0x0);
    objc_storeStrong((int64_t *)&self->_headerSize, 0x0);
    return;
}

-(void)setMediaViewSize:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediaViewSize, arg2);
    return;
}

-(void)setHeaderSize:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_headerSize, arg2);
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
            r20 = r0;
            [[&var_B0 super] updateView:0x1];
            r0 = [r20 nativeAd];
            r29 = &var_10;
            r19 = [r0 retain];
            [r20 bounds];
            v8 = v1;
            v9 = v3;
            if (d2 > *double_value_360) {
                    asm { fcsel      d10, d1, d0, gt };
            }
            asm { fmin       d11, d2, d3 };
            r21 = [[r20 fixedHeight] retain];
            r0 = [r20 attributes];
            r0 = [r0 retain];
            r0 = [r0 shouldClip];
            r29 = r29;
            r26 = [r0 retain];
            v0 = v10;
            v1 = v8;
            v2 = v11;
            v3 = v9;
            sub_100aab58c(r21, r26);
            v8 = v2;
            [r26 release];
            [r25 release];
            [r21 release];
            if ([r20 shouldUseNewTemplateLayout] != 0x0) {
                    CGRectGetHeight([r20 bounds]);
                    [r20 bounds];
                    v11 = v2;
                    r22 = [[NSNumber numberWithDouble:0x1] retain];
                    r0 = [r20 attributes];
                    r0 = [r0 retain];
                    r0 = [r0 shouldClip];
                    r29 = r29;
                    r24 = [r0 retain];
                    v0 = v0;
                    sub_100aab58c(r22, r24);
                    v8 = v11;
                    [r24 release];
                    [r23 release];
                    [r22 release];
            }
            r0 = [r20 containerView];
            r29 = r29;
            r0 = [r0 retain];
            CGRectGetMinX([r0 frame]);
            v9 = v0;
            [r22 release];
            if ([r20 shouldUseNewTemplateLayout] != 0x0) {
                    r25 = [r19 adFormatType];
                    r21 = [[r20 templateHeaderView] retain];
                    r22 = [[r20 templateFooterView] retain];
                    r24 = [[r20 mediaView] retain];
                    r0 = [r20 mediaView];
                    r0 = [r0 retain];
                    [r0 setMultiProductCellStyle:0x1];
                    [r0 release];
                    [r21 setHideLinkDescription:0x1];
                    [r21 intrinsicHeightForNativeAd:r19 width:r3];
                    d12 = 0x0;
                    v0 = v9;
                    [r21 setFrame:r19];
                    r2 = r19;
                    [r21 setNativeAdBase:r2];
                    CGRectGetHeight(objc_msgSend(r21, r23));
                    if (r25 == 0x3) {
                            CGRectGetHeight([r21 frame]);
                            asm { fmin       d11, d0, d1 };
                            d13 = 0x4020000000000000;
                    }
                    else {
                            d0 = d10 - *double_value_350;
                            d11 = d0 + *double_value_minus_89;
                            [r19 aspectRatio];
                            if (d0 > 0x0) {
                                    [r19 aspectRatio];
                                    asm { fdiv       d0, d8, d0 };
                                    if (d0 < d11) {
                                            asm { fcsel      d11, d0, d11, mi };
                                    }
                            }
                            r23 = @selector(frame);
                            d12 = 0x0;
                            v0 = v8;
                            [r22 intrinsicHeightForNativeAd:r19 width:r3];
                            CGRectGetHeight(objc_msgSend(r21, r23));
                            d0 = d10 - d0 - d12;
                            if (d11 < d0) {
                                    asm { fcsel      d11, d11, d0, mi };
                            }
                            d13 = 0x0;
                            if (d11 <= 0x0) {
                                    CGRectGetHeight([r21 frame]);
                                    if (d11 < (d10 - d0) + *double_value_minus_89) {
                                            asm { fcsel      d11, d11, d0, mi };
                                    }
                                    d12 = *double_value_89;
                            }
                    }
                    CGRectGetHeight([r21 frame]);
                    d0 = d13 + d13;
                    v3 = v11;
                    [r24 setFrame:r2];
                    CGRectGetMaxY(objc_msgSend(r24, r23));
                    v13 = v13;
                    if (d12 != 0x0) {
                            CGRectGetMaxY([r24 frame]);
                    }
                    v0 = v9;
                    v1 = v13;
                    v2 = v8;
                    [r22 setFrame:r2];
                    r2 = r19;
                    [r22 setNativeAdBase:r2];
                    if (r25 == 0x3) {
                            [r24 frame];
                            CGRectGetHeight(objc_msgSend(r21, r23));
                            [r24 setFrame:r2];
                    }
            }
            else {
                    r0 = [r20 bodyView];
                    r0 = [r0 retain];
                    [r0 setAnimationEnabled:0x0];
                    [r0 release];
                    r0 = [r20 headerSize];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    r0 = [r20 mediaViewSize];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    r0 = [r20 detailsSize];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    r0 = [r20 mediaView];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 setMultiProductCellStyle:0x0];
                    [r21 setFrame:0x0];
                    r22 = [[r20 headerView] retain];
                    r24 = [[r20 detailsView] retain];
                    [r22 setFrame:0x0];
                    [r22 setNativeAdBase:r19];
                    [r24 setFrame:r19];
                    [r24 setNativeAdBase:r19];
            }
            [r24 release];
            [r22 release];
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)setHeaderTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerTitleLabel, arg2);
    return;
}

-(void *)headerTitleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerTitleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDetailsSize:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_detailsSize, arg2);
    return;
}

-(void *)headerBodyLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerBodyLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerView, arg2);
    return;
}

-(void *)headerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderBodyLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerBodyLabel, arg2);
    return;
}

-(void *)detailsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_detailsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDetailsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_detailsView, arg2);
    return;
}

-(void *)templateHeaderView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_templateHeaderView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTemplateHeaderView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_templateHeaderView, arg2);
    return;
}

-(void *)templateFooterView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_templateFooterView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTemplateFooterView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_templateFooterView, arg2);
    return;
}

+(void *)defaultAttributes {
    r0 = [[&var_20 super] defaultAttributes];
    r19 = [r0 retain];
    r20 = [@(NO) retain];
    [r19 setRatingEnabled:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end
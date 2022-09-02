@implementation FBNativeBannerAdTemplateView

-(long long)nativeBannerAdViewType {
    r21 = **_NSInternalInconsistencyException;
    r23 = [NSStringFromClass([self class]) retain];
    r19 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r20 = [[[NSException exceptionWithName:r21 reason:r22 userInfo:0x0] retain] autorelease];
    [r22 release];
    [r19 release];
    [r23 release];
    r0 = objc_exception_throw(r20);
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
            r20 = [FBAdBannerTemplateHeaderView alloc];
            r21 = [[r19 nativeBannerAd] retain];
            r22 = [[r19 attributes] retain];
            r20 = [r20 initWithFrame:r21 nativeAdBase:r22 attributes:r4];
            [r22 release];
            [r21 release];
            [r19 addSubview:r20];
            [r19 setBannerHeaderView:r20];
            r21 = [[r20 adOptionsView] retain];
            [r19 setAdOptionsView:r21];
            [r21 release];
            r21 = [[r20 ctaButton] retain];
            [r19 setCallToActionButton:r21];
            [r21 release];
            r21 = [[r20 iconView] retain];
            [r19 setIconView:r21];
            [r21 release];
            r21 = [[r20 headerBodyLabel] retain];
            [r19 setDescriptionLabel:r21];
    }
    else {
            r20 = [FBNativeAdHeaderView alloc];
            r22 = [[r19 nativeBannerAd] retain];
            r26 = [[r19 attributes] retain];
            r20 = [r20 initWithFrame:r22 nativeAdBase:r26 attributes:r4];
            [r26 release];
            [r22 release];
            [r19 addSubview:r20];
            [r19 setHeaderView:r20];
            r21 = [FBNativeAdDetailsView alloc];
            r23 = [[r19 nativeBannerAd] retain];
            r24 = [[r19 attributes] retain];
            r21 = [r21 initWithFrame:r23 nativeAdBase:r24 attributes:r4];
            [r24 release];
            [r23 release];
            [r21 setNativeBannerAdViewType:[r19 nativeBannerAdViewType]];
            [r19 addSubview:r21];
            [r19 setDetailsView:r21];
            r0 = [r21 bodyView];
            r0 = [r0 retain];
            r23 = [[r0 titleLabel] retain];
            [r19 setTitleLabel:r23];
            [r23 release];
            r23 = [[r0 descriptionLabel] retain];
            [r19 setDescriptionLabel:r23];
            [r23 release];
            r23 = [[r0 socialContextLabel] retain];
            [r19 setSocialContextLabel:r23];
            [r23 release];
            r23 = [[r0 adOptionsView] retain];
            [r19 setAdOptionsView:r23];
            [r23 release];
            r23 = [[r21 iconView] retain];
            [r19 setIconView:r23];
            [r23 release];
            r23 = [[r21 callToActionButton] retain];
            [r19 setCallToActionButton:r23];
            [r23 release];
            [r19 setBodyView:r0];
            [r0 release];
    }
    [r21 release];
    [r20 release];
    return;
}

-(bool)shouldUseNewTemplateLayout {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 useRedesignedBannerTemplates] != 0x0) {
            [FBAdGenericHeight50View class];
            r20 = [r20 isKindOfClass:r2] ^ 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)headerSize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = [FBAdScreen orientation] - 0x3;
    r0 = r19->_headerSize;
    if (r8 > 0x1) goto loc_100b1fba8;

loc_100b1fb54:
    if (r0 != 0x0) goto loc_100b1fbac;

loc_100b1fb58:
    [r19 bounds];
    d0 = 0x4014000000000000;
    asm { fdiv       d0, d3, d0 };
    asm { fmax       d1, d0, d1 };
    if (d0 > 0x4059000000000000) {
            asm { fcsel      d0, d2, d1, gt };
    }
    r0 = [NSNumber numberWithDouble:r2];
    goto loc_100b1fc04;

loc_100b1fc04:
    r0 = [r0 retain];
    goto loc_100b1fc08;

loc_100b1fc08:
    r0 = [r0 autorelease];
    return r0;

loc_100b1fbac:
    r0 = [r0 retain];
    goto loc_100b1fc08;

loc_100b1fba8:
    if (r0 == 0x0) goto loc_100b1fbb4;
    goto loc_100b1fbac;

loc_100b1fbb4:
    [r19 bounds];
    d0 = 0x4008000000000000;
    asm { fdiv       d0, d3, d0 };
    asm { fmax       d1, d0, d1 };
    if (d0 > 0x4059000000000000) {
            asm { fcsel      d0, d2, d1, gt };
    }
    r0 = [NSNumber numberWithDouble:r2];
    goto loc_100b1fc04;
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

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            r31 = r31 - 0x90;
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
            [[&var_90 super] updateView:0x1];
            r0 = [r20 nativeBannerAd];
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
            r27 = [r0 retain];
            v0 = v10;
            v1 = v8;
            v2 = v11;
            v3 = v9;
            sub_100aab58c(r21, r27);
            v8 = v2;
            v10 = v3;
            [r27 release];
            [r26 release];
            [r21 release];
            if ([r20 shouldUseNewTemplateLayout] != 0x0) {
                    [r20 bounds];
                    r22 = [[r20 fixedHeight] retain];
                    r0 = [r20 attributes];
                    r0 = [r0 retain];
                    r0 = [r0 shouldClip];
                    r29 = r29;
                    r24 = [r0 retain];
                    v0 = v0;
                    sub_100aab58c(r22, r24);
                    v8 = v2;
                    v10 = v3;
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
                    r0 = [r20 bannerHeaderView];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 setFrame:0x1];
                    [r21 setNativeAdBase:r19];
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
                    r0 = [r20 detailsSize];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    r21 = [[r20 headerView] retain];
                    r20 = [[r20 detailsView] retain];
                    [r21 setFrame:0x0];
                    [r21 setNativeAdBase:r19];
                    [r20 setFrame:r19];
                    [r20 setNativeAdBase:r19];
                    [r20 release];
            }
            [r21 release];
            [r19 release];
    }
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
    r8 = [FBAdScreen orientation] - 0x3;
    r0 = r19->_detailsSize;
    if (r8 > 0x1) goto loc_100b1fdd4;

loc_100b1fd48:
    if (r0 != 0x0) goto loc_100b1fdd8;

loc_100b1fd4c:
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
    goto loc_100b1fe68;

loc_100b1fe68:
    r0 = [r0 retain];
    goto loc_100b1fe6c;

loc_100b1fe6c:
    r0 = [r0 autorelease];
    return r0;

loc_100b1fdd8:
    r0 = [r0 retain];
    goto loc_100b1fe6c;

loc_100b1fdd4:
    if (r0 == 0x0) goto loc_100b1fde0;
    goto loc_100b1fdd8;

loc_100b1fde0:
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
    goto loc_100b1fe68;
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

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_bannerHeaderView);
    objc_destroyWeak((int64_t *)&self->_detailsView);
    objc_destroyWeak((int64_t *)&self->_headerView);
    objc_destroyWeak((int64_t *)&self->_headerBodyLabel);
    objc_destroyWeak((int64_t *)&self->_headerTitleLabel);
    objc_storeStrong((int64_t *)&self->_detailsSize, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaViewSize, 0x0);
    objc_storeStrong((int64_t *)&self->_headerSize, 0x0);
    return;
}

-(void)setHeaderSize:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_headerSize, arg2);
    return;
}

-(void)setMediaViewSize:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediaViewSize, arg2);
    return;
}

-(void)setDetailsSize:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_detailsSize, arg2);
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

-(void *)headerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerView, arg2);
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

-(void *)bannerHeaderView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bannerHeaderView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBannerHeaderView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bannerHeaderView, arg2);
    return;
}

+(void *)defaultAttributes {
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
    r19 = self;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 useRedesignedBannerTemplates] != 0x0) {
            asm { fcsel      d10, d8, d0, ne };
    }
    [r20 release];
    r0 = [[&var_60 super] defaultAttributes];
    r19 = [r0 retain];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setBackgroundColor:r21];
    [r21 release];
    r21 = [[FBAdFont sfuiTextRegularWithSize:r21] retain];
    [r19 setDescriptionFont:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    [r19 setDescriptionColor:r21];
    [r21 release];
    r22 = [[FBAdFont sfuiDisplaySemiboldWithSize:r21] retain];
    [r19 setTitleFont:r22];
    [r22 release];
    r20 = [[UIColor colorWithUInt:0x1c1e21 withAlpha:r3] retain];
    [r19 setTitleColor:r20];
    [r20 release];
    r20 = [[FBAdFont sfuiDisplaySemiboldWithSize:r20] retain];
    [r19 setButtonTitleFont:r20];
    [r20 release];
    r21 = [[NSNumber numberWithDouble:r20] retain];
    [r19 setButtonBorderRadius:r21];
    [r21 release];
    r20 = [[NSNumber numberWithDouble:r21] retain];
    [r19 setIconBorderRadius:r20];
    [r20 release];
    r20 = [@(NO) retain];
    [r19 setRatingEnabled:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end
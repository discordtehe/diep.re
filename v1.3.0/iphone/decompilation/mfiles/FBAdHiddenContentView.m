@implementation FBAdHiddenContentView

-(void *)initWithReason:(void *)arg2 logoImage:(void *)arg3 flowType:(long long)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r23 = arg2;
    r20 = [arg2 retain];
    r22 = [r21 retain];
    r0 = [[&var_40 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r24->_reason, r23);
            objc_storeStrong((int64_t *)&r24->_logoImage, r21);
            r24->_flowType = r19;
    }
    [r22 release];
    [r20 release];
    r0 = r24;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] layoutSubviews];
    r0 = [r19 layoutType];
    if (r0 == 0x0) goto loc_100a5b48c;

loc_100a5b470:
    if (r0 == 0x2) goto loc_100a5b498;

loc_100a5b478:
    if (r0 != 0x1) goto .l1;

loc_100a5b480:
    r8 = &@selector(layoutMultiline);
    goto loc_100a5b4a0;

loc_100a5b4a0:
    objc_msgSend(r19, *r8);
    return;

.l1:
    return;

loc_100a5b498:
    r8 = &@selector(layoutOneline);
    goto loc_100a5b4a0;

loc_100a5b48c:
    r8 = &@selector(layoutFullscreen);
    goto loc_100a5b4a0;
}

-(void)layoutOneline {
    [self bounds];
    r0 = [self backgroundView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    CGRectGetHeight(r0);
    [r19 setFrame:r2];
    [r19 release];
    return;
}

-(void)layoutMultiline {
    [self bounds];
    r0 = [self backgroundView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self mainIcon];
    r0 = [r0 retain];
    CGRectGetMidX(r0);
    [r20 setFrame:r2];
    [[self titleLabel] retain];
    CGRectGetWidth(CGRectGetMaxY([r20 frame]));
    [r22 setFrame:r2];
    [[self subtitleLabel] retain];
    CGRectGetMaxY([r22 frame]);
    CGRectGetWidth([r22 frame]);
    [r25 setFrame:r2];
    CGRectGetWidth([r25 frame]);
    [r25 sizeThatFits:r2];
    CGRectGetMaxY([r22 frame]);
    CGRectGetWidth([r22 frame]);
    [r25 setFrame:r2];
    r0 = [self manageAdPreferencesButton];
    r0 = [r0 retain];
    CGRectGetHeight(r0);
    CGRectGetWidth([r22 frame]);
    [r27 setFrame:r2];
    r26 = [[r27 titleLabel] retain];
    [r27 bounds];
    [r26 sizeThatFits:r2];
    CGRectGetWidth([r26 release]);
    CGRectGetMaxY([r25 frame]);
    [r27 setFrame:r2];
    [[self gearIcon] retain];
    CGRectGetMinX([r27 frame]);
    CGRectGetMidY([r27 frame]);
    [r24 setFrame:r2];
    [self verticallyAlignContent];
    [r24 release];
    [r27 release];
    [r25 release];
    [r22 release];
    [r20 release];
    return;
}

-(void *)backgroundView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundView));
    r0 = *(self + r21);
    if (r0 == 0x0) {
            r0 = [UIView new];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [*(r19 + r21) setBackgroundColor:r20];
            [r20 release];
            [r19 addSubview:r2];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)mainIcon {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self flowType] != 0x0) {
            r0 = [r19 shieldIcon];
    }
    else {
            r0 = [r19 hideIcon];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)shieldIcon {
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
    r19 = (int64_t *)&self->_shieldIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdShieldIcon new];
            [r22 release];
            [r21 setIconInsets:r2];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r0 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x1];
            [r0 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r21);
            r22 = r21;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void)verticallyAlignContent {
    r31 = r31 - 0x190;
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
    [self layoutType];
    r0 = [r19 shieldIcon];
    r29 = &var_10;
    r0 = [r0 retain];
    CGRectGetMinY([r0 frame]);
    [r20 release];
    *(r29 + 0xffffffffffffff60) = r21;
    if (r21 != 0x0) {
            r22 = @selector(frame);
            r0 = [r19 manageAdPreferencesButton];
            r29 = r29;
            r0 = [r0 retain];
            CGRectGetMaxY(objc_msgSend(r0, r22));
            [r20 release];
            CGRectGetHeight([r19 bounds]);
    }
    else {
            r22 = @selector(frame);
            r0 = [r19 reasonLabel];
            r0 = [r0 retain];
            CGRectGetMaxY(objc_msgSend(r0, r22));
            [r20 release];
            r0 = [r19 manageAdPreferencesButton];
            r29 = r29;
            r0 = [r0 retain];
            CGRectGetMinY(objc_msgSend(r0, r22));
            [r20 release];
    }
    r22 = @selector(frame);
    d12 = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000 - d8;
    r0 = [r19 mainIcon];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    *(int128_t *)(r29 + 0xffffffffffffff48) = d9 - d8;
    *(int128_t *)(r29 + 0xffffffffffffff50) = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000;
    v15 = v1;
    var_D0 = d3;
    [r20 release];
    *(r29 + 0xffffffffffffff58) = @selector(reasonLabel);
    r0 = [r19 reasonLabel];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    var_E0 = d9 - d8;
    stack[-216] = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000;
    var_E8 = d3;
    [r20 release];
    r0 = [r19 logoImageView];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    var_F8 = d9 - d8;
    stack[-240] = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000;
    var_100 = d3;
    [r20 release];
    r0 = [r19 checkIcon];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    var_110 = d9 - d8;
    stack[-264] = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000;
    var_118 = d3;
    [r20 release];
    r0 = [r19 titleLabel];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    var_128 = d9 - d8;
    stack[-288] = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000;
    v14 = v1;
    var_130 = d3;
    [r20 release];
    r0 = [r19 subtitleLabel];
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    var_140 = d9 - d8;
    stack[-312] = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000;
    v13 = v1;
    var_148 = d3;
    [r20 release];
    r0 = objc_msgSend(r19, r23);
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    var_178 = d9 - d8;
    stack[-368] = d10 * 0x3fe0000000000000 - (d9 - d8) * 0x3fe0000000000000;
    var_188 = d10 * 0x3fe0000000000000;
    var_180 = d3;
    [r20 release];
    r0 = [r19 gearIcon];
    r29 = r29;
    r0 = [r0 retain];
    objc_msgSend(r0, r22);
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    [r21 release];
    var_168 = d12 + d10 * 0x3fe0000000000000;
    var_158 = d12 + d10 * 0x3fe0000000000000;
    var_150 = d12 + d10 * 0x3fe0000000000000;
    if (*(r29 + 0xffffffffffffff60) != 0x0) {
            r0 = [r19 gearIcon];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r21 release];
            r0 = [r19 manageAdPreferencesButton];
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r20);
            [r21 release];
    }
    r20 = @selector(setFrame:);
    r0 = [r19 mainIcon];
    r0 = [r0 retain];
    objc_msgSend(r0, r20);
    [r21 release];
    r0 = objc_msgSend(r19, *(r29 + 0xffffffffffffff58));
    r0 = [r0 retain];
    objc_msgSend(r0, r20);
    [r21 release];
    r0 = [r19 logoImageView];
    r0 = [r0 retain];
    objc_msgSend(r0, r20);
    [r21 release];
    r0 = [r19 checkIcon];
    r0 = [r0 retain];
    objc_msgSend(r0, r20);
    [r21 release];
    r0 = [r19 titleLabel];
    r0 = [r0 retain];
    objc_msgSend(r0, r20);
    [r21 release];
    r0 = [r19 subtitleLabel];
    r0 = [r0 retain];
    objc_msgSend(r0, r20);
    [r19 release];
    return;
}

-(void *)hideIcon {
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
    r20 = self;
    r19 = (int64_t *)&self->_hideIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdHideIcon new];
            [r22 release];
            [r21 setIconInsets:r2];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r0 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x1];
            [r0 release];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setIconColor:r23];
            [r23 release];
            r22 = [[UIColor colorWithUInt:0x3578e5 withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r21);
            r22 = r21;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)gearIcon {
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
    r19 = (int64_t *)&self->_gearIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdGearIcon new];
            [r22 release];
            r23 = [[UIColor colorWithUInt:0x3578e5 withAlpha:r3] retain];
            [r21 setIconColor:r23];
            [r23 release];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r21);
            r22 = r21;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)closeButton {
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
    r19 = (int64_t *)&self->_closeButton;
    r0 = *r19;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdCloseButton alloc] init];
            [r23 release];
            [r21 setContentPadding:r2];
            r23 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
            [r21 setProgressColor:r23];
            [r23 release];
            [r20 addSubview:r21];
            [r21 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:r20 action:@selector(handleCloseButtonTap)]];
            objc_storeStrong(r19, r21);
            [r20 release];
            r23 = r21;
    }
    r0 = [r23 autorelease];
    return r0;
}

-(void *)titleLabel {
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
    r19 = (int64_t *)&self->_titleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r22 = r23;
    }
    else {
            r0 = [FBAdReportingConfig sharedConfig];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [UILabel new];
            [r23 release];
            if ([r20 flowType] != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:r2];
                    r29 = r29;
            }
            else {
                    r0 = [r21 objectForKeyedSubscript:r2];
                    r29 = r29;
            }
            r23 = [r0 retain];
            [r22 setText:r23];
            [r23 release];
            [r22 setTextAlignment:0x1];
            r23 = [[UIColor colorWithUInt:0x1c1e21 withAlpha:r3] retain];
            [r22 setTextColor:r23];
            [r23 release];
            r23 = [[FBAdFont sfuiTextRegularWithSize:r23] retain];
            [r22 setFont:r23];
            [r23 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            [r21 release];
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)subtitleLabel {
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
    r19 = (int64_t *)&self->_subtitleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdReportingConfig sharedConfig] retain];
            r22 = [UILabel new];
            [r23 release];
            r23 = [[r21 objectForKeyedSubscript:@"finished_description"] retain];
            [r22 setText:r23];
            [r23 release];
            r23 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
            [r22 setTextColor:r23];
            [r23 release];
            [r22 setTextAlignment:0x1];
            r23 = [[FBAdFont sfuiTextRegularWithSize:0x1] retain];
            [r22 setFont:r23];
            [r23 release];
            [r22 setNumberOfLines:0x0];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            [r21 release];
            r23 = r22;
    }
    r0 = [r23 autorelease];
    return r0;
}

-(void *)reasonLabel {
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
    r20 = self;
    r19 = (int64_t *)&self->_reasonLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdPaddedLabel new];
            [r22 release];
            r22 = [[r20 reason] retain];
            [r21 setText:r22];
            [r22 release];
            [r21 setTextInsets:r22];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setTextColor:r23];
            [r23 release];
            r22 = [[UIColor colorWithUInt:0x3578e5 withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            [r21 setTextAlignment:0x1];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x1];
            [r0 release];
            [r21 setNumberOfLines:0x3];
            r22 = [[FBAdFont sfuiTextRegularWithSize:0x3] retain];
            [r21 setFont:r22];
            [r22 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r21);
            r22 = r21;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)manageAdPreferencesButton {
    var_40 = r26;
    stack[-72] = r25;
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
    r20 = self;
    r19 = (int64_t *)&self->_manageAdPreferencesButton;
    r0 = *r19;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdReportingConfig sharedConfig] retain];
            r0 = [UIButton buttonWithType:0x1];
            r22 = [r0 retain];
            [r24 release];
            r24 = [[r21 objectForKeyedSubscript:@"manage_ad_preferences"] retain];
            [r22 setTitle:r24 forState:0x0];
            [r24 release];
            r24 = [[UIColor colorWithUInt:0x3578e5 withAlpha:r3] retain];
            [r22 setTitleColor:r24 forState:0x0];
            [r24 release];
            [r22 addTarget:r20 action:@selector(handleManageAdSettingsTap) forControlEvents:0x40];
            r24 = [[r22 titleLabel] retain];
            r25 = [[FBAdFont sfuiTextRegularWithSize:r20] retain];
            [r24 setFont:r25];
            [r25 release];
            [r24 setTextAlignment:0x1];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r23);
            [r24 release];
            [r21 release];
            r24 = r22;
    }
    r0 = [r24 autorelease];
    return r0;
}

-(void *)logoImageView {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&self->_logoImageView;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r20 = r22;
    }
    else {
            r20 = [UIImageView new];
            [r22 release];
            objc_initWeak(&stack[-72], r21);
            [[r21 logoImage] retain];
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r23 loadImageAsyncWithBlock:&var_60];
            [r23 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x1];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:0x1];
            [r0 release];
            [r21 addSubview:r2];
            objc_storeStrong(r19, r20);
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)checkIcon {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_checkIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [FBAdCheckIcon new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 setBackgroundColor:r21];
            [r21 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)handleManageAdSettingsTap {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self onManageAdSettings];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onManageAdSettings];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)layoutFullscreen {
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [self setBackgroundColor:r20];
    [r20 release];
    [self bounds];
    sub_100aabe74();
    r0 = [self closeButton];
    r0 = [r0 retain];
    var_B8 = r0;
    [r0 setFrame:r2];
    r0 = [self mainIcon];
    r0 = [r0 retain];
    CGRectGetMidX(r0);
    CGRectGetMaxY([r20 frame]);
    var_C0 = r21;
    [r21 setFrame:r2];
    [[self titleLabel] retain];
    r0 = [r21 frame];
    r0 = CGRectGetMaxY(r0);
    CGRectGetWidth(r0);
    [r23 setFrame:r2];
    [[self subtitleLabel] retain];
    CGRectGetMaxY([r23 frame]);
    CGRectGetWidth([r23 frame]);
    [r26 setFrame:r2];
    CGRectGetWidth([r26 frame]);
    [r26 sizeThatFits:r2];
    CGRectGetMaxY([r23 frame]);
    CGRectGetWidth([r23 frame]);
    [r26 setFrame:r2];
    [[self reasonLabel] retain];
    CGRectGetWidth([r23 frame]);
    CGRectGetMidX([r28 sizeThatFits:r2]);
    CGRectGetMaxY([r26 frame]);
    [r28 setFrame:r2];
    CGRectGetHeight([r28 frame]);
    r0 = [r28 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    [[self logoImageView] retain];
    CGRectGetMinX([r28 frame]);
    CGRectGetMidY([r28 frame]);
    [r20 setFrame:r2];
    CGRectGetMaxX([r28 frame]);
    CGRectGetMidX(CGRectGetMinX([r20 frame]));
    CGRectGetMinX([r20 frame]);
    [r20 frame];
    [r20 setFrame:r2];
    [r28 frame];
    [r28 setFrame:r2];
    [[self checkIcon] retain];
    CGRectGetMinX([r28 frame]);
    CGRectGetMidY([r28 frame]);
    [r27 setFrame:r2];
    r0 = [self manageAdPreferencesButton];
    r0 = [r0 retain];
    CGRectGetHeight(r0);
    CGRectGetWidth([r23 frame]);
    [r21 setFrame:r2];
    r25 = [[r21 titleLabel] retain];
    [r21 bounds];
    [r25 sizeThatFits:r2];
    CGRectGetHeight(CGRectGetWidth([r25 release]));
    [r21 setFrame:r2];
    [[self gearIcon] retain];
    CGRectGetMinX([r21 frame]);
    CGRectGetMidY([r21 frame]);
    [r25 setFrame:r2];
    [self verticallyAlignContent];
    [r25 release];
    [r21 release];
    [r27 release];
    [r20 release];
    [r28 release];
    [r26 release];
    [r23 release];
    [var_C0 release];
    [var_B8 release];
    return;
}

-(void)handleCloseButtonTap {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self onDismiss];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onDismiss];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_backgroundView, 0x0);
    objc_storeStrong((int64_t *)&self->_hideIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_checkIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_logoImage, 0x0);
    objc_storeStrong((int64_t *)&self->_logoImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_gearIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_shieldIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_manageAdPreferencesButton, 0x0);
    objc_storeStrong((int64_t *)&self->_reasonLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_reason, 0x0);
    objc_storeStrong((int64_t *)&self->_onManageAdSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_onDismiss, 0x0);
    return;
}

-(long long)layoutType {
    r0 = self->_layoutType;
    return r0;
}

-(void)setLayoutType:(long long)arg2 {
    self->_layoutType = arg2;
    return;
}

-(void *)onDismiss {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onDismiss)), 0x0);
    return r0;
}

-(void)setOnDismiss:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onManageAdSettings {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onManageAdSettings)), 0x0);
    return r0;
}

-(void)setOnManageAdSettings:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)reason {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_reason)), 0x0);
    return r0;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void)setReason:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSubtitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_subtitleLabel, arg2);
    return;
}

-(void)setReasonLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reasonLabel, arg2);
    return;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void)setManageAdPreferencesButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_manageAdPreferencesButton, arg2);
    return;
}

-(void)setShieldIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_shieldIcon, arg2);
    return;
}

-(void)setLogoImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logoImageView, arg2);
    return;
}

-(void)setGearIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gearIcon, arg2);
    return;
}

-(void *)logoImage {
    r0 = self->_logoImage;
    return r0;
}

-(void)setLogoImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logoImage, arg2);
    return;
}

-(void)setCheckIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_checkIcon, arg2);
    return;
}

-(long long)flowType {
    r0 = self->_flowType;
    return r0;
}

-(void)setHideIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_hideIcon, arg2);
    return;
}

-(void)setFlowType:(long long)arg2 {
    self->_flowType = arg2;
    return;
}

-(void)setBackgroundView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundView, arg2);
    return;
}

@end
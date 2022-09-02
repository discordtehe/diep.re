@implementation FBInterstitialAdToolbarViewOldDesign

-(void *)init {
    r31 = r31 - 0xe0;
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
    r0 = [[r29 - 0x50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            [[r29 - 0x60 super] setTextColor:r21];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0x808080 withAlpha:r3] retain];
            [[&var_70 super] setSubtitleTextColor:r21];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xd3d3d3 withAlpha:r3] retain];
            [[&var_80 super] setActiveColor:r21];
            [r21 release];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
            r29 = r29;
            r20 = [r0 retain];
            [[&var_90 super] setInactiveColor:r20];
            [r20 release];
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            [[&var_C0 super] setCurrentTime:&var_B0];
            [[&var_D0 super] setCloseButtonStyle:0x0];
            r20 = [[FBAdChoicesButton adChoicesButton] retain];
            [r19 setAdChoicesButton:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)disableForcedView {
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 disableForcedView];
    [r0 release];
    return;
}

-(void)setForcedViewTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&saved_fp - 0x20 super] setForcedViewTime:&var_40];
    [r19 forcedViewTime];
    if (*qword_1011dd178 != -0x1) {
            dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
    }
    r0 = sub_100a3e318(&stack[-104], &var_70);
    if (r0 >= 0x0) {
            if (CPU_FLAGS & GE) {
                    r20 = 0x1;
            }
    }
    [r19 setCloseButtonDisabled:r20 | [r19 closeButtonDisabled]];
    return;
}

-(void)setCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_20 super] setCurrentTime:&var_40];
    [self setNeedsLayout];
    return;
}

-(void)setCloseButtonHidden:(bool)arg2 {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            asm { fcsel      d8, d1, d0, ne };
    }
    r0 = [r0 closeButton];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r19 release];
    return;
}

-(bool)showAdInfoButton {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self adIconType];
    if (r0 != -0x1) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setHeaderInfoHidden:(bool)arg2 {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r0;
    if (arg2 != 0x0) {
            asm { fcsel      d8, d1, d0, ne };
    }
    r0 = [r0 titleLabel];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    r0 = [r19 iconImageView];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    r0 = [r19 sponsoredLabel];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    return;
}

-(void *)adInfoButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self showAdInfoButton] != 0x0) {
            r20 = (int64_t *)&r19->_adInfoButton;
            r0 = *r20;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 == 0x0) {
                    r22 = [FBAdInfoButton new];
                    [r21 release];
                    [r22 addTarget:r19 action:@selector(infoButtonTapped:) forControlEvents:0x40];
                    r2 = r22;
                    [r19 addSubview:r2];
                    objc_storeStrong(r20, r22);
                    r21 = r22;
            }
            if ([r19 adIconType] == 0x1) {
                    if (CPU_FLAGS & E) {
                            r2 = 0x1;
                    }
            }
            [r21 setRenderAsAudienceNetworkLogo:r2];
    }
    else {
            r21 = 0x0;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)setAdIconType:(long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_20 super] setAdIconType:r2];
    if (arg2 == -0x1) {
            r0 = [r19 adInfoButton];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r20 release];
    }
    [r19 setNeedsLayout];
    return;
}

-(void)infoButtonTapped:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdToolbarDidTapAdInfo:)] != 0x0) {
            [r20 interstitialAdToolbarDidTapAdInfo:r19];
    }
    [r20 release];
    return;
}

-(void *)sponsoredLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_sponsoredLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [UILabel new];
            [r21 release];
            objc_storeStrong(r19, r22);
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)titleLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_titleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [UILabel new];
            [r21 release];
            objc_storeStrong(r19, r22);
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)closeButtonTapped:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 closeButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isCloseable];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            [r19 locationInView:0x0];
            r22 = [[NSNumber numberWithDouble:0x0] retain];
            r24 = [[NSNumber numberWithDouble:0x0] retain];
            r25 = [[NSNumber numberWithDouble:0x0] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:0x0];
            r0 = [r0 retain];
            r21 = [[NSDictionary dictionaryWithObjects:&var_98 forKeys:&var_B8 count:0x4] retain];
            [r0 release];
            [r25 release];
            [r24 release];
            [r22 release];
            r0 = [FBAdUtility getJSONStringFromObject:r21];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-208] forKeys:&var_C8 count:0x1];
                    r29 = r29;
                    r23 = [r0 retain];
            }
            else {
                    r23 = 0x0;
            }
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 interstitialAdToolbarDidClose:r20 withTouchData:r23];
            [r0 release];
            [r22 release];
            [r23 release];
            [r21 release];
    }
    var_78 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(void *)iconImageView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_iconImageView;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [UIImageView new];
            [r21 release];
            objc_storeStrong(r19, r22);
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)setTitle:(void *)arg2 {
    [[&var_20 super] setTitle:arg2];
    [self setNeedsLayout];
    return;
}

-(void)setIcon:(void *)arg2 {
    [[&var_20 super] setIcon:arg2];
    [self setNeedsLayout];
    return;
}

-(void)setSubtitle:(void *)arg2 {
    [[&var_20 super] setSubtitle:arg2];
    [self setNeedsLayout];
    return;
}

-(void)setTextColor:(void *)arg2 {
    r21 = [arg2 retain];
    [[&var_30 super] setTextColor:r21];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    [r0 setTextColor:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x1d0;
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
    r19 = self;
    v0 = v9;
    CGRectGetMaxX(self);
    d11 = d0 + 0x4020000000000000;
    r0 = [r19 closeButtonDisabled];
    if (r0 != 0x0) {
            d0 = 0x4020000000000000;
            CGRectGetWidth(r0);
            d11 = d11 - d0;
    }
    r0 = [r19 frame];
    r0 = CGRectGetWidth(r0);
    r0 = CGRectGetMinY(r0);
    v13 = v9;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMaxX(r0);
    var_1A0 = d11;
    var_198 = d0 + 0x80cc000000000000;
    CGRectGetMaxX(r0);
    d15 = d0 + 0xc0ec000000000000;
    r0 = [r19 frame];
    r0 = CGRectGetWidth(r0);
    v11 = v11;
    var_1D0 = d13;
    stack[-456] = d0 + 0x4088000000000000;
    v2 = v10;
    CGRectGetMinX(r0);
    d0 = d11 - d0 + 0x80cc000000000000;
    d9 = d0 + 0x4020000000000000;
    r0 = [r19 showAdInfoButton];
    var_1C0 = d8;
    if (r0 != 0x0) {
            CGRectGetWidth(r0);
            d9 = d9 + d0;
    }
    r0 = [r19 frame];
    r0 = CGRectGetWidth(r0);
    r0 = CGRectGetMaxY(r0);
    CGRectGetWidth(r0);
    r0 = [r19 iconImageView];
    r0 = [r0 retain];
    CGRectGetHeight(r0);
    r0 = [r21 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    r0 = [r21 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    r0 = [r21 layer];
    r0 = [r0 retain];
    [r0 setBorderWidth:0x1];
    [r0 release];
    r22 = [[r19 icon] retain];
    *(r29 + 0xffffffffffffff40) = *__NSConcreteStackBlock;
    *(r29 + 0xffffffffffffff48) = *double_value_1_60807E_minus_314;
    *(int128_t *)(r29 + 0xffffffffffffff50) = 0x100aefabc;
    *(int128_t *)(r29 + 0xffffffffffffff58) = 0x100ead7e8;
    r0 = [r21 retain];
    r21 = r0;
    *(r29 + 0xffffffffffffff60) = r0;
    [r22 loadImageAsyncWithBlock:r29 - 0xc0];
    CGRectIntegral([r22 release]);
    [r21 setFrame:r29 - 0xc0];
    r22 = [[r19 titleLabel] retain];
    r24 = [[r19 textColor] retain];
    [r22 setTextColor:r24];
    [r24 release];
    r24 = [[UIFont boldSystemFontOfSize:r24] retain];
    [r22 setFont:r24];
    r0 = [r24 release];
    v2 = v15;
    CGRectIntegral(r0);
    [r22 setFrame:r24];
    r24 = [[r19 title] retain];
    [r22 setText:r24];
    [r24 release];
    r24 = [[r19 sponsoredLabel] retain];
    r28 = [[r19 subtitle] retain];
    [r24 setText:r28];
    [r28 release];
    [r24 setFrame:r28];
    v0 = v8;
    r27 = [[UIFont systemFontOfSize:r28] retain];
    [r24 setFont:r27];
    [r27 release];
    r26 = [[r19 subtitleTextColor] retain];
    [r24 setTextColor:r26];
    [r26 release];
    r0 = [r19 adChoicesButton];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            [r25 setFrame:r2];
            v2 = v0;
            [r25 setContentEdgeInsets:r2];
            r0 = [r19 activeColor];
            r29 = r29;
            r26 = [r0 retain];
            [r25 setIconColor:r26];
            [r26 release];
            objc_initWeak(r29 - 0xc8, r19);
            objc_copyWeak(&var_100 + 0x20, r29 - 0xc8);
            [r25 setWillPresentActionSheet:&var_100];
            objc_copyWeak(&var_128 + 0x20, r29 - 0xc8);
            [r25 setWillDismissActionSheet:&var_128];
            objc_copyWeak(&var_150 + 0x20, r29 - 0xc8);
            [r25 setViewControllerDismissed:&var_150];
            objc_destroyWeak(&var_150 + 0x20);
            objc_destroyWeak(&var_128 + 0x20);
            objc_destroyWeak(&var_100 + 0x20);
            objc_destroyWeak(r29 - 0xc8);
    }
    r0 = [r19 adInfoButton];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            [r26 setFrame:r2];
            r0 = objc_msgSend(r19, *(&@selector(toggleAdDetailsForceShow:) + 0x578));
            r29 = r29;
            r27 = [r0 retain];
            [r26 setIconColor:r27];
            [r27 release];
            v2 = v0;
            [r26 setContentEdgeInsets:r2];
    }
    if (([r19 closeButtonDisabled] & 0x1) == 0x0) {
            r20 = [[r19 closeButton] retain];
            [r19 currentTime];
            [r20 setCurrentTime:&var_180];
            r0 = objc_msgSend(r19, *(&@selector(toggleAdDetailsForceShow:) + 0x578));
            r29 = r29;
            r27 = [r0 retain];
            [r20 setProgressColor:r27];
            [r27 release];
            [r20 setFrame:r27];
            [r20 setContentPadding:r27];
            [r20 release];
    }
    [[&var_190 super] layoutSubviews];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [*(r29 + 0xffffffffffffff60) release];
    [r21 release];
    return;
}

-(void)setSubtitleTextColor:(void *)arg2 {
    [[&var_30 super] setSubtitleTextColor:[arg2 retain]];
    r0 = [self sponsoredLabel];
    r0 = [r0 retain];
    [r0 setTextColor:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void)setActiveColor:(void *)arg2 {
    r19 = [arg2 retain];
    [[&var_30 super] setActiveColor:r19];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setProgressColor:r19];
    [r0 release];
    r0 = [self adChoicesButton];
    r0 = [r0 retain];
    [r0 setIconColor:r19];
    [r0 release];
    r0 = [self adInfoButton];
    r0 = [r0 retain];
    [r0 setIconColor:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void)setAdChoicesButton:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 adChoicesButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adChoicesButton];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r21 release];
    }
    [[&var_30 super] setAdChoicesButton:r20];
    [r19 addSubview:r20];
    [r20 release];
    [r19 setNeedsLayout];
    return;
}

-(void)setCloseButtonStyle:(long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if ([self closeButtonStyle] != r19) {
            [[&var_20 super] setCloseButtonStyle:r19];
            r0 = [r20 closeButton];
            r0 = [r0 retain];
            [r0 setStyle:r19];
            [r0 release];
    }
    return;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adInfoButton, 0x0);
    objc_storeStrong((int64_t *)&self->_iconImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_sponsoredLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLabel, 0x0);
    return;
}

-(void *)closeButton {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [[&var_40 super] closeButton];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdCloseButton alloc];
            [r19 forcedViewTime];
            r21 = [r21 initWithForcedViewTime:&stack[-104] style:[r19 closeButtonStyle]];
            [r22 release];
            [r21 setFillup:0x0];
            [[&var_68 super] setCloseButton:r21];
            [r19 addSubview:r21];
            r19 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(closeButtonTapped:)];
            [r21 addGestureRecognizer:r19];
            [r19 release];
            r22 = r21;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void)configureToolbarColorsForType:(long long)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 == 0x1) goto loc_100aef840;

loc_100aef75c:
    if (r2 != 0x0) goto .l1;

loc_100aef760:
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setTextColor:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setActiveColor:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setSubtitleTextColor:r21];
    [r21 release];
    r0 = @class(UIColor);
    r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
    goto loc_100aef928;

loc_100aef928:
    r20 = [r0 retain];
    [r19 setInactiveColor:r20];
    [r20 release];
    return;

.l1:
    return;

loc_100aef840:
    r21 = [[UIColor colorWithUInt:0x1c2129 withAlpha:r3] retain];
    [r19 setTextColor:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    [r19 setActiveColor:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    [r19 setSubtitleTextColor:r21];
    [r21 release];
    r0 = @class(UIColor);
    r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
    goto loc_100aef928;
}

-(void)setSponsoredLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sponsoredLabel, arg2);
    return;
}

-(void)setIconImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconImageView, arg2);
    return;
}

-(void)setAdInfoButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adInfoButton, arg2);
    return;
}

-(union ?)forcedViewRemainingTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewRemainingTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(bool)closeButtonDisabled {
    r0 = *(int8_t *)(int64_t *)&self->_closeButtonDisabled;
    return r0;
}

-(void)setCloseButtonDisabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_closeButtonDisabled = arg2;
    return;
}

@end
@implementation FBInterstitialAdToolbarViewNewDesign

-(void *)init {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&saved_fp - 0x20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            [[&var_50 super] setCurrentTime:&var_40];
            [[&var_60 super] setCloseButtonStyle:0x0];
            [[&var_70 super] setIsRewardedAd:0x0];
    }
    [r19 setup];
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

-(void)setCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&saved_fp - 0x30 super] setCurrentTime:&var_50];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setCurrentTime:&var_70];
    [r0 release];
    [self updateHintTextIfNeeded];
    return;
}

-(void)setForcedViewTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xe0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = r2;
    r19 = self;
    [[r29 - 0x40 super] setForcedViewTime:r29 - 0x60];
    [r19 forcedViewTime];
    if (*qword_1011dd178 != -0x1) {
            dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
    }
    r0 = sub_100a3e318(&stack[-136], &var_90);
    r22 = r0;
    r0 = [r19 closeButtonContainer];
    r0 = [r0 retain];
    [r0 setHidden:(r22 ^ 0xffffffff) >> 0x1f];
    [r0 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setForcedViewTime:&var_D0];
    [r0 release];
    [r19 updateHintTextIfNeeded];
    [r19 setNeedsLayout];
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

-(void)updateHintTextIfNeeded {
    r31 = r31 - 0xb0;
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
    r19 = self;
    r0 = [self closeButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isCloseable];
    [r0 release];
    if (r22 == 0x0) goto loc_100aec2c4;

loc_100aec238:
    r0 = [r19 closeButton];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 style];
    [r0 release];
    if (r21 != 0x1) goto loc_100aec340;

loc_100aec270:
    r22 = [[r19 skipText] retain];
    r0 = [r19 closeHintLabel];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r2 = r22;
    [r0 setText:r2];
    goto loc_100aec4b0;

loc_100aec4b0:
    [r23 release];
    goto loc_100aec4b8;

loc_100aec4b8:
    [r22 release];
    r22 = [[r19 closeHintLabel] retain];
    r0 = [r19 closeHintLabel];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 text];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 length] == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r22 setHidden:r2];
    [r25 release];
    [r23 release];
    [r22 release];
    r0 = [r19 closeHintLabel];
    r0 = [r0 retain];
    r0 = [r0 text];
    r0 = [r0 retain];
    [[r0 stringByAppendingString:@" "] retain];
    r0 = [r19 closeHintLabel];
    r0 = [r0 retain];
    [r0 setText:r2];
    [r19 release];
    [r24 release];
    [r23 release];
    [r22 release];
    return;

loc_100aec340:
    r0 = [r19 closeHintLabel];
    r29 = r29;
    goto loc_100aec374;

loc_100aec374:
    r0 = [r0 retain];
    r22 = r0;
    r2 = 0x0;
    [r0 setText:r2];
    goto loc_100aec4b8;

loc_100aec2c4:
    if ([r19 isRewardedAd] == 0x0) goto loc_100aec35c;

loc_100aec2d8:
    [r19 forcedViewTime];
    if (*qword_1011dd178 != -0x1) {
            dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
    }
    r0 = sub_100a3e318(&stack[-120], &var_80);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_100aec394;

loc_100aec324:
    r0 = [r19 closeHintLabel];
    r29 = r29;
    goto loc_100aec374;

loc_100aec394:
    r0 = [r19 closeButton];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 forcedViewRemainingTime];
    }
    sub_100a3e4dc(&var_98);
    [r20 release];
    r0 = [r19 rewardInFormat];
    r29 = r29;
    r22 = [r0 retain];
    r0 = @class(NSNumber);
    asm { frintp     d0, d8 };
    r0 = [r0 numberWithDouble:r2];
    r0 = [r0 retain];
    r23 = r0;
    r25 = [[r22 stringByReplacingOccurrencesOfString:@"[secs]" withString:[[r0 stringValue] retain]] retain];
    r0 = [r19 closeHintLabel];
    r29 = r29;
    r0 = [r0 retain];
    r2 = r25;
    [r0 setText:r2];
    [r26 release];
    [r25 release];
    [r24 release];
    goto loc_100aec4b0;

loc_100aec35c:
    r0 = [r19 closeHintLabel];
    r29 = r29;
    goto loc_100aec374;
}

-(void)setShowAdInfoButton:(bool)arg2 {
    r0 = [self adInfoButton];
    r0 = [r0 retain];
    [r0 setHidden:arg2 ^ 0x1];
    [r0 release];
    [self setNeedsLayout];
    return;
}

-(void)setAdIconType:(long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_30 super] setAdIconType:arg2];
    if ([r19 adIconType] == 0x1) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    r0 = [r19 adInfoButton];
    r0 = [r0 retain];
    [r0 setRenderAsAudienceNetworkLogo:r20];
    [r0 release];
    [r19 setNeedsLayout];
    return;
}

-(void *)adInfoButton {
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
    r19 = self;
    r20 = (int64_t *)&self->_adInfoButton;
    r0 = *r20;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdInfoButton new];
            [r22 release];
            r22 = [[r21 widthAnchor] retain];
            r23 = [[r21 heightAnchor] retain];
            r0 = [r22 constraintEqualToAnchor:r23 multiplier:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            [r22 release];
            [r21 addTarget:r19 action:@selector(infoButtonTapped:) forControlEvents:0x40];
            r22 = [[UIColor whiteColor] retain];
            [r21 setIconColor:r22];
            [r22 release];
            [r21 setContentEdgeInsets:r22];
            objc_storeStrong(r20, r21);
            r22 = r21;
    }
    if ([r19 adIconType] == 0x1) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r22 setRenderAsAudienceNetworkLogo:r2];
    r0 = [r22 autorelease];
    return r0;
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

-(void)setCloseButtonStyle:(long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    r0 = [[&var_30 super] closeButtonStyle];
    if (r0 != r19) {
            [[&var_40 super] setCloseButtonStyle:r19];
            r0 = [r20 closeButton];
            r0 = [r0 retain];
            [r0 setStyle:r19];
            [r0 release];
    }
    return;
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

-(void *)adChoicesButton {
    r31 = r31 - 0x110;
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
    r0 = [[&saved_fp - 0x70 super] adChoicesButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r19 = r21;
    }
    else {
            r19 = [[FBAdChoicesButton adChoicesButton] retain];
            [r21 release];
            r21 = [[UIColor whiteColor] retain];
            [r19 setIconColor:r21];
            [r21 release];
            objc_initWeak(r29 - 0x78, r20);
            objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
            [r19 setWillPresentActionSheet:&var_A0];
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r19 setWillDismissActionSheet:&var_C8];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r19 setViewControllerDismissed:&var_F0];
            [r19 setContentEdgeInsets:&var_F0];
            r24 = [[r19 widthAnchor] retain];
            r25 = [[r19 heightAnchor] retain];
            r0 = [r24 constraintEqualToAnchor:r25 multiplier:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r25 release];
            [r24 release];
            [[&var_100 super] setAdChoicesButton:r19];
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(r29 - 0x78);
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)closeButton {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [[&var_30 super] closeButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [FBAdCloseButton alloc];
            [r19 forcedViewTime];
            r20 = [r20 initWithForcedViewTime:&stack[-88] style:[r19 closeButtonStyle]];
            [r21 release];
            [r20 setFillup:0x0];
            [r20 setContentPadding:0x0];
            r21 = [[UIColor whiteColor] retain];
            [r20 setProgressColor:r21];
            [r21 release];
            [r20 setShouldScaleToFill:0x1];
            [[&var_58 super] setCloseButton:r20];
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)closeHintLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_closeHintLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r21 release];
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r21 = [[UIColor whiteColor] retain];
            [r20 setTextColor:r21];
            [r21 release];
            r21 = [[UIFont monospacedDigitSystemFontOfSize:r21 weight:r3] retain];
            [r20 setFont:r21];
            [r21 release];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)rightButtonsStackView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_rightButtonsStackView;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [UIStackView new];
            [r20 release];
            [r21 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)rightButtonsContainer {
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
    r19 = (int64_t *)&self->_rightButtonsContainer;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UIView new];
            [r21 release];
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r22 = r0;
            r23 = [r0 CGColor];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowColor:r23];
            [r0 release];
            [r22 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowRadius:r23];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowOpacity:r23];
            [r0 release];
            r21 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            [r20 setBackgroundColor:r21];
            [r21 release];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)closeButtonContainer {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = (int64_t *)&self->_closeButtonContainer;
    r0 = *r21;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [UIView new];
            [r22 release];
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r23 = r0;
            r24 = [r0 CGColor];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowColor:r24];
            [r0 release];
            [r23 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowRadius:r24];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowOpacity:r24];
            [r0 release];
            r22 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            [r20 setBackgroundColor:r22];
            [r22 release];
            objc_storeStrong(r21, r20);
            r19 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(closeButtonTapped:)];
            [r20 addGestureRecognizer:r19];
            [r19 release];
            r22 = r20;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)titleLabel {
    r0 = self->_titleLabel;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rightButtonsStackView, 0x0);
    objc_storeStrong((int64_t *)&self->_rightButtonsContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButtonContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_closeHintLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_adInfoButton, 0x0);
    objc_storeStrong((int64_t *)&self->_iconImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_sponsoredLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLabel, 0x0);
    return;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void *)iconImageView {
    r0 = self->_iconImageView;
    return r0;
}

-(void *)sponsoredLabel {
    r0 = self->_sponsoredLabel;
    return r0;
}

-(void)setSponsoredLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sponsoredLabel, arg2);
    return;
}

-(void)setCloseHintLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeHintLabel, arg2);
    return;
}

-(void)setAdInfoButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adInfoButton, arg2);
    return;
}

-(void)setIconImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconImageView, arg2);
    return;
}

-(void)setCloseButtonContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButtonContainer, arg2);
    return;
}

-(void)setRightButtonsContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rightButtonsContainer, arg2);
    return;
}

-(void)setRightButtonsStackView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rightButtonsStackView, arg2);
    return;
}

-(void)setup {
    [self setTranslatesAutoresizingMaskIntoConstraints:0x0];
    r0 = [self heightAnchor];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 constraintEqualToConstant:0x0];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r21 release];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:0x1];
    [r0 release];
    [r21 release];
    r21 = [[self closeButtonContainer] retain];
    r2 = r21;
    [self addSubview:r2];
    [r21 release];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 heightAnchor];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 constraintEqualToConstant:r2];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r22 release];
    [r21 release];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [[r0 leadingAnchor] retain];
    r25 = [[self leadingAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r25 constant:r3];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r23 release];
    [r21 release];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r21 = r0;
    r25 = [[r0 centerYAnchor] retain];
    r27 = [[self centerYAnchor] retain];
    r0 = [r25 constraintEqualToAnchor:r27];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r27 release];
    [r25 release];
    [r21 release];
    r0 = [UIStackView new];
    r21 = r0;
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r21 setSpacing:0x0];
    r23 = [[self closeButton] retain];
    [r21 addArrangedSubview:r23];
    [r23 release];
    r23 = [[self closeHintLabel] retain];
    [r21 addArrangedSubview:r23];
    [r23 release];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    [r0 addSubview:r21];
    [r0 release];
    r23 = [[r21 leadingAnchor] retain];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 leadingAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r25 constant:r3];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    r23 = [[r21 trailingAnchor] retain];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r25 = r0;
    r27 = [[r0 trailingAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r27 constant:r3];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r27 release];
    [r25 release];
    [r23 release];
    r23 = [[r21 bottomAnchor] retain];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 bottomAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r27 constant:r3];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r27 release];
    [r26 release];
    [r23 release];
    r23 = [[r21 topAnchor] retain];
    r0 = [self closeButtonContainer];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 topAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r26 constant:r3];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r26 release];
    [r25 release];
    [r23 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    r28 = r0;
    r23 = [[r0 widthAnchor] retain];
    r0 = [self closeButton];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 heightAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r26 multiplier:r3];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r28 release];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:0x1];
    [r0 release];
    [r23 release];
    r23 = [[self rightButtonsContainer] retain];
    r2 = r23;
    [self addSubview:r2];
    [r23 release];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 heightAnchor];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 constraintEqualToConstant:r2];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r23 release];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r23 = r0;
    r25 = [[r0 trailingAnchor] retain];
    r26 = [[self trailingAnchor] retain];
    r0 = [r25 constraintEqualToAnchor:r26 constant:r3];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r26 release];
    [r25 release];
    [r23 release];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 centerYAnchor] retain];
    r25 = [[self centerYAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r25];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r23 release];
    [r22 release];
    r22 = [[self rightButtonsStackView] retain];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    [r0 addSubview:r22];
    [r0 release];
    r23 = [[r22 leadingAnchor] retain];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 leadingAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r26];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r26 release];
    [r25 release];
    [r23 release];
    r23 = [[r22 trailingAnchor] retain];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r25 = r0;
    r24 = [[r0 trailingAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r24];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r24 release];
    [r25 release];
    [r23 release];
    r23 = [[r22 bottomAnchor] retain];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 bottomAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r25];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    r23 = [[r22 topAnchor] retain];
    r0 = [self rightButtonsContainer];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 topAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r25];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    r20 = [[self adInfoButton] retain];
    [r22 addArrangedSubview:r20];
    [r20 release];
    r20 = [[self adChoicesButton] retain];
    [r22 addArrangedSubview:r20];
    [r20 release];
    [self currentTime];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setCurrentTime:&var_B0];
    [r0 release];
    [self updateHintTextIfNeeded];
    [self setNeedsLayout];
    [r22 release];
    [r21 release];
    return;
}

@end
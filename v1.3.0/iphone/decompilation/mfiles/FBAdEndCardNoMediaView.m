@implementation FBAdEndCardNoMediaView

-(void)dealloc {
    [self setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)didMoveToSuperview {
    [[&var_20 super] didMoveToSuperview];
    [self layoutSubviews];
    [self animateViews];
    return;
}

-(void)layoutSubviews {
    var_50 = d15;
    stack[-88] = d14;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self window];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 firstImpressionTime];
            [r20 release];
            if (d8 == 0xbff0000000000000) {
                    [NSDate timeIntervalSinceReferenceDate];
                    [r19 setFirstImpressionTime:r2];
            }
    }
    else {
            [r20 release];
    }
    sub_100aabe74();
    [r19 bounds];
    r20 = [FBAdScreen isPortrait];
    [r19 layoutBackgroundViewWithBounds:r2];
    [r19 layoutToolbarViewWithInsets:r2 withBounds:r3];
    [r19 layoutAdMetadataViewForOrientation:r20 withInsets:r3 withBounds:r4];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 adDataModel:(void *)arg3 rootViewController:(void *)arg4 toolbarView:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r24 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [r24 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r0 = [[&var_50 super] initWithFrame:r2];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
                    r8 = *(r23 + r9);
                    *(r23 + r9) = r0;
                    [r8 release];
                    objc_storeStrong((int64_t *)&r23->_adDataModel, r24);
                    r0 = [FBAdCommandProcessor new];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_commandHandler));
                    r8 = *(r23 + r24);
                    *(r23 + r24) = r0;
                    [r8 release];
                    [*(r23 + r24) setDelegate:r23];
                    objc_storeWeak((int64_t *)&r23->_rootViewController, r21);
                    r0 = [FBAdConfigManager sharedManager];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 rvAutoRotate];
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r23->_isAutoRotateEnabled = [r0 isEqualToString:@"autorotate_enabled"];
                    [r0 release];
                    [r24 release];
                    *(int8_t *)(int64_t *)&r23->_endcardAnimated = 0x0;
                    r23->_firstImpressionTime = 0xbff0000000000000;
                    r24 = [[UIColor blackColor] retain];
                    [r23 setBackgroundColor:r24];
                    [r24 release];
                    [r23 addBlurredBackgroundImageView];
                    [r23 addAdDetailsView];
                    [r23 addIconView];
                    [r23 addTitleView];
                    [r23 addSubtitleView];
                    [r23 addCallToActionButton];
                    [r23 addToolbarView:r22];
                    r24 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
                    r25 = [[r20 inlineClientToken] retain];
                    r26 = [[r24 funnelLoggerForToken:r25] retain];
                    [r23 setFunnelLoggerDelegate:r26];
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
            r0 = [r23 retain];
            r23 = r0;
            r24 = r0;
    }
    else {
            [FBAdDebugLogging logDebugEventWithType:r2 code:r3 description:r4];
            r24 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r24;
    return r0;
}

-(void)layoutBackgroundViewWithBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self blurredBackgroundImageView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)layoutToolbarViewWithInsets:(struct UIEdgeInsets)arg2 withBounds:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    var_50 = d15;
    stack[-88] = d14;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v11 = v7;
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v10 = v3;
    v8 = v1;
    v9 = v0;
    r0 = [self toolbarView];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            CGRectGetWidth(r0);
            [r19 toolbarHeight];
            [r19 setFrame:r2];
    }
    [r19 release];
    return;
}

-(void)addAdDetailsView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adDetailsView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [UIView new];
            [r20 release];
            [r21 setAlpha:r2];
            [r19 addSubview:r21];
            [r19 setAdDetailsView:r21];
            r20 = r21;
    }
    [r20 release];
    return;
}

-(void)addToolbarView:(void *)arg2 {
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
    r29 = &saved_fp;
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 setDelegate:r23];
    [r23 setToolbarView:r19];
    [r23 addSubview:r19];
    if (([r19 translatesAutoresizingMaskIntoConstraints] & 0x1) == 0x0) {
            r0 = [r19 leadingAnchor];
            r0 = [r0 retain];
            var_78 = r0;
            r21 = [[r23 an_leadingSafeAnchor] retain];
            r24 = [[r0 constraintEqualToAnchor:r21] retain];
            r25 = [[r19 trailingAnchor] retain];
            r26 = [[r23 an_trailingSafeAnchor] retain];
            r27 = [[r25 constraintEqualToAnchor:r26] retain];
            r22 = [[r19 topAnchor] retain];
            r23 = [[r23 an_topSafeAnchor] retain];
            r28 = [[r22 constraintEqualToAnchor:r23] retain];
            r0 = [NSArray arrayWithObjects:&var_70 count:0x3];
            r20 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r20];
            [r20 release];
            [r28 release];
            [r23 release];
            [r22 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r21 release];
            [var_78 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)addBlurredBackgroundImageView {
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
    r19 = self;
    r0 = [self blurredBackgroundImageView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r24 = [[r0 portraitBackgroundColor] retain];
            r25 = [[UIColor blackColor] retain];
            r21 = [sub_100b8cfdc(r24, r25) retain];
            [r25 release];
            [r24 release];
            [r0 release];
            r23 = [FBAdBlurredOverlayView alloc];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r24 = [[r0 image] retain];
            r23 = [r23 initWithBackgroundImage:r24 andOverlayColor:r21];
            [r20 release];
            [r24 release];
            [r0 release];
            [r19 addSubview:r23];
            [r19 setBlurredBackgroundImageView:r23];
            [r21 release];
            r20 = r23;
    }
    [r20 release];
    return;
}

-(void)addIconView {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    var_58 = &var_60;
    var_38 = [[self iconView] retain];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 iconURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r23 = *(var_58 + 0x28);
            [r0 release];
            [r22 release];
            if (r23 == 0x0) {
                    objc_initWeak(&stack[-120], r19);
                    r0 = [r19 adDataModel];
                    r0 = [r0 retain];
                    [[r0 iconURL] retain];
                    objc_copyWeak(&var_98 + 0x28, &stack[-120]);
                    [FBAdUtility loadRemoteImageWithURL:r21 withBlock:&var_98];
                    [r21 release];
                    [r19 release];
                    objc_destroyWeak(&var_98 + 0x28);
                    objc_destroyWeak(&stack[-120]);
            }
    }
    else {
            [r0 release];
            [r22 release];
    }
    _Block_object_dispose(&var_60, 0x8);
    [var_38 release];
    return;
}

-(void)layoutAdMetadataViewForOrientation:(bool)arg2 withInsets:(struct UIEdgeInsets)arg3 withBounds:(struct CGRect)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0xa0;
    var_90 = d15;
    stack[-136] = d14;
    var_80 = d13;
    stack[-120] = d12;
    var_70 = d11;
    stack[-104] = d10;
    var_60 = d9;
    stack[-88] = d8;
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
    v8 = v3;
    v13 = v1;
    r24 = arg2;
    r20 = self;
    [self bounds];
    if (r24 != 0x0) {
            asm { fcsel      d0, d14, d0, ne };
    }
    if (d13 > 0x405e000000000000) {
            asm { fcsel      d1, d13, d0, gt };
    }
    d1 = d2 - d1;
    if (d8 > 0x405e000000000000) {
            asm { fcsel      d0, d8, d0, gt };
    }
    d8 = d1 - 0x405e000000000000;
    r8 = *_CGSizeZero;
    d12 = *(int128_t *)r8;
    d10 = *(int128_t *)(r8 + 0x8);
    r0 = [r20 subtitleView];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    v9 = v10;
    if (r0 != 0x0) {
            [r19 sizeThatFits:r2];
            v9 = v1;
    }
    var_98 = 0x405e000000000000;
    r0 = [r20 titleView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 sizeThatFits:r2];
            v12 = v8;
            v10 = v1;
    }
    r0 = [r20 adDetailsView];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            d14 = d9 + d10 + 0x10a000000000000;
            if (r24 != 0x0) {
                    asm { fcsel      d0, d1, d0, ne };
            }
            if (d13 > 0x405e000000000000) {
                    asm { fcsel      d13, d13, d0, gt };
            }
            [r20 bounds];
            v2 = v8;
            [r22 setFrame:r2];
    }
    r0 = [r20 iconView];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r23 setFrame:r2];
    }
    if (r21 != 0x0) {
            [r21 setFrame:r2];
    }
    d10 = d10 + 0x807a000000000000;
    if (r19 != 0x0) {
            [r19 setFrame:r2];
    }
    r0 = [r20 callToActionButton];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setFrame:r2];
    }
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)addTitleView {
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
    r19 = self;
    r20 = [[self titleView] retain];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 advertiserName];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a41980;

loc_100a41868:
    [r0 release];
    [r21 release];
    if (r20 != 0x0) goto loc_100a4198c;

loc_100a41878:
    r21 = [FBAdLabel alloc];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r23 = [[r0 advertiserName] retain];
    [FBAdFont fontSizeLarge];
    r25 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
    r22 = [r21 initWithText:r23 numberOfLines:0x2 font:r25];
    [r20 release];
    [r25 release];
    [r23 release];
    [r0 release];
    r0 = [r19 adDetailsView];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 addSubview:r2];
    }
    [r19 setTitleView:r22];
    r20 = r22;
    goto loc_100a41984;

loc_100a41984:
    [r21 release];
    goto loc_100a4198c;

loc_100a4198c:
    [r20 release];
    return;

loc_100a41980:
    [r0 release];
    goto loc_100a41984;
}

-(void)addSubtitleView {
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
    r19 = self;
    r20 = [[self subtitleView] retain];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 body];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a41b30;

loc_100a41a18:
    [r0 release];
    [r21 release];
    if (r20 != 0x0) goto loc_100a41b3c;

loc_100a41a28:
    r21 = [FBAdLabel alloc];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r23 = [[r0 body] retain];
    [FBAdFont fontSizeSmall];
    r25 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
    r22 = [r21 initWithText:r23 numberOfLines:0x3 font:r25];
    [r20 release];
    [r25 release];
    [r23 release];
    [r0 release];
    r0 = [r19 adDetailsView];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 addSubview:r2];
    }
    [r19 setSubtitleView:r22];
    r20 = r22;
    goto loc_100a41b34;

loc_100a41b34:
    [r21 release];
    goto loc_100a41b3c;

loc_100a41b3c:
    [r20 release];
    return;

loc_100a41b30:
    [r0 release];
    goto loc_100a41b34;
}

-(void)addCallToActionButton {
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
    r21 = [[self callToActionButton] retain];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 callToAction];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a41cb8;

loc_100a41bc4:
    [r0 release];
    [r23 release];
    if (r21 != 0x0) goto loc_100a41cc4;

loc_100a41bd4:
    r20 = [FBAdCTAButton new];
    [r21 release];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r22 = [[r0 callToAction] retain];
    [r20 setTitle:r22 forState:0x0];
    [r22 release];
    [r0 release];
    [r20 addTarget:r19 action:@selector(adClicked:withEvent:) forControlEvents:0x40];
    r0 = [r19 adDetailsView];
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r23 addSubview:r2];
    }
    [r19 setCallToActionButton:r20];
    r21 = r20;
    goto loc_100a41cbc;

loc_100a41cbc:
    [r23 release];
    goto loc_100a41cc4;

loc_100a41cc4:
    [r21 release];
    return;

loc_100a41cb8:
    [r0 release];
    goto loc_100a41cbc;
}

-(void)animateViews {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isEndcardAnimated] & 0x1) == 0x0) {
            [r19 setEndcardAnimated:0x1];
            r20 = [[r19 callToActionButton] retain];
            r19 = [[r19 adDetailsView] retain];
            var_30 = r20;
            r20 = [r20 retain];
            var_28 = r19;
            r19 = [r19 retain];
            [FBAdUtility animateWithStandardAnimations:&var_50 duration:0x0 completion:r4];
            [var_28 release];
            [var_30 release];
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)processCommand:(void *)arg2 withExtraData:(void *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [r21 retain];
            r22 = [[r20 commandHandler] retain];
            r23 = [r19 retain];
            r0 = [r20 adDataModel];
            r0 = [r0 retain];
            r25 = [[r0 inlineClientToken] retain];
            [r22 processCommand:r23 withExtraData:r21 inlineClientToken:r25 skipAppStore:0x0 completionHandler:0x100ea90d8];
            [r21 release];
            [r25 release];
            [r0 release];
            [r23 release];
            [r22 release];
            [r20 adDidLogClick];
    }
    [r19 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self rootViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [FBAdViewControllerProxy viewController];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)adClicked:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r23 = self;
    var_B0 = [arg2 retain];
    r20 = [arg3 retain];
    [r23 firstImpressionTime];
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r23 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    var_C0 = [r0 retain];
    var_B8 = r20;
    r22 = [[FBAdUtility touchDictionaryForEvent:r20 delayTime:r3] retain];
    r24 = [[FBAdUtility getJSONStringFromObject:r22] retain];
    r0 = [r23 funnelLoggerDelegate];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logCTAClickedWithData:0x0];
    [r0 release];
    if (r24 != 0x0) {
            r4 = 0x1;
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r25 = [r0 retain];
    }
    else {
            r25 = 0x0;
    }
    [r23 firstImpressionTime];
    r0 = [r23 adDataModel];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 inlineClientToken];
    r29 = r29;
    r20 = [r0 retain];
    r19 = [FBAdUtility enforceAdClickguard:r20 withToken:r25 withExtraData:r4];
    [r20 release];
    [r28 release];
    if ((r19 & 0x1) == 0x0) {
            if ([FBAdUtility enforceTwoStepConfirmation] != 0x0) {
                    objc_initWeak(&stack[-144], r23);
                    [[r23 rootViewController] retain];
                    r0 = [r23 adDataModel];
                    r0 = [r0 retain];
                    [[r0 inlineClientToken] retain];
                    objc_copyWeak(&var_A8 + 0x20, &stack[-144]);
                    [r28 showTwoStepConfirmationDialogFrom:r19 withToken:r26 withExtraData:r25 completionHandler:&var_A8];
                    [r26 release];
                    [r27 release];
                    [r19 release];
                    objc_destroyWeak(&var_A8 + 0x20);
                    objc_destroyWeak(&stack[-144]);
            }
            else {
                    r0 = [r23 adDataModel];
                    r0 = [r0 retain];
                    r20 = [[r0 commandURL] retain];
                    [r23 processCommand:r20 withExtraData:r25];
                    [r20 release];
                    [r0 release];
            }
    }
    var_68 = **___stack_chk_guard;
    [r24 release];
    [r25 release];
    [r22 release];
    [var_C0 release];
    [var_B8 release];
    [var_B0 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)willPresentViewController:(void *)arg2 {
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    return;
}

-(void *)commandProcessorTouchInformation:(void *)arg2 {
    return 0x0;
}

-(void)adDidLogClick {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardNoMediaViewClicked:self];
    [r0 release];
    return;
}

-(void)adDidTerminate {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardNoMediaViewDidTerminate:self];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidTapAdChoices:(void *)arg2 {
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdChoicesTappedWithData:0x0];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidClose:(void *)arg2 withTouchData:(void *)arg3 {
    r20 = [arg3 retain];
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdCloseClickedWithData:0x0];
    [r0 release];
    r21 = [[FBAdEventManager sharedManager] retain];
    r0 = [self adDataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    [r21 logCloseEventForToken:r23 withExtraData:r20];
    [r20 release];
    [r23 release];
    [r0 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardNoMediaViewWillClose:self];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidCloseAdChoices:(void *)arg2 {
    return;
}

-(void)interstitialAdToolbarDidTapAdInfo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdReportTappedWithData:0x0];
    [r0 release];
    r0 = [r19 onInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 onInfo];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r19 release];
    }
    [r20 release];
    return;
}

-(void)handleClickWithExtraData:(void *)arg2 {
    [self adDidLogClick];
    return;
}

-(bool)processFBAdSchemeLink:(void *)arg2 adDataModel:(void *)arg3 withExtraData:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([FBAdUtility isFBAdScheme:r19] != 0x0) {
            objc_initWeak(&stack[-88], r22);
            [[r22 commandHandler] retain];
            [[r20 inlineClientToken] retain];
            objc_copyWeak(&var_78 + 0x28, &stack[-88]);
            var_58 = [r21 retain];
            r24 = [r23 processCommand:r19 inlineClientToken:r25 completionHandler:&var_78];
            [r25 release];
            [r23 release];
            [var_58 release];
            objc_destroyWeak(&var_78 + 0x28);
            objc_destroyWeak(&stack[-88]);
    }
    else {
            r24 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_funnelLoggerDelegate);
    objc_storeStrong((int64_t *)&self->_adDataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_toolbarView);
    objc_storeStrong((int64_t *)&self->_commandHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_subtitleView);
    objc_destroyWeak((int64_t *)&self->_titleView);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_destroyWeak((int64_t *)&self->_callToActionButton);
    objc_destroyWeak((int64_t *)&self->_blurredBackgroundImageView);
    objc_destroyWeak((int64_t *)&self->_adDetailsView);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_onInfo, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(bool)isModalViewPresenting {
    r0 = *(int8_t *)(int64_t *)&self->_modalViewPresenting;
    return r0;
}

-(void)setModalViewPresenting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_modalViewPresenting = arg2;
    return;
}

-(void *)onInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onInfo)), 0x0);
    return r0;
}

-(void)setOnInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adDetailsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adDetailsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdDetailsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adDetailsView, arg2);
    return;
}

-(void *)blurredBackgroundImageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_blurredBackgroundImageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBlurredBackgroundImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_blurredBackgroundImageView, arg2);
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

-(void)setIconView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_iconView, arg2);
    return;
}

-(void *)iconView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_iconView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)titleView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_titleView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleView, arg2);
    return;
}

-(void *)subtitleView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_subtitleView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSubtitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_subtitleView, arg2);
    return;
}

-(void *)commandHandler {
    r0 = self->_commandHandler;
    return r0;
}

-(void)setCommandHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandHandler, arg2);
    return;
}

-(bool)isAutoRotateEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isAutoRotateEnabled;
    return r0;
}

-(void)setIsAutoRotateEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAutoRotateEnabled = arg2;
    return;
}

-(void *)toolbarView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_toolbarView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_toolbarView, arg2);
    return;
}

-(bool)isEndcardAnimated {
    r0 = *(int8_t *)(int64_t *)&self->_endcardAnimated;
    return r0;
}

-(void)setEndcardAnimated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_endcardAnimated = arg2;
    return;
}

-(void)setFirstImpressionTime:(double)arg2 {
    self->_firstImpressionTime = d0;
    return;
}

-(double)firstImpressionTime {
    r0 = self;
    return r0;
}

-(void *)adDataModel {
    r0 = self->_adDataModel;
    return r0;
}

-(void *)funnelLoggerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_funnelLoggerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFunnelLoggerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_funnelLoggerDelegate, arg2);
    return;
}

@end
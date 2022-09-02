@implementation FBAdOptionsView

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupTapRecognizer];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupTapRecognizer];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupTapRecognizer];
    }
    r0 = r19;
    return r0;
}

-(void)setForegroundColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_foregroundColor, arg2);
    r19 = [arg2 retain];
    [self setNeedsDisplay];
    [r19 release];
    return;
}

-(void)setNativeAd:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    objc_storeWeak((int64_t *)&r20->_nativeAd, r19);
    r0 = [r20 reportingCoordinator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 stopAdReportingFlow];
    }
    r0 = [r19 dataModel];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r23 = [FBAdReportingCoordinator alloc];
            r24 = [[FBAdUtility topViewController] retain];
            r23 = [r23 initWithData:r22 viewController:r24];
            [r20 setReportingCoordinator:r23];
            [r23 release];
            [r24 release];
    }
    [r20 setNeedsDisplay];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)setupTapRecognizer {
    r20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self addGestureRecognizer:r20];
    [r20 release];
    return;
}

-(void)handleTap:(void *)arg2 {
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
    r21 = self;
    r0 = [self nativeAd];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 nativeAdView] retain];
    r0 = [r19 dataModel];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r19 isKindOfClass:[FBNativeBannerAd class]] != 0x0) {
            asm { cinc       x23, x8, ne };
    }
    r26 = [FBAdReportingCoordinator canPresentInView:r20 layoutType:r23];
    r0 = [FBAdReportingConfig sharedConfig];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isReadyForNonFullscreen];
    [r0 release];
    r25 = 0x0;
    if (r26 != 0x0) {
            r25 = 0x0;
            if (r24 != 0x0) {
                    r0 = [FBAdConfigManager sharedManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 useNativeNonFullscreenXoutFlow];
                    [r0 release];
            }
    }
    r0 = [FBAdUtility topViewController];
    r29 = r29;
    r24 = [r0 retain];
    if (r25 != 0x0) {
            r0 = [r21 reportingCoordinator];
            r0 = [r0 retain];
            r25 = r0;
            [r0 startAdReportingFlowInView:r20 layoutType:r23];
    }
    else {
            r23 = @class(FBAdSafariViewController);
            r25 = [[r22 adChoicesLinkURL] retain];
            r26 = [[r22 inlineClientToken] retain];
            [r23 presentSafariViewControllerWithURL:r25 withRootViewController:r24 withInlineClientToken:r26 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:r21];
            [r26 release];
    }
    [r25 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)shouldRenderANLogo {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self nativeAd];
    r0 = [r0 retain];
    r20 = r0;
    r19 = [[r0 dataModel] retain];
    [r20 release];
    if (r19 != 0x0) {
            if ([r19 iconType] == 0x1) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r0 = [self foregroundColor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 retain];
    }
    else {
            r0 = [UIColor colorWithUInt:0x616671 withAlpha:r3];
            r0 = [r0 retain];
    }
    r21 = r0;
    [r20 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_useSingleIcon));
    r8 = *(int8_t *)(r19 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(drawSingleIconWithFrame:color:);
            }
            else {
                    r8 = &@selector(drawBothIconsWithFrame:color:);
            }
    }
    objc_msgSend(r19, *r8);
    [r21 release];
    return;
}

-(void)viewControllerCompleted:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adOptionsView:viewControllerCompleted:), r3] != 0x0) {
            [r21 adOptionsView:r20 viewControllerCompleted:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)willPresentViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adOptionsView:willPresentViewController:), r3] != 0x0) {
            [r21 adOptionsView:r20 willPresentViewController:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adOptionsView:viewControllerDismissed:), r3] != 0x0) {
            [r21 adOptionsView:r20 viewControllerDismissed:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_storeStrong((int64_t *)&self->_foregroundColor, 0x0);
    objc_destroyWeak((int64_t *)&self->_nativeAd);
    return;
}

-(void *)nativeAd {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAd);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)foregroundColor {
    r0 = self->_foregroundColor;
    return r0;
}

-(bool)useSingleIcon {
    r0 = *(int8_t *)(int64_t *)&self->_useSingleIcon;
    return r0;
}

-(void)setUseSingleIcon:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useSingleIcon = arg2;
    return;
}

-(void *)reportingCoordinator {
    r0 = self->_reportingCoordinator;
    return r0;
}

-(void)setReportingCoordinator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, arg2);
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

-(void)drawSingleIconWithFrame:(struct CGRect)arg2 color:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
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
    v10 = v3;
    v11 = v2;
    v12 = v1;
    v13 = v0;
    r0 = [r2 retain];
    r19 = r0;
    r0 = CGRectGetWidth(r0);
    v8 = v13;
    r0 = CGRectGetHeight(r0);
    if (d8 < d0) {
            asm { fcsel      d8, d8, d0, mi };
    }
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = *(&@class(ADCTransitionalContainer) + 0xa60);
    r0 = objc_msgSend(r0, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa00));
    r0 = [r0 retain];
    r0 = CGRectGetMinX(r0);
    var_80 = d8 * *double_value_0_47196;
    CGRectGetMinY(r0);
    var_78 = d8 * *double_value_0_70438;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc10));
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_87412;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_67878;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_59973;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_794;
    CGRectGetMinY(r0);
    d1 = *double_value_0_5412;
    r0 = objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa08));
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_8744;
    CGRectGetMinY(r0);
    d1 = *double_value_0_50018;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc18));
    r0 = CGRectGetMinX(r0);
    var_98 = d8 * *double_value_0_12586;
    CGRectGetMinY(r0);
    var_88 = d8 * *double_value_0_12017;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r22)));
    var_90 = d8 * *double_value_0_8799;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_A0 = d8 * *double_value_0_16612 + d0;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_85921;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_A0 = d8 * *double_value_0_2175 + var_A0;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_83326;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_30256;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_85825;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_24822;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_81775;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_2863;
    CGRectGetMinY(r0);
    d1 = *double_value_0_82893;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_27638;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_93941;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_31882;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_88756;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_3071;
    CGRectGetMinY(r0);
    d1 = *double_value_0_9239;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_A0 = d8 * *double_value_0_22539 + d0;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_96516;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_18552;
    CGRectGetMinY(r0);
    d1 = *double_value_0_98564;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_16719;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_99507;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_14668;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_05635;
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    d1 = *double_value_0_94623;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_88 = d8 * *double_value_0_01504 + d0;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_06323;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_1003;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_00517;
    CGRectGetMinY(r0);
    d1 = *double_value_0_08073;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_18525;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_01428;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_048;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_00483;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_12432;
    CGRectGetMinY(r0);
    d1 = *double_value_minus_0_01702;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_88 = d8 * *double_value_0_93379;
    CGRectGetMinY(r0);
    d1 = *double_value_0_39429;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_98493;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_4431;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_95547;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_40543;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_97326;
    CGRectGetMinY(r0);
    d1 = *double_value_0_4224;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_60578;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_1_01789;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_5015;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_99499;
    CGRectGetMinY(r0);
    d1 = *double_value_0_57433;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_4385;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_85723;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_84211;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_65289;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_70504;
    CGRectGetMinY(r0);
    d1 = *double_value_0_72244;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_88 = d8 * *double_value_0_34611 + d0;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_80417;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_39659;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_87843;
    CGRectGetMinY(CGRectGetMinX(r0));
    d1 = *double_value_0_84943;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    var_88 = d8 * *double_value_0_62014;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d0 = d8 * *double_value_0_40903 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_90 = d8 * *double_value_0_58697;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_37428;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_98 = var_80 + d0;
    r0 = CGRectGetMinY(r0);
    d0 = var_88 + var_80 + d0;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    r0 = objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa10));
    r0 = CGRectGetMinX(r0);
    var_80 = d8 * *double_value_0_47057;
    CGRectGetMinY(r0);
    var_78 = d8 * *double_value_0_45354;
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    var_90 = d8 * *double_value_0_40764;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_A0 = d8 * *double_value_0_4867;
    r0 = CGRectGetMinX(r0);
    var_88 = d8 * *double_value_0_4424;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d8 * *double_value_0_34472 + d8 * d1 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    var_98 = d8 * *double_value_0_37289;
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    var_A0 = d8 * *double_value_0_44647;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_A8 = var_90 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_90 = d8 * *double_value_0_41331;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r24);
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa18));
    objc_msgSend(r19, *(&@selector(_initOpenAL) + 0x9f8));
    [r19 release];
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa20));
    [r20 release];
    return;
}

-(void)drawBothIconsWithFrame:(struct CGRect)arg2 color:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x130;
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
    v9 = v3;
    v10 = v2;
    v11 = v1;
    v12 = v0;
    r20 = self;
    r0 = [r2 retain];
    r19 = r0;
    r0 = CGRectGetWidth(r0);
    r0 = CGRectGetHeight(r0);
    asm { fdiv       d1, d8, d0 };
    d2 = *0x100bfbac0;
    d3 = d0 * d2;
    asm { fdiv       d4, d8, d2 };
    if (d1 > d2) {
            asm { fcsel      d0, d0, d4, gt };
    }
    var_C0 = q0;
    if (CPU_FLAGS & G) {
            asm { fcsel      d0, d3, d8, gt };
    }
    var_D0 = q0;
    r0 = CGRectGetMinX(r0);
    v8 = v12;
    v2 = v10;
    v3 = v9;
    CGRectGetMinY(r0);
    v9 = v12;
    r0 = [r20 shouldRenderANLogo];
    if (r0 != 0x0) {
            r0 = [UIBezierPath bezierPath];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            CGRectGetMinY(CGRectGetMinX(r0));
            CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
            CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
            CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r23)));
            CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r23)));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r23)))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)))))));
            CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r23)))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)))))));
            objc_msgSend(r20, r21);
            CGRectGetMinY(CGRectGetMinX([r20 closePath]));
            d2 = *0x100bfbac0 * *0x100bfba38;
            v13 = v12;
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r22)))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)))))));
            CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)))))));
            d0 = *0x100bfbac0 * *0x100bfbb90 + d2 * *0x100bfbbb0 + *0x100bfbac0 * *0x100bfbb90 + *0x100bfbac0 * *0x100bfbb78 + *0x100bfbac0 * *0x100bfbb68 + d0;
            objc_msgSend(r20, r21);
            objc_msgSend(r20, r23);
            [r20 setUsesEvenOddFillRule:0x1];
            [r19 setFill];
            [r20 fill];
    }
    else {
            q3 = var_C0;
            r0 = CGRectGetMinX(r0);
            q1 = *(int128_t *)0x100bfcca0;
            v1 = v9 * v2;
            asm { dup        v3.2d, x8 };
            v1 = v1 + v3;
            asm { frintm     v1.2d, v1.2d };
            CGRectGetMinY(r0);
            v2 = 0x3fe0000000000000;
            asm { frintm     v3.2d, v1.2d };
            d2 = d0 - d11;
            r0 = [r20 bezierPathWithRoundedRect:r2 cornerRadius:r3];
            r20 = [r0 retain];
            [r19 setStroke];
            d0 = 0x4000000000000000;
            [r20 setLineWidth:r2];
            r0 = [r20 stroke];
            r0 = CGRectGetMinX(r0);
            q1 = *(int128_t *)0x100bfccc0;
            v1 = v9 * v2 + v3;
            asm { frintm     v1.2d, v1.2d };
            CGRectGetMinY(r0);
            asm { frintm     v2.2d, v1.2d };
            r0 = objc_msgSend(r22, r21);
            [r0 retain];
            objc_msgSend(r19, *(r24 + 0x9f8));
            r0 = objc_msgSend(r22, *(r27 + 0xa20));
            r0 = CGRectGetMinX(r0);
            d0 = d14 + d0;
            CGRectGetMinY(r0);
            asm { frintm     v2.2d, v1.2d };
            d3 = d2 - v2;
            r0 = objc_msgSend(r25, r21);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r19, r23);
            objc_msgSend(r21, r24);
            [r21 release];
            [r22 release];
    }
    [r20 release];
    r0 = *(&@class(ADCTransitionalContainer) + 0xa60);
    r0 = objc_msgSend(r0, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa00));
    r0 = [r0 retain];
    r0 = CGRectGetMinX(r0);
    var_F0 = d2 * *double_value_0_79338;
    CGRectGetMinY(r0);
    var_E0 = d2 * *double_value_0_70438;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc10));
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_95074;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_8743;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_59973;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_91939;
    CGRectGetMinY(r0);
    d1 = *double_value_0_5412;
    r0 = objc_msgSend(r20, *(r28 + 0xa08));
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_95085;
    CGRectGetMinY(r0);
    d1 = *double_value_0_50018;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc18));
    r0 = CGRectGetMinX(r0);
    var_110 = d2 * *double_value_0_65794;
    CGRectGetMinY(r0);
    var_100 = d2 * *double_value_0_12017;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r22)));
    var_108 = d2 * *double_value_0_8799;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_6737;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_85921;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_69381;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_83326;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_72709;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_85825;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_70583;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_81775;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_72073;
    CGRectGetMinY(r0);
    d1 = *double_value_0_82893;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_71684;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_93941;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_73345;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_88756;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_72886;
    CGRectGetMinY(r0);
    d1 = *double_value_0_9239;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_69689;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_96516;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_68129;
    CGRectGetMinY(r0);
    d1 = *double_value_0_98564;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_67412;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_99507;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_66609;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_63074;
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    d1 = *double_value_0_94623;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_61458;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_06323;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_1003;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_61072;
    CGRectGetMinY(r0);
    d1 = *double_value_0_08073;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_68118;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_01428;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_62748;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_00483;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_65734;
    CGRectGetMinY(r0);
    d1 = *double_value_minus_0_01702;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_39429;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_9941;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_4431;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_98258;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_40543;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_98953;
    CGRectGetMinY(r0);
    d1 = *double_value_0_4224;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_60578;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_1_007;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_5015;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_99804;
    CGRectGetMinY(r0);
    d1 = *double_value_0_57433;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_78028;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_85723;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_93822;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_65289;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_88458;
    CGRectGetMinY(r0);
    d1 = *double_value_0_72244;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_80417;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_76388;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_87843;
    CGRectGetMinY(CGRectGetMinX(r0));
    d1 = *double_value_0_84943;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    var_100 = d2 * *double_value_0_62014;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_110 = d2 * *double_value_0_76875 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_108 = d3 * *double_value_0_58697;
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_0_75515;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    r0 = objc_msgSend(r20, *(r26 + 0xa10));
    r0 = CGRectGetMinX(r0);
    var_F0 = d2 * *double_value_0_79283;
    CGRectGetMinY(r0);
    var_E0 = d2 * *double_value_0_45354;
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    var_108 = d2 * *double_value_0_76821;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_118 = d3 * *double_value_0_4867;
    r0 = CGRectGetMinX(r0);
    var_100 = d2 * *double_value_0_78181;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_120 = d2 * *double_value_0_74358 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    var_110 = d2 * *double_value_0_75461;
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    var_118 = d2 * *double_value_0_44647;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_120 = var_108 + d0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_108 = d3 * *double_value_0_41331;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r24);
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa18));
    objc_msgSend(r19, *(&@selector(_initOpenAL) + 0x9f8));
    objc_msgSend(r20, *(r27 + 0xa20));
    [r20 release];
    [r19 release];
    return;
}

@end
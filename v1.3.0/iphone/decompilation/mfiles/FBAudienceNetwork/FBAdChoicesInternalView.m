@implementation FBAdChoicesInternalView

-(void *)initWithNativeAd:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[FBAdViewControllerProxy proxyWithViewController:0x0] retain];
    r0 = [r22 dataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    r24 = [[r22 adChoicesIcon] retain];
    r25 = [[r22 adChoicesLinkURL] retain];
    r26 = [[r22 adChoicesText] retain];
    r27 = [[r22 adViewAttributes] retain];
    [r22 release];
    r20 = [self initWithViewController:r19 inlineClientToken:r23 adChoicesIcon:r24 adChoicesLinkURL:r25 adChoicesText:r26 attributes:r27 expandable:0x1];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r0 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithViewController:(void *)arg2 inlineClientToken:(void *)arg3 adChoicesIcon:(void *)arg4 adChoicesLinkURL:(void *)arg5 adChoicesText:(void *)arg6 attributes:(void *)arg7 expandable:(bool)arg8 {
    var_0 = arg8;
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    r0 = [[&var_60 super] initWithFrame:r2];
    r25 = r0;
    if (r0 != 0x0) {
            r27 = var_0;
            if (r19 != 0x0) {
                    [r25 updateViewsWithViewController:r19 inlineClientToken:r20 adChoicesIcon:r21 adChoicesLinkURL:r22 adChoicesText:r23 attributes:r24 expandable:r27 initialized:stack[-120]];
            }
            else {
                    r26 = [[FBAdViewControllerProxy proxyWithViewController:0x0] retain];
                    [r25 updateViewsWithViewController:r26 inlineClientToken:r20 adChoicesIcon:r21 adChoicesLinkURL:r22 adChoicesText:r23 attributes:r24 expandable:r27 initialized:stack[-120]];
                    [r26 release];
            }
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void)updateViewsFromNativeAd:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self rootViewController] retain];
    r0 = [r22 dataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    r24 = [[r22 adChoicesIcon] retain];
    r25 = [[r22 adChoicesLinkURL] retain];
    r26 = [[r22 adChoicesText] retain];
    r27 = [[r22 adViewAttributes] retain];
    [r22 release];
    [self updateViewsWithViewController:r19 inlineClientToken:r23 adChoicesIcon:r24 adChoicesLinkURL:r25 adChoicesText:r26 attributes:r27 expandable:0x101 initialized:stack[-104]];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r0 release];
    [r19 release];
    return;
}

-(void)updateAdChoicesInfoFromNativeAd:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 retain];
    objc_storeWeak((int64_t *)&r19->_adChoicesIcon, [[r0 adChoicesIcon] retain]);
    [r20 release];
    r0 = [r21 adChoicesText];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesText));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [r21 adChoicesLinkURL];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesLinkURL));
    r0 = *(r19 + r8);
    *(r19 + r8) = r23;
    [r0 release];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_adChoicesIcon);
    r21 = r0;
    if (r0 != 0x0) {
            [r21 loadImageAsyncWithBlock:&var_58];
    }
    r20 = [[r19 adChoicesText] retain];
    r0 = [r19 label];
    r0 = [r0 retain];
    [r0 setText:r20];
    [r0 release];
    [r20 release];
    [r21 release];
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
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    r21 = *(r20 + r23);
    if (r21 != r0) {
            r0 = [r19 retain];
            r22 = r0;
            *(r20 + r23) = r0;
            [r21 release];
            r0 = [r20 reportingCoordinator];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    [r21 stopAdReportingFlow];
            }
            r23 = [FBAdReportingCoordinator alloc];
            r22 = [[r22 dataModel] retain];
            r24 = [[r20 rootViewController] retain];
            r23 = [r23 initWithData:r22 viewController:r24];
            [r20 setReportingCoordinator:r23];
            [r23 release];
            [r24 release];
            [r22 release];
            [r21 release];
    }
    if (r19 != 0x0) {
            [r20 updateViewsFromNativeAd:r19];
            [r20 updateAdChoicesInfoFromNativeAd:r19];
    }
    [r19 release];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            var_50 = d11;
            stack[-72] = d10;
            r31 = r31 + 0xffffffffffffffb0;
            var_40 = d9;
            stack[-56] = d8;
            var_30 = r22;
            stack[-40] = r21;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r20 = r0;
            r0 = [r0 label];
            r29 = &var_10;
            r19 = [r0 retain];
            r0 = objc_loadWeakRetained((int64_t *)&r20->_adChoicesIcon);
            [r0 release];
            [r20 bounds];
            v10 = v1;
            v9 = v3;
            if (r0 != 0x0) {
                    d8 = d0 + 0x4010000000000000;
                    r0 = [r20 ownerView];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r20 isRightCorner:[r0 corner]];
                    [r0 release];
                    if ((r22 & 0x1) == 0x0) {
                            [r20 extensionAmount];
                    }
                    r0 = [r20 iconImageView];
                    r0 = [r0 retain];
                    [r0 setFrame:r2];
                    [r20 bringSubviewToFront:r0];
                    [r20 labelFrame];
                    [r19 setFrame:r0];
                    [r0 release];
            }
            else {
                    [r19 setFrame:r2];
            }
            [r19 release];
    }
    return;
}

-(void)iconImageTapped:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r21 = self;
    r0 = [self adChoicesLinkURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100a1b3ec;

loc_100a1b36c:
    if ([r21 isAdChoicesIconAvailable] == 0x0) goto .l3;

loc_100a1b380:
    r19 = [[r21 rootViewController] retain];
    r0 = [r21 ownerView];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            if ([r21 isExpandable] != 0x0 && ([r21 isExtended] & 0x1) == 0x0) {
                    [r21 extend:0x1 animate:0x1 persistChanges:0x0];
                    r28 = 0x0;
            }
            else {
                    r28 = 0x1;
            }
            r0 = [r21 nativeAd];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 nativeAdView];
            r29 = r29;
            r24 = [r0 retain];
            if ([r23 isKindOfClass:[FBNativeBannerAd class]] != 0x0) {
                    asm { cinc       x25, x8, ne };
            }
            if ([FBAdReportingCoordinator canPresentInView:r24 layoutType:r25] != 0x0) {
                    r0 = [FBAdConfigManager sharedManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 useNativeNonFullscreenXoutFlow];
                    [r0 release];
                    if (r28 != 0x0) {
                            if (r26 != 0x0) {
                                    r0 = [r21 reportingCoordinator];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    [r0 startAdReportingFlowInView:r24 layoutType:r25];
                            }
                            else {
                                    r25 = @class(FBAdSafariViewController);
                                    r22 = [[r21 adChoicesLinkURL] retain];
                                    r21 = [[r21 inlineClientToken] retain];
                                    [r25 presentSafariViewControllerWithURL:r22 withRootViewController:r19 withInlineClientToken:r21 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:r20];
                                    [r21 release];
                            }
                            [r22 release];
                    }
            }
            else {
                    r26 = 0x0;
                    if (r28 != 0x0) {
                            if (r26 != 0x0) {
                                    r0 = [r21 reportingCoordinator];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    [r0 startAdReportingFlowInView:r24 layoutType:r25];
                            }
                            else {
                                    r25 = @class(FBAdSafariViewController);
                                    r22 = [[r21 adChoicesLinkURL] retain];
                                    r21 = [[r21 inlineClientToken] retain];
                                    [r25 presentSafariViewControllerWithURL:r22 withRootViewController:r19 withInlineClientToken:r21 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:r20];
                                    [r21 release];
                            }
                            [r22 release];
                    }
            }
            [r24 release];
            [r23 release];
    }
    [r20 release];
    goto loc_100a1b624;

loc_100a1b624:
    [r19 release];
    return;

.l3:
    return;

loc_100a1b3ec:
    r19 = [NSStringFromClass([r21 class]) retain];
    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdChoicesInternalView.m" lineNumber:0x107 format:@"AdChoices link url was not set on %@"];
    goto loc_100a1b624;
}

-(void)extend:(bool)arg2 animate:(bool)arg3 persistChanges:(bool)arg4 {
    r31 = r31 - 0x110;
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
    r20 = arg4;
    r19 = arg3;
    r21 = arg2;
    r22 = self;
    if (([self isAnimating] & 0x1) == 0x0 && ([r22 isExtended] ^ r21) == 0x1) {
            [r22 setAnimating:0x1];
            r0 = [r22 label];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    if (r19 != 0x0) {
                            r25 = [[NSArray arrayWithObjects:r29 - 0x68 count:0x1] retain];
                            var_78 = [r23 retain];
                            [FBAdUtility animateWithFadeOut:r25 duration:&var_98 completion:r4];
                            [r25 release];
                            [var_78 release];
                    }
                    else {
                            [r23 removeFromSuperview];
                            [r22 setLabel:0x0];
                    }
            }
            [FBAdUtility animateEnabled:r19 withTransactionBlock:&var_C8 duration:&var_F8 completion:r5];
            [r23 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateViewsWithViewController:(void *)arg2 inlineClientToken:(void *)arg3 adChoicesIcon:(void *)arg4 adChoicesLinkURL:(void *)arg5 adChoicesText:(void *)arg6 attributes:(void *)arg7 expandable:(bool)arg8 initialized:(bool)arg9 {
    r31 = r31 - 0xf0;
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
    r23 = self;
    r25 = *(int8_t *)(&var_10 + 0x10);
    r21 = [arg2 retain];
    var_D0 = [arg3 retain];
    r26 = [arg4 retain];
    r20 = [arg5 retain];
    var_D8 = [arg6 retain];
    r22 = [arg7 retain];
    *(int8_t *)(int64_t *)&r23->_expandable = r25;
    r25 = r25 ^ 0x1;
    *(int8_t *)(int64_t *)&r23->_extended = r25;
    objc_storeWeak((int64_t *)&r23->_rootViewController, r21);
    [r21 release];
    objc_storeStrong((int64_t *)&r23->_inlineClientToken, arg3);
    objc_storeWeak((int64_t *)&r23->_adChoicesIcon, r26);
    [r26 release];
    objc_storeStrong((int64_t *)&r23->_adChoicesLinkURL, arg5);
    objc_storeStrong((int64_t *)&r23->_adChoicesText, arg6);
    objc_storeWeak((int64_t *)&r23->_attributes, r22);
    r0 = [r22 adChoicesBackgroundColor];
    r29 = &var_10;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r23 setBackgroundColor:r19];
    }
    else {
            r0 = [UIColor colorWithUInt:0x0 withAlpha:r3];
            r29 = r29;
            r21 = [r0 retain];
            [r23 setBackgroundColor:r21];
            [r21 release];
    }
    [r19 release];
    [r23 setHidden:[r22 adChoicesIsHidden]];
    [r23 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    r0 = [r23 ownerView];
    r29 = r29;
    r21 = [r0 retain];
    if (r26 != 0x0) {
            r2 = 0x0;
            var_E0 = r20;
            r0 = [r23 label];
            r0 = [r0 retain];
            r26 = r0;
            [r0 removeFromSuperview];
            [r23 setLabel:0x0];
            r0 = [r23 iconImageView];
            r29 = r29;
            r0 = [r0 retain];
            r28 = r0;
            if (r0 == 0x0) {
                    [UIImageView alloc];
                    CGRectInset([r23 bounds], @selector(bounds), 0x0);
                    r19 = [r19 initWithFrame:r2];
                    [r28 release];
                    r2 = r19;
                    [r23 addSubview:r2];
                    r28 = r19;
            }
            [r23 frame];
            v8 = v0;
            v9 = v1;
            v11 = v2;
            v10 = v3;
            r0 = [r23 isRightCorner:[r21 corner]];
            var_E8 = r26;
            if (r0 != 0x0) {
                    r26 = r21;
                    [r23 extensionAmount];
            }
            else {
                    [r28 frame];
                    [r23 extensionAmount];
                    r26 = r21;
                    [r21 updateInternalFrame:r2];
                    [r23 updateUI];
                    [r28 setFrame:r2];
            }
            [r28 setContentMode:0x1];
            [r28 setUserInteractionEnabled:0x1];
            [r23 setIconImageView:r28];
            r19 = [[r23 adChoicesIcon] retain];
            var_A8 = r28;
            [r28 retain];
            [r19 loadImageAsyncWithBlock:&var_C8];
            [r19 release];
            [[r23 generateLabel] retain];
            [r23 addSubview:r2];
            [r23 setLabel:r19];
            [r23 updateMask];
            [r23 extend:r25 animate:0x0 persistChanges:0x1];
            r0 = [UITapGestureRecognizer alloc];
            r0 = [r0 initWithTarget:r23 action:@selector(iconImageTapped:)];
            [r0 setNumberOfTapsRequired:0x1];
            [r23 addGestureRecognizer:r0];
            [r0 release];
            [r19 release];
            [var_A8 release];
            [r28 release];
            [var_E8 release];
            r20 = var_E0;
            r21 = r26;
    }
    else {
            r0 = [r23 iconImageView];
            r0 = [r0 retain];
            r25 = r0;
            [r0 removeFromSuperview];
            [r23 setIconImageView:0x0];
            r0 = [r23 label];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if (r0 == 0x0) {
                    [UILabel alloc];
                    [r23 bounds];
                    r19 = [r19 initWithFrame:r2];
                    [r26 release];
                    r26 = r19;
            }
            [r26 setText:@"Sponsored"];
            r19 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r26 setTextColor:r19];
            [r19 release];
            [r26 setAdjustsFontSizeToFitWidth:0x1];
            r19 = [[UIFont systemFontOfSize:0x1] retain];
            [r26 setFont:r19];
            [r19 release];
            [r26 setTextAlignment:0x1];
            [r23 bounds];
            [r26 setFrame:0x1];
            [r23 addSubview:r26];
            [r23 setLabel:r26];
            [r26 release];
            [r25 release];
    }
    [r21 release];
    [r22 release];
    [var_D8 release];
    [r20 release];
    [var_D0 release];
    return;
}

-(struct CGRect)labelFrame {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
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
    [self bounds];
    v8 = v1;
    v9 = v2;
    r21 = [[r19 iconImageView] retain];
    r0 = [r19 ownerView];
    r0 = [r0 retain];
    r23 = [r19 isRightCorner:[r0 corner]];
    [r0 release];
    if (r23 != 0x0) {
            [r21 frame];
    }
    else {
            [r21 bounds];
    }
    [r19 bounds];
    r0 = [r21 release];
    return r0;
}

-(void *)generateLabel {
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
    r20 = self;
    [self labelFrame];
    r19 = [[UILabel alloc] initWithFrame:r2];
    r21 = [[UIFont systemFontOfSize:r2] retain];
    [r19 setFont:r21];
    [r21 release];
    r0 = [r20 adChoicesText];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"AdChoices";
            }
    }
    [r19 setText:r2];
    [r21 release];
    r0 = [r20 attributes];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adChoicesTitleColor];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r19 setTextColor:r2];
    }
    else {
            [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setTextColor:r2];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)updateUI {
    [self updateView:0x1];
    [self updateMask];
    return;
}

-(unsigned long long)maskCornerForCurrentState {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self ownerView];
    r0 = [r0 retain];
    r19 = [r0 corner];
    [r0 release];
    if (r19 <= 0x3) {
            if (r19 != 0x1) {
                    r0 = 0xffffffffffffffff;
                    if (r19 == 0x2) {
                            r0 = 0x4;
                    }
            }
            else {
                    r0 = 0x8;
            }
    }
    else {
            if (r19 != 0x4) {
                    r0 = 0xffffffffffffffff;
                    if (r19 == 0x8) {
                            r0 = 0x1;
                    }
            }
            else {
                    r0 = 0x2;
            }
    }
    return r0;
}

-(bool)isAdChoicesIconAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self adChoicesLinkURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 adChoicesIcon];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)updateMask {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [self ownerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 corner];
    [r0 release];
    if ([r19 isRightCorner:r21] != 0x0) {
            asm { fcsel      d10, d8, d9, ne };
    }
    if ([r19 isRightCorner:r21] != 0x0) {
            asm { fcsel      d11, d9, d8, ne };
    }
    [r19 bounds];
    [r19 bounds];
    v9 = v1;
    [r19 bounds];
    [r19 bounds];
    v11 = v3;
    r2 = [r19 maskCornerForCurrentState];
    r0 = [UIBezierPath bezierPathWithRoundedRect:r2 byRoundingCorners:r3 cornerRadii:r4];
    r29 = r29;
    r21 = [r0 retain];
    if (*qword_1011dcd58 != -0x1) {
            dispatch_once_f(0x1011dcd58, 0x1011c5ce0, 0x100a3d91c);
    }
    r0 = *0x1011dcd60;
    r0 = [r0 layer];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setFrame:r2];
    r0 = objc_retainAutorelease(r21);
    r23 = [r0 CGPath];
    r24 = NSSelectorFromString(@"setPath:");
    ([r20 methodForSelector:r24])(r20, r24, r23);
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setMask:r20];
    [r0 release];
    [r20 release];
    [r21 release];
    return;
}

-(double)extensionAmount {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self isExpandable];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

-(double)relativeHeightForAdSize:(struct CGSize)arg2 forCorner:(unsigned long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = objc_loadWeakRetained((int64_t *)&self->_adChoicesIcon);
    r20 = r0;
    r0 = [r0 release];
    if (r19 <= 0x3) {
            if (r19 == 0x2) {
                    asm { fcsel      d0, d8, d0, eq };
            }
            if (r19 == 0x1) {
                    asm { fcsel      d0, d8, d0, eq };
            }
    }
    else {
            if (r20 != 0x0) {
                    asm { fcsel      d1, d2, d1, ne };
            }
            if (r19 == 0x8) {
                    asm { fcsel      d0, d1, d0, eq };
            }
            if (r19 == 0x4) {
                    asm { fcsel      d0, d1, d0, eq };
            }
    }
    return r0;
}

-(double)relativeWidthForAdSize:(struct CGSize)arg2 forCorner:(unsigned long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r2;
    v8 = v0;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&self->_adChoicesIcon);
    r20 = r0;
    r0 = [r0 release];
    if (r21 <= 0x3) {
            if (r21 != 0x1) {
                    if (r21 == 0x2) {
                            if (r20 != 0x0) {
                                    r0 = [r19 extensionAmount];
                            }
                    }
            }
            else {
                    if (r20 != 0x0) {
                            r0 = [r19 extensionAmount];
                    }
            }
    }
    else {
            if (r21 != 0x4) {
                    if (r21 == 0x8 && r20 != 0x0) {
                            r0 = [r19 extensionAmount];
                    }
            }
            else {
                    if (r20 != 0x0) {
                            r0 = [r19 extensionAmount];
                    }
            }
    }
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, [[FBAdViewControllerProxy proxyWithViewController:arg2] retain]);
    [r20 release];
    return;
}

-(bool)isRightCorner:(unsigned long long)arg2 {
    r2 = arg2;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r2 == 0x2) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r2 == 0x8) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r0 = r8 | r9;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesText, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesLinkURL, 0x0);
    objc_destroyWeak((int64_t *)&self->_iconImageView);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_ownerView);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_label);
    objc_destroyWeak((int64_t *)&self->_adChoicesIcon);
    return;
}

-(void *)adChoicesIcon {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adChoicesIcon);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)label {
    r0 = objc_loadWeakRetained((int64_t *)&self->_label);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_label, arg2);
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isExpandable {
    r0 = *(int8_t *)(int64_t *)&self->_expandable;
    return r0;
}

-(void)setExpandable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_expandable = arg2;
    return;
}

-(void)setOwnerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ownerView, arg2);
    return;
}

-(void *)ownerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_ownerView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)nativeAd {
    r0 = self->_nativeAd;
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

-(void *)iconImageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_iconImageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setIconImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_iconImageView, arg2);
    return;
}

-(void *)adChoicesLinkURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesLinkURL)), 0x0);
    return r0;
}

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(bool)isAnimating {
    r0 = *(int8_t *)(int64_t *)&self->_animating;
    return r0;
}

-(void *)adChoicesText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesText)), 0x0);
    return r0;
}

-(void)setAnimating:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animating = arg2;
    return;
}

-(bool)isExtended {
    r0 = *(int8_t *)(int64_t *)&self->_extended;
    return r0;
}

-(void *)reportingCoordinator {
    r0 = self->_reportingCoordinator;
    return r0;
}

-(void)setExtended:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_extended = arg2;
    return;
}

-(void)setReportingCoordinator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, arg2);
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdChoicesInternalView");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end
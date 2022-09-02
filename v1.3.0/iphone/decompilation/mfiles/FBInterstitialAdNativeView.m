@implementation FBInterstitialAdNativeView

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 carouselPageNumber:(void *)arg4 totalPages:(void *)arg5 {
    return;
}

-(bool)shouldShowWatchAndInstall {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self dataModel] retain];
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 userInterfaceIdiom];
    [r0 release];
    if ([r19 isAppStoreIDPresent] != 0x0 && [r19 type] == 0x2 && [r19 isWatchAndInstallEligible] != 0x0) {
            if (r20 != 0x1) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r20 = r20 & [r0 isWatchAndInstallEnabled];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldShowWatchAndBrowse {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 commandURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[r19 commandURL] retain];
            r0 = [FBAdCommandProcessor getLinkFromCommandURL:r22];
            r29 = r29;
            r20 = [r0 retain];
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = [r0 userInterfaceIdiom];
    [r0 release];
    if ([r19 type] == 0x2) {
            r0 = [r19 isWatchAndBrowseEligible];
            r21 = 0x0;
            if (r22 != 0x1) {
                    r21 = 0x0;
                    if (r20 != 0x0) {
                            r21 = 0x0;
                            if (r0 != 0x0) {
                                    r21 = [FBAdUtility canOpenURLInInternalBrowser:r20];
                            }
                    }
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0xa0;
    var_60 = d15;
    stack[-104] = d14;
    var_50 = d13;
    stack[-88] = d12;
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
    r20 = self;
    [[&var_70 super] layoutSubviews];
    [r20 bounds];
    var_80 = d1;
    stack[-136] = d0;
    v10 = v2;
    var_88 = d3;
    sub_100aabe74();
    v12 = v0;
    v15 = v1;
    r0 = [r20 toolbarView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 toolbarHeight];
            v14 = v0;
            [r19 setFrame:r2];
            d0 = 0x3ff0000000000000;
            r0 = [r19 setAlpha:r2];
            v8 = v15;
            v9 = v12;
    }
    CGRectGetMaxY(r0);
    if (d12 < d0) {
            asm { fcsel      d12, d0, d12, mi };
    }
    r0 = [r20 adContentView];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 translatesAutoresizingMaskIntoConstraints] != 0x0) {
            [r20 setFrame:r2];
    }
    r2 = [FBInterstitialAdBodyView class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            [r20 setContentInset:r2];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)showAd {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 showAd];
    [r0 release];
    return;
}

-(void)destroyAd {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 destroyAd];
    [r0 release];
    return;
}

-(void)setPlaying:(bool)arg2 forced:(bool)arg3 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 setPlaying:arg2 forced:arg3];
    [r0 release];
    return;
}

-(void)setCanPlayVideo:(bool)arg2 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:arg2];
    [r0 release];
    return;
}

-(bool)canPlayVideo {
    r0 = [self adContentView];
    r0 = [r0 retain];
    r20 = [r0 canPlayVideo];
    [r0 release];
    r0 = r20;
    return r0;
}

-(union ?)currentTime {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [self toolbarView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 currentTime];
    }
    else {
            *(int128_t *)r19 = 0x0;
            *(int128_t *)(r19 + 0x8) = 0x0;
            *(r19 + 0x10) = 0x0;
    }
    r0 = [r20 release];
    return r0;
}

-(void)configureVolume:(double)arg2 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 configureVolume:arg2];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeViewDidLoad:self];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidLogImpression:(void *)arg2 withViewabilityValidator:(void *)arg3 withPageNumber:(void *)arg4 withPageTotal:(void *)arg5 {
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeViewDidLogImpression:self withViewabilityValidator:r22 withPageNumber:r20 withPageTotal:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidClick:(void *)arg2 withEvent:(void *)arg3 withCommand:(void *)arg4 skipAppStore:(bool)arg5 withPageNumber:(void *)arg6 withPageTotal:(void *)arg7 {
    r24 = [arg3 retain];
    r22 = [arg4 retain];
    r20 = [arg6 retain];
    r19 = [arg7 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeViewDidClick:self withEvent:r24 withCommand:r22 skipAppStore:arg5 withPageNumber:r20 withPageTotal:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    [r24 release];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidClick:(void *)arg2 withEvent:(void *)arg3 withCommand:(void *)arg4 skipAppStore:(bool)arg5 withPageNumber:(void *)arg6 withPageTotal:(void *)arg7 completionHandler:(void *)arg8 {
    r19 = [arg3 retain];
    r23 = [arg4 retain];
    r21 = [arg6 retain];
    r20 = [arg7 retain];
    r25 = [arg8 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeViewDidClick:self withEvent:r19 withCommand:r23 skipAppStore:arg5 withPageNumber:r21 withPageTotal:r20 completionHandler:r25];
    [r25 release];
    [r20 release];
    [r21 release];
    [r23 release];
    [r19 release];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidInteract:(void *)arg2 withTouchData:(void *)arg3 touchType:(void *)arg4 withCommand:(void *)arg5 skipAppStore:(bool)arg6 withPageNumber:(void *)arg7 withPageTotal:(void *)arg8 completionHandler:(void *)arg9 {
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [arg5 retain];
    r21 = [arg7 retain];
    r25 = [arg8 retain];
    r26 = [arg9 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeViewDidInteract:self withTouchData:r19 touchType:r20 withCommand:r23 skipAppStore:arg6 withPageNumber:r21 withPageTotal:r25 completionHandler:r26];
    [r26 release];
    [r25 release];
    [r21 release];
    [r23 release];
    [r20 release];
    [r19 release];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidProgress:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r20 = &var_28;
            [r2 currentTime];
    }
    else {
            r20 = &var_28;
    }
    r0 = [r19 toolbarView];
    r0 = [r0 retain];
    [r0 setCurrentTime:&var_40];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidEnd:(void *)arg2 {
    r0 = [self toolbarView];
    r0 = [r0 retain];
    [r0 disableForcedView];
    [r0 release];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    r31 = r31 - 0x1f0;
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
    r21 = self;
    r26 = [arg2 retain];
    r25 = [arg3 retain];
    objc_storeStrong((int64_t *)&r21->_dataModel, arg2);
    r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 setBackgroundColor:r22];
    [r22 release];
    if ([r26 type] != 0x3) goto loc_100ae7fdc;

loc_100ae7f30:
    r0 = [FBAdConfigManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isNewStoriesDesignEnabled];
    [r0 release];
    if (r23 == 0x0) goto loc_100ae80fc;

loc_100ae7f6c:
    r0 = [FBAdStoriesView new];
    r23 = r0;
    [r0 setDelegate:r2];
    r0 = @class(UIColor);
    r0 = [r0 colorWithUInt:0x23272e withAlpha:r3];
    r29 = r29;
    r19 = [r0 retain];
    [r21 setBackgroundColor:r19];
    [r19 release];
    r19 = 0x1;
    goto loc_100ae8138;

loc_100ae8138:
    r20 = 0x1;
    goto loc_100ae813c;

loc_100ae813c:
    r27 = @selector(setDelegate:);
    var_190 = r25;
    [r23 loadAdFromDataModel:r26 placementDefinition:r25];
    [r21 addSubview:r23];
    [r21 setAdContentView:r23];
    var_188 = r26;
    var_198 = r27;
    if ((r20 & 0x1) != 0x0) {
            if ((r19 & 0x1) != 0x0) {
                    r0 = [FBInterstitialAdToolbarView newDesign];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            else {
                    r0 = [FBInterstitialAdToolbarView oldDesign];
                    r29 = r29;
                    r0 = [r0 retain];
                    r0 = [r0 retain];
            }
            r24 = r0;
            [r0 release];
            r2 = r21;
            [r24 setDelegate:r2];
            r19 = [[r26 icon] retain];
            [r24 setIcon:r19];
            [r19 release];
            r0 = [r26 title];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r0;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [r24 setTitle:r2];
            [r19 release];
            [r24 setAdIconType:[FBInterstitialAdToolbarView toolbarIconTypeForDataModel:r26]];
            r19 = [[r26 localizedSponsoredText] retain];
            [r24 setSubtitle:r19];
            [r19 release];
            r19 = [[r26 localizedSkipText] retain];
            [r24 setSkipText:r19];
            [r19 release];
            r0 = [r26 localizedRewardInText];
            r29 = r29;
            r19 = [r0 retain];
            [r24 setRewardInFormat:r19];
            [r19 release];
            var_1A0 = r23;
            if (r26 != 0x0) {
                    r19 = &var_118;
                    [r26 forcedViewTime];
            }
            else {
                    r19 = &var_118;
            }
            [r24 setForcedViewTime:&var_130];
            r20 = [[r24 adChoicesButton] retain];
            r19 = [[r26 adChoicesText] retain];
            r22 = [[r26 localizedCancelText] retain];
            r23 = [[r26 adChoicesLinkURL] retain];
            r28 = [[r26 inlineClientToken] retain];
            r0 = [r21 interstitialAdToolbarRootViewControllerForAdChoicesPresentation:r24];
            r29 = r29;
            r26 = [r0 retain];
            [r20 configureWithText:r19 cancelText:r22 url:r23 inlineClientToken:r28 rootViewController:r26];
            r0 = r26;
            r26 = var_188;
            [r0 release];
            [r28 release];
            [r23 release];
            [r22 release];
            [r19 release];
            [r20 release];
            [*(&@class(MoPubAdapterMediatedNativeAd) + 0x300) toolbarIconTypeForDataModel:r2];
            [r24 setAdIconType:r2];
            [r21 addSubview:r24];
            if (([r24 translatesAutoresizingMaskIntoConstraints] & 0x1) == 0x0) {
                    r0 = [r24 leadingAnchor];
                    r0 = [r0 retain];
                    r19 = r0;
                    var_1A8 = r0;
                    r0 = [r21 an_leadingSafeAnchor];
                    r0 = [r0 retain];
                    var_1B0 = r0;
                    var_1C0 = [[r19 constraintEqualToAnchor:r0] retain];
                    r28 = [[r24 trailingAnchor] retain];
                    r23 = [[r21 an_trailingSafeAnchor] retain];
                    r19 = [[r28 constraintEqualToAnchor:r23] retain];
                    r22 = [[r24 topAnchor] retain];
                    r20 = [[r21 an_topSafeAnchor] retain];
                    r26 = [[r22 constraintEqualToAnchor:r20] retain];
                    r0 = [NSArray arrayWithObjects:r29 - 0x88 count:0x3];
                    r29 = r29;
                    r27 = [r0 retain];
                    [NSLayoutConstraint activateConstraints:r27];
                    [r27 release];
                    r0 = r26;
                    r26 = var_188;
                    [r0 release];
                    [r20 release];
                    [r22 release];
                    [r19 release];
                    [r23 release];
                    [r28 release];
                    [var_1C0 release];
                    [var_1B0 release];
                    [var_1A8 release];
            }
            [r21 setToolbarView:r24];
            [FBInterstitialAdBodyView class];
            r23 = var_1A0;
            if ([r23 isKindOfClass:r2] != 0x0) {
                    [r23 retain];
                    objc_initWeak(r29 - 0xb0, r21);
                    objc_copyWeak(&var_158 + 0x20, r29 - 0xb0);
                    [r20 setPreferredOverlayTextColorTypeChanged:&var_158];
                    objc_copyWeak(&var_180 + 0x20, r29 - 0xb0);
                    [r20 setOnRequestToggleOverlayViews:&var_180];
                    objc_destroyWeak(&var_180 + 0x20);
                    objc_destroyWeak(&var_158 + 0x20);
                    objc_destroyWeak(r29 - 0xb0);
                    [r20 release];
                    r23 = r27;
            }
            r27 = var_198;
    }
    else {
            r24 = 0x0;
    }
    if ([r23 translatesAutoresizingMaskIntoConstraints] != 0x0) {
            r22 = var_190;
    }
    else {
            r0 = [r24 bottomAnchor];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            var_1A8 = r24;
            if (r0 != 0x0) {
                    r0 = [r19 retain];
            }
            else {
                    r0 = [r21 an_topSafeAnchor];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            r24 = r0;
            [r19 release];
            r0 = [r23 topAnchor];
            r0 = [r0 retain];
            var_1B0 = r0;
            var_1B8 = [[r0 constraintEqualToAnchor:r24] retain];
            r0 = [r23 leadingAnchor];
            r0 = [r0 retain];
            r22 = r0;
            var_1C8 = r0;
            r0 = [r21 leadingAnchor];
            r0 = [r0 retain];
            var_1D0 = r0;
            var_1D8 = [[r22 constraintEqualToAnchor:r0] retain];
            r27 = [[r23 trailingAnchor] retain];
            r19 = [[r21 trailingAnchor] retain];
            r22 = [[r27 constraintEqualToAnchor:r19] retain];
            r0 = [r23 bottomAnchor];
            r0 = [r0 retain];
            r25 = r23;
            r23 = r0;
            r28 = [[r21 bottomAnchor] retain];
            r26 = [[r23 constraintEqualToAnchor:r28] retain];
            r0 = [NSArray arrayWithObjects:r29 - 0xa8 count:0x4];
            r29 = r29;
            r20 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r20];
            [r20 release];
            [r26 release];
            [r28 release];
            r0 = r23;
            r23 = r25;
            [r0 release];
            [r22 release];
            [r19 release];
            [r27 release];
            [var_1D8 release];
            [var_1D0 release];
            [var_1C8 release];
            [var_1B8 release];
            [var_1B0 release];
            [r24 release];
            r22 = var_190;
            r26 = var_188;
            r27 = var_198;
            r24 = var_1A8;
    }
    var_70 = **___stack_chk_guard;
    r0 = [r21 delegate];
    r0 = [r0 retain];
    r20 = [[r0 interstitialAdNativeViewRootViewController:r21] retain];
    [r0 release];
    r19 = [[FBAdReportingCoordinator alloc] initWithData:r26 viewController:r20];
    [r21 setReportingCoordinator:r19];
    [r19 release];
    r0 = [r21 reportingCoordinator];
    r0 = [r0 retain];
    objc_msgSend(r0, r27);
    [r19 release];
    [r20 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r26 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;

loc_100ae80fc:
    r0 = @class(FBInterstitialAdMultiBodyView);
    goto loc_100ae8110;

loc_100ae8110:
    r0 = [r0 new];
    r23 = r0;
    [r0 setDelegate:r2];
    r19 = 0x0;
    goto loc_100ae8138;

loc_100ae7fdc:
    if (([r21 shouldShowWatchAndBrowse] & 0x1) != 0x0 || [r21 shouldShowWatchAndInstall] != 0x0) goto loc_100ae8004;

loc_100ae8108:
    r0 = @class(FBInterstitialAdBodyView);
    goto loc_100ae8110;

loc_100ae8004:
    r23 = [FBInterstitialAdWatchAndActionView new];
    objc_initWeak(r29 - 0xb0, r21);
    objc_copyWeak((r29 - 0xd8) + 0x20, r29 - 0xb0);
    [r23 setOnClose:r29 - 0xd8];
    objc_copyWeak(&var_100 + 0x20, r29 - 0xb0);
    [r23 setOnInfo:&var_100];
    [r23 setDelegate:r2];
    objc_destroyWeak(&var_100 + 0x20);
    objc_destroyWeak((r29 - 0xd8) + 0x20);
    objc_destroyWeak(r29 - 0xb0);
    r19 = 0x0;
    r20 = 0x0;
    goto loc_100ae813c;
}

-(void)adDisplayableView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeView:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)interstitialAdToolbarRootViewControllerForAdChoicesPresentation:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 interstitialAdNativeViewRootViewController:self] retain];
    [r0 release];
    r20 = [[FBAdViewControllerProxy proxyWithViewController:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)interstitialAdToolbarDidClose:(void *)arg2 withTouchData:(void *)arg3 {
    r22 = [arg3 retain];
    r20 = [[FBAdEventManager sharedManager] retain];
    r0 = [self dataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    [r20 logCloseEventForToken:r23 withExtraData:r22];
    [r22 release];
    [r23 release];
    [r0 release];
    [r20 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeViewDidClose:self];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidTapAdChoices:(void *)arg2 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:0x0];
    [r0 setPlaying:0x0 forced:0x0];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidCloseAdChoices:(void *)arg2 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:0x1];
    [r0 setPlaying:0x1 forced:0x0];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidTapAdInfo:(void *)arg2 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setCanPlayVideo:0x0];
    [r20 setPlaying:0x0 forced:0x0];
    r0 = [self reportingCoordinator];
    r0 = [r0 retain];
    [r0 startAdReportingFlow];
    [r0 release];
    [r20 release];
    return;
}

-(void)adReportingCoordinatorDidCompleteFlow:(void *)arg2 reason:(void *)arg3 flowType:(long long)arg4 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdNativeViewDidClose:self];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCancelFlow:(void *)arg2 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:0x1];
    [r0 setPlaying:0x1 forced:0x0];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(void *)arg2 {
    r0 = [self adContentView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:0x1];
    [r0 setPlaying:0x1 forced:0x0];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_destroyWeak((int64_t *)&self->_adContentView);
    objc_destroyWeak((int64_t *)&self->_toolbarView);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)toolbarView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_toolbarView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_toolbarView, arg2);
    return;
}

-(void)setAdContentView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adContentView, arg2);
    return;
}

-(void *)reportingCoordinator {
    r0 = self->_reportingCoordinator;
    return r0;
}

-(void *)adContentView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adContentView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setReportingCoordinator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, arg2);
    return;
}

@end
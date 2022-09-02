@implementation VungleAdViewController

-(bool)incentivized {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self legacyAd];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 incentivized] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithNibName:(void *)arg2 bundle:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [[&var_30 super] initWithNibName:r21 bundle:arg3];
    [r21 release];
    r0 = r0;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self->_videoPlayer stop];
    [[&var_20 super] dealloc];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = self->_supportedOrientations;
    return r0;
}

-(bool)shouldAutorotateToInterfaceOrientation:(long long)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_supportedOrientations));
    r8 = *(r0 + r8);
    r9 = 0x1 << arg2;
    asm { sxtw       x9, w9 };
    if ((r8 & r9) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)viewDidDisappear:(bool)arg2 {
    r31 = r31 - 0x50;
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
    [[&var_40 super] viewDidDisappear:arg2];
    if (*(int8_t *)(int64_t *)&r19->_willShowProductView == 0x0) {
            r21 = (int64_t *)&r19->_interstitialAdDelegate;
            r0 = objc_loadWeakRetained(r21);
            r23 = [r0 respondsToSelector:@selector(didDismissInterstitialAdViewControllerForPlacement:reportable:), r3];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = objc_loadWeakRetained(r21);
                    r22 = [[r19 placement] retain];
                    r0 = [r19 report];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 didDismissInterstitialAdViewControllerForPlacement:r22 reportable:r23];
                    [r23 release];
                    [r22 release];
                    [r21 release];
            }
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] viewWillAppear:arg2];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r19->_statusBarHidden = [r0 isStatusBarHidden];
    [r0 release];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    [r0 setStatusBarHidden:0x1];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(appDidEnterBackground:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(appWillEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(appDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(appDidBecomeActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r21 = (int64_t *)&r19->_interstitialAdDelegate;
    r0 = objc_loadWeakRetained(r21);
    r23 = [r0 respondsToSelector:@selector(willPresentInterstitialAdViewControllerForPlacement:reportable:), @selector(appWillResignActive:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = objc_loadWeakRetained(r21);
            r22 = [[r19 placement] retain];
            [r21 willPresentInterstitialAdViewControllerForPlacement:r22 reportable:r19->_report];
            [r22 release];
            [r21 release];
    }
    [r19 generateMoatAdIdentifiers];
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    [[&var_40 super] viewWillDisappear:r2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_willShowProductView));
    if (*(int8_t *)(r19 + r22) == 0x0) {
            [r19 finishAdView:r20 ^ 0x1];
            r20 = *(int8_t *)(int64_t *)&r19->_statusBarHidden;
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setStatusBarHidden:r20];
            [r0 release];
            if (*(int8_t *)(r19 + r22) == 0x0) {
                    r21 = (int64_t *)&r19->_interstitialAdDelegate;
                    r0 = objc_loadWeakRetained(r21);
                    r23 = [r0 respondsToSelector:@selector(willDismissInterstitialAdViewControllerForPlacement:reportable:), r3];
                    [r0 release];
                    if (r23 != 0x0) {
                            r21 = objc_loadWeakRetained(r21);
                            r22 = [[r19 placement] retain];
                            [r21 willDismissInterstitialAdViewControllerForPlacement:r22 reportable:r19->_report];
                            [r22 release];
                            [r21 release];
                    }
            }
    }
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x50;
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
    [[&var_40 super] viewDidAppear:arg2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_removeLastBundle));
    *(int8_t *)(r19 + r22) = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_didPlayOnce));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(int64_t *)&r19->_videoIsPlaying = 0x1;
            *(int8_t *)(r19 + r8) = 0x1;
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r19->_adStart = d0;
            [r0 release];
            r0 = [r19 legacyAd];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setViewed:0x1];
            [r0 release];
            [r19 updateReportAd];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_videoPlayer));
            if ([*(r19 + r21) canPlay] != 0x0) {
                    [r19 updateConsentStatus];
                    [*(r19 + r21) play];
                    if ([r19 isConsentDialogRequired] != 0x0) {
                            [*(r19 + r21) pause];
                            [r19 setUpConsentAlert];
                            [r19 setDefinesPresentationContext:0x1];
                            r0 = [r19 consentAlertController];
                            r0 = [r0 retain];
                            [r0 setModalPresentationStyle:0x6];
                            [r0 release];
                            r21 = [[r19 consentAlertController] retain];
                            [r19 presentViewController:r21 animated:0x1 completion:0x0];
                            [r21 release];
                            r21 = [[VNGUserConsentInfoModel sharedModel] retain];
                            r0 = [VNGUserLocalConsentMessage sharedMessage];
                            r0 = [r0 retain];
                            r22 = r0;
                            r23 = [[r0 consentMessageVersion] retain];
                            r0 = @class(NSDate);
                            r0 = [r0 date];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r21 updateWithConsentStatus:@"opted_out_by_timeout" consentSource:@"vungle_modal" consentMessageVersion:r23 consentTimeStamp:r20 consentRequired:[r19 isConsentRequired]];
                            [r20 release];
                            [r23 release];
                            [r22 release];
                            [r21 release];
                    }
            }
            else {
                    [*(r19 + r21) stop];
                    *(int8_t *)(r19 + r22) = 0x1;
            }
            r21 = (int64_t *)&r19->_interstitialAdDelegate;
            r0 = objc_loadWeakRetained(r21);
            r23 = [r0 respondsToSelector:@selector(didPresentInterstitialAdViewControllerForPlacement:)];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = objc_loadWeakRetained(r21);
                    r19 = [[r19 placement] retain];
                    [r21 didPresentInterstitialAdViewControllerForPlacement:r19];
                    [r19 release];
                    [r21 release];
            }
    }
    return;
}

-(void)didReceiveMemoryWarning {
    [[&var_10 super] didReceiveMemoryWarning];
    return;
}

-(void)finishAdView:(bool)arg2 {
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
    r20 = arg2;
    r19 = self;
    [self updateViewProgressWithPlayer:self->_videoPlayer];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_finished));
    if (*(int8_t *)(r19 + r22) == 0x0) {
            r0 = [r19 report];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setReportStatus:0x2];
            [r0 release];
            [r19 updateReportAd];
            *(int8_t *)(r19 + r22) = 0x1;
            r22 = (int64_t *)&r19->_interstitialAdDelegate;
            r0 = objc_loadWeakRetained(r22);
            r24 = [r0 respondsToSelector:@selector(didFinishAdViewForPlacement:withSuccess:), r3];
            [r0 release];
            if (r24 != 0x0) {
                    r22 = objc_loadWeakRetained(r22);
                    r0 = [r19 placement];
                    r29 = r29;
                    r23 = [r0 retain];
                    r3 = [r19 isAdSuccessfullyViewed];
                    [r22 didFinishAdViewForPlacement:r23 withSuccess:r3];
                    [r23 release];
                    [r22 release];
            }
    }
    if (r20 != 0x0) {
            r21 = (int64_t *)&r19->_interstitialAdDelegate;
            r0 = objc_loadWeakRetained(r21);
            r23 = [r0 respondsToSelector:@selector(willBackgroundAdViewControllerForPlacement:reportable:), r3];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = objc_loadWeakRetained(r21);
                    r22 = [[r19 placement] retain];
                    r19 = [[r19 report] retain];
                    [r21 willBackgroundAdViewControllerForPlacement:r22 reportable:r19];
                    [r19 release];
                    [r22 release];
                    [r21 release];
            }
    }
    return;
}

-(void)viewWillTransitionToSize:(struct CGSize)arg2 withTransitionCoordinator:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [r2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[&var_38 super] viewWillTransitionToSize:r19 withTransitionCoordinator:r3];
    objc_copyWeak(&var_60 + 0x20, &saved_fp - 0x28);
    [r19 animateAlongsideTransition:0x0 completion:&var_60];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&saved_fp - 0x28);
    [r19 release];
    return;
}

-(void)addClickSequenceToReport:(void *)arg2 {
    [self->_report addClickSequence:arg2];
    return;
}

-(void)videoCTAClicked:(void *)arg2 {
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
    r21 = [arg2 retain];
    [r19 updateViewProgressWithPlayer:r21];
    r0 = [r19 viewProgressWithPlayer:r21 userAction:@"cta"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_report));
    [*(r19 + r22) updateUserActionsWith:r20];
    [r19 presentAppStoreView];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_ctaClicked));
    if (*(int8_t *)(r19 + r23) == 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            r21 = r0;
            [r0 timeIntervalSince1970];
            asm { fcvtzu     x2, d0 };
            [*(r19 + r22) setTtDownload:r2];
            [r21 release];
            [*(r19 + r22) setDidTapCTAButton:0x1];
            *(int8_t *)(r19 + r23) = 0x1;
    }
    [r20 release];
    return;
}

-(void)vungleVideoPlayerDidFinish:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_videoIsPlaying = 0x0;
    r21 = [arg2 retain];
    [r19 updateViewProgressWithPlayer:r21];
    r0 = [r19 playStateWithPlayer:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [r19->_report updatePlayInfoWith:r20];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
    if (*(r19 + r22) != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_firstView));
            if (*(int8_t *)(r19 + r21) != 0x0) {
                    [r19 dispatchEventNamed:@"postroll_view" subCategory:0x0 max:0x1];
            }
            *(int8_t *)(r19 + r21) = 0x0;
            [r19->_videoPlayer setHidden:0x1];
            [*(r19 + r22) setHidden:0x0];
            [*(r19 + r22) load];
    }
    else {
            r0 = [r19 doneWithAdBlock];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 doneWithAdBlock];
                    r0 = [r0 retain];
                    (*(r0 + 0x10))();
                    [r19 release];
            }
    }
    [r20 release];
    return;
}

-(void)videoActionButtonClicked:(void *)arg2 withName:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self viewProgressWithPlayer:r21 userAction:arg3] retain];
    [r21 release];
    [self->_report updateUserActionsWith:r19];
    [r19 release];
    return;
}

-(void)sendReportIncentivized {
    r20 = [[self reportIncentivizedController] retain];
    r19 = [[self report] retain];
    [r20 sendReportIncentivized:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)updateReportAd {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_finished == 0x0) {
            r31 = r31 - 0x50;
            var_40 = d9;
            stack[-56] = d8;
            var_30 = r22;
            stack[-40] = r21;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r19 = r0;
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            r0 = [VungleUtil convertFromSecondsToMilliseconds:r2];
            r29 = &var_10;
            r0 = [r0 retain];
            r21 = [r0 integerValue];
            [r0 release];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_report));
            [*(r19 + r22) setAdDuration:r21];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_reportAdController);
            r21 = [r0 saveReport:*(r19 + r22) error:&var_48];
            r19 = [var_48 retain];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    r21 = [[r19 localizedDescription] retain];
                    [VungleLogCoordinator log:@"Error caching report %@"];
                    [r21 release];
            }
            [r19 release];
    }
    return;
}

-(void)updateLatestPlayInfo {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self viewProgressWithPlayer:self->_videoPlayer userAction:@"video_viewed"] retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_report));
    [*(self + r23) updateUserActionsWith:r19];
    r22 = [[self videoPlayer] retain];
    r0 = [self playStateWithPlayer:r22];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [*(self + r23) updatePlayInfoWith:r20];
    r0 = objc_loadWeakRetained((int64_t *)&self->_reportAdController);
    r23 = [r0 saveReport:*(self + r23) error:&var_38];
    r21 = [var_38 retain];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            r23 = [[r21 localizedDescription] retain];
            [VungleLogCoordinator log:@"Error caching report %@"];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithPlacement:(void *)arg2 reportAdController:(void *)arg3 videoPlayer:(void *)arg4 playOptions:(void *)arg5 interstitialAdDelegate:(void *)arg6 reportIncentivizedController:(void *)arg7 configController:(void *)arg8 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x190;
    r20 = arg4;
    r25 = [arg2 retain];
    r23 = [arg3 retain];
    r26 = [r20 retain];
    r27 = [arg5 retain];
    r21 = [arg6 retain];
    r22 = [arg7 retain];
    r0 = [[&var_100 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            var_1B8 = r26;
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 bounds];
            [r0 release];
            var_1D8 = [objc_alloc() initWithFrame:r2];
            [r24 setView:r2];
            [r24 setEdgesForExtendedLayout:0xf];
            [r24 setExtendedLayoutIncludesOpaqueBars:0x1];
            [r24 setPlacement:r25];
            var_1C8 = r21;
            [r24 setInterstitialAdDelegate:r21];
            var_1B0 = r23;
            [r24 setReportAdController:r23];
            var_1D0 = r22;
            [r24 setReportIncentivizedController:r22];
            *(int8_t *)(int64_t *)&r24->_willShowProductView = 0x0;
            r24->_supportedOrientations = [r27 supportedOrientations];
            r0 = objc_alloc();
            var_1A8 = r25;
            r0 = [r0 initWithPlacement:r25];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_report));
            r8 = *(r24 + r23);
            *(r24 + r23) = r0;
            [r8 release];
            r0 = [r24 placement];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 adUnit];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 cacheKey];
            r29 = r29;
            r22 = [r0 retain];
            [*(r24 + r23) setAdCacheKey:r22];
            [r22 release];
            [r21 release];
            [r19 release];
            if ([r27 ordinalView] != 0x0) {
                    [*(r24 + r23) setOrdinalView:[r27 ordinalView]];
            }
            var_190 = r23;
            var_1C0 = r27;
            objc_storeStrong((int64_t *)&r24->_videoPlayer, r20);
            var_1E8 = (int64_t *)&r24->_videoPlayer;
            [r24->_videoPlayer setAdViewController:r24];
            var_130 = q0;
            r0 = [r24 legacyAd];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 parts];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_150 = r20;
            var_1A0 = r1;
            r0 = objc_msgSend(r20, r1);
            r19 = r24;
            var_148 = r24;
            if (r0 != 0x0) {
                    r25 = r0;
                    r23 = *var_130;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_130 != r23) {
                                            objc_enumerationMutation(var_150);
                                    }
                                    r26 = *(var_138 + r21 * 0x8);
                                    if ([r26 type] == 0x1) {
                                            r0 = [r26 remotePath];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [*(r19 + var_190) setUrl:r24];
                                            [r24 release];
                                    }
                                    if ([r26 type] == 0x2) {
                                            r0 = [r26 parentAdUnit];
                                            r0 = [r0 retain];
                                            r20 = [[r0 cacheKey] retain];
                                            r24 = [[VNGPersistenceManager URLForAdKey:r20] retain];
                                            [r20 release];
                                            [r0 release];
                                            r0 = [r26 remotePath];
                                            r0 = [r0 retain];
                                            r20 = [[r0 lastPathComponent] retain];
                                            r26 = [[r24 URLByAppendingPathComponent:r20] retain];
                                            [r24 release];
                                            [r20 release];
                                            [r0 release];
                                            r19 = [[r26 URLByDeletingPathExtension] retain];
                                            [r26 release];
                                            r0 = [r19 URLByAppendingPathComponent:@"index.html"];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            [r19 release];
                                            r0 = objc_alloc();
                                            r0 = [r0 initWithURL:r20];
                                            r19 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
                                            r8 = *(var_148 + r19);
                                            *(var_148 + r19) = r0;
                                            [r8 release];
                                            r0 = *(var_148 + r19);
                                            r19 = var_148;
                                            [r0 setHidden:r2];
                                            [r20 release];
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r25);
                            r0 = objc_msgSend(var_150, var_1A0);
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            [var_150 release];
            r20 = var_1E8;
            if (*r20 != 0x0) {
                    r0 = [r19 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addSubview:r2];
                    r0 = r19;
                    r19 = var_148;
                    [r0 release];
            }
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
            r0 = *(r19 + r20);
            r25 = var_1A8;
            r26 = var_1B8;
            r23 = r19;
            r28 = @selector(legacyAd);
            if (r0 != 0x0) {
                    [r0 setAdViewController:r2];
                    r0 = [r23 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addSubview:r2];
                    [r19 release];
            }
            r0 = [r23 view];
            r0 = [r0 retain];
            [r0 setAutoresizesSubviews:0x1];
            [r0 release];
            r0 = [r23 view];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r19 = [[r23 view] retain];
            r20 = [[UIColor blackColor] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
            [r19 release];
            r0 = objc_msgSend(r23, r28);
            r0 = [r0 retain];
            r21 = [[r0 ctaURLResolved] retain];
            r19 = [[VungleUtil storeParametersFromURL:r21] retain];
            [r23 setStoreOptions:r19];
            [r19 release];
            [r21 release];
            [r0 release];
            r0 = [r23 storeOptions];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r23 = var_1B0;
            r27 = var_1C0;
            if (r0 != 0x0) {
                    r21 = [VungleUtil isOrientationLandscapeOnly];
                    [r20 release];
                    if ((r21 & 0x1) == 0x0) {
                            r0 = [var_148 storeOptions];
                            r0 = [r0 retain];
                            r21 = [[r0 objectForKeyedSubscript:**_SKStoreProductParameterITunesItemIdentifier] retain];
                            [var_148 setAppStoreId:r21];
                            [r21 release];
                            [r0 release];
                            r20 = objc_alloc();
                            r0 = [var_148 storeOptions];
                            r29 = r29;
                            r19 = [r0 retain];
                            r0 = [r20 initProductViewProviderWithWithAppStoreParams:r19];
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_storeProvider));
                            r8 = *(var_148 + r20);
                            *(var_148 + r20) = r0;
                            [r8 release];
                            [r19 release];
                            [*(var_148 + r20) setDelegate:var_148];
                    }
            }
            else {
                    [r20 release];
            }
            r24 = var_148;
            r0 = objc_msgSend(r24, r28);
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 tpatEvents];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_events));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            [r19 release];
            r19 = [[NSMutableDictionary dictionary] retain];
            [r24 setEventsDisplayed:r19];
            [r19 release];
            *(int8_t *)(int64_t *)&r24->_firstView = 0x1;
            *(int8_t *)(int64_t *)&r24->_didPlayOnce = 0x0;
            *(int8_t *)(int64_t *)&r24->_storeLoaded = 0x0;
            *(int8_t *)(int64_t *)&r24->_ctaClicked = 0x0;
            *(int8_t *)(int64_t *)&r24->_isOpenAppStore = 0x0;
            [var_1D8 release];
            r22 = var_1D0;
            r21 = var_1C8;
    }
    var_70 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r27 release];
    [r26 release];
    [r23 release];
    [r25 release];
    if (**___stack_chk_guard == var_70) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)resetTpatEventCount:(void *)arg2 subCategory:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[NSString stringWithFormat:@"%@-%@"] retain];
    [r21 release];
    r20 = [[self eventsDisplayed] retain];
    r21 = [@(0x0) retain];
    [r20 setValue:r21 forKey:r19];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)updateConsentStatus {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [VNGUserConsentInfoModel sharedModel];
    r0 = [r0 retain];
    r20 = r0;
    [r19 setConsentRequired:[r0 consentRequired]];
    r0 = [r20 consentStatus];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 setConsentStatus:r22];
    [r22 release];
    if (([r19 isConsentRequired] & 0x1) != 0x0) {
            r0 = [r19 consentStatus];
            r0 = [r0 retain];
            [r19 setConsentDialogRequired:[r0 isEqualToString:@"unknown"]];
            [r0 release];
    }
    else {
            [r19 setConsentDialogRequired:0x0];
    }
    [r20 release];
    return;
}

-(void)setUpConsentAlert {
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
    r19 = self;
    r0 = [VNGUserLocalConsentMessage sharedMessage];
    r0 = [r0 retain];
    r22 = [[r0 consentMessageTitleText] retain];
    r23 = [[r0 consentMessageBodyText] retain];
    r21 = [[UIAlertController alertControllerWithTitle:r22 message:r23 preferredStyle:0x1] retain];
    [r19 setConsentAlertController:r21];
    [r21 release];
    [r23 release];
    [r22 release];
    r21 = @class(UIAlertAction);
    r22 = [[r0 consentAcceptButtonText] retain];
    r0 = [r0 retain];
    var_68 = r0;
    r20 = [[r21 actionWithTitle:r22 style:0x0 handler:&var_90] retain];
    [r22 release];
    r22 = @class(UIAlertAction);
    r25 = [[r0 consentDenyButtonText] retain];
    r0 = [r0 retain];
    r21 = r0;
    var_98 = r0;
    r22 = [[r22 actionWithTitle:r25 style:0x0 handler:&var_C0] retain];
    [r25 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r23 release];
    r0 = [r19 consentAlertController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    r1 = @selector(addAction:);
    if (s8 < 0x4022000000000000) {
            objc_msgSend(r0, r1);
            [r25 release];
            r0 = [r19 consentAlertController];
            r0 = [r0 retain];
            r19 = r0;
            r1 = @selector(addAction:);
    }
    else {
            objc_msgSend(r0, r1);
            [r25 release];
            r0 = [r19 consentAlertController];
            r0 = [r0 retain];
            [r0 addAction:r2];
            [r25 release];
            r0 = [r19 consentAlertController];
            r0 = [r0 retain];
            r19 = r0;
            r1 = @selector(setPreferredAction:);
    }
    objc_msgSend(r0, r1);
    [r19 release];
    [r22 release];
    [var_98 release];
    [r20 release];
    [var_68 release];
    [r21 release];
    return;
}

-(void *)playStateWithPlayer:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x90;
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
    r20 = self;
    var_48 = **___stack_chk_guard;
    r0 = [self videoPlayer];
    r0 = [r0 retain];
    [r0 currentPosition];
    [r0 release];
    asm { fmax       d8, d8, d0 };
    r19 = @class(VungleUtil);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_videoPlayer));
    [*(r20 + r24) startTime];
    r19 = [[r19 convertFromSecondsToMilliseconds:r2] retain];
    r22 = @class(VungleUtil);
    [*(r20 + r24) videoLength];
    r22 = [[r22 convertFromSecondsToMilliseconds:r2] retain];
    r21 = [[VungleUtil convertFromSecondsToMilliseconds:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3];
    r20 = [r0 retain];
    [r21 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)dispatchEventNamed:(void *)arg2 subCategory:(void *)arg3 max:(int)arg4 {
    r31 = r31 - 0x180;
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
    r25 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_events));
    r0 = *(r21 + r26);
    if (r0 == 0x0) goto loc_1006119e8;

loc_1006116c8:
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1006119e8;

loc_1006116f0:
    r23 = @selector(objectForKey:);
    r28 = [[NSString stringWithFormat:@"%@-%@"] retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_eventsDisplayed));
    r0 = *(r21 + r27);
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r22 = r0;
            [r0 intValue] + 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r24 = [r0 retain];
            [r22 release];
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r24 = [r0 retain];
    }
    [*(r21 + r27) setValue:r24 forKey:r28];
    if (r25 < 0x1 || [r24 intValue] <= r25) goto loc_1006117dc;

loc_1006119d8:
    [r24 release];
    [r28 release];
    goto loc_1006119e8;

loc_1006119e8:
    var_70 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;

loc_1006117dc:
    r23 = @selector(objectForKey:);
    r0 = *(r21 + r26);
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 == 0x0) goto loc_10061199c;

loc_1006117fc:
    [NSArray class];
    if ([r25 isKindOfClass:r2] == 0x0 || [r25 count] == 0x0) goto loc_1006119d0;

loc_100611844:
    r27 = @selector(isKindOfClass:);
    r0 = [r25 objectAtIndex:0x0];
    r29 = r29;
    r22 = [r0 retain];
    [NSDictionary class];
    r26 = objc_msgSend(r22, r27);
    [r22 release];
    if (r26 == 0x0) goto loc_1006119bc;

loc_100611894:
    var_148 = r24;
    stack[-336] = r28;
    var_120 = q0;
    var_150 = r25;
    r0 = [r25 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_158 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100611a78;

loc_1006118d4:
    r27 = r0;
    r25 = *var_120;
    goto loc_1006118ec;

loc_1006118ec:
    r24 = 0x0;
    goto loc_1006118f4;

loc_1006118f4:
    if (*var_120 != r25) {
            objc_enumerationMutation(var_138);
    }
    r23 = @selector(objectForKey:);
    r22 = *(var_128 + r24 * 0x8);
    r0 = objc_msgSend(r22, r23);
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (r0 == 0x0) goto loc_100611960;

loc_100611938:
    [r28 floatValue];
    objc_msgSend(r20, r26);
    asm { fabd       s0, s8, s0 };
    if (s0 < s9) goto loc_100611a34;

loc_100611960:
    [r28 release];
    r24 = r24 + 0x1;
    if (r24 < r27) goto loc_1006118f4;

loc_100611974:
    r0 = objc_msgSend(var_138, var_158);
    r27 = r0;
    if (r0 != 0x0) goto loc_1006118ec;

loc_100611a78:
    [var_138 release];
    r24 = var_148;
    r28 = stack[-336];
    r25 = var_150;
    goto loc_1006119d0;

loc_1006119d0:
    [r25 release];
    goto loc_1006119d8;

loc_100611a34:
    r22 = [[r22 objectForKey:r2] retain];
    [r21 dispatchEventURLs:r22];
    [r22 release];
    [r28 release];
    goto loc_100611a78;

loc_1006119bc:
    r1 = @selector(dispatchEventURLs:);
    r0 = r21;
    goto loc_1006119cc;

loc_1006119cc:
    objc_msgSend(r0, r1);
    goto loc_1006119d0;

loc_10061199c:
    r0 = @class(VungleLogCoordinator);
    r1 = @selector(log:);
    goto loc_1006119cc;
}

-(void *)viewProgressWithPlayer:(void *)arg2 userAction:(void *)arg3 {
    r2 = arg2;
    r31 = r31 - 0x90;
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
    var_48 = **___stack_chk_guard;
    r19 = [arg3 retain];
    r0 = [self videoPlayer];
    r0 = [r0 retain];
    [r0 currentPosition];
    [r0 release];
    asm { fmax       d0, d8, d0 };
    r20 = [[VungleUtil convertFromSecondsToMilliseconds:r2] retain];
    r22 = @class(VungleUtil);
    r0 = [NSDate date];
    r0 = [r0 retain];
    r23 = r0;
    [r0 timeIntervalSince1970];
    r22 = [[r22 convertFromSecondsToMilliseconds:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_80 count:0x3];
    r21 = [r0 retain];
    [r19 release];
    [r22 release];
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)legacyAd {
    r0 = [self placement];
    r0 = [r0 retain];
    r20 = [[r0 adUnit] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isAdSuccessfullyViewed {
    r0 = self;
    if (r0->_timeViewed >= r0->_videoLength * *0x100b9af08) {
            if (CPU_FLAGS & GE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)presentStoreDelayed:(void *)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_willShowProductView));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = 0x1;
            r0 = [r0 storeProvider];
            r0 = [r0 retain];
            r21 = [[r0 getProductViewController] retain];
            [r0 release];
            [r21 setModalPresentationStyle:0x0];
            [r19 presentViewController:r21 animated:0x1 completion:0x0];
            [r21 release];
    }
    return;
}

-(void)openProductInBrowser:(void *)arg2 {
    r22 = [arg2 retain];
    [self setIsOpenAppStore:0x1];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r0 performSelector:@selector(openURL:) withObject:arg2 afterDelay:r4];
    [r22 release];
    [r0 release];
    return;
}

-(void)productViewControllerDidDismiss:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    [r19 dismissViewControllerAnimated:0x1 completion:&var_58];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    [r19 release];
    return;
}

-(void)productViewControllerBecameReady {
    [self setStoreLoaded:0x1];
    return;
}

-(bool)presentAppStoreView {
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
    r19 = self;
    if (([self willShowProductView] & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = [r19 storeProvider];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 isReady] != 0x0) {
                    r0 = [r19 storeProvider];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 getProductViewController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r21 release];
                    [r20 release];
            }
            else {
                    [r20 release];
            }
            [r19 setStoreLoaded:r2];
            r20 = @class(NSURL);
            r0 = [r19 legacyAd];
            r0 = [r0 retain];
            r24 = [[r0 ctaURL] retain];
            r20 = [[r20 URLWithString:r24] retain];
            [r24 release];
            [r0 release];
            r23 = @class(NSURL);
            r0 = [r19 legacyAd];
            r0 = [r0 retain];
            r26 = [[r0 ctaURLResolved] retain];
            r22 = [[r23 URLWithString:r26] retain];
            [r26 release];
            [r0 release];
            r0 = [VungleAdViewController filteredVersions];
            r29 = r29;
            r24 = [r0 retain];
            r23 = [VungleUtil isVersionMatching:r24];
            [r24 release];
            if (r23 != 0x0) {
                    [r19 setStoreLoaded:r2];
            }
            if ([r19 storeLoaded] != 0x0) {
                    [r19 performSelector:@selector(presentStoreDelayed:) withObject:0x0 afterDelay:r4];
                    if (r20 != 0x0) {
                            r0 = [VNGNetworkManager sharedManager];
                            r0 = [r0 retain];
                            r21 = [[r0 CTARequestOperationWithURL:r20 complete:0x0] retain];
                            [r0 sendVungleOperation:r21];
                            [r21 release];
                            [r0 release];
                    }
            }
            else {
                    if (r22 != 0x0 && *(int8_t *)(int64_t *)&r19->_validCTAURLResolved != 0x0) {
                            [r19 openProductInBrowser:r22];
                            if (r20 != 0x0) {
                                    r0 = [VNGNetworkManager sharedManager];
                                    r0 = [r0 retain];
                                    r21 = [[r0 CTARequestOperationWithURL:r20 complete:0x0] retain];
                                    [r0 sendVungleOperation:r21];
                                    [r21 release];
                                    [r0 release];
                            }
                    }
                    else {
                            [r19 openProductInBrowser:r20];
                    }
            }
            [r22 release];
            [r20 release];
            r0 = 0x1;
    }
    return r0;
}

-(void)dispatchEventURLs:(void *)arg2 {
    r31 = r31 - 0x1e0;
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
    var_1A8 = self;
    r19 = [arg2 retain];
    var_1B0 = lround([NSDate timeIntervalSinceReferenceDate]);
    var_110 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_1C0 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r19 = r0;
            r20 = *var_110;
            var_1B8 = r20;
            do {
                    r28 = 0x0;
                    r23 = @selector(isNullOrNil:);
                    var_130 = r19;
                    var_148 = r23;
                    do {
                            if (*var_110 != r20) {
                                    objc_enumerationMutation(var_128);
                            }
                            r21 = *(var_118 + r28 * 0x8);
                            if ((objc_msgSend(@class(VungleUtil), r23) & 0x1) == 0x0) {
                                    r24 = [[NSString stringWithFormat:@"%ld"] retain];
                                    r21 = [[r21 stringByReplacingOccurrencesOfString:@"%timestamp%" withString:r24] retain];
                                    [r24 release];
                                    r24 = [[NSString stringWithFormat:@"Dispatching TPAT /GET to %@"] retain];
                                    r26 = [[VungleLogger sharedLogger] retain];
                                    r27 = @class(VungleLogger);
                                    r0 = [var_1A8 placement];
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    r0 = [r0 adUnit];
                                    r0 = [r0 retain];
                                    r23 = [[r0 appId] retain];
                                    r27 = [[r27 eventIDFromAppID:r23] retain];
                                    [r26 setEventID:r27];
                                    [r27 release];
                                    [r23 release];
                                    [r0 release];
                                    [r19 release];
                                    [r26 release];
                                    r0 = @class(VungleLogger);
                                    r0 = [r0 sharedLogger];
                                    r0 = [r0 retain];
                                    [r0 logMessage:r24 level:0xf4240 context:@"Ad Lifecycle"];
                                    [r0 release];
                                    r19 = [[NSURL URLWithString:r21] retain];
                                    r0 = [VNGNetworkManager sharedManager];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 TPATRequestOperationWithURL:r19 complete:0x0];
                                    r29 = r29;
                                    [r0 retain];
                                    [r20 sendVungleOperation:r2];
                                    r0 = r23;
                                    r23 = var_148;
                                    [r0 release];
                                    r0 = r20;
                                    r20 = var_1B8;
                                    [r0 release];
                                    r0 = r19;
                                    r19 = var_130;
                                    [r0 release];
                                    [r24 release];
                                    [r21 release];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r19);
                    r0 = objc_msgSend(var_128, var_1C0);
                    r19 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 release];
    [var_128 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)productViewControllerLoadingDidFailWithError:(void *)arg2 {
    return;
}

+(void *)filteredVersions {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_10 count:0x1];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)vunglePostRollAction:(int)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 == 0x1) goto loc_100613224;

loc_1006131c0:
    if (r2 != 0x0) goto .l1;

loc_1006131c4:
    r0 = [r19 doneWithAdBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto .l1;

loc_1006131ec:
    r0 = [r19 doneWithAdBlock];
    r0 = [r0 retain];
    r19 = r0;
    (*(r0 + 0x10))();
    goto loc_1006132dc;

loc_1006132dc:
    [r19 release];
    return;

.l1:
    return;

loc_100613224:
    r0 = [NSDate date];
    r0 = [r0 retain];
    r20 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzu     x2, d0 };
    [r19->_report setTtDownload:r2];
    [r20 release];
    [r19 presentAppStoreView];
    [r19 dispatchEventNamed:@"postroll_click" subCategory:0x0 max:0x1];
    *(int8_t *)(int64_t *)&r19->_firstView = 0x0;
    r0 = [r19 report];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setDidTapCTAButton:0x1];
    goto loc_1006132dc;
}

-(void)updateViewProgressWithPlayer:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    [r0 videoLength];
    r19->_videoLength = d0;
    [r20 currentPosition];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_timeViewed));
    d0 = *(r19 + r22);
    if (d1 > d0) {
            [r20 currentPosition];
    }
    *(r19 + r22) = d0;
    [r20 release];
    return;
}

-(void)appDidEnterBackground:(void *)arg2 {
    r20 = [[arg2 name] retain];
    [self isAdViewable:0x0 notificationName:r20];
    [r20 release];
    return;
}

-(bool)isVersionMatching:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = [arg2 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = [[r0 systemVersion] retain];
    [r0 release];
    var_110 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100613f74;

loc_100613f00:
    r22 = r0;
    r24 = *var_110;
    goto loc_100613f10;

loc_100613f10:
    r26 = 0x0;
    goto loc_100613f18;

loc_100613f18:
    if (*var_110 != r24) {
            objc_enumerationMutation(r20);
    }
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_100613f7c;

loc_100613f48:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_100613f18;

loc_100613f54:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100613f10;

loc_100613f74:
    r21 = 0x0;
    goto loc_100613f80;

loc_100613f80:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100613f7c:
    r21 = 0x1;
    goto loc_100613f80;
}

-(void)appWillEnterForeground:(void *)arg2 {
    r20 = [[arg2 name] retain];
    [self isAdViewable:0x1 notificationName:r20];
    [r20 release];
    return;
}

-(void)appWillResignActive:(void *)arg2 {
    r20 = [[arg2 name] retain];
    [self isAdViewable:0x0 notificationName:r20];
    [r20 release];
    return;
}

-(void)appDidBecomeActive:(void *)arg2 {
    r20 = [[arg2 name] retain];
    [self isAdViewable:0x1 notificationName:r20];
    [r20 release];
    return;
}

-(bool)videoIsPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_videoIsPlaying;
    return r0;
}

-(void)setVideoIsPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoIsPlaying = arg2;
    return;
}

-(void)isAdViewable:(bool)arg2 notificationName:(void *)arg3 {
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
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 storeProvider];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getProductViewController];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    if (arg2 == 0x0) goto loc_100613b34;

loc_100613a70:
    [r21 setIsOpenAppStore:0x0];
    r0 = [r21 videoPlayer];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 incentivizedAlertController];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 release];
    [r24 release];
    if (r25 != 0x0) {
            r24 = [[r21 presentedViewController] retain];
            r0 = [r21 videoPlayer];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 incentivizedAlertController];
            r29 = r29;
            r0 = [r0 retain];
            if (r24 != r0) {
                    if (CPU_FLAGS & NE) {
                            r26 = 0x1;
                    }
            }
            [r0 release];
            [r25 release];
            [r24 release];
    }
    else {
            r26 = 0x1;
    }
    r0 = [r21 consentAlertController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r21 presentedViewController] retain];
            r0 = [r21 consentAlertController];
            r29 = r29;
            r0 = [r0 retain];
            if (r24 != r0) {
                    if (CPU_FLAGS & NE) {
                            r25 = 0x1;
                    }
            }
            [r0 release];
            [r24 release];
    }
    else {
            r25 = 0x1;
    }
    r0 = [r21 videoPlayer];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 isHidden] != 0x0) goto loc_100613db8;

loc_100613d98:
    r0 = [r20 presentingViewController];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100613de4;

loc_100613db4:
    [r0 release];
    goto loc_100613db8;

loc_100613db8:
    r0 = r23;
    goto loc_100613dbc;

loc_100613dbc:
    [r0 release];
    goto loc_100613dc0;

loc_100613dc0:
    [r20 release];
    [r19 release];
    return;

loc_100613de4:
    r24 = [r21 videoIsPlaying];
    [r23 release];
    if ((r26 & r25) != 0x1 || r24 != 0x0) goto loc_100613dc0;

loc_100613e10:
    r0 = [r21 videoPlayer];
    r0 = [r0 retain];
    [r0 play];
    [r0 release];
    goto loc_100613cec;

loc_100613cec:
    [r21 setVideoIsPlaying:r2];
    goto loc_100613dc0;

loc_100613b34:
    r0 = [r21 videoPlayer];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 isHidden] & 0x1) == 0x0) goto loc_100613c98;

loc_100613b64:
    r0 = [r20 presentingViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) goto loc_100613ca0;

loc_100613b90:
    if ([r19 isEqualToString:r2] == 0x0 || [r21 isOpenAppStore] == 0x0) goto loc_100613dc0;

loc_100613bc4:
    [r21 finishAdView:0x1];
    r0 = [r21 webView];
    r0 = [r0 retain];
    [r0 removeScriptHandlers];
    [r0 release];
    r0 = [r21 presentedViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r20) {
            [r21 setWillShowProductView:0x0];
    }
    r0 = [r21 doneWithAdBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100613dc0;

loc_100613c6c:
    r0 = [r21 doneWithAdBlock];
    r0 = [r0 retain];
    (*(r0 + 0x10))();
    r0 = r21;
    goto loc_100613dbc;

loc_100613ca0:
    if ([r21 videoIsPlaying] == 0x0) goto loc_100613dc0;

loc_100613cb4:
    r0 = [r21 videoPlayer];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    goto loc_100613cec;

loc_100613c98:
    [r23 release];
    goto loc_100613ca0;
}

-(void)generateMoatAdIdentifiers {
    r31 = r31 - 0xe0;
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
    r0 = [self legacyAd];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 tpatEvents];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:@"moat"] retain];
    [r0 release];
    [r22 release];
    r0 = [r19 objectForKeyedSubscript:@"is_enabled"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 boolValue];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r20 legacyAd];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 appId];
            r0 = [r0 retain];
            r24 = [[r0 stringByReplacingOccurrencesOfString:@"$0$" withString:@""] retain];
            [r0 release];
            [r22 release];
            var_B0 = r24;
            var_B8 = [[r24 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:0x4 options:0x0 error:0x0];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r0 = [r24 objectForKey:r2];
                    r29 = r29;
                    r28 = [r0 retain];
            }
            else {
                    r28 = @"UNKNOWN";
                    [r28 retain];
            }
            [r22 release];
            r0 = [r20 legacyAd];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 campaign];
            r0 = [r0 retain];
            r26 = [[r0 componentsSeparatedByString:@"|"] retain];
            [r0 release];
            [r22 release];
            r0 = [r26 objectAtIndexedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [r26 objectAtIndexedSubscript:r2];
                    r29 = r29;
                    r27 = [r0 retain];
            }
            else {
                    r27 = @"UNKNOWN";
                    [r27 retain];
            }
            [r23 release];
            r0 = [r26 objectAtIndexedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            var_C0 = r24;
            if (r0 != 0x0) {
                    r0 = [r26 objectAtIndexedSubscript:r2];
                    r29 = r29;
                    var_A8 = [r0 retain];
            }
            else {
                    var_A8 = @"UNKNOWN";
                    [@"UNKNOWN" retain];
            }
            [r23 release];
            r0 = [r20 placement];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 referenceID];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [r20 placement];
                    r0 = [r0 retain];
                    r22 = r28;
                    r28 = r27;
                    r27 = r0;
                    r0 = [r0 referenceID];
                    r29 = r29;
                    r25 = [r0 retain];
                    r0 = r27;
                    r27 = r28;
                    r28 = r22;
                    [r0 release];
            }
            else {
                    r25 = @"UNKNOWN";
                    [r25 retain];
            }
            [r24 release];
            [r23 release];
            var_D0 = r25;
            var_C8 = r28;
            r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_A0 count:0x4];
            r0 = [r0 retain];
            r23 = [r0 mutableCopy];
            [r0 release];
            r0 = [VunglePublisherInformationProvider sharedProvider];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 appID];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
            if (r24 != 0x0) {
                    [r23 setValue:r24 forKey:@"slicer1"];
            }
            r0 = [r19 objectForKeyedSubscript:@"extra_vast"];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r25 = r0;
                    r0 = [r19 objectForKeyedSubscript:@"extra_vast"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = [r0 length];
                    r27 = r27;
                    r19 = r19;
                    r26 = r26;
                    r20 = r20;
                    [r0 release];
                    [r25 release];
                    if (r28 != 0x0) {
                            r21 = [[r19 objectForKeyedSubscript:r2] retain];
                            [r23 setValue:r21 forKey:@"zMoatVASTIDs"];
                            [r21 release];
                    }
            }
            [r20->_videoPlayer prepareMoatAdIdentifiers:r23];
            [r24 release];
            [var_D0 release];
            [var_A8 release];
            [r27 release];
            [r26 release];
            [var_C8 release];
            [var_C0 release];
            [var_B8 release];
            [var_B0 release];
            [r23 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)doneWithAdBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_doneWithAdBlock)), 0x0);
    return r0;
}

-(void)setDoneWithAdBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)validCTAURLResolved {
    r0 = *(int8_t *)(int64_t *)&self->_validCTAURLResolved;
    return r0;
}

-(void)setValidCTAURLResolved:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_validCTAURLResolved = arg2;
    return;
}

-(void)setAppStoreId:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void *)appStoreId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appStoreId)), 0x1);
    return r0;
}

-(bool)statusBarHidden {
    r0 = *(int8_t *)(int64_t *)&self->_statusBarHidden & 0x1;
    return r0;
}

-(void)setStatusBarHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_statusBarHidden = arg2;
    return;
}

-(void)setWillShowProductView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_willShowProductView = arg2;
    return;
}

-(bool)firstView {
    r0 = *(int8_t *)(int64_t *)&self->_firstView & 0x1;
    return r0;
}

-(bool)willShowProductView {
    r0 = *(int8_t *)(int64_t *)&self->_willShowProductView & 0x1;
    return r0;
}

-(void)setFirstView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_firstView = arg2;
    return;
}

-(void)setEventsDisplayed:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)eventsDisplayed {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventsDisplayed)), 0x1);
    return r0;
}

-(void *)events {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_events)), 0x0);
    return r0;
}

-(double)timeViewed {
    r0 = self;
    return r0;
}

-(void)setEvents:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)videoLength {
    r0 = self;
    return r0;
}

-(void)setTimeViewed:(double)arg2 {
    self->_timeViewed = d0;
    return;
}

-(void)setVideoLength:(double)arg2 {
    self->_videoLength = d0;
    return;
}

-(bool)storeLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_storeLoaded & 0x1;
    return r0;
}

-(void)setFinished:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_finished = arg2;
    return;
}

-(bool)finished {
    r0 = *(int8_t *)(int64_t *)&self->_finished & 0x1;
    return r0;
}

-(void)setStoreLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_storeLoaded = arg2;
    return;
}

-(bool)ctaClicked {
    r0 = *(int8_t *)(int64_t *)&self->_ctaClicked & 0x1;
    return r0;
}

-(bool)removeLastBundle {
    r0 = *(int8_t *)(int64_t *)&self->_removeLastBundle & 0x1;
    return r0;
}

-(void)setRemoveLastBundle:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_removeLastBundle = arg2;
    return;
}

-(bool)isOpenAppStore {
    r0 = *(int8_t *)(int64_t *)&self->_isOpenAppStore & 0x1;
    return r0;
}

-(void)setCtaClicked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ctaClicked = arg2;
    return;
}

-(void)setIsOpenAppStore:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isOpenAppStore = arg2;
    return;
}

-(void *)videoPlayer {
    r0 = self->_videoPlayer;
    return r0;
}

-(void)setVideoPlayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoPlayer, arg2);
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)placement {
    r0 = self->_placement;
    return r0;
}

-(void)setPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placement, arg2);
    return;
}

-(void)setInterstitialAdDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_interstitialAdDelegate, arg2);
    return;
}

-(void *)interstitialAdDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialAdDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)report {
    r0 = self->_report;
    return r0;
}

-(void *)reportAdController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_reportAdController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setReportAdController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_reportAdController, arg2);
    return;
}

-(void)setReport:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_report, arg2);
    return;
}

-(void *)reportIncentivizedController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_reportIncentivizedController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSupportedOrientations:(unsigned long long)arg2 {
    self->_supportedOrientations = arg2;
    return;
}

-(unsigned long long)supportedOrientations {
    r0 = self->_supportedOrientations;
    return r0;
}

-(void)setReportIncentivizedController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_reportIncentivizedController, arg2);
    return;
}

-(void *)consentAlertController {
    r0 = self->_consentAlertController;
    return r0;
}

-(void)setConsentAlertController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_consentAlertController, arg2);
    return;
}

-(void *)consentInfo {
    r0 = self->_consentInfo;
    return r0;
}

-(void)setConsentInfo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_consentInfo, arg2);
    return;
}

-(bool)isConsentRequired {
    r0 = *(int8_t *)(int64_t *)&self->_consentRequired & 0x1;
    return r0;
}

-(void)setConsentRequired:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_consentRequired = arg2;
    return;
}

-(bool)isConsentDialogRequired {
    r0 = *(int8_t *)(int64_t *)&self->_consentDialogRequired & 0x1;
    return r0;
}

-(void)setConsentDialogRequired:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_consentDialogRequired = arg2;
    return;
}

-(void *)consentStatus {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_consentStatus)), 0x0);
    return r0;
}

-(void)setConsentStatus:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setStoreOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storeOptions, arg2);
    return;
}

-(void *)storeOptions {
    r0 = self->_storeOptions;
    return r0;
}

-(void *)storeProvider {
    r0 = self->_storeProvider;
    return r0;
}

-(void)setStoreProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storeProvider, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_storeProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_storeOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_consentStatus, 0x0);
    objc_storeStrong((int64_t *)&self->_consentInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_consentAlertController, 0x0);
    objc_destroyWeak((int64_t *)&self->_reportIncentivizedController);
    objc_destroyWeak((int64_t *)&self->_reportAdController);
    objc_storeStrong((int64_t *)&self->_report, 0x0);
    objc_destroyWeak((int64_t *)&self->_interstitialAdDelegate);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_storeStrong((int64_t *)&self->_videoPlayer, 0x0);
    objc_storeStrong((int64_t *)&self->_events, 0x0);
    objc_storeStrong((int64_t *)&self->_eventsDisplayed, 0x0);
    objc_storeStrong((int64_t *)&self->_appStoreId, 0x0);
    objc_storeStrong((int64_t *)&self->_doneWithAdBlock, 0x0);
    return;
}

@end
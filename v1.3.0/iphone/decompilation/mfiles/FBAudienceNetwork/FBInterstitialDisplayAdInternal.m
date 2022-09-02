@implementation FBInterstitialDisplayAdInternal

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)dealloc {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    [*(self + r20) setDelegate:0x0];
    [*(self + r20) setInternalDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 adData:(void *)arg3 placementDefinition:(void *)arg4 extraHint:(void *)arg5 {
    r5 = arg5;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [FBAdViewInternal alloc];
            r0 = [r0 initWithAdData:r20 placementDefinition:r21 adSize:r22 rootViewController:r5];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
            r8 = *(r22 + r23);
            *(r22 + r23) = r0;
            [r8 release];
            [*(r22 + r23) setDelegate:r22];
            [*(r22 + r23) setInternalDelegate:r22];
            [r22 setView:*(r22 + r23)];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self adView];
    r0 = [r0 retain];
    r20 = [r0 orientation] - 0x3;
    r0 = [r0 release];
    if (r20 < 0x2) {
            if (!CPU_FLAGS & B) {
                    r0 = 0x6;
            }
            else {
                    r0 = 0x18;
            }
    }
    return r0;
}

-(bool)isAdValid {
    r0 = [self adView];
    r0 = [r0 retain];
    r20 = [r0 isAdValid];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)adDataModel {
    r0 = [self adView];
    r0 = [r0 retain];
    r20 = [[r0 offsiteAd] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)loadAd {
    r0 = [self adView];
    r0 = [r0 retain];
    [r0 loadAd];
    [r0 release];
    return;
}

-(long long)preferredInterfaceOrientationForPresentation {
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
    r19 = [FBAdScreen orientation];
    r0 = [r21 adView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 view];
            r0 = [r0 retain];
            r25 = [[r0 window] retain];
            r23 = [FBAdUtility supportedInterfaceOrientationsForWindow:r25];
            [r25 release];
            [r0 release];
            r0 = [r21 adView];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if ([r0 orientation] <= 0x2) {
                    [r24 release];
                    if (r19 <= 0x4) {
                            if ((r23 & 0x2) == 0x0) {
                                    if ((r23 & 0x4) != 0x0) {
                                            r19 = 0x2;
                                    }
                            }
                            else {
                                    r19 = 0x1;
                            }
                    }
                    else {
                            r0 = [r21 adView];
                            r0 = [r0 retain];
                            r21 = r0;
                            if ([r0 orientation] <= 0x4) {
                                    [r21 release];
                                    if (r19 <= 0x2) {
                                            if ((r23 & 0x8) == 0x0) {
                                                    if ((r23 & 0x10) != 0x0) {
                                                            r19 = 0x4;
                                                    }
                                            }
                                            else {
                                                    r19 = 0x3;
                                            }
                                    }
                            }
                            else {
                                    [r21 release];
                            }
                    }
            }
            else {
                    [r24 release];
                    r0 = [r21 adView];
                    r0 = [r0 retain];
                    r21 = r0;
                    if ([r0 orientation] <= 0x4) {
                            [r21 release];
                            if (r19 <= 0x2) {
                                    if ((r23 & 0x8) == 0x0) {
                                            if ((r23 & 0x10) != 0x0) {
                                                    r19 = 0x4;
                                            }
                                    }
                                    else {
                                            r19 = 0x3;
                                    }
                            }
                    }
                    else {
                            [r21 release];
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(bool)showAdFromRootViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdViewControllerProxy viewController] retain];
            [r20 release];
            r20 = r21;
    }
    r19 = [r19 showAdFromRootViewController:r20 animated:0x1];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)viewDidLoad {
    [[&var_40 super] viewDidLoad];
    [FBAdScreen boundsInOrientation];
    r0 = [self adView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r0 = [self presentingViewController];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    r23 = [[r0 window] retain];
    [r0 release];
    [r21 release];
    [self frameForPresentationInWindow:r23];
    r0 = [self adView];
    r0 = [r0 retain];
    [r0 setFrame:r23];
    [r0 release];
    [[&var_60 super] viewWillAppear:arg2];
    [r23 release];
    return;
}

-(struct CGRect)frameForPresentationInWindow:(void *)arg2 {
    r0 = [FBAdScreen boundsInOrientation];
    return r0;
}

-(bool)showAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
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
    r21 = arg3;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 adView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isAdValid];
    [r0 release];
    if ((r24 & 0x1) != 0x0) {
            r0 = [r19 adView];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isModalViewPresenting];
            [r0 release];
            if ((r24 & 0x1) != 0x0) {
                    r21 = 0x0;
            }
            else {
                    r0 = [r19 adView];
                    r0 = [r0 retain];
                    r25 = [[r0 window] retain];
                    r23 = [FBAdUtility supportedInterfaceOrientationsForWindow:r25];
                    [r25 release];
                    [r0 release];
                    r0 = [r19 adView];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if ([r0 orientation] <= 0x2) {
                            r26 = [FBAdUtility interfaceOrientationMaskSupportsPortrait:r23];
                            [r25 release];
                            if ((r26 & 0x1) != 0x0) {
                                    r0 = [r19 adView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    if ([r0 orientation] <= 0x4) {
                                            r23 = [FBAdUtility interfaceOrientationMaskSupportsLandscape:r23];
                                            [r25 release];
                                            if ((r23 & 0x1) != 0x0) {
                                                    r0 = [r19 adView];
                                                    r0 = [r0 retain];
                                                    [r0 setModalViewPresenting:0x1];
                                                    [r0 release];
                                                    r0 = [UIApplication sharedApplication];
                                                    r0 = [r0 retain];
                                                    [r19 setIsStatusBarHidden:[r0 isStatusBarHidden]];
                                                    [r0 release];
                                                    [FBAdUtility setApplicationStatusBarHidden:0x1];
                                                    [r20 presentViewController:r19 animated:r21 completion:&var_78];
                                                    r21 = 0x1;
                                            }
                                            else {
                                                    r21 = 0x0;
                                            }
                                    }
                                    else {
                                            [r25 release];
                                            r0 = [r19 adView];
                                            r0 = [r0 retain];
                                            [r0 setModalViewPresenting:0x1];
                                            [r0 release];
                                            r0 = [UIApplication sharedApplication];
                                            r0 = [r0 retain];
                                            [r19 setIsStatusBarHidden:[r0 isStatusBarHidden]];
                                            [r0 release];
                                            [FBAdUtility setApplicationStatusBarHidden:0x1];
                                            [r20 presentViewController:r19 animated:r21 completion:&var_78];
                                            r21 = 0x1;
                                    }
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
                    else {
                            [r25 release];
                            r0 = [r19 adView];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = r0;
                            if ([r0 orientation] <= 0x4) {
                                    r23 = [FBAdUtility interfaceOrientationMaskSupportsLandscape:r23];
                                    [r25 release];
                                    if ((r23 & 0x1) != 0x0) {
                                            r0 = [r19 adView];
                                            r0 = [r0 retain];
                                            [r0 setModalViewPresenting:0x1];
                                            [r0 release];
                                            r0 = [UIApplication sharedApplication];
                                            r0 = [r0 retain];
                                            [r19 setIsStatusBarHidden:[r0 isStatusBarHidden]];
                                            [r0 release];
                                            [FBAdUtility setApplicationStatusBarHidden:0x1];
                                            [r20 presentViewController:r19 animated:r21 completion:&var_78];
                                            r21 = 0x1;
                                    }
                                    else {
                                            r21 = 0x0;
                                    }
                            }
                            else {
                                    [r25 release];
                                    r0 = [r19 adView];
                                    r0 = [r0 retain];
                                    [r0 setModalViewPresenting:0x1];
                                    [r0 release];
                                    r0 = [UIApplication sharedApplication];
                                    r0 = [r0 retain];
                                    [r19 setIsStatusBarHidden:[r0 isStatusBarHidden]];
                                    [r0 release];
                                    [FBAdUtility setApplicationStatusBarHidden:0x1];
                                    [r20 presentViewController:r19 animated:r21 completion:&var_78];
                                    r21 = 0x1;
                            }
                    }
            }
    }
    else {
            r21 = 0x0;
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)adViewDidLoad:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(interstitialAdDidLoad:)] != 0x0) {
            [r20 interstitialAdDidLoad:r19];
    }
    [r20 release];
    return;
}

-(void)adView:(void *)arg2 didFailWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAd:didFailWithError:), r3] != 0x0) {
            [r21 interstitialAd:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)adViewDidClick:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(interstitialAdDidClick:)] != 0x0) {
            [r20 interstitialAdDidClick:r19];
    }
    [r20 release];
    return;
}

-(void)adViewWillLogImpression:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(interstitialAdWillLogImpression:)] != 0x0) {
            [r20 interstitialAdWillLogImpression:r19];
    }
    [r20 release];
    return;
}

-(void)adViewWillClose:(void *)arg2 {
    [self exitInterstitial];
    return;
}

-(void)exitInterstitial {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdWillClose:)] != 0x0) {
            [r19 interstitialAdWillClose:r20];
    }
    [FBAdUtility setApplicationStatusBarHidden:[r20 isStatusBarHidden]];
    objc_initWeak(r29 - 0x28, r20);
    [[r20 presentingViewController] retain];
    objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
    r0 = [r19 retain];
    [r21 dismissViewControllerAnimated:0x1 completion:&var_58];
    [r21 release];
    [r0 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(r29 - 0x28);
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
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

-(bool)isStatusBarHidden {
    r0 = *(int8_t *)(int64_t *)&self->_isStatusBarHidden;
    return r0;
}

-(void)setIsStatusBarHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isStatusBarHidden = arg2;
    return;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adView, arg2);
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
    r0 = objc_getClass("FBInterstitialDisplayAdInternal");
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
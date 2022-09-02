@implementation FBAdPlayableViewController

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(bool)shouldAutorotate {
    return 0x0;
}

-(unsigned long long)supportedInterfaceOrientations {
    return 0x1e;
}

-(void *)initWithPlacementID:(void *)arg2 adData:(void *)arg3 placementDefinition:(void *)arg4 rootViewController:(void *)arg5 {
    r31 = r31 - 0xc0;
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
    r24 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [FBAdPlayableView alloc];
            var_A8 = r21;
            stack[-176] = r24;
            r24 = [r0 initWithPlacementID:r24 adData:r20 placementDefinition:r21 rootViewController:r23];
            objc_initWeak(&stack[-120], r22);
            var_98 = &var_90 + 0x20;
            objc_copyWeak(&var_90 + 0x20, &stack[-120]);
            [r24 setOnInfo:&var_90];
            [r24 setDelegate:r22];
            r0 = [r22 view];
            r0 = [r0 retain];
            [r0 addSubview:r24];
            [r0 release];
            objc_storeWeak((int64_t *)&r22->_playableView, r24);
            r0 = [r20 playableAdDataModel];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isIntroCardEnabled];
            [r0 release];
            if (r21 != 0x0) {
                    r19 = [[FBPlayableIntroScreenView alloc] initWithAdData:r20];
                    r0 = [r22 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addSubview:r19];
                    [r0 release];
                    objc_storeWeak((int64_t *)&r22->_playableIntroScreenView, r19);
                    [r19 release];
            }
            r19 = [[FBAdReportingCoordinator alloc] initWithData:r20 viewController:r22];
            [r22 setReportingCoordinator:r19];
            [r19 release];
            r0 = [r22 reportingCoordinator];
            r0 = [r0 retain];
            [r0 setDelegate:r22];
            [r0 release];
            objc_destroyWeak(var_98);
            objc_destroyWeak(&stack[-120]);
            [r24 release];
            r21 = var_A8;
            r24 = stack[-176];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r24 release];
    r0 = r22;
    return r0;
}

-(bool)isTerminated {
    r0 = [self playableView];
    r0 = [r0 retain];
    r20 = [r0 isTerminated];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)loadPlayableAd {
    [self fetchMarkup];
    return;
}

-(void)dismissIntroCard {
    r31 = r31 - 0xb0;
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
    r20 = [[self playableIntroScreenView] retain];
    r0 = [r19 playableView];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 retain];
            var_48 = [r21 retain];
            var_78 = [r0 retain];
            [FBAdUtility animateWithStandardAnimations:&var_70 duration:0x20084 options:&var_98 completion:r5];
            [var_78 release];
            [var_48 release];
            [r0 release];
    }
    r0 = [r19 dismissIntroScreenTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [r19 setDismissIntroScreenTimer:0x0];
    [r21 release];
    [r20 release];
    return;
}

-(void)fetchMarkup {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 shouldUseCacheForPlayableMarkup];
    [r0 release];
    r0 = r29 - 0x38;
    r1 = r20;
    if (r21 != 0x0) {
            objc_initWeak(r0, r1);
            r0 = [r20 playableView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 nativeAdDataModel];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 playableAdDataModel];
            r0 = [r0 retain];
            r22 = [[r0 playableURI] retain];
            [r0 release];
            [r21 release];
            [r20 release];
            r0 = [NSURL URLWithString:r22];
            r29 = r29;
            [r0 retain];
            [r22 release];
            objc_copyWeak(&var_60 + 0x20, r29 - 0x38);
            [FBAdUtility loadRemoteMarkupWithURL:r19 withBlock:&var_60];
            objc_destroyWeak(&var_60 + 0x20);
            [r19 release];
    }
    else {
            objc_initWeak(r0, r1);
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r29 = r29;
            [r0 retain];
            objc_copyWeak(&var_90 + 0x28, r29 - 0x38);
            dispatch_async(r21, &var_90);
            [r21 release];
            objc_destroyWeak(&var_90 + 0x28);
    }
    objc_destroyWeak(r29 - 0x38);
    return;
}

-(void)viewWillLayoutSubviews {
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    r0 = objc_loadWeakRetained((int64_t *)&self->_playableView);
    [r0 setFrame:r2];
    [r19 release];
    [r20 release];
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    r19 = self;
    [[&var_50 super] viewWillAppear:arg2];
    if (([r19 hasAppearedBefore] & 0x1) == 0x0) {
            [FBAdScreen boundsInOrientation];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            [FBAdUtility setApplicationStatusBarHidden:0x1];
            r20 = [[r19 playableView] retain];
            r21 = [[r19 markup] retain];
            [r20 setMarkup:r21];
            [r21 release];
            [r20 setFrameOnShow:r21];
            r0 = [r19 playableIntroScreenView];
            r0 = [r0 retain];
            r19 = r0;
            if (r0 != 0x0) {
                    [r19 setFrameOnShow:r2];
            }
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)notifyDelegateOfSuccess {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewControllerDidLoad:self];
    [r0 release];
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x90;
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
    if (([r19 hasAppearedBefore] & 0x1) == 0x0) {
            [r19 setHasAppearedBefore:0x1];
            r20 = [[r19 playableView] retain];
            r0 = [r19 playableIntroScreenView];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    objc_initWeak(&stack[-88], r19);
                    objc_copyWeak(&var_78 + 0x28, &stack[-88]);
                    var_58 = [r20 retain];
                    r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x0 repeats:&var_78 block:r4];
                    r23 = [r0 retain];
                    [r19 setDismissIntroScreenTimer:r23];
                    [r23 release];
                    [var_58 release];
                    objc_destroyWeak(&var_78 + 0x28);
                    objc_destroyWeak(&stack[-88]);
            }
            else {
                    [r20 setupToolbarTimer];
            }
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)notifyDelegateOfFailureWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewController:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)playableViewDidLoad:(void *)arg2 {
    return;
}

-(void)playableViewWillLogImpression:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewControllerWillLogImpression:self];
    [r0 release];
    return;
}

-(void)playableView:(void *)arg2 didFailWithError:(void *)arg3 {
    [self notifyDelegateOfFailureWithError:arg3];
    return;
}

-(void)playableViewDidCompleteForcedView:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewControllerComplete:self];
    [r0 release];
    return;
}

-(void)playableViewClicked:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewControllerDidClick:self];
    [r0 release];
    return;
}

-(void)playableViewDidTerminate:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewControllerDidTerminate:self];
    [r0 release];
    return;
}

-(void)playableViewWillClose:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCompleteFlow:(void *)arg2 reason:(void *)arg3 flowType:(long long)arg4 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(void *)arg2 {
    r0 = [self playableView];
    r0 = [r0 retain];
    [r0 setupToolbarTimer];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCancelFlow:(void *)arg2 {
    r0 = [self playableView];
    r0 = [r0 retain];
    [r0 setupToolbarTimer];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_storeStrong((int64_t *)&self->_dismissIntroScreenTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_playableIntroScreenView);
    objc_destroyWeak((int64_t *)&self->_playableView);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_markup, 0x0);
    return;
}

-(void)setMarkup:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)markup {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_markup)), 0x0);
    return r0;
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

-(void *)playableView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_playableView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlayableView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_playableView, arg2);
    return;
}

-(void *)playableIntroScreenView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_playableIntroScreenView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlayableIntroScreenView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_playableIntroScreenView, arg2);
    return;
}

-(void)setDismissIntroScreenTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dismissIntroScreenTimer, arg2);
    return;
}

-(void *)dismissIntroScreenTimer {
    r0 = self->_dismissIntroScreenTimer;
    return r0;
}

-(bool)hasAppearedBefore {
    r0 = *(int8_t *)(int64_t *)&self->_hasAppearedBefore;
    return r0;
}

-(void)setHasAppearedBefore:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasAppearedBefore = arg2;
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
    r0 = objc_getClass("FBAdPlayableViewController");
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
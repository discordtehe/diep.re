@implementation FBInterstitialPlayableAdViewController

-(bool)isAdValid {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [r0 isValid];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 adData:(void *)arg3 placementDefinition:(void *)arg4 extraHint:(void *)arg5 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [[FBNativeAdDataModel alloc] initWithMetadata:r20 placementType:[r21 type]];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataModel));
            r24 = *(r22 + r8);
            *(r22 + r8) = r0;
            r25 = [r0 retain];
            [r24 release];
            r23 = [FBAdPlayableViewController alloc];
            r24 = [[FBAdViewControllerProxy viewController] retain];
            r0 = [r23 initWithPlacementID:r19 adData:r25 placementDefinition:r21 rootViewController:r24];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_playableController));
            r8 = *(r22 + r23);
            *(r22 + r23) = r0;
            [r8 release];
            [r24 release];
            [*(r22 + r23) setDelegate:r22];
            [r25 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)loadAd {
    r0 = [self playableController];
    r0 = [r0 retain];
    [r0 loadPlayableAd];
    [r0 release];
    return;
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

-(bool)showAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isAdValid] != 0x0) {
            r0 = [r20 playableController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = [[FBAdViewControllerProxy proxyWithViewController:r19] retain];
                    [r20 setRootViewController:r22];
                    [r22 release];
                    r22 = [[r20 rootViewController] retain];
                    r21 = [[r20 playableController] retain];
                    r20 = 0x1;
                    [r22 presentViewController:r21 animated:0x1 completion:0x0];
                    [r21 release];
                    [r22 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)playableViewControllerDidLoad:(void *)arg2 {
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

-(void)dismissViewController {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdWillClose:)] != 0x0) {
            [r20 interstitialAdWillClose:r19];
    }
    r21 = [[r19 playableController] retain];
    var_30 = r20;
    r20 = [r20 retain];
    [r21 dismissViewControllerAnimated:0x1 completion:&var_50];
    [r21 release];
    [var_30 release];
    [r20 release];
    return;
}

-(void)playableViewController:(void *)arg2 didFailWithError:(void *)arg3 {
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

-(void)playableViewControllerComplete:(void *)arg2 {
    return;
}

-(void)playableViewControllerDidClick:(void *)arg2 {
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

-(void)playableViewControllerWillLogImpression:(void *)arg2 {
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

-(void)playableViewControllerWillClose:(void *)arg2 {
    [self dismissViewController];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_rootViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_playableController, 0x0);
    return;
}

-(void)playableViewControllerDidTerminate:(void *)arg2 {
    [self dismissViewController];
    return;
}

-(void *)playableController {
    r0 = self->_playableController;
    return r0;
}

-(void)setPlayableController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playableController, arg2);
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void *)rootViewController {
    r0 = self->_rootViewController;
    return r0;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rootViewController, arg2);
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

@end
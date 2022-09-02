@implementation FBInterstitialAd

-(void *)init {
    r0 = [self initWithPlacementID:@""];
    return r0;
}

-(void)tellDelegateThatWeDidFailWithError:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(interstitialAd:didFailWithError:), r3] != 0x0) {
            [r21 interstitialAd:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)loadAd {
    [self doLoadAd:0x0];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [FBAdUtility initializeAudienceNetwork];
            r0 = [FBDisplayAdController new];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_adController));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            [*(r21 + r22) setDelegate:r21];
            objc_storeStrong((int64_t *)&r21->_placementID, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)doLoadAd:(void *)arg2 {
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
    if (([r20 isInitialized] & 0x1) != 0x0) {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x0 description:@"FBInterstitialAd: loadAd can only be called once"];
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isLoadAdOldBehaviourDisabled];
            [r0 release];
            if (r22 != 0x0) {
                    r21 = [[FBAdError getNSError:0x1b5a] retain];
                    [r20 tellDelegateThatWeDidFailWithError:r21];
                    r0 = r21;
            }
            else {
                    r0 = [r20 adController];
                    r0 = [r0 retain];
                    [r0 refresh];
                    r0 = r20;
            }
            [r0 release];
    }
    else {
            r21 = [[r20 adController] retain];
            r22 = [[r20 placementID] retain];
            [r21 loadAdWithPlacementId:r22 withPlacementType:0x2 withTemplateID:[FBAdUtility getTemplateID:r2] withAdSize:0x0 withAdProvider:0x0 withRewardData:r19 withBidPayload:var_20];
            [r22 release];
            [r21 release];
            [r20 setInitialized:0x1];
    }
    [r19 release];
    return;
}

-(void)loadAdWithBidPayload:(void *)arg2 {
    [self doLoadAd:arg2];
    return;
}

-(bool)showAdFromRootViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self adController] retain];
    r20 = [[FBAdViewControllerProxy proxyWithViewController:r21] retain];
    [r21 release];
    r21 = [r19 startAdFromRootViewController:r20];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)isAdValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self adController];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 adExpired] & 0x1) == 0x0 && [r20 isInitialized] != 0x0) {
            r20 = [r20 isReady];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adController];
    r0 = [r0 retain];
    [r0 setExtraHint:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)extraHint {
    r0 = [self adController];
    r0 = [r0 retain];
    r20 = [[r0 extraHint] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)displayAdController:(void *)arg2 presentedView:(void *)arg3 {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInterstitialAd.m" lineNumber:0x84 format:@"%s"];
    return;
}

-(void)displayAdController:(void *)arg2 didFailWithError:(void *)arg3 {
    r22 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInterstitialAd.m" lineNumber:0x93 format:@"%s"];
    [self setReady:0x0];
    [self tellDelegateThatWeDidFailWithError:r22];
    [r22 release];
    return;
}

-(void)displayAdControllerLoaded:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInterstitialAd.m" lineNumber:0x89 format:@"%s"];
    [r19 setReady:0x1];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdDidLoad:)] != 0x0) {
            [r20 interstitialAdDidLoad:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerClickThrough:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInterstitialAd.m" lineNumber:0xa3 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdDidClick:)] != 0x0) {
            [r20 interstitialAdDidClick:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerImpression:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInterstitialAd.m" lineNumber:0x9a format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdWillLogImpression:)] != 0x0) {
            [r20 interstitialAdWillLogImpression:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerStopped:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInterstitialAd.m" lineNumber:0xb5 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdDidClose:)] != 0x0) {
            [r20 interstitialAdDidClose:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerUserClosed:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInterstitialAd.m" lineNumber:0xac format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdWillClose:)] != 0x0) {
            [r20 interstitialAdWillClose:r19];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adController, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)adController {
    r0 = self->_adController;
    return r0;
}

-(bool)isInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void)setAdController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adController, arg2);
    return;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(bool)isReady {
    r0 = *(int8_t *)(int64_t *)&self->_ready;
    return r0;
}

-(void)setReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ready = arg2;
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
    r0 = objc_getClass("FBInterstitialAd");
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
@implementation FBRewardedVideoAd

-(void *)init {
    r0 = [self initWithPlacementID:@""];
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 {
    r0 = [self initWithPlacementID:arg2 withUserID:0x0 withCurrency:0x0];
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 withUserID:(void *)arg3 withCurrency:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            [FBAdUtility initializeAudienceNetwork];
            r0 = [FBDisplayAdController new];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_adController));
            r8 = *(r23 + r24);
            *(r23 + r24) = r0;
            [r8 release];
            [*(r23 + r24) setDelegate:r23];
            r0 = [FBRewardedVideoRewardData alloc];
            r0 = [r0 initWithUserID:r21 withCurrency:r22];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardData));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r23->_placementID, r20);
    }
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r23;
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
    if ([r0 respondsToSelector:@selector(rewardedVideoAd:didFailWithError:), r3] != 0x0) {
            [r21 rewardedVideoAd:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)doLoadAd:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (([r20 isInitialized] & 0x1) != 0x0) {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x0 description:@"FBRewardedVideoAd: loadAd can only be called once"];
            r21 = [[FBAdError getNSError:0x1b5a] retain];
            [r20 tellDelegateThatWeDidFailWithError:r21];
            [r21 release];
    }
    else {
            r21 = [[r20 adController] retain];
            r22 = [[r20 placementID] retain];
            r23 = [[r20 rewardData] retain];
            [r21 loadAdWithPlacementId:r22 withPlacementType:0x5 withTemplateID:0x190 withAdSize:0x0 withAdProvider:r23 withRewardData:r19 withBidPayload:var_30];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 setInitialized:0x1];
    }
    [r19 release];
    return;
}

-(void)loadAd {
    [self doLoadAd:0x0];
    return;
}

-(bool)showAdFromRootViewController:(void *)arg2 {
    r0 = [self showAdFromRootViewController:arg2 animated:0x1];
    return r0;
}

-(bool)setRewardDataWithUserID:(void *)arg2 withCurrency:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[FBRewardedVideoRewardData alloc] initWithUserID:r21 withCurrency:r20];
    [r20 release];
    [r21 release];
    [self setRewardData:r22];
    [r22 release];
    r20 = [[self adController] retain];
    r19 = [[self rewardData] retain];
    r21 = [r20 passRewardData:r19];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)loadAdWithBidPayload:(void *)arg2 {
    [self doLoadAd:arg2];
    return;
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
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0 && ([r21 isAdValid] & 0x1) != 0x0) {
            r0 = [r21 adController];
            r0 = [r0 retain];
            r20 = [r0 startAdFromRootViewController:r19 animated:r20];
            [r0 release];
    }
    else {
            [FBAdDebugLogging logDebugEventWithType:r2 code:r3 description:r4];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
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

-(union ?)duration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = self->_adController;
    if (r0 != 0x0) {
            r0 = [r0 adapterDuration];
    }
    else {
            if (*qword_1011dd148 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
            }
            r8 = *qword_1011dd150;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(void *)extraHint {
    r0 = [self adController];
    r0 = [r0 retain];
    r20 = [[r0 extraHint] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)displayAdController:(void *)arg2 didFailWithError:(void *)arg3 {
    r22 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xb0 format:@"%s"];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xa6 format:@"%s"];
    [r19 setReady:0x1];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdDidLoad:)] != 0x0) {
            [r20 rewardedVideoAdDidLoad:r19];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xc0 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdDidClick:)] != 0x0) {
            [r20 rewardedVideoAdDidClick:r19];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xb7 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdWillLogImpression:)] != 0x0) {
            [r20 rewardedVideoAdWillLogImpression:r19];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xd2 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdDidClose:)] != 0x0) {
            [r20 rewardedVideoAdDidClose:r19];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xc9 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdWillClose:)] != 0x0) {
            [r20 rewardedVideoAdWillClose:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerVideoComplete:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xdb format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdVideoComplete:)] != 0x0) {
            [r20 rewardedVideoAdVideoComplete:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerServerRewardSuccess:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xe4 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdServerRewardDidSucceed:)] != 0x0) {
            [r20 rewardedVideoAdServerRewardDidSucceed:r19];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardData, 0x0);
    objc_storeStrong((int64_t *)&self->_adController, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)displayAdControllerServerRewardFailed:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBRewardedVideoAd.m" lineNumber:0xed format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(rewardedVideoAdServerRewardDidFail:)] != 0x0) {
            [r20 rewardedVideoAdServerRewardDidFail:r19];
    }
    [r20 release];
    return;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
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

-(void *)adController {
    r0 = self->_adController;
    return r0;
}

-(void)setAdController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adController, arg2);
    return;
}

-(void *)rewardData {
    r0 = self->_rewardData;
    return r0;
}

-(void)setRewardData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardData, arg2);
    return;
}

-(bool)isInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(bool)isReady {
    r0 = *(int8_t *)(int64_t *)&self->_ready;
    return r0;
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
    r0 = objc_getClass("FBRewardedVideoAd");
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

-(void)setReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ready = arg2;
    return;
}

@end
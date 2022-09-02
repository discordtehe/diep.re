@implementation FBInstreamAdView

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self initWithPlacementID:@""];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithPlacementID:@""];
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [[&var_30 super] initWithFrame:r2];
            r21 = r0;
            if (r0 != 0x0) {
                    [FBAdUtility initializeAudienceNetwork];
                    objc_storeStrong((int64_t *)&r21->_placementID, r20);
                    [r21 setClipsToBounds:0x1];
            }
            r0 = [r21 retain];
            r21 = r0;
            r20 = r0;
    }
    else {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:@"FBInstreamAdView: placementID cannot be nil"];
            r20 = 0x0;
    }
    [r19 release];
    [r21 release];
    r0 = r20;
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
    if ([r0 respondsToSelector:@selector(adView:didFailWithError:), r3] != 0x0) {
            [r21 adView:r20 didFailWithError:r19];
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 adController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100ada1a4;

loc_100ada104:
    [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x0 description:@"FBRewardedVideoAd: loadAd can only be called once"];
    r0 = [FBAdConfigManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isLoadAdOldBehaviourDisabled];
    [r0 release];
    if (r22 == 0x0) goto loc_100ada2d0;

loc_100ada168:
    r21 = [[FBAdError getNSError:0x1b5a] retain];
    [r20 tellDelegateThatWeDidFailWithError:r21];
    goto loc_100ada2c8;

loc_100ada2c8:
    [r21 release];
    goto loc_100ada2d0;

loc_100ada2d0:
    [r19 release];
    return;

loc_100ada1a4:
    r22 = [FBDisplayAdController new];
    [r20 setAdController:r22];
    [r22 release];
    r0 = [r20 adController];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r22 = [[r20 extraHint] retain];
    r0 = [r20 adController];
    r0 = [r0 retain];
    [r0 setExtraHint:r22];
    [r0 release];
    [r22 release];
    r21 = [[r20 adController] retain];
    r20 = [[r20 placementID] retain];
    [r21 loadAdWithPlacementId:r20 withPlacementType:0x6 withTemplateID:0x12c withAdSize:0x0 withAdProvider:0x0 withRewardData:r19 withBidPayload:var_30];
    [r20 release];
    goto loc_100ada2c8;
}

-(void)loadAd {
    [self doLoadAd:0x0];
    return;
}

-(void)loadAdWithBidPayload:(void *)arg2 {
    [self doLoadAd:arg2];
    return;
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
    if (([r0 adExpired] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = [r20 isLoaded];
    }
    [r19 release];
    r0 = r20;
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
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isLoaded] != 0x0 && ([r20 isStarted] & 0x1) == 0x0) {
            [r20 setStarted:0x1];
            r21 = [[r20 adController] retain];
            r22 = [[FBAdViewControllerProxy proxyWithViewController:r19] retain];
            r20 = [r21 startAdFromRootViewController:r22];
            [r22 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInstreamAdView.m" lineNumber:0x88 format:@"%s"];
    [r19 setLoaded:0x1];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidLoad:)] != 0x0) {
            [r20 adViewDidLoad:r19];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInstreamAdView.m" lineNumber:0x92 format:@"%s"];
    [r19 setLoaded:0x0];
    r0 = [r19 instreamVideoAdView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [r19 setInstreamVideoAdView:0x0];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidEnd:)] != 0x0) {
            [r20 adViewDidEnd:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdController:(void *)arg2 didFailWithError:(void *)arg3 {
    r20 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInstreamAdView.m" lineNumber:0x9f format:@"%s"];
    [self setLoaded:0x0];
    r0 = [self instreamVideoAdView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setInstreamVideoAdView:0x0];
    [self tellDelegateThatWeDidFailWithError:r20];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInstreamAdView.m" lineNumber:0xb3 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewWillLogImpression:)] != 0x0) {
            [r20 adViewWillLogImpression:r19];
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInstreamAdView.m" lineNumber:0xbc format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidClick:)] != 0x0) {
            [r20 adViewDidClick:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdController:(void *)arg2 presentedView:(void *)arg3 {
    r22 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBInstreamAdView.m" lineNumber:0xa9 format:@"%s"];
    [self setInstreamVideoAdView:r22];
    [r22 release];
    [self bounds];
    r0 = [self instreamVideoAdView];
    r0 = [r0 retain];
    [r0 setFrame:r22];
    [r0 release];
    r0 = [self instreamVideoAdView];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    [[self instreamVideoAdView] retain];
    [self addSubview:r2];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_instreamVideoAdView, 0x0);
    objc_storeStrong((int64_t *)&self->_adController, 0x0);
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
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

-(void *)instreamVideoAdView {
    r0 = self->_instreamVideoAdView;
    return r0;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setInstreamVideoAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_instreamVideoAdView, arg2);
    return;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

-(void)setStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_started = arg2;
    return;
}

-(bool)isStarted {
    r0 = *(int8_t *)(int64_t *)&self->_started;
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
    r0 = objc_getClass("FBInstreamAdView");
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
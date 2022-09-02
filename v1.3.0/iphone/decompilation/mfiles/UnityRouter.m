@implementation UnityRouter

-(void *)init {
    r0 = [[&var_20 super] init];
    r19 = [objc_alloc() init];
    [r0 setDelegateMap:r19];
    [r19 release];
    r0 = r0;
    return r0;
}

+(void *)sharedRouter {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d82c0 != -0x1) {
            dispatch_once(0x1011d82c0, 0x100e7e7b8);
    }
    r0 = *0x1011d82b8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)initializeWithGameId:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    var_28 = r0;
    if (*qword_1011d82c8 == -0x1) {
            r21 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011d82c8, &var_50);
            r21 = var_28;
    }
    [r20 setIfUnityAdsCollectsPersonalInfo];
    [r21 release];
    [r19 release];
    return;
}

-(void)setIfUnityAdsCollectsPersonalInfo {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [objc_alloc() init];
    r0 = [MoPub sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isGDPRApplicable];
    [r0 release];
    if (r22 == 0x1) {
            r0 = @class(MoPub);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r22 = [r0 allowLegitimateInterest];
            [r0 release];
            r0 = @class(MoPub);
            r0 = [r0 sharedInstance];
            r29 = r29;
            r21 = [r0 retain];
            if (r22 != 0x0) {
                    if ([r21 currentConsentStatus] == 0x1) {
                            [r21 release];
                    }
                    else {
                            r0 = [MoPub sharedInstance];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 currentConsentStatus];
                            [r0 release];
                            [r21 release];
                    }
            }
            else {
                    r20 = [r21 canCollectPersonalInfo];
                    [r21 release];
            }
            r20 = [[NSNumber numberWithBool:r2] retain];
            [r19 set:@"gdpr.consent" value:r20];
            [r20 release];
            [r19 commit];
    }
    [r19 release];
    return;
}

-(bool)isAdAvailableForPlacementId:(void *)arg2 {
    r0 = [UnityAds isReady:arg2];
    return r0;
}

-(void)requestVideoAdWithGameId:(void *)arg2 placementId:(void *)arg3 delegate:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([UnityAds getPlacementState:r20] != 0x4) goto loc_10048cd80;

loc_10048cd50:
    r0 = [NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0];
    goto loc_10048cdc0;

loc_10048cdc0:
    r22 = [r0 retain];
    [r21 unityAdsDidFailWithError:r22];
    [r22 release];
    goto loc_10048cde4;

loc_10048cde4:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10048cd80:
    if (([r22 isAdPlaying] & 0x1) == 0x0) goto loc_10048ce0c;

loc_10048cd94:
    r0 = [NSError errorWithDomain:*0x100e7edc8 code:0xffffffffffffffff userInfo:0x0];
    goto loc_10048cdc0;

loc_10048ce0c:
    r0 = [r22 delegateMap];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:r20];
    [r0 release];
    [r22 initializeWithGameId:r19];
    if ([r22 isAdAvailableForPlacementId:r20] != 0x0) {
            [r22 unityAdsReady:r20];
    }
    goto loc_10048cde4;
}

-(void)requestBannerAdWithGameId:(void *)arg2 placementId:(void *)arg3 delegate:(void *)arg4 {
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
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [r19 initializeWithGameId:r22];
    [r22 release];
    [r19 setBannerDelegate:r21];
    [r21 release];
    if ([UnityAds isReady:r20] != 0x0) {
            r19 = @class(UnityAdsBanner);
            r8 = &@selector(loadBanner:);
    }
    else {
            [r19 setBannerLoadRequested:0x1];
            r8 = &@selector(setBannerPlacementId:);
    }
    objc_msgSend(r19, *r8);
    [r20 release];
    return;
}

-(void)clearBannerDelegate {
    [self setBannerDelegate:0x0];
    [self setBannerPlacementId:0x0];
    [self setBannerLoadRequested:0x0];
    return;
}

-(void *)getDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegateMap];
    r0 = [r0 retain];
    r20 = [[r0 valueForKey:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)clearDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = @selector(delegate);
    r21 = [arg2 retain];
    r20 = [objc_msgSend(r19, r20) retain];
    [r21 release];
    [r20 release];
    if (r20 == r21) {
            [r19 setDelegate:0x0];
    }
    return;
}

-(void)presentVideoAdFromViewController:(void *)arg2 customerId:(void *)arg3 placementId:(void *)arg4 settings:(void *)arg5 delegate:(void *)arg6 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg6 retain];
    if (([r22 isAdPlaying] & 0x1) == 0x0 && [r22 isAdAvailableForPlacementId:r20] != 0x0) {
            [r22 setIsAdPlaying:0x1];
            [r22 setCurrentPlacementId:r20];
            [UnityAds show:r19 placementId:r20];
    }
    else {
            r22 = [[NSError errorWithDomain:*0x100e7edc8 code:0xffffffffffffffff userInfo:0x0] retain];
            [r21 unityAdsDidFailWithError:r22];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsDidStart:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self getDelegate:r19];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 unityAdsDidStart:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg3 retain];
    r22 = [[self currentPlacementId] retain];
    r21 = [[self getDelegate:r22] retain];
    [r22 release];
    if (r21 != 0x0) {
            [r21 unityAdsDidError:r20 withMessage:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)unityAdsReady:(void *)arg2 {
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
    r0 = [r20 bannerPlacementId];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10048d2d4;

loc_10048d26c:
    r23 = [r20 bannerLoadRequested];
    [r22 release];
    if (r23 == 0x0) goto loc_10048d2dc;

loc_10048d28c:
    [r20 setBannerLoadRequested:0x0];
    r20 = [[r20 bannerPlacementId] retain];
    r1 = @selector(loadBanner:);
    r0 = @class(UnityAdsBanner);
    goto loc_10048d324;

loc_10048d324:
    objc_msgSend(r0, r1);
    goto loc_10048d328;

loc_10048d328:
    [r20 release];
    goto loc_10048d330;

loc_10048d330:
    [r19 release];
    return;

loc_10048d2dc:
    if (([r20 isAdPlaying] & 0x1) != 0x0) goto loc_10048d330;

loc_10048d2f0:
    r0 = [r20 getDelegate:r19];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_10048d328;

loc_10048d314:
    r1 = @selector(unityAdsReady:);
    r0 = r20;
    goto loc_10048d324;

loc_10048d2d4:
    [r22 release];
    goto loc_10048d2dc;
}

-(void)unityAdsDidFinish:(void *)arg2 withFinishState:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 getDelegate:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 unityAdsDidFinish:r19 withFinishState:r22];
    }
    r0 = [r20 delegateMap];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r19];
    [r0 release];
    [r20 setIsAdPlaying:0x0];
    [r21 release];
    [r19 release];
    return;
}

-(void)unityAdsDidClick:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self getDelegate:r19];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 unityAdsDidClick:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsPlacementStateChanged:(void *)arg2 oldState:(long long)arg3 newState:(long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg3;
    r19 = [arg2 retain];
    r0 = [self getDelegate:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            if ([r20 respondsToSelector:@selector(unityAdsPlacementStateChanged:oldState:newState:), r3, r4] != 0x0) {
                    [r20 unityAdsPlacementStateChanged:r19 oldState:r22 newState:r21];
            }
            if (r21 == 0x4) {
                    r21 = [[NSError errorWithDomain:*0x100e7edc8 code:0xffffffffffffffff userInfo:0x0] retain];
                    [r20 unityAdsDidFailWithError:r21];
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsBannerDidLoad:(void *)arg2 view:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self bannerDelegate];
    r0 = [r0 retain];
    [r0 unityAdsBannerDidLoad:r21 view:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidUnload:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerDelegate];
    r0 = [r0 retain];
    [r0 unityAdsBannerDidUnload:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidShow:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerDelegate];
    r0 = [r0 retain];
    [r0 unityAdsBannerDidShow:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidClick:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerDelegate];
    r0 = [r0 retain];
    [r0 unityAdsBannerDidClick:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidHide:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerDelegate];
    r0 = [r0 retain];
    [r0 unityAdsBannerDidHide:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self bannerDelegate];
    r0 = [r0 retain];
    [r0 unityAdsBannerDidError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)currentPlacementId {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x1);
    return r0;
}

-(void)setCurrentPlacementId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)isAdPlaying {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsAdPlaying:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)delegateMap {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x1);
    return r0;
}

-(void)setDelegateMap:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setBannerDelegate:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)bannerDelegate {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x1);
    return r0;
}

-(void *)bannerPlacementId {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x1);
    return r0;
}

-(void)setBannerLoadRequested:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_destroyWeak(self + 0x18);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(bool)bannerLoadRequested {
    r0 = *(int8_t *)(self + 0x9) & 0x1;
    return r0;
}

-(void)setBannerPlacementId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

@end
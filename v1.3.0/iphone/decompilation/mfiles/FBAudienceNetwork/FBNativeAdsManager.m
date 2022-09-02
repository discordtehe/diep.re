@implementation FBNativeAdsManager

-(void *)init {
    r0 = [self initWithPlacementID:@"" forNumAdsRequested:0x0];
    return r0;
}

-(long long)refreshInterval {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isRefreshDisabled] & 0x1) != 0x0) {
            r0 = 0xffffffffffffffff;
    }
    else {
            r0 = r19->_refreshInterval;
    }
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 forNumAdsRequested:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 setPlacementID:r19];
                    [r20 setNumAdsRequested:r21];
                    [r20 setNativeAds:0x0];
                    [r20 setNativeAdsLoaded:0x0];
                    [r20 setValid:0x0];
                    [r20 setRefreshInterval:0x708];
                    [r20 setVersion:0x0];
                    [r20 setMediaCachePolicy:0x1];
            }
            r0 = [r20 retain];
            r20 = r0;
            r21 = r0;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)loadAds {
    var_40 = d9;
    stack[-72] = d8;
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
    [self cancel];
    [r19 startObservingNotifications];
    if ([r19 numAdsRequested] != 0x0) {
            r21 = [FBAdEnvironmentData alloc];
            r22 = [[r19 placementID] retain];
            r23 = [FBAdUtility getTemplateID:r2];
            r20 = [r19 numAdsRequested];
            r24 = [[r19 extraHint] retain];
            r20 = [r21 initWithPlacementId:r22 placementType:0x3 templateID:r23 adSize:r20 numAdsRequested:r24 extraHint:r7];
            [r24 release];
            [r22 release];
            r21 = [FBAdProvider new];
            [r19 setAdProvider:r21];
            [r21 release];
            r0 = [r19 adProvider];
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
            r0 = [r19 adProvider];
            r0 = [r0 retain];
            [r0 loadAdWithEnvironmentData:r20];
            [r0 release];
            [r20 release];
    }
    else {
            [r19 adsAllLoaded];
    }
    return;
}

-(void)cancel {
    [self invalidateRefresh];
    r0 = [self adProvider];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    [self setNativeAds:0x0];
    [self setNativeAdsLoaded:0x0];
    [self setNativeAdsFailedCount:0x0];
    return;
}

-(void)dealloc {
    [self stopObservingNotifications];
    [self cancel];
    [self setCurrentNativeAds:0x0];
    [self setCurrentNativeAdPos:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(unsigned long long)uniqueNativeAdCount {
    r0 = [self currentNativeAds];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)disableAutoRefresh {
    [self setRefreshDisabled:0x1];
    [self invalidateRefresh];
    return;
}

-(void *)nextNativeAd {
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
    r19 = self;
    r20 = @selector(currentNativeAdPos);
    [r19 setCurrentNativeAdPos:objc_msgSend(self, r20) + 0x1];
    r21 = @selector(currentNativeAds);
    r23 = [objc_msgSend(r19, r21) retain];
    r22 = objc_msgSend(r19, r20);
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    r24 = r0;
    r8 = 0x101137000;
    r25 = *(r8 + 0x410);
    r0 = objc_msgSend(r0, r25);
    asm { udiv       x8, x22, x0 };
    r22 = [[r23 objectAtIndexedSubscript:r22 - r8 * r0] retain];
    [r24 release];
    [r23 release];
    r20 = objc_msgSend(r19, r20);
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r25);
    [r0 release];
    if (r20 >= r21) {
            r0 = [r22 copy];
    }
    else {
            r0 = [r22 retain];
    }
    [r22 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)scheduleRefresh {
    r31 = r31 - 0x70;
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
    if ([self refreshInterval] >= 0x1) {
            objc_initWeak(&stack[-72], r19);
            [r19 refreshInterval];
            r20 = &var_60 + 0x20;
            asm { scvtf      d8, x0 };
            objc_copyWeak(r20, &stack[-72]);
            r0 = [r21 scheduledTimerWithTimeInterval:0x0 repeats:&var_60 block:r4];
            r21 = [r0 retain];
            [r19 setRefreshTimer:r21];
            [r21 release];
            objc_destroyWeak(r20);
            objc_destroyWeak(&stack[-72]);
    }
    return;
}

-(void)invalidateRefresh {
    r0 = [self refreshTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setRefreshTimer:0x0];
    return;
}

-(void)updateRefreshInterval:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r2 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r2;
            }
            else {
                    r2 = 0x708;
            }
    }
    [r0 setRefreshInterval:r2];
    return;
}

-(void)startObservingNotifications {
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
    r29 = &saved_fp;
    r20 = self;
    if (([self observingNotificaions] & 0x1) == 0x0) {
            objc_initWeak(r29 - 0x48, r20);
            objc_copyWeak(&var_70 + 0x20, r29 - 0x48);
            objc_copyWeak(&var_98 + 0x20, r29 - 0x48);
            [FBAdUtility startObservingBackgroundNotifications:r20 usingBackgroundBlock:&var_70 usingForegroundBlock:&var_98];
            [r20 setObservingNotificaions:0x1];
            objc_destroyWeak(&var_98 + 0x20);
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(r29 - 0x48);
    }
    return;
}

-(void)onApplicationForegrounded {
    [self scheduleRefresh];
    return;
}

-(void)onApplicationBackgrounded {
    [self invalidateRefresh];
    return;
}

-(void)stopObservingNotifications {
    [FBAdUtility stopObservingBackgroundNotifications:self];
    return;
}

-(void)imagesAllCached:(void *)arg2 {
    r20 = [arg2 copy];
    [self setCurrentNativeAds:r20];
    [r20 release];
    [self setCurrentNativeAdPos:0x0];
    [self setNativeAds:0x0];
    [self setNativeAdsLoaded:0x0];
    [self setValid:0x1];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdsLoaded];
    [r0 release];
    return;
}

-(void)onAdRequestError:(void *)arg2 {
    r21 = [arg2 retain];
    [self setAdProvider:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdsFailedToLoadWithError:r21];
    [r21 release];
    [r0 release];
    [self scheduleRefresh];
    return;
}

-(void)nativeAdDidLoad:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [r19 nativeAdsLoaded];
    r0 = [r0 retain];
    [r0 addObject:r20];
    [r20 release];
    [r0 release];
    r0 = [r19 nativeAdsLoaded];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] < [r19 numAdsRequested]) {
            r0 = [r19 nativeAdsLoaded];
            r0 = [r0 retain];
            r21 = r0;
            r24 = [r19 nativeAdsFailedCount] + [r0 count];
            r0 = [r19 nativeAds];
            r0 = [r0 retain];
            r22 = [r0 count];
            [r0 release];
            [r21 release];
            [r20 release];
            if (r24 == r22) {
                    [r19 adsAllLoaded];
            }
    }
    else {
            [r20 release];
            [r19 adsAllLoaded];
    }
    return;
}

-(void)nativeAd:(void *)arg2 didFailWithError:(void *)arg3 {
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
    [r19 setNativeAdsFailedCount:[self nativeAdsFailedCount] + 0x1];
    r0 = [r19 nativeAdsLoaded];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 count];
    r23 = [r19 nativeAdsFailedCount] + r23;
    r0 = [r19 nativeAds];
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    [r21 release];
    if (r23 == r22) {
            [r19 adsAllLoaded];
    }
    return;
}

-(void)onAdRequestSuccess:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r28 = self;
    r21 = [arg2 retain];
    [r28 setVersion:[r28 version] + 0x1];
    r22 = [[NSMutableArray array] retain];
    r0 = [r21 adPlacement];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 adCandidates];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [r19 release];
    r0 = [r27 count];
    var_128 = r21;
    if (r0 != 0x0) {
            r25 = 0x0;
            r24 = r27;
            r27 = r22;
            do {
                    r21 = @selector(addObject:);
                    r22 = [[FBAdProviderWithResponse alloc] initWithResponse:var_128 forAdAtIndex:r25];
                    r23 = [FBNativeAd alloc];
                    r0 = [r28 placementID];
                    r29 = r29;
                    r20 = [r0 retain];
                    r23 = [r23 initWithPlacementID:r20 adProvider:r22];
                    [r20 release];
                    [r23 setDelegate:r28];
                    objc_msgSend(r27, r21);
                    [r23 release];
                    [r22 release];
                    r25 = r25 + 0x1;
            } while (r25 < objc_msgSend(r24, r19));
            var_138 = @selector(count);
            r21 = var_128;
            r22 = r27;
            r27 = r24;
            r23 = @selector(adPlacement);
    }
    else {
            r23 = @selector(adPlacement);
            var_138 = @selector(count);
    }
    r0 = objc_msgSend(r21, r23);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 definition];
    r0 = [r0 retain];
    [r28 updateRefreshInterval:[r0 refreshInterval]];
    [r0 release];
    [r19 release];
    [r28 setAdProvider:0x0];
    var_130 = r22;
    [r28 setNativeAds:r22];
    r19 = [NSMutableSet new];
    [r28 setNativeAdsLoaded:r19];
    [r19 release];
    [r28 setNativeAdsFailedCount:0x0];
    var_110 = q0;
    r0 = [r28 nativeAds];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r20 = *var_110;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_110 != r20) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_118 + r23 * 0x8) loadAd];
                            r23 = r23 + 0x1;
                    } while (r23 < r25);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    [r19 release];
    r0 = [r28 nativeAds];
    r29 = r29;
    r0 = [r0 retain];
    r20 = objc_msgSend(r0, var_138);
    [r0 release];
    if (r20 == 0x0) {
            r19 = [[FBAdError getNSError:0x3e9] retain];
            [r28 onAdRequestError:r19];
            [r19 release];
    }
    var_60 = **___stack_chk_guard;
    [r27 release];
    [var_130 release];
    [var_128 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)adsAllLoaded {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x210;
    r25 = self;
    r0 = [self nativeAdsLoaded];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            var_238 = [[NSMutableArray array] retain];
            var_190 = q0;
            r27 = r25;
            r0 = [r25 nativeAds];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_230 = r0;
            var_258 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r19 = *var_190;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_190 != r19) {
                                            objc_enumerationMutation(var_230);
                                    }
                                    r26 = @selector(containsObject:);
                                    r28 = *(var_198 + r23 * 0x8);
                                    [r28 setDelegate:0x0];
                                    r0 = [r27 nativeAdsLoaded];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r20 = objc_msgSend(r0, r26);
                                    [r0 release];
                                    if (r20 != 0x0) {
                                            [var_238 addObject:r2];
                                    }
                                    r23 = r23 + 0x1;
                            } while (r23 < r24);
                            r0 = objc_msgSend(var_230, var_258);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [var_230 release];
            r0 = [NSMutableArray array];
            r29 = r29;
            var_248 = [r0 retain];
            var_1D0 = q0;
            r0 = [var_238 retain];
            var_250 = r0;
            r0 = objc_msgSend(r0, var_258);
            var_228 = r0;
            if (r0 != 0x0) {
                    var_238 = *var_1D0;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_1D0 != var_238) {
                                            objc_enumerationMutation(var_250);
                                    }
                                    r22 = *(var_1D8 + r23 * 0x8);
                                    r19 = [r27 mediaCachePolicy];
                                    r0 = [r22 dataModel];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 image];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    if (r19 == 0x1) {
                                            [r20 release];
                                            if (r21 != 0x0) {
                                                    [var_248 addObject:r2];
                                            }
                                    }
                                    else {
                                            [r21 preloadImageAsync];
                                            [r21 release];
                                            r21 = r20;
                                    }
                                    [r21 release];
                                    r19 = [r27 mediaCachePolicy];
                                    r0 = [r22 dataModel];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 icon];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    if (r19 == 0x1) {
                                            [r20 release];
                                            if (r21 != 0x0) {
                                                    [var_248 addObject:r2];
                                            }
                                    }
                                    else {
                                            [r21 preloadImageAsync];
                                            [r21 release];
                                            r21 = r20;
                                    }
                                    [r21 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < var_228);
                            r0 = objc_msgSend(var_250, var_258);
                            var_228 = r0;
                    } while (r0 != 0x0);
            }
            [var_250 release];
            r25 = r27;
            objc_initWeak(&stack[-504], r27);
            [r27 version];
            [var_248 copy];
            objc_copyWeak(&var_220 + 0x28, &stack[-504]);
            r0 = [var_250 retain];
            [FBAdImage loadImagesAsync:r23 withBlock:&var_220];
            [r23 release];
            [r0 release];
            objc_destroyWeak(&var_220 + 0x28);
            objc_destroyWeak(&stack[-504]);
            [var_248 release];
            r0 = r24;
    }
    else {
            [r25 setNativeAds:0x0];
            [r25 setNativeAdsLoaded:0x0];
            r19 = [[r25 delegate] retain];
            r20 = [[FBAdError getNSError:0x3e9] retain];
            [r19 nativeAdsFailedToLoadWithError:r20];
            [r20 release];
            r0 = r19;
    }
    var_60 = **___stack_chk_guard;
    [r0 release];
    [r25 scheduleRefresh];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentNativeAds, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdsLoaded, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAds, 0x0);
    objc_storeStrong((int64_t *)&self->_refreshTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_adProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setMediaCachePolicy:(long long)arg2 {
    self->_mediaCachePolicy = arg2;
    return;
}

-(long long)mediaCachePolicy {
    r0 = self->_mediaCachePolicy;
    return r0;
}

-(bool)isValid {
    r0 = *(int8_t *)(int64_t *)&self->_valid;
    return r0;
}

-(void)setValid:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_valid = arg2;
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

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adProvider {
    r0 = self->_adProvider;
    return r0;
}

-(void)setAdProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adProvider, arg2);
    return;
}

-(void)setRefreshInterval:(long long)arg2 {
    self->_refreshInterval = arg2;
    return;
}

-(bool)isRefreshDisabled {
    r0 = *(int8_t *)(int64_t *)&self->_refreshDisabled;
    return r0;
}

-(void)setRefreshDisabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_refreshDisabled = arg2;
    return;
}

-(void *)refreshTimer {
    r0 = self->_refreshTimer;
    return r0;
}

-(void)setRefreshTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_refreshTimer, arg2);
    return;
}

-(bool)observingNotificaions {
    r0 = *(int8_t *)(int64_t *)&self->_observingNotificaions;
    return r0;
}

-(void)setObservingNotificaions:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_observingNotificaions = arg2;
    return;
}

-(void)setVersion:(unsigned long long)arg2 {
    self->_version = arg2;
    return;
}

-(unsigned long long)version {
    r0 = self->_version;
    return r0;
}

-(void *)nativeAds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_nativeAds)), 0x0);
    return r0;
}

-(void)setNativeAds:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)nativeAdsLoaded {
    r0 = self->_nativeAdsLoaded;
    return r0;
}

-(void)setNativeAdsLoaded:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdsLoaded, arg2);
    return;
}

-(unsigned long long)numAdsRequested {
    r0 = self->_numAdsRequested;
    return r0;
}

-(long long)nativeAdsFailedCount {
    r0 = self->_nativeAdsFailedCount;
    return r0;
}

-(void)setNumAdsRequested:(unsigned long long)arg2 {
    self->_numAdsRequested = arg2;
    return;
}

-(void)setNativeAdsFailedCount:(long long)arg2 {
    self->_nativeAdsFailedCount = arg2;
    return;
}

-(void *)currentNativeAds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currentNativeAds)), 0x0);
    return r0;
}

-(void)setCurrentNativeAds:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)currentNativeAdPos {
    r0 = self->_currentNativeAdPos;
    return r0;
}

-(void)setCurrentNativeAdPos:(unsigned long long)arg2 {
    self->_currentNativeAdPos = arg2;
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
    r0 = objc_getClass("FBNativeAdsManager");
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
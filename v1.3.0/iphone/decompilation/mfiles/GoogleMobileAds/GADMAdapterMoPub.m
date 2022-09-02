@implementation GADMAdapterMoPub

+(void)load {
    r0 = [NSMapTable mapTableWithKeyOptions:0x0 valueOptions:0x5];
    r0 = [r0 retain];
    r8 = *0x1011dc9a8;
    *0x1011dc9a8 = r0;
    [r8 release];
    return;
}

+(void *)adapterVersion {
    objc_retainAutorelease(@"5.7.1.0");
    return @"5.7.1.0";
}

+(void *)networkExtrasClass {
    r0 = [GADMoPubNetworkExtras class];
    return r0;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_connector, r19);
            r0 = [MPImageDownloadQueue alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_imageDownloadQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)stopBeingDelegate {
    [self->_bannerAd setDelegate:0x0];
    [self->_interstitialAd setDelegate:0x0];
    return;
}

-(long long)ageFromBirthday:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[NSDate date] retain];
    r0 = [NSCalendar currentCalendar];
    r0 = [r0 retain];
    r22 = [[r0 components:0x4 fromDate:r21 toDate:r19 options:0x0] retain];
    [r21 release];
    [r0 release];
    r20 = [r22 year];
    [r22 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)keywordsContainUserData:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 userGender] != 0x0) {
            r20 = 0x1;
    }
    else {
            r21 = [[r19 userBirthday] retain];
            if (r21 != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = [r19 userHasLocation];
            }
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)getKeywords:(bool)arg2 {
    r31 = r31 - 0x80;
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
    r23 = arg2;
    r21 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r21->_connector);
    r19 = r0;
    r0 = [r0 userBirthday];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r22 = @"";
    [r22 retain];
    if (r20 != 0x0) {
            r0 = [NSNumber numberWithInteger:[r21 ageFromBirthday:r20]];
            r0 = [r0 retain];
            r24 = r0;
            r25 = [[r0 stringValue] retain];
            r0 = [@"m_age:" stringByAppendingString:r25];
            r29 = r29;
            r22 = [r0 retain];
            [@"" release];
            [r25 release];
            [r24 release];
    }
    r26 = [r19 userGender];
    [@"" retain];
    if (r26 == 0x2) goto loc_1009f0bb0;

loc_1009f0b98:
    r24 = @"";
    if (r26 != 0x1) goto loc_1009f0bcc;

loc_1009f0ba4:
    r24 = @"m_gender:m";
    goto loc_1009f0bb8;

loc_1009f0bb8:
    [r24 retain];
    [@"" release];
    goto loc_1009f0bcc;

loc_1009f0bcc:
    r0 = [NSString stringWithFormat:@"%@,%@,%@"];
    r29 = r29;
    r26 = [r0 retain];
    if (r23 == 0x0) goto loc_1009f0c64;

loc_1009f0c08:
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r27 = [r0 canCollectPersonalInfo];
    [r0 release];
    if (r27 == 0x0) goto loc_1009f0c8c;

loc_1009f0c44:
    r0 = [r21 keywordsContainUserData:r19];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"";
            }
            else {
                    r0 = r26;
            }
    }
    goto loc_1009f0c80;

loc_1009f0c80:
    r21 = [r0 retain];
    goto loc_1009f0c9c;

loc_1009f0c9c:
    [r26 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1009f0c8c:
    r21 = @"";
    [r21 retain];
    goto loc_1009f0c9c;

loc_1009f0c64:
    r0 = [r21 keywordsContainUserData:r19];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r26;
            }
            else {
                    r0 = @"";
            }
    }
    goto loc_1009f0c80;

loc_1009f0bb0:
    r24 = @"m_gender:f";
    goto loc_1009f0bb8;
}

-(void)getInterstitial {
    r31 = r31 - 0xa0;
    var_50 = d9;
    stack[-88] = d8;
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
    r0 = objc_loadWeakRetained((int64_t *)&r21->_connector);
    r19 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"pubid"] retain];
    [r0 release];
    r0 = *0x1011dc9a8;
    r0 = [r0 retain];
    r22 = r0;
    objc_sync_enter(r0);
    r0 = *0x1011dc9a8;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            r23 = [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0x0 userInfo:r24] retain];
            [r24 release];
            [r19 adapter:r21 didFailAd:r23];
            [r23 release];
            objc_sync_exit(r22);
    }
    else {
            [*0x1011dc9a8 setObject:r21 forKey:r20];
            objc_sync_exit(r22);
            [r22 release];
            r22 = [CLLocation alloc];
            [r19 userLatitude];
            [r19 userLongitude];
            r22 = [r22 initWithLatitude:r21 longitude:r20];
            r0 = [MPInterstitialAdController interstitialAdControllerForAdUnitId:r20];
            r0 = [r0 retain];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialAd));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            [*(r21 + r25) setDelegate:r21];
            r24 = [[r21 getKeywords:0x0] retain];
            [*(r21 + r25) setKeywords:r24];
            [r24 release];
            r23 = [[r21 getKeywords:0x1] retain];
            [*(r21 + r25) setUserDataKeywords:r23];
            [r23 release];
            [*(r21 + r25) setLocation:r22];
            r25 = [[NSString stringWithFormat:@"Requesting Interstitial Ad from MoPub Ad Network."] retain];
            r24 = [[MPLogEvent eventWithMessage:r25 level:0x14] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
            [r24 release];
            [r25 release];
            r0 = [GADMAdapterMoPubSingleton sharedInstance];
            r0 = [r0 retain];
            [r0 initializeMoPubSDKWithAdUnitID:r20 completionHandler:&var_90];
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialAd));
    if ([*(r20 + r21) ready] != 0x0) {
            [*(r20 + r21) showFromViewController:r19];
    }
    [r19 release];
    return;
}

-(void)interstitialDidLoadAd:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterDidReceiveInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialDidFailToLoadAd:(void *)arg2 {
    [arg2 retain];
    [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0x9 userInfo:0x0] retain];
    r0 = *0x1011dc9a8;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r23 = *0x1011dc9a8;
    r24 = [[r19 adUnitId] retain];
    [r23 removeObjectForKey:r24];
    [r24 release];
    objc_sync_exit(r22);
    [r22 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapter:self didFailAd:r21];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialWillAppear:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterWillPresentInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialWillDisappear:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterWillDismissInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialDidDisappear:(void *)arg2 {
    [arg2 retain];
    r0 = *0x1011dc9a8;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r22 = *0x1011dc9a8;
    r23 = [[r19 adUnitId] retain];
    [r22 removeObjectForKey:r23];
    [r23 release];
    objc_sync_exit(r21);
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterDidDismissInterstitial:self];
    [r0 release];
    [r19 release];
    return;
}

-(void)interstitialDidReceiveTapEvent:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterDidGetAdClick:self];
    [r0 release];
    return;
}

-(struct CGSize)GADSupportedAdSizeFromRequestedSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x1c0;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = self;
    sub_100845a5c();
    sub_100845a5c();
    sub_100845a5c();
    r22 = [sub_100846600(&saved_fp - 0xd0) retain];
    r0 = sub_100846600(&var_F0);
    r23 = [r0 retain];
    r0 = sub_100846600(&var_110);
    r24 = [r0 retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x70 count:0x3];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    [r22 release];
    sub_10086b934(&var_140, r21);
    r0 = sub_1008463dc(&var_160);
    if (r0 != 0x0) {
            sub_100845b10(&var_180);
            v8 = v0;
            v9 = v1;
    }
    else {
            r0 = sub_100845e00(&var_1A0);
            r20 = [r0 retain];
            r24 = [[NSString stringWithFormat:@"Unable to retrieve supported size from GADAdSize: %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
            [r24 release];
            [r20 release];
    }
    var_1A8 = **___stack_chk_guard;
    r0 = [r21 release];
    if (**___stack_chk_guard != var_1A8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)getBannerWithSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self GADSupportedAdSizeFromRequestedSize:&var_80];
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r19 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"pubid"] retain];
    [r0 release];
    r22 = [CLLocation alloc];
    [r19 userLatitude];
    [r19 userLongitude];
    r22 = [r22 initWithLatitude:@"pubid" longitude:r3];
    r0 = [MPAdView alloc];
    r0 = [r0 initWithAdUnitId:r21 size:r3];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_bannerAd));
    r8 = *(self + r25);
    *(self + r25) = r0;
    [r8 release];
    [*(self + r25) setDelegate:self];
    r24 = [[self getKeywords:0x0] retain];
    [*(self + r25) setKeywords:r24];
    [r24 release];
    r23 = [[self getKeywords:0x1] retain];
    [*(self + r25) setUserDataKeywords:r23];
    [r23 release];
    [*(self + r25) setLocation:r22];
    r25 = [[NSString stringWithFormat:@"Requesting Banner Ad from MoPub Ad Network."] retain];
    r24 = [[MPLogEvent eventWithMessage:r25 level:0x14] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[self class]];
    [r24 release];
    [r25 release];
    r0 = [GADMAdapterMoPubSingleton sharedInstance];
    r0 = [r0 retain];
    [r0 initializeMoPubSDKWithAdUnitID:r21 completionHandler:&var_A8];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)adViewDidLoadAd:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapter:self didReceiveAdView:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)adViewDidFailToLoadAd:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"Mopub failed to fill the ad."] retain];
    r21 = [[NSDictionary dictionaryWithObjectsAndKeys:r20] retain];
    r22 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r23 = [[NSError errorWithDomain:*0x100e92df8 code:0x0 userInfo:r21] retain];
    [r22 adapter:self didFailAd:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)willPresentModalViewForAd:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterDidGetAdClick:self];
    [r0 adapterWillPresentFullScreenModal:self];
    [r0 release];
    return;
}

-(void)willLeaveApplicationFromAd:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void)didDismissModalViewForAd:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterWillDismissFullScreenModal:self];
    [r0 adapterDidDismissFullScreenModal:self];
    [r0 release];
    return;
}

-(bool)isBannerAnimationOK:(long long)arg2 {
    return 0x1;
}

-(void)requestNative:(void *)arg2 {
    r21 = [arg2 retain];
    r24 = [[NSString stringWithFormat:@"Requesting Native Ad from MoPub Ad Network."] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[self class]];
    [r23 release];
    [r24 release];
    [arg2 startWithCompletionHandler:&var_68];
    [r21 release];
    return;
}

-(void)getNativeAdWithAdTypes:(void *)arg2 options:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    var_68 = **___stack_chk_guard;
    r24 = [arg3 retain];
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r9 = [[MPStaticNativeAdRendererSettings alloc] init];
    r21 = [[MPStaticNativeAdRenderer rendererConfigurationWithRendererSettings:r9] retain];
    r0 = [r19 credentials];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:@"pubid"] retain];
    [r0 release];
    r28 = [[NSArray arrayWithObjects:&var_70 count:0x1] retain];
    r26 = [[MPNativeAdRequest requestWithAdUnitIdentifier:r23 rendererConfigurations:r28] retain];
    [r28 release];
    r25 = [[MPNativeAdRequestTargeting targeting] retain];
    r20 = [[self getKeywords:0x0] retain];
    [r25 setKeywords:r20];
    [r20 release];
    r20 = [[self getKeywords:0x1] retain];
    r2 = r20;
    [r25 setUserDataKeywords:r2];
    [r20 release];
    r20 = [CLLocation alloc];
    [r19 userLatitude];
    [r19 userLongitude];
    r27 = [r20 initWithLatitude:r2 longitude:r28];
    [r25 setLocation:r27];
    r28 = [[NSSet setWithObjects:*0x100e7ee70] retain];
    [r25 setDesiredAssets:r28];
    [r26 setTargeting:r25];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdOptions));
    r20 = *(self + r8);
    *(self + r8) = r24;
    r24 = [r24 retain];
    [r20 release];
    r20 = [[GADMAdapterMoPubSingleton sharedInstance] retain];
    var_78 = r26;
    r26 = [r26 retain];
    [r20 initializeMoPubSDKWithAdUnitID:r23 completionHandler:&var_A0];
    [r20 release];
    [var_78 release];
    [r26 release];
    [r24 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r23 release];
    [r21 release];
    [r9 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleNativeAdOptions:(void *)arg2 withResponse:(void *)arg3 withError:(void *)arg4 withOptions:(void *)arg5 {
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
    r19 = arg3;
    r21 = self;
    r24 = [r19 retain];
    r20 = [arg4 retain];
    r22 = [arg5 retain];
    if (r20 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r21->_connector);
            [r0 adapter:r21 didFailAd:r20];
            [r0 release];
    }
    else {
            objc_storeStrong((int64_t *)&r21->_nativeAd, r19);
            [r21->_nativeAd setDelegate:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_shouldDownloadImages));
            var_120 = r9;
            *(int8_t *)(r21 + r9) = 0x1;
            if (r22 != 0x0) {
                    var_138 = r20;
                    stack[-320] = r24;
                    var_108 = q0;
                    var_140 = r22;
                    r0 = [r22 retain];
                    r23 = r0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_128 = r1;
                    r25 = objc_msgSend(r0, r1);
                    if (r25 != 0x0) {
                            r20 = *var_108;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_108 != r20) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            r19 = *(var_110 + r22 * 0x8);
                                            if ([r19 isKindOfClass:[GADNativeAdImageAdLoaderOptions class]] != 0x0) {
                                                    *(int8_t *)(r21 + var_120) = [r19 disableImageLoading] ^ 0x1;
                                            }
                                            else {
                                                    if ([r19 isKindOfClass:[GADNativeAdViewAdOptions class]] != 0x0) {
                                                            objc_storeStrong((int64_t *)&r21->_nativeAdViewAdOptions, r19);
                                                    }
                                            }
                                            r22 = r22 + 0x1;
                                    } while (r22 < r25);
                                    r25 = objc_msgSend(r23, var_128);
                            } while (r25 != 0x0);
                    }
                    [r23 release];
                    r20 = var_138;
                    r24 = stack[-320];
                    r22 = var_140;
            }
            [r21 loadNativeAdImages];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)returnImageKey:(void *)arg2 {
    r31 = r31 - 0x180;
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
    var_160 = [arg2 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    var_130 = r8;
    stack[-312] = self;
    r0 = *(self + r8);
    r0 = [r0 properties];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r20;
    var_168 = r1;
    r24 = objc_msgSend(r20, r1);
    if (r24 == 0x0) goto loc_1009f2e60;

loc_1009f2cd0:
    r28 = 0x0;
    goto loc_1009f2d14;

loc_1009f2d14:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_140);
    }
    r22 = *(0x0 + r28 * 0x8);
    r0 = [r22 lowercaseString];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (([r0 hasSuffix:@"image"] & 0x1) == 0x0) goto loc_1009f2e2c;

loc_1009f2d60:
    r0 = *(stack[-312] + var_130);
    r0 = [r0 properties];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    r23 = [r21 isKindOfClass:[NSString class]];
    [r21 release];
    [r20 release];
    [r25 release];
    if (r23 == 0x0) goto loc_1009f2e34;

loc_1009f2dd4:
    r0 = *(stack[-312] + var_130);
    r0 = [r0 properties];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    [r20 release];
    if ((r23 & 0x1) == 0x0) goto loc_1009f2e34;

loc_1009f2e28:
    r19 = [r22 retain];
    [var_140 release];
    goto loc_1009f2e84;

loc_1009f2e84:
    var_58 = **___stack_chk_guard;
    [var_160 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009f2e34:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_1009f2d14;

loc_1009f2e40:
    r24 = objc_msgSend(var_140, var_168);
    if (r24 != 0x0) goto loc_1009f2cd0;

loc_1009f2e60:
    [var_140 release];
    r19 = 0x0;
    goto loc_1009f2e84;

loc_1009f2e2c:
    [r25 release];
    goto loc_1009f2e34;
}

-(void)loadNativeAdImages {
    r31 = r31 - 0x1b0;
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
    r25 = self;
    var_188 = objc_loadWeakRetained((int64_t *)&r25->_connector);
    var_170 = [[NSMutableArray array] retain];
    var_190 = [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0xd userInfo:0x0] retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    r0 = *(r25 + r21);
    r0 = [r0 properties];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r20;
    var_180 = r1;
    r28 = objc_msgSend(r20, r1);
    if (r28 == 0x0) goto loc_1009f2b40;

loc_1009f28cc:
    r24 = @selector(properties);
    r19 = *0x0;
    var_120 = r24;
    var_140 = r25;
    goto loc_1009f28fc;

loc_1009f28fc:
    r22 = 0x0;
    goto loc_1009f2940;

loc_1009f2940:
    if (*0x0 != r19) {
            objc_enumerationMutation(var_148);
    }
    var_128 = @selector(lowercaseString);
    var_130 = @selector(hasSuffix:);
    r23 = *(0x0 + r22 * 0x8);
    r0 = objc_msgSend(r23, var_128);
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if ((objc_msgSend(r0, var_130) & 0x1) == 0x0) goto loc_1009f2ae8;

loc_1009f298c:
    var_150 = @selector(class);
    var_158 = @selector(isKindOfClass:);
    var_138 = @selector(objectForKey:);
    r0 = *(r25 + r21);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 retain];
    r0 = objc_msgSend(r0, var_138);
    r29 = r29;
    [r0 retain];
    r26 = r21;
    objc_msgSend(@class(NSString), var_150);
    r20 = objc_msgSend(r0, var_158);
    r21 = r26;
    [r0 release];
    r0 = r25;
    r25 = var_140;
    [r0 release];
    [r27 release];
    if (r20 == 0x0) goto loc_1009f2af0;

loc_1009f2a08:
    var_138 = @selector(objectForKey:);
    r24 = r19;
    r19 = r28;
    r0 = *(r25 + r21);
    r28 = var_120;
    r0 = objc_msgSend(r0, r28);
    r0 = [r0 retain];
    r20 = r0;
    r0 = objc_msgSend(r0, var_138);
    r29 = r29;
    r0 = [r0 retain];
    r27 = r21;
    [r0 release];
    [r20 release];
    if (r0 == 0x0) goto loc_1009f2b68;

loc_1009f2a58:
    var_168 = @selector(URLWithString:);
    r0 = *(r25 + r27);
    r0 = objc_msgSend(r0, r28);
    r0 = [r0 retain];
    r21 = r0;
    r25 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = objc_msgSend(@class(NSURL), var_168);
    r29 = r29;
    r23 = [r0 retain];
    [r25 release];
    [r21 release];
    if (r23 == 0x0) goto loc_1009f2b80;

loc_1009f2ac0:
    [var_170 addObject:r2];
    [r23 release];
    r25 = var_140;
    r21 = r26;
    r28 = r19;
    r19 = r24;
    goto loc_1009f2af0;

loc_1009f2af0:
    r22 = r22 + 0x1;
    r24 = var_120;
    if (r22 < r28) goto loc_1009f2940;

loc_1009f2b00:
    r28 = objc_msgSend(var_148, var_180);
    if (r28 != 0x0) goto loc_1009f28fc;

loc_1009f2b40:
    [var_148 release];
    r20 = var_170;
    [r25 precacheImagesWithURL:r20];
    r21 = var_190;
    r19 = var_188;
    goto loc_1009f2bac;

loc_1009f2bac:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1009f2b80:
    r19 = var_188;
    r0 = r19;
    goto loc_1009f2b94;

loc_1009f2b94:
    r21 = var_190;
    [r0 adapter:r2 didFailAd:r3];
    r20 = var_170;
    [var_148 release];
    goto loc_1009f2bac;

loc_1009f2b68:
    r19 = var_188;
    r0 = r19;
    goto loc_1009f2b94;

loc_1009f2ae8:
    [r27 release];
    goto loc_1009f2af0;
}

-(void *)viewControllerForPresentingModalView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)willPresentModalForNativeAd:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdWillPresentScreen:self->_mediatedAd];
    return;
}

-(void)precacheImagesWithURL:(void *)arg2 {
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff80 - 0x190;
    r28 = self;
    r19 = [arg2 retain];
    var_1E8 = objc_loadWeakRetained((int64_t *)&r28->_connector);
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_imagesDictionary));
    r8 = *(r28 + r9);
    var_1C8 = r9;
    *(r28 + r9) = r0;
    [r8 release];
    var_128 = q0;
    r0 = [r19 retain];
    r26 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_138;
    var_1E0 = r1;
    r0 = objc_msgSend(r0, r1);
    var_188 = r0;
    if (r0 != 0x0) {
            var_1A0 = *var_128;
            var_1D8 = r26;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_128 != var_1A0) {
                                    objc_enumerationMutation(var_1D8);
                            }
                            r23 = *(var_130 + r26 * 0x8);
                            r24 = [[MPNativeCache sharedCache] retain];
                            r20 = [[r23 absoluteString] retain];
                            r21 = [[r24 retrieveDataForKey:r20] retain];
                            [r20 release];
                            [r24 release];
                            r0 = [UIImage imageWithData:r21];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    UIGraphicsBeginImageContext();
                                    [r24 drawAtPoint:r2];
                                    UIGraphicsEndImageContext();
                                    r20 = [[GADNativeAdImage alloc] initWithImage:r24];
                                    r22 = *(r28 + var_1C8);
                                    r0 = [r28 returnImageKey:[[r23 absoluteString] retain]];
                                    r29 = r29;
                                    [r0 retain];
                                    r2 = r20;
                                    [r22 setObject:r2 forKey:r3];
                                    [r25 release];
                                    [r23 release];
                                    [r20 release];
                            }
                            [r24 release];
                            [r21 release];
                            r26 = r26 + 0x1;
                    } while (r26 < var_188);
                    r2 = &var_138;
                    r26 = var_1D8;
                    r0 = objc_msgSend(r26, var_1E0);
                    var_188 = r0;
            } while (r0 != 0x0);
    }
    [r26 release];
    r0 = *(r28 + var_1C8);
    r19 = @selector(count);
    if (objc_msgSend(r0, r19) < objc_msgSend(r26, r19)) {
            r21 = [[NSString stringWithFormat:@"Cache miss on %@. Re-downloading..."] retain];
            r20 = [[MPLogEvent eventWithMessage:r21 level:0x14] retain];
            [MPLogging logEvent:r20 source:0x0 fromClass:[r28 class]];
            [r20 release];
            [r21 release];
            objc_initWeak(&stack[-336], r28);
            objc_copyWeak(&var_180 + 0x38, &stack[-336]);
            r21 = [r26 retain];
            r25 = var_1E8;
            var_150 = [r25 retain];
            [r20 addDownloadImageURLs:r21 completionBlock:&var_180];
            [var_150 release];
            [r21 release];
            objc_destroyWeak(&var_180 + 0x38);
            objc_destroyWeak(&stack[-336]);
    }
    else {
            r25 = var_1E8;
            if (*(int8_t *)(int64_t *)&r28->_shouldDownloadImages != 0x0) {
                    r19 = [MoPubAdapterMediatedNativeAd alloc];
                    r20 = [[r28 nativeAd] retain];
                    r21 = *(r28 + var_1C8);
                    r22 = r28->_nativeAdViewAdOptions;
                    r23 = [[r25 networkExtras] retain];
                    r0 = [r19 initWithMoPubNativeAd:r20 mappedImages:r21 nativeAdViewOptions:r22 networkExtras:r23];
                    r19 = sign_extend_64(*(int32_t *)ivar_offset(_mediatedAd));
                    r8 = *(r28 + r19);
                    *(r28 + r19) = r0;
                    [r8 release];
                    [r23 release];
                    [r20 release];
                    [r25 adapter:r28 didReceiveMediatedNativeAd:*(r28 + r19)];
            }
            else {
                    r19 = [[NSMutableDictionary alloc] init];
                    r20 = [[*(r28 + var_1C8) objectForKeyedSubscript:*0x100e7ee90] retain];
                    [r19 setObject:r20 forKeyedSubscript:*0x100e7ee90];
                    r21 = [MoPubAdapterMediatedNativeAd alloc];
                    r22 = r28->_nativeAd;
                    r23 = r28->_nativeAdViewAdOptions;
                    r24 = [[r25 networkExtras] retain];
                    r0 = [r21 initWithMoPubNativeAd:r22 mappedImages:r19 nativeAdViewOptions:r23 networkExtras:r24];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mediatedAd));
                    r8 = *(r28 + r21);
                    *(r28 + r21) = r0;
                    [r8 release];
                    [r24 release];
                    [r25 adapter:r28 didReceiveMediatedNativeAd:*(r28 + r21)];
                    [r20 release];
                    [r19 release];
            }
    }
    var_78 = **___stack_chk_guard;
    [r25 release];
    [r26 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(void)didDismissModalForNativeAd:(void *)arg2 {
    r0 = @class(GADMediatedNativeAdNotificationSource);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mediatedAd));
    [r0 mediatedNativeAdWillDismissScreen:*(self + r21)];
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidDismissScreen:*(self + r21)];
    return;
}

-(void)willLeaveApplicationFromNativeAd:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdWillLeaveApplication:self->_mediatedAd];
    return;
}

-(void *)connector {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setConnector:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_connector, arg2);
    return;
}

-(void *)bannerAd {
    r0 = self->_bannerAd;
    return r0;
}

-(void)setBannerAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerAd, arg2);
    return;
}

-(void *)interstitialAd {
    r0 = self->_interstitialAd;
    return r0;
}

-(void)setInterstitialAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialAd, arg2);
    return;
}

-(void *)nativeAd {
    r0 = self->_nativeAd;
    return r0;
}

-(void)setNativeAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAd, arg2);
    return;
}

-(void *)nativeAdOptions {
    r0 = self->_nativeAdOptions;
    return r0;
}

-(void)setNativeAdOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdOptions, arg2);
    return;
}

-(void)setMediatedAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediatedAd, arg2);
    return;
}

-(void *)mediatedAd {
    r0 = self->_mediatedAd;
    return r0;
}

-(void *)imageDownloadQueue {
    r0 = self->_imageDownloadQueue;
    return r0;
}

-(void)setImageDownloadQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imageDownloadQueue, arg2);
    return;
}

-(void *)imagesDictionary {
    r0 = self->_imagesDictionary;
    return r0;
}

-(void)setImagesDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imagesDictionary, arg2);
    return;
}

-(void *)nativeAdViewAdOptions {
    r0 = self->_nativeAdViewAdOptions;
    return r0;
}

-(void)setNativeAdViewAdOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdViewAdOptions, arg2);
    return;
}

-(bool)shouldDownloadImages {
    r0 = *(int8_t *)(int64_t *)&self->_shouldDownloadImages;
    return r0;
}

-(void)setShouldDownloadImages:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldDownloadImages = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_nativeAdViewAdOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_imagesDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_imageDownloadQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_mediatedAd, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAd, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_connector);
    return;
}

@end
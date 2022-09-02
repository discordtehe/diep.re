@implementation MPGoogleAdMobNativeCustomEvent

+(void)setAdChoicesPosition:(long long)arg2 {
    r0 = [self class];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    *0x1011d83c8 = arg2;
    objc_sync_exit(r20);
    [r20 release];
    return;
}

-(void)adLoader:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
    r20 = [arg3 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    r25 = [[self admobAdUnitId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeCustomEvent:self didFailToLoadAdWithError:r20];
    [r20 release];
    [r0 release];
    return;
}

-(bool)isValidUnifiedNativeAd:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 headline];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 body];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r0 = [r19 icon];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            r0 = [r19 images];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            if ([r0 count] != 0x0) {
                                    r0 = [r19 callToAction];
                                    r0 = [r0 retain];
                                    if (r0 != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r23 = 0x1;
                                            }
                                    }
                                    [r0 release];
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r24 release];
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r22 release];
            }
            else {
                    r23 = 0x0;
            }
            [r21 release];
    }
    else {
            r23 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)adLoader {
    r0 = self->_adLoader;
    return r0;
}

-(void)setAdLoader:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adLoader, arg2);
    return;
}

-(void *)admobAdUnitId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_admobAdUnitId)), 0x0);
    return r0;
}

-(void)setAdmobAdUnitId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_admobAdUnitId, 0x0);
    objc_storeStrong((int64_t *)&self->_adLoader, 0x0);
    return;
}

-(void)requestAdWithCustomEventInfo:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r20 = self;
    r27 = [arg2 retain];
    if (*qword_1011d83d0 != -0x1) {
            dispatch_once(0x1011d83d0, &var_A8);
    }
    r19 = [[r27 objectForKeyedSubscript:@"adunit"] retain];
    [r20 setAdmobAdUnitId:r19];
    [r19 release];
    r0 = [r20 admobAdUnitId];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r21 = [[r0 keyWindow] retain];
            [r0 release];
            var_C8 = r21;
            r0 = [r21 rootViewController];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 presentedViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            var_C0 = r27;
            var_B0 = @selector(admobAdUnitId);
            if (r0 != 0x0) {
                    do {
                            r21 = r23;
                            r23 = [[r23 presentedViewController] retain];
                            [r21 release];
                            r0 = [r23 presentedViewController];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                    } while (r0 != 0x0);
            }
            r24 = [[GADRequest request] retain];
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r19 release];
            if (r0 != 0x0) {
                    r0 = [r20 localExtras];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 objectForKeyedSubscript:@"testDevices"];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r24 setTestDevices:r21];
                    [r21 release];
                    [r19 release];
            }
            r27 = @selector(objectForKey:);
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r19 release];
            if (r0 != 0x0) {
                    r2 = @"tagForChildDirectedTreatment";
                    r0 = [GADMobileAds sharedInstance];
                    r0 = [r0 retain];
                    r19 = r0;
                    r21 = [[r0 requestConfiguration] retain];
                    r0 = [r20 localExtras];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:@"tagForChildDirectedTreatment"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = r0;
                    if (r0 != 0x0) {
                            r2 = @"tagForChildDirectedTreatment";
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    [r21 tagForChildDirectedTreatment:r2];
                    [r28 release];
                    [r22 release];
                    [r21 release];
                    [r19 release];
            }
            r27 = @selector(objectForKey:);
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r19 release];
            if (r0 != 0x0) {
                    r2 = @"tagForUnderAgeOfConsent";
                    r0 = [GADMobileAds sharedInstance];
                    r0 = [r0 retain];
                    r19 = r0;
                    r21 = [[r0 requestConfiguration] retain];
                    r0 = [r20 localExtras];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:@"tagForUnderAgeOfConsent"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (r0 != 0x0) {
                            r2 = @"tagForUnderAgeOfConsent";
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    [r21 tagForUnderAgeOfConsent:r2];
                    [r25 release];
                    [r22 release];
                    [r21 release];
                    [r19 release];
            }
            r27 = @selector(objectForKey:);
            [r24 setRequestAgent:@"MoPub"];
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r19 release];
            if (r0 != 0x0) {
                    r27 = @selector(objectForKey:);
                    r0 = [r20 localExtras];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = objc_msgSend(r0, r27);
                    r29 = r29;
                    r19 = [r0 retain];
                    [r21 release];
                    if ([r19 length] != 0x0) {
                            [r24 setContentURL:r19];
                    }
                    [r19 release];
            }
            r0 = objc_alloc();
            var_B8 = r24;
            r0 = [r0 init];
            r25 = r0;
            [r0 setShouldRequestMultipleImages:0x0];
            [r25 setPreferredImageOrientation:0x1];
            r0 = objc_alloc();
            r0 = [r0 init];
            [r0 setPreferredAdChoicesPosition:*0x1011d83c8];
            r21 = objc_alloc();
            r19 = [objc_msgSend(r20, var_B0) retain];
            r27 = [[NSArray arrayWithObjects:r29 - 0x60 count:0x1] retain];
            var_D0 = r0;
            r22 = [[NSArray arrayWithObjects:&var_70 count:0x2] retain];
            r21 = [r21 initWithAdUnitID:r19 rootViewController:r23 adTypes:r27 options:r22];
            [r20 setAdLoader:r21];
            [r21 release];
            [r22 release];
            [r27 release];
            [r19 release];
            r0 = [r20 adLoader];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
            r21 = [[MoPub sharedInstance] retain];
            r22 = [[r21 globalMediationSettingsForClass:[MPGoogleGlobalMediationSettings class]] retain];
            [r21 release];
            r0 = [r22 npa];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = [objc_alloc() init];
                    r21 = [[r22 npa] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_80 count:0x1];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r24 setAdditionalParameters:r28];
                    [r28 release];
                    [r21 release];
                    [var_B8 registerAdNetworkExtras:r24];
                    [r24 release];
            }
            r27 = var_C0;
            [GoogleAdMobAdapterConfiguration updateInitializationParameters:r27];
            r28 = [NSStringFromClass([r20 class]) retain];
            r24 = [[MPLogEvent adLoadAttemptForAdapter:r28 dspCreativeId:0x0 dspName:0x0] retain];
            r26 = [objc_msgSend(r20, var_B0) retain];
            [MPLogging logEvent:r24 source:r26 fromClass:[r20 class]];
            [r26 release];
            [r24 release];
            [r28 release];
            r0 = [r20 adLoader];
            r0 = [r0 retain];
            [r0 loadRequest:var_B8];
            [r0 release];
            [r22 release];
            [var_D0 release];
            [r25 release];
            [var_B8 release];
            [r23 release];
            r0 = var_C8;
    }
    else {
            r23 = [NSStringFromClass([r20 class]) retain];
            r25 = [sub_1004fd5b0() retain];
            r21 = [[MPLogEvent adLoadFailedForAdapter:r23 error:r25] retain];
            r26 = [[r20 admobAdUnitId] retain];
            [MPLogging logEvent:r21 source:r26 fromClass:[r20 class]];
            [r26 release];
            [r21 release];
            [r25 release];
            [r23 release];
            r21 = [[r20 delegate] retain];
            r19 = [sub_1004fd5b0() retain];
            [r21 nativeCustomEvent:r20 didFailToLoadAdWithError:r19];
            [r19 release];
            r0 = r21;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r27 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)adLoader:(void *)arg2 didReceiveUnifiedNativeAd:(void *)arg3 {
    r2 = arg2;
    r31 = r31 - 0x120;
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
    r20 = self;
    r28 = [arg3 retain];
    if (([r20 isValidUnifiedNativeAd:r28] & 0x1) != 0x0) {
            var_C0 = r20;
            r21 = [objc_alloc() init];
            r0 = objc_alloc();
            r0 = [r0 initWithFrame:r2];
            [r0 setUserInteractionEnabled:0x0];
            [r21 addSubview:r0];
            var_C8 = r0;
            [r21 setAdChoicesView:r0];
            r20 = [objc_alloc() initWithFrame:r0];
            [r21 addSubview:r20];
            var_D0 = r20;
            [r21 setMediaView:r20];
            [r21 setNativeAd:r28];
            r20 = [objc_alloc() initWithFrame:r28];
            r24 = [[r28 headline] retain];
            [r20 setText:r24];
            [r24 release];
            r25 = [[UIColor clearColor] retain];
            [r20 setTextColor:r25];
            [r25 release];
            [r21 addSubview:r20];
            var_D8 = r20;
            [r21 setHeadlineView:r20];
            r20 = [objc_alloc() initWithFrame:r20];
            r25 = [[r28 body] retain];
            [r20 setText:r25];
            [r25 release];
            r25 = [[UIColor clearColor] retain];
            [r20 setTextColor:r25];
            [r25 release];
            [r21 addSubview:r20];
            var_E0 = r20;
            [r21 setBodyView:r20];
            r20 = [objc_alloc() initWithFrame:r20];
            r25 = [[r28 callToAction] retain];
            [r20 setText:r25];
            [r25 release];
            r22 = [[UIColor clearColor] retain];
            [r20 setTextColor:r22];
            [r22 release];
            [r21 addSubview:r20];
            var_E8 = r20;
            [r21 setCallToActionView:r20];
            r20 = [objc_alloc() initWithFrame:r20];
            r0 = [r28 images];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 firstObject];
            r0 = [r0 retain];
            r26 = [[r0 image] retain];
            [r20 setImage:r26];
            [r26 release];
            [r0 release];
            [r25 release];
            [r21 addSubview:r20];
            var_F0 = r20;
            [r21 setImageView:r20];
            r20 = [objc_alloc() initWithFrame:r20];
            r0 = [r28 icon];
            r0 = [r0 retain];
            r22 = [[r0 image] retain];
            [r20 setImage:r22];
            [r22 release];
            [r0 release];
            [r21 addSubview:r20];
            var_100 = r20;
            [r21 setIconView:r20];
            r0 = objc_alloc();
            r19 = r28;
            r20 = [r0 initWithAdMobUnifiedNativeAd:r28 unifiedNativeAdView:r21];
            r0 = objc_alloc();
            var_F8 = r20;
            r24 = [r0 initWithAdAdapter:r20];
            r23 = [[NSMutableArray array] retain];
            r0 = [r24 properties];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e7ee80];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 length];
            [r0 release];
            [r26 release];
            if (r22 != 0x0) {
                    r0 = [r24 properties];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:*0x100e7ee80];
                    r29 = r29;
                    r25 = [r0 retain];
                    r20 = [MPNativeAdUtils addURLString:r25 toURLArray:r23];
                    [r25 release];
                    [r22 release];
                    if ((r20 & 0x1) == 0x0) {
                            r28 = [NSStringFromClass([var_C0 class]) retain];
                            r25 = [sub_1004fd940() retain];
                            r20 = [[MPLogEvent adLoadFailedForAdapter:r28 error:r25] retain];
                            r26 = [[var_C0 admobAdUnitId] retain];
                            [MPLogging logEvent:r20 source:r26 fromClass:[var_C0 class]];
                            [r26 release];
                            [r20 release];
                            [r25 release];
                            [r28 release];
                            r20 = [[var_C0 delegate] retain];
                            r22 = [sub_1004fd940() retain];
                            [r20 nativeCustomEvent:var_C0 didFailToLoadAdWithError:r22];
                            [r22 release];
                            [r20 release];
                    }
            }
            r22 = [r24 retain];
            [[&var_B8 super] precacheImagesWithURLs:r23 completionBlock:&var_A8];
            [r24 release];
            [r22 release];
            [r23 release];
            [var_F8 release];
            [var_100 release];
            [var_F0 release];
            [var_E8 release];
            [var_E0 release];
            [var_D8 release];
            [var_D0 release];
            [var_C8 release];
            [r21 release];
            r28 = r19;
    }
    else {
            r23 = [[NSString stringWithFormat:@"Unified native ad is missing one or more required assets, failing the request"] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
            r21 = [[r20 delegate] retain];
            r22 = [sub_1004fd5b0() retain];
            [r21 nativeCustomEvent:r20 didFailToLoadAdWithError:r22];
            [r22 release];
            [r21 release];
    }
    [r28 release];
    return;
}

@end
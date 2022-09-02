@implementation GADMediationAdapterFacebook

+(void)setUpWithConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r21 = self;
    r24 = [arg2 retain];
    var_148 = [arg3 retain];
    r19 = [[NSMutableSet alloc] init];
    r0 = [arg2 credentials];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r23);
                            }
                            r0 = [r21 getPlacementIDFromCredentials:*(0x0 + r22 * 0x8)];
                            r29 = r29;
                            r28 = [r0 retain];
                            if (r28 != 0x0) {
                                    [r19 addObject:r2];
                            }
                            [r28 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r25 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    r21 = [FBAdInitSettings alloc];
    r22 = [[r19 allObjects] retain];
    r24 = [[GADRequest sdkVersion] retain];
    r23 = [[NSString stringWithFormat:@"GOOGLE_%@:%@"] retain];
    r21 = [r21 initWithPlacementIDs:r22 mediationService:r23];
    [r23 release];
    [r24 release];
    [r22 release];
    r20 = [var_148 retain];
    [FBAudienceNetworkAds initializeWithSettings:r21 completionHandler:&var_140];
    [var_148 release];
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void *)getPlacementIDFromCredentials:(void *)arg2 {
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
    r0 = [r0 settings];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) {
            r0 = [r19 settings];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)networkExtrasClass {
    r0 = [GADFBNetworkExtras class];
    return r0;
}

+(union ?)adSDKVersion {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    *(int128_t *)r19 = 0x0;
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(r19 + 0x10) = 0x0;
    r0 = [@"5.3.2" componentsSeparatedByString:@"."];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] == 0x3) {
            r0 = [r20 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            *r19 = [r0 integerValue];
            [r0 release];
            r0 = [r20 objectAtIndexedSubscript:0x1];
            r0 = [r0 retain];
            *(r19 + 0x8) = [r0 integerValue];
            [r0 release];
            r0 = [r20 objectAtIndexedSubscript:0x2];
            r0 = [r0 retain];
            *(r19 + 0x10) = [r0 integerValue];
            [r0 release];
    }
    else {
            NSLog(@"Unexpected Facebook version string: %@. Returning 0 for adSDKVersion.", @selector(count));
    }
    r0 = [r20 release];
    return r0;
}

-(void)collectSignalsForRequestParameters:(void *)arg2 completionHandler:(void *)arg3 {
    [arg3 retain];
    (*(arg3 + 0x10))(arg3, [[FBAdSettings bidderToken] retain], 0x0);
    [r22 release];
    [r20 release];
    return;
}

+(union ?)version {
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
    r19 = r8;
    *(int128_t *)r19 = 0x0;
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(r19 + 0x10) = 0x0;
    r0 = [@"5.4.0.0" componentsSeparatedByString:@"."];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] == 0x4) {
            r0 = [r20 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            r8 = &@selector(menu);
            r22 = *(r8 + 0x330);
            *r19 = objc_msgSend(r0, r22);
            [r0 release];
            r0 = [r20 objectAtIndexedSubscript:0x1];
            r0 = [r0 retain];
            *(r19 + 0x8) = objc_msgSend(r0, r22);
            [r0 release];
            r0 = [r20 objectAtIndexedSubscript:0x2];
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            r0 = [r20 objectAtIndexedSubscript:0x3];
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            asm { madd       x8, x24, x25, x0 };
            *(r19 + 0x10) = r8;
            [r21 release];
            [r23 release];
    }
    r0 = [r20 release];
    return r0;
}

-(void)loadBannerForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r23 = @selector(respondsToSelector:);
    r21 = [arg3 retain];
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r19 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 childDirectedTreatment];
                    r0 = [r0 retain];
                    [FBAdSettings setIsChildDirected:[r0 boolValue]];
                    [r0 release];
            }
    }
    r0 = [GADFBBannerRenderer alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_banner));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    [*(r20 + r22) renderBannerForAdConfiguration:r19 completionHandler:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)loadRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r23 = @selector(respondsToSelector:);
    r21 = [arg3 retain];
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r19 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 childDirectedTreatment];
                    r0 = [r0 retain];
                    [FBAdSettings setIsChildDirected:[r0 boolValue]];
                    [r0 release];
            }
    }
    r0 = [GADFBRewardedRenderer alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedAd));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    [*(r20 + r22) loadRewardedAdForAdConfiguration:r19 completionHandler:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)loadInterstitialForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r23 = @selector(respondsToSelector:);
    r21 = [arg3 retain];
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r19 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 childDirectedTreatment];
                    r0 = [r0 retain];
                    [FBAdSettings setIsChildDirected:[r0 boolValue]];
                    [r0 release];
            }
    }
    r0 = [GADFBInterstitialRenderer alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_interstitial));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    [*(r20 + r22) renderInterstitialForAdConfiguration:r19 completionHandler:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)loadNativeAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r23 = @selector(respondsToSelector:);
    r21 = [arg3 retain];
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r19 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 childDirectedTreatment];
                    r0 = [r0 retain];
                    [FBAdSettings setIsChildDirected:[r0 boolValue]];
                    [r0 release];
            }
    }
    r0 = [GADFBNativeRenderer alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_native));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    [*(r20 + r22) renderNativeAdForAdConfiguration:r19 completionHandler:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_banner, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitial, 0x0);
    objc_storeStrong((int64_t *)&self->_native, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    return;
}

@end
@implementation GADMediationAdapterUnity

+(void *)networkExtrasClass {
    return 0x0;
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
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(int128_t *)(r19 + 0x10) = 0x0;
    *r19 = 0x0;
    r0 = [UnityAds getVersion];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 componentsSeparatedByString:@"."];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] == 0x3) {
            r0 = [r21 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            *r19 = [r0 integerValue];
            [r0 release];
            r0 = [r21 objectAtIndexedSubscript:0x1];
            r0 = [r0 retain];
            *(r19 + 0x8) = [r0 integerValue];
            [r0 release];
            r0 = [r21 objectAtIndexedSubscript:0x2];
            r0 = [r0 retain];
            *(r19 + 0x10) = [r0 integerValue];
            [r0 release];
    }
    else {
            NSLog(@"Unexpected Unity Ads version string: %@. Returning 0 for adSDKVersion.", @selector(count));
    }
    [r21 release];
    r0 = [r20 release];
    return r0;
}

+(void)setUpWithConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r23 = [arg2 retain];
    var_130 = arg3;
    var_138 = [arg3 retain];
    r21 = [[NSMutableSet alloc] init];
    r0 = [arg2 credentials];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r19;
    r24 = objc_msgSend(r19, r1);
    if (r24 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r28 = @selector(addObject:);
                            r27 = @selector(objectForKey:);
                            r26 = @selector(settings);
                            r0 = *(0x0 + r22 * 0x8);
                            r0 = objc_msgSend(r0, r26);
                            r0 = [r0 retain];
                            r0 = objc_msgSend(r0, r27);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r21, r28);
                            [r20 release];
                            [r19 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r24 = objc_msgSend(var_120, var_128);
            } while (r24 != 0x0);
    }
    [var_120 release];
    r0 = [r21 anyObject];
    r29 = r29;
    r22 = [r0 retain];
    if ([r21 count] != 0x1) {
            NSLog(@"Found the following game IDs: %@. Please remove any game IDs you are not using from the AdMob UI.", @selector(count));
            NSLog(@"Initializing Unity Ads SDK with the game ID %@.", r1);
    }
    var_58 = **___stack_chk_guard;
    r0 = [GADMAdapterUnitySingleton sharedInstance];
    r0 = [r0 retain];
    [r0 configureRewardedAdWithGameID:r22];
    [r0 release];
    (*(var_138 + 0x10))(var_130, 0x0);
    [var_138 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[GADMAdapterUnityRewardedAd alloc] initWithAdConfiguration:r21 completionHandler:r19];
    [r19 release];
    [r21 release];
    [self setRewardedAd:r22];
    [r22 release];
    r0 = [self rewardedAd];
    r0 = [r0 retain];
    [r0 requestRewardedAd];
    [r0 release];
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
    r0 = [@"3.0.1.0" componentsSeparatedByString:@"."];
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

-(void)setRewardedAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedAd, arg2);
    return;
}

-(void *)rewardedAd {
    r0 = self->_rewardedAd;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    return;
}

@end
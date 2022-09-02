@implementation GADMediationAdapterAdColony

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
    r23 = [arg2 retain];
    var_160 = [arg3 retain];
    var_148 = [[NSMutableSet alloc] init];
    r26 = [[NSMutableSet alloc] init];
    r0 = [arg2 credentials];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    var_150 = r19;
    r24 = objc_msgSend(r19, r1);
    if (r24 != 0x0) {
            do {
                    r25 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_150);
                            }
                            r28 = @selector(objectForKey:);
                            r27 = @selector(settings);
                            r21 = @selector(addObject:);
                            r0 = objc_msgSend(*(0x0 + r25 * 0x8), r27);
                            r0 = [r0 retain];
                            [objc_msgSend(r0, r28) retain];
                            objc_msgSend(var_148, r21);
                            [r22 release];
                            [r19 release];
                            r0 = objc_msgSend(r23, r27);
                            r0 = [r0 retain];
                            r0 = objc_msgSend(r0, r28);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r26, r21);
                            [r22 release];
                            [r19 release];
                            r25 = r25 + 0x1;
                    } while (r25 < r24);
                    r24 = objc_msgSend(var_150, var_158);
            } while (r24 != 0x0);
    }
    [var_150 release];
    r0 = [r26 anyObject];
    r29 = r29;
    r22 = [r0 retain];
    if ([r26 count] != 0x1) {
            NSLog(@"Found the following app IDs: %@. Please remove any app IDs you are not using from the AdMob UI.", @selector(count));
            NSLog(@"Configuring AdColony SDK with the app ID %@", r1);
    }
    var_58 = **___stack_chk_guard;
    r19 = [[GADMAdapterAdColonyInitializer sharedInstance] retain];
    r21 = [[var_148 allObjects] retain];
    r24 = [var_160 retain];
    [r19 initializeAdColonyWithAppId:r22 zones:r21 options:0x0 callback:&var_140];
    [r21 release];
    [r19 release];
    [var_160 release];
    [r24 release];
    [r22 release];
    [r26 release];
    [var_148 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(union ?)adSDKVersion {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [AdColony getSDKVersion];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 componentsSeparatedByString:@"."];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(int128_t *)(r19 + 0x10) = 0x0;
    *r19 = 0x0;
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
    [r21 release];
    r0 = [r20 release];
    return r0;
}

+(void *)networkExtrasClass {
    r0 = [GADMAdapterAdColonyExtras class];
    return r0;
}

-(void)loadRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[GADMAdapterAdColonyRewardedAd alloc] init];
    [self setRewardedAd:r22];
    [r22 release];
    r0 = [self rewardedAd];
    r0 = [r0 retain];
    [r0 renderRewardedAdForAdConfiguration:r21 completionHandler:r19];
    [r19 release];
    [r21 release];
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
    r0 = [@"3.3.6.1" componentsSeparatedByString:@"."];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(int128_t *)(r19 + 0x10) = 0x0;
    *r19 = 0x0;
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

-(void *)rewardedAd {
    r0 = self->_rewardedAd;
    return r0;
}

-(void)setRewardedAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedAd, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    return;
}

@end
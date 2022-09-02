@implementation GADMediationAdapterIronSource

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
    r0 = [IronSource sdkVersion];
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
            NSLog(@"Unexpected IronSource version string: %@. Returning 0 for adSDKVersion.", @selector(count));
    }
    [r21 release];
    r0 = [r20 release];
    return r0;
}

-(void)loadRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[GADMAdapterIronSourceRewardedAd alloc] initWithGADMediationRewardedAdConfiguration:r21 completionHandler:r19];
    [r19 release];
    [r21 release];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedAd));
    r0 = *(self + r19);
    *(self + r19) = r22;
    [r0 release];
    [*(self + r19) requestRewardedAd];
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
    r0 = [@"6.8.3.0" componentsSeparatedByString:@"."];
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

+(void)setUpWithConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x170;
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
    r20 = [arg2 retain];
    r21 = @class(NSMutableSet);
    var_138 = arg3;
    var_140 = [arg3 retain];
    r27 = [[r21 alloc] init];
    var_120 = [[NSMutableSet alloc] init];
    r0 = [arg2 credentials];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &stack[-296];
    var_130 = r1;
    var_128 = r19;
    r25 = objc_msgSend(r19, r1);
    if (r25 == 0x0) goto loc_1009d4c88;

loc_1009d4b78:
    r21 = 0x0;
    goto loc_1009d4b9c;

loc_1009d4b9c:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_128);
    }
    r26 = *(0x0 + r21 * 0x8);
    if ([r26 format] != 0x1) goto loc_1009d4be4;

loc_1009d4bd0:
    r0 = var_120;
    goto loc_1009d4c08;

loc_1009d4c08:
    [r0 addObject:r2];
    goto loc_1009d4c0c;

loc_1009d4c0c:
    r0 = [r26 settings];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r27 addObject:r22];
    [r22 release];
    [r26 release];
    r21 = r21 + 0x1;
    if (r21 < r25) goto loc_1009d4b9c;

loc_1009d4c6c:
    r2 = &stack[-296];
    r25 = objc_msgSend(var_128, var_130);
    if (r25 != 0x0) goto loc_1009d4b78;

loc_1009d4c88:
    [var_128 release];
    r0 = [r27 anyObject];
    r29 = r29;
    r19 = [r0 retain];
    if ([r27 count] != 0x1) {
            NSLog(@"Found the following app keys: %@. Please remove any app keys you are not using from the AdMob UI.", @selector(count));
            NSLog(@"Initializing IronSource SDK with the app key %@, for ad formats %@", r1, r2);
    }
    var_58 = **___stack_chk_guard;
    r0 = [ISMediationManager sharedManager];
    r0 = [r0 retain];
    [r0 initIronSourceSDKWithAppKey:r19 forAdUnits:var_120];
    [r0 release];
    (*(var_140 + 0x10))(var_138, 0x0);
    [var_140 release];
    [r19 release];
    [var_120 release];
    [r27 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1009d4be4:
    if ([r26 format] != 0x2) goto loc_1009d4c0c;

loc_1009d4bf8:
    r0 = var_120;
    goto loc_1009d4c08;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    return;
}

@end
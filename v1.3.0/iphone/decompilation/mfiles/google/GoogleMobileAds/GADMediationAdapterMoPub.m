@implementation GADMediationAdapterMoPub

+(void)setUpWithConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 credentials];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 credentials];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 settings];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:@"pubid"];
            r29 = r29;
            r21 = [r0 retain];
            [r24 release];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    r22 = [[GADMAdapterMoPubSingleton sharedInstance] retain];
                    var_60 = [r20 retain];
                    [r22 initializeMoPubSDKWithAdUnitID:r21 completionHandler:&var_80];
                    [r22 release];
                    r0 = var_60;
            }
            else {
                    r21 = [[NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2] retain];
                    (*(r20 + 0x10))(r20, [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0x0 userInfo:r21] retain]);
                    r0 = r22;
            }
    }
    else {
            r21 = [[NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2] retain];
            (*(r20 + 0x10))(r20, [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0x0 userInfo:r21] retain]);
            r0 = r22;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

+(void *)networkExtrasClass {
    r0 = [GADMoPubNetworkExtras class];
    return r0;
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
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 version] retain];
    [r0 release];
    r0 = [r20 componentsSeparatedByString:@"."];
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
    r0 = [@"5.7.1.0" componentsSeparatedByString:@"."];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(int128_t *)(r19 + 0x10) = 0x0;
    *r19 = 0x0;
    if ([r0 count] == 0x3) {
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

-(void)loadRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[GADMMoPubRewardedAd alloc] init];
    [self setRewardedAd:r22];
    [r22 release];
    r0 = [self rewardedAd];
    r0 = [r0 retain];
    [r0 loadRewardedAdForAdConfiguration:r21 completionHandler:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    return;
}

-(void)setRewardedAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedAd, arg2);
    return;
}

@end
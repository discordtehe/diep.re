@implementation FBAdConnectionUtility

+(void *)sharedLock {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea8a68);
    if (*qword_1011dcc20 != -0x1) {
            dispatch_once(0x1011dcc20, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcc28);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)forceThrottle {
    r0 = *0x1011dcc18;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setForceThrottle:(void *)arg2 {
    objc_storeStrong(0x1011dcc18, arg2);
    return;
}

+(bool)shouldThrottleFrequentLoadForEnvironmentData:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100a2f7f0;

loc_100a2f780:
    r0 = [r20 forceThrottle];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100a2f7dc;

loc_100a2f7a8:
    r0 = [r20 forceThrottle];
    r0 = [r0 retain];
    r21 = r0;
    r20 = [r0 boolValue];
    goto loc_100a2f7d0;

loc_100a2f7d0:
    [r21 release];
    goto loc_100a2f7f4;

loc_100a2f7f4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100a2f7dc:
    if (([r19 retryForPodPosition] & 0x1) == 0x0) goto loc_100a2f814;

loc_100a2f7f0:
    r20 = 0x0;
    goto loc_100a2f7f4;

loc_100a2f814:
    r0 = [r20 getLastLoadTimeForEnvironmentData:r19];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 timeIntervalSinceNow];
            d8 = -d0;
            [r20 getLastRefreshThresholdForEnvironmentData:r19];
            asm { scvtf      d0, x0 };
            if (d8 >= d0) {
                    r20 = 0x0;
            }
            else {
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x0;
    }
    goto loc_100a2f7d0;
}

+(void *)sharedLastLoadTimeMap {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea8a28);
    if (*qword_1011dcc08 != -0x1) {
            dispatch_once(0x1011dcc08, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcc10);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)setLastLoadTime:(void *)arg2 forEnvironmentData:(void *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r21 != 0x0) {
            r23 = [r21 retain];
            r21 = [[r20 sharedLastLoadTimeMap] retain];
            r22 = [sub_100a1372c() retain];
            [r23 release];
            r0 = [r20 sharedLock];
            r0 = [r0 retain];
            [r0 lock];
            [r0 release];
            [r21 setValue:r19 forKey:r22];
            r0 = [r20 sharedLock];
            r0 = [r0 retain];
            [r0 unlock];
            [r0 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void *)getLastLoadTimeForEnvironmentData:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r0;
            r22 = [r2 retain];
            r19 = [[r20 sharedLastLoadTimeMap] retain];
            r21 = [sub_100a1372c() retain];
            [r22 release];
            r0 = [r20 sharedLock];
            r0 = [r0 retain];
            [r0 lock];
            [r0 release];
            r22 = [[r19 objectForKeyedSubscript:r21] retain];
            r0 = [r20 sharedLock];
            r0 = [r0 retain];
            [r0 unlock];
            [r0 release];
            [r21 release];
            [r19 release];
    }
    else {
            r22 = 0x0;
    }
    r0 = [r22 autorelease];
    return r0;
}

+(void *)sharedLastRefreshThresholdMap {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea89e8);
    if (*qword_1011dcbf8 != -0x1) {
            dispatch_once(0x1011dcbf8, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcc00);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)setLastRefreshThreshold:(long long)arg2 forEnvironmentData:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r3 != 0x0) {
            r20 = r0;
            r23 = [r3 retain];
            r19 = [[r20 sharedLastRefreshThresholdMap] retain];
            r21 = [sub_100a1372c() retain];
            [r23 release];
            r0 = [r20 sharedLock];
            r0 = [r0 retain];
            [r0 lock];
            [r0 release];
            r22 = [[NSNumber numberWithInteger:r2] retain];
            [r19 setValue:r22 forKey:r21];
            [r22 release];
            r0 = [r20 sharedLock];
            r0 = [r0 retain];
            [r0 unlock];
            [r0 release];
            [r21 release];
            [r19 release];
    }
    return;
}

+(long long)getLastRefreshThresholdForEnvironmentData:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r20 = _cmd;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100a2fda4;

loc_100a2fcd8:
    r21 = [[r22 sharedLastRefreshThresholdMap] retain];
    r23 = [sub_100a1372c() retain];
    r0 = [r22 sharedLock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r24 = [[r21 objectForKeyedSubscript:r23] retain];
    r0 = [r22 sharedLock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    if (r24 == 0x0) goto loc_100a2fdac;

loc_100a2fd8c:
    r20 = [r24 integerValue];
    goto loc_100a2fdcc;

loc_100a2fdcc:
    [r24 release];
    [r23 release];
    [r21 release];
    goto loc_100a2fde4;

loc_100a2fde4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100a2fdac:
    r0 = [r19 placementType];
    if (r0 >= 0x7) goto loc_100a2fe0c;

loc_100a2fdc8:
    r20 = 0xffffffffffffffff;
    goto loc_100a2fdcc;

loc_100a2fe0c:
    if (r0 == 0x1) goto loc_100a2fedc;

loc_100a2fe14:
    if (r0 == 0x0) goto loc_100a2fdc8;

loc_100a2fe18:
    r21 = **_NSInternalInconsistencyException;
    r22 = [NSStringFromClass([r22 class]) retain];
    r20 = [NSStringFromSelector(r20) retain];
    r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r19 = [[[NSException exceptionWithName:r21 reason:r23 userInfo:0x0] retain] autorelease];
    [r23 release];
    [r20 release];
    [r22 release];
    r0 = objc_exception_throw(r19);
    return r0;

loc_100a2fedc:
    r20 = 0x14;
    goto loc_100a2fdcc;

loc_100a2fda4:
    r20 = 0xffffffffffffffff;
    goto loc_100a2fde4;
}

+(void *)cachedResponseForEnvironmentData:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [sub_100a1372c() retain];
            r24 = [[FBAdCache sharedCache] retain];
            r25 = [sub_100a1372c() retain];
            r26 = [[r24 objectForKey:r25] retain];
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdConnectionUtility.m" lineNumber:0xa0 format:@"returning cached response key %@ for response %@"];
            [r26 release];
            [r25 release];
            [r24 release];
            [r21 release];
            r21 = [[FBAdCache sharedCache] retain];
            r23 = [sub_100a1372c() retain];
            r20 = [[r21 objectForKey:r23] retain];
            [r23 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setCachedResponse:(void *)arg2 forEnvironmentData:(void *)arg3 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100a30304;

loc_100a300a4:
    r21 = [r20 retain];
    r0 = [r19 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_100a302f4;

loc_100a300c0:
    [FBAdProviderResponseAds class];
    if ([r22 isKindOfClass:r2] == 0x0 || [r22 type] != 0x2) goto loc_100a302f4;

loc_100a30104:
    r0 = [r22 adPlacement];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 adCandidates];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 count] == 0x0) goto loc_100a302e4;

loc_100a3014c:
    r0 = [r22 adPlacement];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 definition];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isCacheable];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    if (r24 == 0x0) goto loc_100a302f4;

loc_100a301b4:
    r25 = [sub_100a1372c() retain];
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdConnectionUtility.m" lineNumber:0xb0 format:@"setting cached response key %@ for response %@"];
    [r25 release];
    r0 = [r22 adPlacement];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 definition];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 refreshThreshold];
    [r0 release];
    [r24 release];
    if (r23 < 0x1) goto loc_100a302f4;

loc_100a30258:
    r2 = 0x6;
    asm { scvtf      d0, x23 };
    r23 = [[NSDate dateWithTimeIntervalSinceNow:r2] retain];
    r24 = [[FBAdCache sharedCache] retain];
    r25 = [sub_100a1372c() retain];
    [r24 setObject:r22 forKey:r25 withExpiration:r23];
    [r25 release];
    [r24 release];
    r0 = r23;
    goto loc_100a302f0;

loc_100a302f0:
    [r0 release];
    goto loc_100a302f4;

loc_100a302f4:
    [r22 release];
    [r21 release];
    goto loc_100a30304;

loc_100a30304:
    [r20 release];
    [r19 release];
    return;

loc_100a302e4:
    [r26 release];
    r0 = r25;
    goto loc_100a302f0;
}

@end
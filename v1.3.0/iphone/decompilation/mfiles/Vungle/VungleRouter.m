@implementation VungleRouter

+(void *)sharedInstance {
    if (*qword_1011daa78 != -0x1) {
            dispatch_once(0x1011daa78, 0x100e8a408);
    }
    r0 = *0x1011daa70;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [VungleSDK sharedSDK];
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
            r0 = [NSMapTable mapTableWithKeyOptions:0x0 valueOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_delegates));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_initializingDelegates));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)initWithAppId:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*qword_1011daa80 != -0x1) {
            dispatch_once(0x1011daa80, 0x100e8a428);
    }
    r0 = [VungleSDK sharedSDK];
    r29 = r29;
    r22 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r21 initializingDelegates];
            r0 = [r0 retain];
            [r0 addObject:r2];
            [r23 release];
    }
    if ([r22 isInitialized] != 0x0) {
            [r21 initialized:0x1 error:0x0];
    }
    else {
            if (([r21 isInitialising] & 0x1) == 0x0) {
                    *(int8_t *)(int64_t *)&r21->_isInitialising = 0x1;
                    [r22 startWithAppId:r19 error:&var_38];
                    r0 = [var_38 retain];
                    r23 = r0;
                    if (r0 != 0x0) {
                            [r21 initialized:0x0 error:r23];
                    }
                    [r23 release];
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addDelegate:(void *)arg2 {
    [arg2 retain];
    r0 = [self delegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r21 = self->_delegates;
    [[r19 desiredPlacement] retain];
    [r21 setObject:r2 forKey:r3];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void *)getDelegateForPlacement:(void *)arg2 {
    [arg2 retain];
    r0 = [self delegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [[self->_delegates objectForKey:r2] retain];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)removeDelegateForPlacementID:(void *)arg2 {
    [arg2 retain];
    r0 = [self delegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [self->_delegates removeObjectForKey:r2];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void *)loadAd:(void *)arg2 withDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r22 getDelegateForPlacement:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
            r22 = [[NSError errorWithDomain:@"com.google.mediation.vungle" code:0x0 userInfo:r23] retain];
            [r23 release];
    }
    else {
            [r22 addDelegate:r20];
            r0 = [VungleSDK sharedSDK];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 isAdCachedForPlacementID:r19] != 0x0) {
                    [r20 adAvailable];
            }
            else {
                    [r22 loadPlacementWithID:r19 error:0x0];
            }
            [r22 release];
            r22 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)vungleWillShowAdForPlacementID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self getDelegateForPlacement:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 willShowAd];
    }
    [r19 release];
    return;
}

-(void)initialized:(bool)arg2 error:(void *)arg3 {
    r31 = r31 - 0x140;
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
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    *(int8_t *)(int64_t *)&r20->_isInitialising = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initializingDelegates));
    var_128 = r8;
    r0 = *(r20 + r8);
    r0 = [r0 copy];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            [*(0x0 + r26 * 0x8) initialized:r2 error:r3];
                            r26 = r26 + 0x1;
                    } while (r26 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    [*(r20 + var_128) removeObjectsInArray:r22];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)vungleWillCloseAdWithViewInfo:(void *)arg2 placementID:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self getDelegateForPlacement:arg3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 completedView];
            r0 = [r0 retain];
            r21 = r0;
            r23 = [r0 boolValue];
            r0 = [r19 didDownload];
            r0 = [r0 retain];
            [r20 willCloseAd:r23 didDownload:[r0 boolValue]];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)playAd:(void *)arg2 delegate:(void *)arg3 extras:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0) {
            r0 = [r20 desiredPlacement];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r23 = r0;
                    r25 = [[VungleSDK sharedSDK] retain];
                    r0 = [r20 desiredPlacement];
                    r29 = r29;
                    r26 = [r0 retain];
                    r27 = [r25 isAdCachedForPlacementID:r26];
                    [r26 release];
                    [r25 release];
                    [r23 release];
                    if (r27 != 0x0) {
                            r23 = [[NSMutableDictionary alloc] init];
                            r25 = [r21 muted];
                            r0 = @class(VungleSDK);
                            r0 = [r0 sharedSDK];
                            r0 = [r0 retain];
                            [r0 setMuted:r25];
                            [r0 release];
                            r0 = [r21 userId];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r21 userId];
                                    r29 = r29;
                                    r2 = [r0 retain];
                                    [r23 setObject:r2 forKey:r3];
                                    [r25 release];
                            }
                            if ([r21 ordinal] != 0x0) {
                                    r0 = [NSNumber numberWithUnsignedInteger:[r21 ordinal]];
                                    r29 = r29;
                                    r2 = [r0 retain];
                                    [r23 setObject:r2 forKey:r3];
                                    [r25 release];
                            }
                            [r21 flexViewAutoDismissSeconds];
                            if (d0 != 0x0) {
                                    [r21 flexViewAutoDismissSeconds];
                                    r0 = [NSNumber numberWithDouble:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    [r23 setObject:r2 forKey:r3];
                                    [r25 release];
                            }
                            r25 = [[VungleSDK sharedSDK] retain];
                            r0 = [r20 desiredPlacement];
                            r29 = r29;
                            r26 = [r0 retain];
                            r22 = [r25 playAd:r19 options:r23 placementID:r26 error:&var_58];
                            r24 = [var_58 retain];
                            [r26 release];
                            [r25 release];
                            if (r24 != 0x0) {
                                    [[r24 localizedDescription] retain];
                                    NSLog(@"Adapter failed to present ad, error %@", @selector(localizedDescription));
                                    [r22 release];
                                    r22 = 0x0;
                            }
                            [r24 release];
                            [r23 release];
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)vungleDidCloseAdWithViewInfo:(void *)arg2 placementID:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [self getDelegateForPlacement:r23];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [self removeDelegateForPlacementID:r23];
    [r23 release];
    if (r20 != 0x0) {
            r0 = [r19 completedView];
            r0 = [r0 retain];
            r21 = r0;
            r23 = [r0 boolValue];
            r0 = [r19 didDownload];
            r0 = [r0 retain];
            [r20 didCloseAd:r23 didDownload:[r0 boolValue]];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)vungleAdPlayabilityUpdate:(bool)arg2 placementID:(void *)arg3 error:(void *)arg4 {
    r31 = r31 - 0x50;
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r21 getDelegateForPlacement:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            if (r23 != 0x0) {
                    [r22 adAvailable];
            }
            else {
                    if (r20 != 0x0) {
                            [[r20 localizedDescription] retain];
                            NSLog(@"Vungle Ad Playability returned an error: %@", @selector(localizedDescription));
                            [r23 release];
                            [r21 removeDelegateForPlacementID:r19];
                            [r22 adNotAvailable:r20];
                    }
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)vungleSDKDidInitialize {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[VungleSDK sharedSDK] retain];
    if ([VungleRouterConsent getConsentStatus] >= 0x1) {
            [r20 updateConsentStatus:[VungleRouterConsent getConsentStatus] consentMessageVersion:@""];
    }
    [r19 initialized:0x1 error:0x0];
    [r20 release];
    return;
}

-(bool)isInitialising {
    r0 = *(int8_t *)(int64_t *)&self->_isInitialising & 0x1;
    return r0;
}

-(void)vungleSDKFailedToInitializeWithError:(void *)arg2 {
    [self initialized:0x0 error:arg2];
    return;
}

-(void *)delegates {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_delegates)), 0x1);
    return r0;
}

-(void *)initializingDelegates {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_initializingDelegates)), 0x1);
    return r0;
}

-(void)setDelegates:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_initializingDelegates, 0x0);
    objc_storeStrong((int64_t *)&self->_delegates, 0x0);
    return;
}

-(void)setInitializingDelegates:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

@end
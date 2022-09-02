@implementation VNGAdRequestCoordinator

-(void *)initWithPlacementsCoordinator:(void *)arg2 playabilityCoordinator:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = [arg2 retain];
    r22 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r23 + 0x10, r21);
            objc_storeStrong(r23 + 0x18, r20);
    }
    [r22 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)requestAutoCacheablePlacementWithID:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 placementsCoordinator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 placementIsSleeping:r19];
    [r0 release];
    if ((r22 & 0x1) != 0x0) goto loc_100629744;

loc_10062955c:
    r0 = [r21 placementsCoordinator];
    r0 = [r0 retain];
    r20 = [[r0 placementWithReferenceID:r19] retain];
    [r0 release];
    r25 = [[r20 referenceID] retain];
    r0 = [r21 cachedPlacementWithID:r25];
    r29 = r29;
    r22 = [r0 retain];
    [r25 release];
    if (r22 == 0x0 || ([r21 adPlaying] & 0x1) != 0x0) goto loc_1006295f8;

loc_10062966c:
    r23 = [[VungleSDK sharedSDK] retain];
    r24 = [[r20 referenceID] retain];
    [r23 log:@"Cached ad unit is available for placement ID: %@"];
    [r24 release];
    [r23 release];
    r0 = [r21 playabilityCoordinator];
    r0 = [r0 retain];
    r21 = r0;
    goto loc_100629724;

loc_100629724:
    [r0 fireAdPlayable:r2 placement:r3];
    goto loc_10062972c;

loc_10062972c:
    [r21 release];
    [r22 release];
    [r20 release];
    goto loc_100629744;

loc_100629744:
    [r19 release];
    return;

loc_1006295f8:
    r0 = [VNGPersistenceManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 checkFileSystemSizeAvailabilityForCase:0x2 withError:0x0 withPlacementID:r19];
    [r0 release];
    if (r25 == 0x0) goto loc_1006296fc;

loc_100629640:
    r0 = [r21 placementsCoordinator];
    r0 = [r0 retain];
    r21 = r0;
    [r0 loadPlacement:r20];
    goto loc_10062972c;

loc_1006296fc:
    r0 = [r21 playabilityCoordinator];
    r0 = [r0 retain];
    r21 = r0;
    goto loc_100629724;
}

-(bool)loadPlacementWithID:(void *)arg2 error:(void * *)arg3 {
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
    r21 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 placementsCoordinator];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 placementWithReferenceID:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r24 release];
    if (r20 != 0x0) {
            r0 = [VNGPersistenceManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 checkFileSystemSizeAvailabilityForCase:0x1 withError:&var_58 withPlacementID:r19];
            r24 = [var_58 retain];
            [r0 release];
            if ((r26 & 0x1) != 0x0) {
                    r27 = [[r22 placementsCoordinator] retain];
                    r0 = [r20 referenceID];
                    r29 = r29;
                    r28 = [r0 retain];
                    r26 = [r27 placementIsSleeping:r28];
                    [r28 release];
                    [r27 release];
                    if (r21 != 0x0 && r26 != 0x0) {
                            r26 = [[NSString stringWithFormat:@"VungleSDK placement with the ID `%@` is sleeping"] retain];
                            r25 = [[r20 referenceID] retain];
                            r0 = [r22 adRequestErrorWithPlacementID:r25 code:0xf message:r26];
                            r29 = r29;
                            *r21 = [[r0 retain] autorelease];
                            [r25 release];
                            [r26 release];
                    }
                    r0 = [r22 placementsCoordinator];
                    r0 = [r0 retain];
                    [r0 loadPlacement:r20];
                    [r0 release];
                    r22 = 0x1;
            }
            else {
                    if (r21 != 0x0) {
                            r0 = objc_retainAutorelease(r24);
                            r22 = 0x0;
                            *r21 = r0;
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            [r24 release];
    }
    else {
            if (r21 != 0x0) {
                    r23 = [[NSString stringWithFormat:@"VungleSDK didn't find a matching `placementID` for `%@`"] retain];
                    *r21 = [[[r22 adRequestErrorWithPlacementID:r19 code:0xd message:r23] retain] autorelease];
                    [r23 release];
            }
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)cachedPlacementWithID:(void *)arg2 {
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
    r25 = [arg2 retain];
    r0 = [self placementsCoordinator];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 loadedPlacements];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    var_110 = q0;
    r0 = [r21 retain];
    r28 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1006298f8;

loc_100629818:
    r22 = r0;
    r21 = *var_110;
    goto loc_100629830;

loc_100629830:
    r20 = 0x0;
    goto loc_100629844;

loc_100629844:
    if (*var_110 != r21) {
            objc_enumerationMutation(r28);
    }
    r24 = @selector(isEqualToString:);
    r26 = *(var_118 + r20 * 0x8);
    r0 = [r26 referenceID];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (objc_msgSend(r0, r24) == 0x0) goto loc_1006298b8;

loc_10062988c:
    r0 = [r26 state];
    [r27 release];
    r28 = r28;
    if (r0 != 0x2) goto loc_1006298c0;

loc_1006298b4:
    r21 = [r26 retain];
    [r28 release];
    goto loc_10062991c;

loc_10062991c:
    var_60 = **___stack_chk_guard;
    [r28 release];
    [r25 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006298c0:
    r20 = r20 + 0x1;
    if (r20 < r22) goto loc_100629844;

loc_1006298cc:
    r0 = objc_msgSend(r28, var_130);
    r22 = r0;
    if (r0 != 0x0) goto loc_100629830;

loc_1006298f8:
    [r28 release];
    r21 = 0x0;
    goto loc_10062991c;

loc_1006298b8:
    [r27 release];
    goto loc_1006298c0;
}

-(void *)adRequestErrorWithPlacementID:(void *)arg2 code:(long long)arg3 message:(void *)arg4 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r23 = [arg4 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"VNGAdRequestCoordinator" code:arg3 userInfo:r21] retain];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setAdPlaying:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)adPlaying {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setPlacementsCoordinator:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)requestAutocacheablePlacementOnInitialization:(bool)arg2 {
    r31 = r31 - 0x1c0;
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
    r28 = arg2;
    r20 = self;
    r0 = [self placementsCoordinator];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 allAutocacheablePlacements];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 release];
    var_110 = q0;
    r0 = [r22 retain];
    r24 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A8 = r1;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 == 0x0) goto loc_1006291ec;

loc_100628d14:
    var_138 = *var_110;
    var_188 = r24;
    goto loc_100628d24;

loc_100628d24:
    r27 = 0x0;
    goto loc_100628df8;

loc_100628df8:
    if (*var_110 != var_138) {
            objc_enumerationMutation(r24);
    }
    r19 = *(var_118 + r27 * 0x8);
    r23 = [[r20 placementsCoordinator] retain];
    r0 = [r19 referenceID];
    r29 = r29;
    r22 = [r0 retain];
    r25 = [r23 placementIsSleeping:r2];
    [r22 release];
    [r23 release];
    if ((r25 & 0x1) == 0x0) goto loc_100628f28;

loc_100628e74:
    r0 = [r20 playabilityCoordinator];
    r0 = [r0 retain];
    [r0 fireAdPlayable:0x0 placement:r19];
    [r0 release];
    r22 = [[r19 referenceID] retain];
    r23 = [[r20 placementsCoordinator] retain];
    r0 = [r19 referenceID];
    r29 = r29;
    [r23 sleepDiffFromNowForPlacement:[r0 retain]];
    [r20 performSelector:@selector(requestAutoCacheablePlacementWithID:) withObject:r3 afterDelay:r4];
    [r19 release];
    [r23 release];
    goto loc_100628f20;

loc_100628f20:
    r0 = r22;
    goto loc_1006291b8;

loc_1006291b8:
    [r0 release];
    goto loc_1006291bc;

loc_1006291bc:
    r27 = r27 + 0x1;
    if (r27 < var_128) goto loc_100628df8;

loc_1006291cc:
    r0 = objc_msgSend(r24, var_1A8);
    var_128 = r0;
    if (r0 != 0x0) goto loc_100628d24;

loc_1006291ec:
    var_60 = **___stack_chk_guard;
    [r24 release];
    [r24 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_100628f28:
    if ((r28 & 0x1) == 0x0) goto loc_10062900c;

loc_100628f2c:
    if (([r20 adPlaying] & 0x1) != 0x0) goto loc_1006291bc;

loc_100628f3c:
    r22 = [[r19 referenceID] retain];
    r0 = [r20 cachedPlacementWithID:r22];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) goto loc_1006291bc;

loc_100628f80:
    r22 = [[VNGPersistenceManager sharedManager] retain];
    r0 = [r19 referenceID];
    r29 = r29;
    r23 = [r0 retain];
    r25 = [r22 checkFileSystemSizeAvailabilityForCase:0x2 withError:0x0 withPlacementID:r23];
    [r23 release];
    [r22 release];
    r0 = r20;
    if (r25 != 0x0) {
            r0 = [r0 placementsCoordinator];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            [r0 loadPlacement:r19];
    }
    else {
            r0 = [r0 playabilityCoordinator];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            [r0 fireAdPlayable:0x0 placement:r19];
    }
    goto loc_100628f20;

loc_10062900c:
    r22 = [[r19 referenceID] retain];
    r0 = [r20 cachedPlacementWithID:r22];
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    if (r23 != 0x0 && ([r20 adPlaying] & 0x1) == 0x0) {
            r22 = [[VungleSDK sharedSDK] retain];
            r19 = [[r19 referenceID] retain];
            [r22 log:@"Cached ad unit is available for placement ID: %@"];
            [r19 release];
            [r22 release];
            r0 = [r20 playabilityCoordinator];
            r29 = r29;
            r0 = [r0 retain];
            [r0 fireAdPlayable:0x1 placement:r23];
            [r0 release];
    }
    else {
            r24 = r28;
            r22 = [[VNGPersistenceManager sharedManager] retain];
            r0 = [r19 referenceID];
            r29 = r29;
            r25 = [r0 retain];
            r28 = [r22 checkFileSystemSizeAvailabilityForCase:0x2 withError:0x0 withPlacementID:r25];
            [r25 release];
            [r22 release];
            r0 = r20;
            if (r28 != 0x0) {
                    r0 = [r0 placementsCoordinator];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 loadPlacement:r19];
                    r0 = r0;
            }
            else {
                    r0 = [r0 playabilityCoordinator];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 fireAdPlayable:0x0 placement:r23];
                    r0 = r0;
            }
            [r0 release];
            r28 = r24;
            r24 = var_188;
    }
    r0 = r23;
    goto loc_1006291b8;
}

-(void *)placementsCoordinator {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)playabilityCoordinator {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setPlayabilityCoordinator:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end
@implementation TRRewardDeltaRequest

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setName:@"Rewards"];
            [r19 setRelativeURL:*0x100e7d618];
            [r19 setHttpType:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)addRealtimeParameters {
    [self addDevicePlayerId];
    [self addUserIdentifier];
    return;
}

-(bool)shouldForceRemoveFromQueue {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = @class(TRSessionManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r19 = [[r0 player] retain];
    [r0 release];
    r0 = @class(TRSessionManager);
    r0 = [r0 sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r22 = [r0 isServerToServer];
    [r21 release];
    if ((r22 & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r0 = [r20 requestPayload];
            r0 = [r0 retain];
            r20 = r0;
            r22 = [[r0 objectForKey:r2] retain];
            if (r22 != 0x0) {
                    r21 = 0x0;
            }
            else {
                    if ([r19 devicePlayerId] == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r21 = 0x1;
                            }
                    }
            }
            [r22 release];
            [r20 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleResponseObject:(void *)arg2 {
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
    r19 = self;
    [[&var_E8 super] handleResponseObject:arg2];
    r0 = [r19 responsePayload];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 responsePayload];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
            r29 = r29;
            r19 = [r0 retain];
            r0 = [r20 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r1;
            var_130 = r0;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    do {
                            r20 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r28 = *(0x0 + r20 * 0x8);
                                    r0 = [TRReward alloc];
                                    r0 = [r0 initWithRewardDictionary:r28];
                                    r28 = r0;
                                    if ([r0 rewardAmount] != 0x0) {
                                            [r19 addObject:r2];
                                    }
                                    [r28 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r23);
                            r23 = objc_msgSend(var_130, var_138);
                    } while (r23 != 0x0);
            }
            [var_130 release];
            if ([r19 count] != 0x0) {
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 postNotificationName:*0x100e7d710 object:r19];
                    [r0 release];
                    [TRObjectStore storeObject:r19 forKey:*0x100e7d6e8];
            }
            [r19 release];
            [var_130 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end
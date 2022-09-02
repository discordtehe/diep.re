@implementation TRRewardRedeemedRequest

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setName:@"Rewards Response"];
            [r19 setRelativeURL:*0x100e7d640];
    }
    r0 = r19;
    return r0;
}

-(void)handleResponseObject:(void *)arg2 {
    [TRObjectStore storeObject:0x0 forKey:*0x100e7d6e8];
    return;
}

-(void)addRealtimeParameters {
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
    [self addDevicePlayerId];
    var_120 = self;
    [self addUserIdentifier];
    r0 = [TRObjectStore retrieveObjectForKey:*0x100e7d6e8];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r21 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r25 = @selector(addObject:);
                            r0 = *(0x0 + r28 * 0x8);
                            r0 = [r0 transactionIdentifier];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r25);
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r0 = [var_120 requestPayload];
    r0 = [r0 retain];
    [r0 setObject:r20 forKeyedSubscript:@"cp_identifiers"];
    [r0 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
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
    r22 = [r0 isServerToServer];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [r20 requestPayload];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = 0x1;
            }
            else {
                    if ([r19 devicePlayerId] != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r22 = 0x1;
                            }
                    }
            }
            [r21 release];
            [r20 release];
            r21 = [[TRObjectStore retrieveObjectForKey:*0x100e7d6e8] retain];
            if ([r21 count] == 0x0 && r22 != 0x0 && r21 != 0x0) {
            }
            [r21 release];
    }
    [r19 release];
    return 0x1;
}

@end
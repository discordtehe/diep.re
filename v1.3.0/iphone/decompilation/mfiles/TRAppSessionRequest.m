@implementation TRAppSessionRequest

-(void)buildPersistedPayload {
    [[&var_20 super] buildPersistedPayload];
    [self addTriggeredAt];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setName:@"Sessions"];
            [r19 setRelativeURL:*0x100e7d628];
    }
    r0 = r19;
    return r0;
}

-(void)addRealtimeParameters {
    [self addDevicePlayerId];
    [self addUserIdentifier];
    return;
}

-(void)handleResponseObject:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] handleResponseObject:arg2];
    r0 = [r19 responsePayload];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [TRAppSession alloc];
            r19 = [[r19 responsePayload] retain];
            r20 = [r21 initWithTRAppSessionDictionary:r19];
            [r19 release];
            [TRObjectStore storeObject:r20 forKey:*0x100e7d6c8];
            [r20 release];
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
    r0 = [self requestPayload];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = 0x0;
    }
    else {
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 player];
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 devicePlayerId] == 0x0) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

@end
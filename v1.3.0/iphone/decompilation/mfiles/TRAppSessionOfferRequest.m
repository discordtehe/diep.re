@implementation TRAppSessionOfferRequest

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setName:@"Clicks"];
            [r19 setRelativeURL:*0x100e7d638];
    }
    r0 = r19;
    return r0;
}

-(void)buildPersistedPayload {
    [[&var_20 super] buildPersistedPayload];
    [self addTriggeredAt];
    return;
}

-(void)addRealtimeParameters {
    [self addDevicePlayerId];
    [self addAppSessionID];
    return;
}

-(void)addAppSessionID {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self requestPayload];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r19 = [[r19 requestPayload] retain];
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r0 = [r0 appSession];
            r0 = [r0 retain];
            [[NSNumber numberWithLong:[r0 appSessionID]] retain];
            [r19 setObject:r2 forKey:r3];
            [r20 release];
            [r22 release];
            [r21 release];
            [r19 release];
    }
    return;
}

-(bool)shouldForceRemoveFromQueue {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r23 = self;
    r0 = [self requestPayload];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10042ad70;

loc_10042ad68:
    r28 = 0x0;
    goto loc_10042adc0;

loc_10042adc0:
    r25 = @selector(objectForKey:);
    r0 = [r23 requestPayload];
    r0 = [r0 retain];
    r23 = r0;
    r0 = objc_msgSend(r0, r25);
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r26 = 0x0;
    }
    else {
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 appSession];
            r0 = [r0 retain];
            r27 = r0;
            if ([r0 appSessionID] == 0x0) {
                    if (CPU_FLAGS & E) {
                            r26 = 0x1;
                    }
            }
            [r27 release];
            [r25 release];
    }
    [r24 release];
    [r23 release];
    if (r28 != 0x0) {
            [r22 release];
            [r21 release];
    }
    goto loc_10042ae80;

loc_10042ae80:
    [r20 release];
    [r19 release];
    r0 = r26;
    return r0;

loc_10042ad70:
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 player];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 devicePlayerId];
    r26 = 0x1;
    if (r0 == 0x0) goto loc_10042ae70;

loc_10042adbc:
    r26 = 0x1;
    r28 = 0x1;
    goto loc_10042adc0;

loc_10042ae70:
    [r22 release];
    [r21 release];
    goto loc_10042ae80;
}

@end
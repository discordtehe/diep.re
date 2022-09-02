@implementation USRVInitializeStateNetworkError

-(void)disconnected {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init got disconnected event", @selector(getLogLevel), r2, r3);
    }
    return;
}

-(void)connected {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init got connected event", @selector(getLogLevel), r2, r3);
    }
    [r19 setReceivedConnectedEvents:[r19 receivedConnectedEvents] + 0x1];
    if ([r19 shouldHandleConnectedEvent] != 0x0) {
            r0 = [r19 blockCondition];
            r0 = [r0 retain];
            [r0 lock];
            [r0 release];
            r0 = [r19 blockCondition];
            r0 = [r0 retain];
            [r0 signal];
            [r0 release];
            r0 = [r19 blockCondition];
            r29 = r29;
            r0 = [r0 retain];
            [r0 unlock];
            [r0 release];
    }
    r0 = [NSDate date];
    r0 = [r0 retain];
    r20 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzs     x2, d0 };
    [r19 setLastConnectedEventTimeMs:r2];
    [r20 release];
    return;
}

-(void *)execute {
    r31 = r31 - 0xe0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init: network error, waiting for connection events", @selector(getLogLevel), r2, r3);
    }
    r20 = [[NSCondition alloc] init];
    [r19 setBlockCondition:r20];
    [r20 release];
    r0 = [r19 blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    dispatch_async(*__dispatch_main_q, &var_68);
    r0 = [r19 blockCondition];
    r29 = r29;
    r22 = [r0 retain];
    r21 = [[NSDate alloc] initWithTimeIntervalSinceNow:r20];
    r23 = [r22 waitUntilDate:r21];
    [r21 release];
    [r22 release];
    if (r23 != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_90);
            r0 = [r19 blockCondition];
            r0 = [r0 retain];
            [r0 unlock];
            [r0 release];
            r0 = [r19 erroredState];
            r0 = [r0 retain];
    }
    else {
            dispatch_async(*__dispatch_main_q, &var_B8);
            r0 = [r19 blockCondition];
            r0 = [r0 retain];
            [r0 unlock];
            [r0 release];
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)blockCondition {
    r0 = self->_blockCondition;
    return r0;
}

-(bool)shouldHandleConnectedEvent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSDate date];
    r0 = [r0 retain];
    r20 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzs     x21, d0 };
    [r20 release];
    if (r21 - [r19 lastConnectedEventTimeMs] >= 0x2710 && [r19 receivedConnectedEvents] < 0x1f4) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(int)receivedConnectedEvents {
    r0 = *(int32_t *)(int64_t *)&self->_receivedConnectedEvents;
    return r0;
}

-(void)setBlockCondition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_blockCondition, arg2);
    return;
}

-(long long)lastConnectedEventTimeMs {
    r0 = self->_lastConnectedEventTimeMs;
    return r0;
}

-(void)setReceivedConnectedEvents:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_receivedConnectedEvents = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_blockCondition, 0x0);
    return;
}

-(void)setLastConnectedEventTimeMs:(long long)arg2 {
    self->_lastConnectedEventTimeMs = arg2;
    return;
}

@end
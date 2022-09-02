@implementation ISNMOATManager

+(void *)sharedInstance {
    if (*qword_1011dad20 != -0x1) {
            dispatch_once(0x1011dad20, 0x100e8dac0);
    }
    r0 = *0x1011dad18;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)initWithOptions:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)createAdTrackerWithAdView:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)startTracking {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)stopTracking {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)optionsFromParams:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[IROMoatOptions alloc] init];
    [[[r19 objectForKeyedSubscript:r2] retain] release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setIDFACollectionEnabled:[r0 boolValue] ^ 0x1];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [r20 setLocationServicesEnabled:[r0 boolValue] ^ 0x1];
            [r0 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)trackerStartedTracking:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[SupersonicLogManager sharedManager] retain];
    r20 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"IROMoatTrackerDelegate | %@"] retain];
    [r21 log:r22 withLevel:0x1 withTag:0x6];
    [r22 release];
    [r20 release];
    [r21 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 moatManagerStartedTracking];
            [r0 release];
    }
    return;
}

-(void)trackerStoppedTracking:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[SupersonicLogManager sharedManager] retain];
    r20 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"IROMoatTrackerDelegate | %@"] retain];
    [r21 log:r22 withLevel:0x1 withTag:0x6];
    [r22 release];
    [r20 release];
    [r21 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 moatManagerStoppedTracking];
            [r0 release];
    }
    return;
}

-(void)tracker:(void *)arg2 failedToStartTracking:(unsigned long long)arg3 reason:(void *)arg4 {
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
    r19 = self;
    r20 = [arg4 retain];
    r23 = [[SupersonicLogManager sharedManager] retain];
    r24 = @class(NSString);
    r25 = [NSStringFromSelector(_cmd) retain];
    r24 = [[r24 stringWithFormat:@"IROMoatTrackerDelegate | %@"] retain];
    [r23 log:r24 withLevel:0x1 withTag:0x6];
    [r24 release];
    [r25 release];
    [r23 release];
    r23 = @class(NSString);
    r24 = [[NSNumber numberWithUnsignedInteger:arg3] retain];
    r21 = [[r23 stringWithFormat:@"errorType: %@ | errorReason: %@"] retain];
    [r20 release];
    [r24 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(moatManagerFailedToStartTrackingWithReason:)];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 moatManagerFailedToStartTrackingWithReason:r21];
            [r0 release];
    }
    [r21 release];
    return;
}

-(void)setTracker:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)tracker {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_tracker)), 0x1);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_tracker, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end
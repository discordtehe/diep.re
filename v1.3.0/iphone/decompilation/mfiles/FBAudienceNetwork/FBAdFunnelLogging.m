@implementation FBAdFunnelLogging

-(void)logFunnelEventOfType:(void *)arg2 withSubtype:(void *)arg3 withToken:(void *)arg4 withExtraData:(void *)arg5 {
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
    r22 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if (arg2 == @"ux_funnel" && r20 != 0x0) {
            r0 = [r22 funnelLoggersForToken];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r20] retain];
            [r0 release];
            if (r22 != 0x0) {
                    [r22 logFunnelWithSubtype:r19 withData:r21];
            }
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
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
    if (r0 != 0x0) {
            r20 = [NSMutableDictionary new];
            [r19 setFunnelLoggersForToken:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)funnelLoggerForToken:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [r0 funnelLoggersForToken];
            r0 = [r0 retain];
            r19 = [[r0 objectForKeyedSubscript:r21] retain];
            [r21 release];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)createFunnelLoggerForToken:(void *)arg2 andEventList:(void *)arg3 {
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
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r24 = [r21 retain];
            r21 = [[FBAdFunnelLogger alloc] initWithToken:r19 andEventList:r24];
            [r24 release];
            r0 = [r20 funnelLoggersForToken];
            r0 = [r0 retain];
            [r0 setObject:r21 forKeyedSubscript:r19];
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)logEventFunnelOfSubtype:(void *)arg2 withToken:(void *)arg3 withExtraData:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self logFunnelEventOfType:@"events_funnel" withSubtype:r22 withToken:r20 withExtraData:arg4];
    [r20 release];
    [r22 release];
    return;
}

-(void)logUXFunnelEventOfSubtype:(void *)arg2 withToken:(void *)arg3 withExtraData:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self logFunnelEventOfType:@"ux_funnel" withSubtype:r22 withToken:r20 withExtraData:arg4];
    [r20 release];
    [r22 release];
    return;
}

-(void *)uxFunnelDataWithEventType:(void *)arg2 forToken:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self funnelLoggersForToken];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:r19] retain];
    [r19 release];
    [r0 release];
    r19 = [[r22 uxFunnelDataWithEventType:r21] retain];
    [r21 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)createLoggerAndLogAdRequestSuccessForAdCandidate:(void *)arg2 withTime:(double)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r22 = self;
    r0 = [arg2 data];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 stringForKeyOrNil:@"ct"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 arrayForKeyOrNil:@"funnel"];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r8 = *___NSArray0__;
            r8 = *r8;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r0;
                    }
                    else {
                            r0 = r8;
                    }
            }
            r21 = [r0 retain];
            [r23 release];
            r22 = [[r22 createFunnelLoggerForToken:r20 andEventList:r21] retain];
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            r0 = [NSMutableDictionary new];
            [r0 setNSTimeInterval:@"load_time_ms" forKey:r21];
            [r22 logAdResponseSuccessful:r0];
            [r21 release];
            [r0 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)funnelEventSubtypeForAdEvent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self eventMatching];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)eventMatching {
    r31 = r31 - 0xe0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_eventMatching));
    r0 = *(self + r20);
    if (r0 == 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_C8 count:0xb];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = objc_retainAutoreleaseReturnValue(r0);
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventMatching, 0x0);
    objc_storeStrong((int64_t *)&self->_funnelLoggersForToken, 0x0);
    return;
}

-(void *)funnelLoggersForToken {
    r0 = self->_funnelLoggersForToken;
    return r0;
}

-(void)setFunnelLoggersForToken:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_funnelLoggersForToken, arg2);
    return;
}

-(void)setEventMatching:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void *)sharedFunnelLogger {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea9ee8);
    if (*qword_1011ddaa0 != -0x1) {
            dispatch_once(0x1011ddaa0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddaa8);
    [r19 release];
    r0 = r20;
    return r0;
}

@end
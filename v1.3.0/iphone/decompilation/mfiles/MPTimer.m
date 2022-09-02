@implementation MPTimer

+(void *)timerWithTimeInterval:(double)arg2 target:(void *)arg3 selector:(void *)arg4 repeats:(bool)arg5 {
    r0 = [self timerWithTimeInterval:arg2 target:arg3 selector:arg4 repeats:**_NSDefaultRunLoopMode runLoopMode:r6];
    return r0;
}

-(void)dealloc {
    r0 = [self timer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

+(void *)timerWithTimeInterval:(double)arg2 target:(void *)arg3 selector:(void *)arg4 repeats:(bool)arg5 runLoopMode:(void *)arg6 {
    r31 = r31 - 0x90;
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
    r22 = [arg2 retain];
    r20 = [arg5 retain];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setTarget:r22];
    [r22 release];
    [r0 setSelector:arg3];
    [r0 setIsCountdownActive:0x0];
    [r0 setIsRepeatingTimer:arg4];
    [r0 setTimeInterval:arg4];
    r0 = [r0 retain];
    r21 = r0;
    var_60 = r0;
    r0 = [r20 retain];
    r19 = r0;
    var_58 = r0;
    r0 = objc_retainBlock(&var_80);
    r20 = r0;
    if ([NSThread isMainThread] != 0x0) {
            (*(r20 + 0x10))(r20);
    }
    else {
            dispatch_sync(*__dispatch_main_q, r20);
    }
    r21 = objc_retainAutoreleaseReturnValue(r21);
    [r20 release];
    [var_58 release];
    [var_60 release];
    [r21 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)timerDidFire {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isRepeatingTimer] & 0x1) == 0x0) {
            [r19 setIsCountdownActive:0x0];
    }
    if ([r19 selector] != 0x0) {
            r20 = [[r19 target] retain];
            objc_msgSend(r20, [r19 selector]);
    }
    else {
            r20 = [[NSString stringWithFormat:@"%s `selector` is unexpectedly nil. Return early to avoid crash."] retain];
            r22 = [[MPLogEvent eventWithMessage:r20 level:0x14] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
            [r22 release];
    }
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(bool)isValid {
    r0 = [self timer];
    r0 = [r0 retain];
    r20 = [r0 isValid];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)invalidate {
    r0 = [self retain];
    objc_sync_enter(r0);
    [r19 setTarget:0x0];
    [r19 setSelector:0x0];
    r0 = [r19 timer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [r19 setTimer:0x0];
    [r19 setIsCountdownActive:0x0];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)scheduleNow {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 timer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isValid];
    [r0 release];
    if ((r22 & 0x1) != 0x0 && ([r19 isCountdownActive] & 0x1) == 0x0) {
            r21 = @class(NSDate);
            [r19 timeInterval];
            r22 = [[NSDate date] retain];
            r21 = [[r21 dateWithTimeInterval:r22 sinceDate:r3] retain];
            [r22 release];
            r0 = [r19 timer];
            r0 = [r0 retain];
            [r0 setFireDate:r21];
            [r0 release];
            [r19 setIsCountdownActive:0x1];
            [r21 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)resume {
    [self scheduleNow];
    return;
}

-(bool)isCountdownActive {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsCountdownActive:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)pause {
    r31 = r31 - 0x60;
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
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isCountdownActive] & 0x1) == 0x0) goto loc_10048c568;

loc_10048c410:
    r0 = [r19 timer];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isValid];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_10048c5f8;

loc_10048c44c:
    r0 = [r19 timer];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 fireDate] retain];
    r0 = [NSDate date];
    r29 = r29;
    r23 = [r0 retain];
    [r22 timeIntervalSinceDate:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    if (d8 >= 0x0) {
            r22 = [[NSString stringWithFormat:r2] retain];
            r0 = [MPLogEvent eventWithMessage:r22 level:0x14];
            r29 = r29;
            r23 = [r0 retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
    }
    else {
            r22 = [[NSString stringWithFormat:r2] retain];
            r0 = [MPLogEvent eventWithMessage:r22 level:0x1e];
            r29 = r29;
            r23 = [r0 retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
    }
    [r23 release];
    [r22 release];
    r20 = [[r19 timer] retain];
    r21 = [[NSDate distantFuture] retain];
    [r20 setFireDate:r21];
    [r21 release];
    [r20 release];
    [r19 setIsCountdownActive:0x0];
    goto loc_10048c77c;

loc_10048c77c:
    objc_sync_exit(r19);
    [r19 release];
    return;

loc_10048c5f8:
    r21 = [[NSString stringWithFormat:@"Cannot pause invalidated MPTimer (%p)."] retain];
    r22 = [[MPLogEvent eventWithMessage:r21 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    goto loc_10048c684;

loc_10048c684:
    [r22 release];
    [r21 release];
    goto loc_10048c77c;

loc_10048c568:
    r21 = [[NSString stringWithFormat:@"No-op: tried to pause an MPTimer (%p) that was already paused."] retain];
    r22 = [[MPLogEvent eventWithMessage:r21 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    goto loc_10048c684;
}

-(double)timeInterval {
    r0 = self;
    return r0;
}

-(void)setTimeInterval:(double)arg2 {
    *(self + 0x10) = d0;
    return;
}

-(void *)timer {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setTimer:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(bool)isRepeatingTimer {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setIsRepeatingTimer:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void *)target {
    r0 = objc_loadWeakRetained(self + 0x20);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTarget:(void *)arg2 {
    objc_storeWeak(self + 0x20, arg2);
    return;
}

-(void *)selector {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setSelector:(void *)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x20);
    objc_storeStrong(self + 0x18, 0x0);
    return;
}

@end
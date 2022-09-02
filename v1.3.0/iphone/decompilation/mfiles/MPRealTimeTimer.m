@implementation MPRealTimeTimer

-(void *)initWithInterval:(double)arg2 block:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0x20) = d8;
            r0 = objc_retainBlock(r19);
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)fire {
    [self invalidate];
    [self runBlock];
    return;
}

-(void)scheduleNow {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isScheduled] & 0x1) == 0x0) {
            [r19 addNotificationCenterObservers];
            [r19 interval];
            [r19 setCurrentTimeInterval:r2];
            [r19 setTimerWithCurrentTimeInterval];
            [r19 setIsScheduled:0x1];
    }
    return;
}

-(void)invalidate {
    r0 = [self timer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setTimer:0x0];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self setIsScheduled:0x0];
    [self setFireDate:0x0];
    return;
}

-(void)didEnterBackground {
    r0 = [self timer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    return;
}

-(void)runBlock {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self block];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 block];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    return;
}

-(void)setTimerWithCurrentTimeInterval {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self currentTimeInterval];
    r21 = [[MPTimer timerWithTimeInterval:r19 target:@selector(fire) selector:0x0 repeats:**_NSRunLoopCommonModes runLoopMode:r6] retain];
    [r19 setTimer:r21];
    [r21 release];
    r0 = [r19 timer];
    r0 = [r0 retain];
    [r0 scheduleNow];
    [r0 release];
    r0 = [r19 fireDate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r19 currentTimeInterval];
            r20 = [[NSDate dateWithTimeIntervalSinceNow:r2] retain];
            [r19 setFireDate:r20];
            [r20 release];
    }
    return;
}

-(void)willEnterForeground {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[NSDate date] retain];
    r0 = [r19 fireDate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r21 compare:r22];
    [r22 release];
    [r21 release];
    if (r23 < 0x2) {
            r8 = &@selector(fire);
    }
    else {
            r0 = [r19 fireDate];
            r0 = [r0 retain];
            [r0 timeIntervalSinceNow];
            [r19 setCurrentTimeInterval:r2];
            [r0 release];
            r8 = &@selector(setTimerWithCurrentTimeInterval);
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)addNotificationCenterObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(didEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(willEnterForeground) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    return;
}

-(bool)isScheduled {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setIsScheduled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)timer {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)block {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTimer:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(double)interval {
    r0 = self;
    return r0;
}

-(void)setInterval:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(void *)fireDate {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setFireDate:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(double)currentTimeInterval {
    r0 = self;
    return r0;
}

-(void)setCurrentTimeInterval:(double)arg2 {
    *(self + 0x30) = d0;
    return;
}

@end
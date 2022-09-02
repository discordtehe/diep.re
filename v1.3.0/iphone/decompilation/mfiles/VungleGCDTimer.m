@implementation VungleGCDTimer

-(void *)initWithQueue:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x10, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)startWithInterval:(double)arg2 dispatchBlock:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = [arg2 retain];
    r0 = [self queue];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [self setupWithInterval:r21 queue:r22 block:arg4];
    [r22 release];
    [r21 release];
    if (r19 != 0x0 && r20 == 0x0) {
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
            *r19 = [[[NSError errorWithDomain:@"com.vungle.helpers.gcdtimer" code:0xffffffffffff6980 userInfo:r22] retain] autorelease];
            [r22 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)cancel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self timer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 timer];
            r0 = [r0 retain];
            dispatch_source_cancel(r0);
            [r20 release];
            [r19 setTimer:0x0];
    }
    return;
}

-(bool)setupWithInterval:(double)arg2 queue:(void *)arg3 block:(void *)arg4 {
    r2 = arg2;
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
    r21 = self;
    r19 = [r2 retain];
    r20 = [arg3 retain];
    r0 = [r21 timer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r23 = dispatch_source_create(*__dispatch_source_type_timer, 0x0, 0x0, r19);
            r2 = r23;
            [r21 setTimer:r2];
            [r23 release];
    }
    r0 = [r21 timer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r1 = @selector(timer);
            r0 = objc_msgSend(r21, r1);
            r23 = [r0 retain];
            asm { fcvtzs     x1, d8 };
            r1 = dispatch_time(0x0, r1);
            asm { fcvtzu     x2, d8 };
            dispatch_source_set_timer(r23, r1, r2, 0x5f5e100);
            [r23 release];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            dispatch_source_set_event_handler(r0, r20);
            [r23 release];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            dispatch_resume(r0);
            [r21 release];
            r21 = 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setTimer:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)timer {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)queue {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end
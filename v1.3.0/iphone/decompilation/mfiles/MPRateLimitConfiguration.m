@implementation MPRateLimitConfiguration

-(bool)isRateLimited {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self timer];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)setRateLimitTimerWithMilliseconds:(long long)arg2 reason:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r22 = arg3;
    r21 = arg2;
    r20 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ([r19 isRateLimited] != 0x0) {
            r0 = [r19 timer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
    }
    *(r19 + 0x8) = r21 & !(r21 / 0xffffffff80000000);
    objc_storeStrong(r19 + 0x10, r22);
    if (r21 > 0x0) {
            objc_initWeak(&stack[-88], r19);
            objc_alloc();
            r21 = &var_70 + 0x20;
            asm { scvtf      d0, x23 };
            asm { fdiv       d8, d0, d1 };
            objc_copyWeak(r21, &stack[-88]);
            r22 = [r22 initWithInterval:&var_70 block:r3];
            [r19 setTimer:r22];
            [r22 release];
            r0 = objc_msgSend(r19, *(r24 + 0xe88));
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
            objc_destroyWeak(r21);
            objc_destroyWeak(&stack[-88]);
    }
    else {
            [r19 setTimer:0x0];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(unsigned long long)lastRateLimitMilliseconds {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)lastRateLimitReason {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void *)timer {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setTimer:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end
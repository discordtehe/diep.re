@implementation MCWaitCommand

+(void *)commandWithTime:(double)arg2 {
    r0 = [MCWaitCommand object];
    [r0 setTime:arg2];
    r0 = r0;
    return r0;
}

-(void)setTime:(double)arg2 {
    r0 = self;
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            if (*(int8_t *)(r0 + 0x11) == 0x0) {
                    *(r0 + 0x8) = d0;
            }
    }
    return;
}

-(void)execute {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            r19 = r0;
            if (*(int8_t *)(r0 + 0x11) == 0x0) {
                    *(int8_t *)(r19 + 0x10) = 0x1;
                    if (*(r19 + 0x8) > 0x0) {
                            [[[CCDirector sharedDirector] scheduler] scheduleSelector:@selector(finish) forTarget:r19 interval:0x0 repeat:0x0 delay:r6 paused:r7];
                    }
                    else {
                            [r19 finish];
                    }
            }
    }
    return;
}

-(void)finish {
    *(int16_t *)(self + 0x10) = 0x100;
    return;
}

-(bool)isFinished {
    r0 = *(int8_t *)(self + 0x11);
    return r0;
}

@end
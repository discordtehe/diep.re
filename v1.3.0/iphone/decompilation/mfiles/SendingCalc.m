@implementation SendingCalc

-(void)notifyEvent:(int)arg2 val:(int)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self calc:arg2 val:arg3] != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->serverLogger);
            [r0 send];
            [r0 release];
    }
    return;
}

-(void *)initWithLogger:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->serverLogger, r19);
            *(int32_t *)(int64_t *)&r20->DEFAULT_DEBUG_LEVEL = 0x4;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)calc:(int)arg2 val:(int)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 == 0x2 && *(int32_t *)(int64_t *)&r0->DEFAULT_DEBUG_LEVEL <= r3) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->serverLogger);
    return;
}

@end
@implementation GADOMIDJSTimer

-(void *)init {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            r0 = [NSMutableSet new];
            r9 = var_8->_timerIds;
            var_8->_timerIds = r0;
            [r9 release];
    }
    var_30 = [var_8 retain];
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_30;
    return r0;
}

-(void)setupMethodsForJSObject:(void *)arg2 {
    r31 = r31 - 0x1b0;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x28, arg2);
    objc_initWeak(r29 - 0x30, self);
    var_100 = (r29 - 0x58) + 0x20;
    objc_copyWeak((r29 - 0x58) + 0x20, r29 - 0x30);
    r0 = objc_retainBlock(r29 - 0x58);
    var_118 = r0;
    [0x0 setObject:r0 forKeyedSubscript:@"setTimeout"];
    [var_118 release];
    var_128 = (r29 - 0x90) + 0x20;
    objc_copyWeak((r29 - 0x90) + 0x20, r29 - 0x30);
    r0 = objc_retainBlock(r29 - 0x90);
    var_140 = r0;
    [0x0 setObject:r0 forKeyedSubscript:@"clearTimeout"];
    [var_140 release];
    var_150 = (r29 - 0xb8) + 0x20;
    objc_copyWeak((r29 - 0xb8) + 0x20, r29 - 0x30);
    r0 = objc_retainBlock(r29 - 0xb8);
    var_168 = r0;
    [0x0 setObject:r0 forKeyedSubscript:@"setInterval"];
    [var_168 release];
    var_178 = &var_E0 + 0x20;
    objc_copyWeak(&var_E0 + 0x20, r29 - 0x30);
    r0 = objc_retainBlock(&var_E0);
    var_190 = r0;
    [0x0 setObject:r0 forKeyedSubscript:@"clearInterval"];
    [var_190 release];
    objc_destroyWeak(var_178);
    objc_destroyWeak(var_150);
    objc_destroyWeak(var_128);
    objc_destroyWeak(var_100);
    objc_destroyWeak(r29 - 0x30);
    objc_storeStrong(r29 - 0x28, 0x0);
    return;
}

-(void *)scheduleTimerWithTimeout:(void *)arg2 callback:(void *)arg3 repeatable:(bool)arg4 {
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    var_21 = arg4;
    var_8->_timerIdCounter = var_8->_timerIdCounter + 0x1;
    r0 = [NSNumber numberWithUnsignedInteger:var_8->_timerIdCounter];
    r29 = &saved_fp;
    var_30 = [r0 retain];
    [var_8->_timerIds addObject:var_30];
    [0x0 toDouble];
    var_38 = d0;
    if (var_38 < 0x4024000000000000) {
            var_38 = 0x4024000000000000;
    }
    [var_8 scheduleTimerWithId:var_30 timeout:0x0 callback:var_21 & 0x1 repeatable:r5];
    var_58 = [var_30 retain];
    objc_storeStrong(&var_30, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    r0 = [var_58 autorelease];
    return r0;
}

-(void)scheduleTimerWithId:(void *)arg2 timeout:(double)arg3 callback:(void *)arg4 repeatable:(bool)arg5 {
    r31 = r31 - 0x120;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    *(r29 - 0x18) = self;
    var_A8 = 0x0;
    var_B0 = r29 - 0x18;
    objc_storeStrong(r29 - 0x28, arg2);
    var_30 = d0;
    var_38 = var_A8;
    objc_storeStrong(r29 - 0x38, arg3);
    var_39 = arg4 & 0x1;
    objc_initWeak(r29 - 0x48, *var_B0);
    r1 = &var_90 + 0x30;
    r2 = &var_90 + 0x20;
    r8 = &var_90 + 0x28;
    r3 = 0x100b9d000;
    asm { fcvtzs     x3, d0 };
    var_D8 = r1;
    var_E0 = r2;
    var_E8 = r8;
    var_F0 = dispatch_time(var_A8, r3);
    var_F8 = [*var_B0 jsInvoker];
    r29 = r29;
    r0 = [var_F8 retain];
    var_100 = r0;
    var_108 = [r0 dispatchQueue];
    var_110 = [var_108 retain];
    objc_copyWeak(&var_90 + 0x30, r29 - 0x48);
    [0x0 retain];
    [var_38 retain];
    dispatch_after(var_F0, var_110, &var_90);
    [var_110 release];
    [var_100 release];
    objc_storeStrong(var_E8, 0x0);
    objc_storeStrong(var_E0, 0x0);
    objc_destroyWeak(var_D8);
    objc_destroyWeak(r29 - 0x48);
    objc_storeStrong(r29 - 0x38, 0x0);
    objc_storeStrong(r29 - 0x28, 0x0);
    return;
}

-(void)cancelAllTimers {
    [self->_timerIds removeAllObjects];
    return;
}

-(void)handleTimerWithId:(void *)arg2 timeout:(double)arg3 callback:(void *)arg4 repeatable:(bool)arg5 {
    r5 = arg5;
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, arg2);
    var_20 = d0;
    objc_storeStrong(r29 - 0x28, arg3);
    var_29 = arg4;
    if (([var_8->_timerIds containsObject:0x0] & 0x1) == 0x0) {
            var_30 = 0x1;
    }
    else {
            if ((var_29 & 0x1) != 0x0) {
                    [var_8 scheduleTimerWithId:0x0 timeout:0x0 callback:0x1 repeatable:r5];
            }
            else {
                    [var_8->_timerIds removeObject:0x0];
            }
            r0 = [var_8 jsInvoker];
            r29 = r29;
            r0 = [r0 retain];
            [r0 invokeCallback:0x0];
            [r0 release];
            var_30 = 0x0;
    }
    objc_storeStrong(r29 - 0x28, 0x0);
    r0 = objc_storeStrong(r29 - 0x18, 0x0);
    r8 = var_30 - 0x1;
    if (r8 > 0x0) {
            objc_storeStrong(&var_98, 0x0);
            var_A0 = r0->_timerIds;
            r0 = [var_98 toNumber];
            r0 = [r0 retain];
            [var_A0 removeObject:r0];
            [r0 release];
            objc_storeStrong(&var_98, 0x0);
    }
    return;
}

-(void *)jsInvoker {
    r0 = objc_loadWeakRetained((int64_t *)&self->_jsInvoker);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setJsInvoker:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_jsInvoker, arg2);
    return;
}

-(void *)timerIds {
    r0 = self->_timerIds;
    return r0;
}

-(unsigned long long)timerIdCounter {
    r0 = self->_timerIdCounter;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timerIds, 0x0);
    objc_destroyWeak((int64_t *)&self->_jsInvoker);
    return;
}

@end
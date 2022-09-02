@implementation GADAVPlayerItemLogger

-(void *)initWithPlayerItem:(void *)arg2 eventContextSource:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [r22 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_playerItem, r24);
            objc_storeStrong((int64_t *)&r21->_contextSource, r22);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)startMonitoring {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)startMonitoringOnMainThread {
    r31 = r31 - 0x190;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_enabled));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            objc_initWeak(r29 - 0x88, r19);
            r0 = [GADEventLogger sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(isNotificationLogged:);
            r23 = objc_msgSend(r0, r1);
            [r0 release];
            if ((r23 & 0x1) != 0x0) {
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
                    [[*(r19 + r28) asset] retain];
                    r0 = [NSArray arrayWithObjects:r29 - 0x80 count:0x3];
                    r23 = (r29 - 0xb0) + 0x20;
                    r29 = r29;
                    [r0 retain];
                    objc_copyWeak(r23, r29 - 0x88);
                    r1 = @selector(loadValuesAsynchronouslyForKeys:completionHandler:);
                    objc_msgSend(r22, r1);
                    [r24 release];
                    [r22 release];
                    objc_destroyWeak(r23);
            }
            else {
                    r28 = *(int32_t *)ivar_offset(_playerItem);
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            var_158 = r8;
            r0 = [NSOperationQueue mainQueue];
            [r0 retain];
            var_160 = &var_D8 + 0x20;
            objc_copyWeak(&var_D8 + 0x20, r29 - 0x88);
            [r26 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
            asm { sxtw       x22, w28 };
            [r27 release];
            var_170 = r22;
            r0 = objc_msgSend(@class(NSOperationQueue), r24);
            [r0 retain];
            var_168 = &var_100 + 0x20;
            objc_copyWeak(&var_100 + 0x20, r29 - 0x88);
            objc_msgSend(r27, r25);
            [r28 release];
            r0 = @class(GADEventLogger);
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            r0 = [r0 retain];
            r26 = objc_msgSend(r0, r21);
            [r0 release];
            if (r26 != 0x0) {
                    r0 = [NSOperationQueue mainQueue];
                    [r0 retain];
                    objc_copyWeak(&var_128 + 0x20, r29 - 0x88);
                    [r27 addObserverForName:r23 object:r26 queue:r22 usingBlock:&var_128];
                    [r22 release];
                    objc_destroyWeak(&var_128 + 0x20);
            }
            r0 = [GADEventLogger sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isNotificationLogged:*0x100e9c5e8];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [NSOperationQueue mainQueue];
                    [r0 retain];
                    objc_copyWeak(&var_150 + 0x20, r29 - 0x88);
                    [r20 addObserverForName:r23 object:r19 queue:r22 usingBlock:&var_150];
                    [r22 release];
                    objc_destroyWeak(&var_150 + 0x20);
            }
            objc_destroyWeak(var_168);
            objc_destroyWeak(var_160);
            objc_destroyWeak(r29 - 0x88);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)stopMonitoring {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_contextSource, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItem, 0x0);
    return;
}

@end
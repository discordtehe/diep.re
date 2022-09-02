@implementation GADScrollMonitor

-(void *)initWithView:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_monitoredView, r19);
            objc_storeWeak((int64_t *)&r21->_messageSource, r20);
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b880];
            [r0 release];
            objc_initWeak(&stack[-88], r21);
            var_60 = [r21 retain];
            objc_copyWeak(&var_80 + 0x28, &stack[-88]);
            sub_100860a80();
            objc_destroyWeak(&var_80 + 0x28);
            [var_60 release];
            objc_destroyWeak(&stack[-88]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)updateScrollStatus {
    r31 = r31 - 0xb0;
    var_50 = d11;
    stack[-88] = d10;
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
    r21 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r21->_messageSource);
    if (r19 != 0x0) {
            r20 = objc_loadWeakRetained((int64_t *)&r21->_monitoredView);
            if (r20 != 0x0) {
                    [r20 bounds];
                    r0 = [r20 convertRect:0x0 toView:r3];
                    r21 = (int64_t *)&r21->_lastMonitoredViewBounds;
                    if ((CGRectEqualToRect(r0, @selector(convertRect:toView:)) & 0x1) == 0x0) {
                            *(int128_t *)r21 = d8;
                            *(int128_t *)(r21 + 0x8) = d9;
                            *(int128_t *)(r21 + 0x10) = d10;
                            *(int128_t *)(r21 + 0x18) = d11;
                            [sub_1008897d8(r20) retain];
                            r22 = [[NSValue valueWithBytes:&var_98 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"] retain];
                            r0 = [NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2];
                            r23 = [r0 retain];
                            [r22 release];
                            sub_1008833e8(*0x100e9bfe0, r19, r23);
                            [r23 release];
                            [r21 release];
                    }
            }
            else {
                    [r21->_updateScrollStatusScheduler stop];
            }
            [r20 release];
    }
    else {
            [r21->_updateScrollStatusScheduler stop];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_destroyWeak((int64_t *)&self->_monitoredView);
    objc_storeStrong((int64_t *)&self->_updateScrollStatusScheduler, 0x0);
    return;
}

@end
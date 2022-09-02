@implementation BannerDelegateThrottler

+(void *)sharedInstance {
    if (*qword_1011dac60 != -0x1) {
            dispatch_once(0x1011dac60, 0x100e8c800);
    }
    r0 = *0x1011dac58;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastInvoked));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            *(int8_t *)(int64_t *)&r19->_isWaitingForInvocation = 0x0;
    }
    r0 = r19;
    return r0;
}

-(bool)hasPendingInvocation {
    objc_sync_enter(self);
    objc_sync_exit(self);
    r0 = r20;
    return r0;
}

-(void)bannerDidFailToLoadWithError:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isWaitingForInvocation));
    if (*(int8_t *)(r19 + r21) == 0x0) {
            r0 = r19->_lastInvoked;
            if (r0 != 0x0) {
                    [r0 timeIntervalSinceNow];
                    d0 = Abs(d0);
                    if (d0 > 0x402e000000000000) {
                            [r19 invokeDelegate:r20];
                    }
                    else {
                            r1 = @selector(timeIntervalSinceNow);
                            *(int8_t *)(r19 + r21) = 0x1;
                            asm { fcvtzs     x1, d0 };
                            r21 = dispatch_time(0x0, r1);
                            var_28 = [r20 retain];
                            dispatch_after(r21, *__dispatch_main_q, &var_50);
                            [var_28 release];
                    }
            }
            else {
                    [r19 invokeDelegate:r20];
            }
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lastInvoked, 0x0);
    return;
}

-(void)invokeDelegate:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSDate new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastInvoked));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [BnDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 bannerDidFailToLoadWithError:r22];
    [r22 release];
    [r0 release];
    return;
}

@end
@implementation ISDelegateThrottler

+(void *)sharedInstance {
    if (*qword_1011dab90 != -0x1) {
            dispatch_once(0x1011dab90, 0x100e8b3a0);
    }
    r0 = *0x1011dab88;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastInvoked));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isWaitingForInvocation));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(bool)hasPendingInvocation {
    r0 = [self retain];
    objc_sync_enter(r0);
    [r19 hasPendingInvocationInternal:@"mediation"];
    objc_sync_exit(r19);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [r20 interstitialDidFailToLoadInternal:r19 instanceId:@"mediation"];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasPendingInvocation:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [r20 hasPendingInvocationInternal:r19];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 instanceId:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [r21 interstitialDidFailToLoadInternal:r19 instanceId:r20];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialDidFailToLoadInternal:(void *)arg2 instanceId:(void *)arg3 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([r22 hasPendingInvocationInternal:r20] & 0x1) == 0x0) {
            r0 = r22->_lastInvoked;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [r21 timeIntervalSinceNow];
                    d8 = Abs(d0);
                    if (d8 > 0x402e000000000000) {
                            [r22 invokeDelegate:r19 instanceId:r20];
                    }
                    else {
                            [@(YES) retain];
                            [r22->_isWaitingForInvocation setObject:r2 forKeyedSubscript:r3];
                            [r23 release];
                            asm { fcvtzs     x1, d0 };
                            r23 = dispatch_time(0x0, r1);
                            var_50 = [r19 retain];
                            var_48 = [r20 retain];
                            dispatch_after(r23, *__dispatch_main_q, &var_78);
                            [var_48 release];
                            [var_50 release];
                    }
            }
            else {
                    [r22 invokeDelegate:r19 instanceId:r20];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasPendingInvocationInternal:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_isWaitingForInvocation));
            r0 = *(r20 + r23);
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = @selector(objectForKey:);
                    r0 = *(r20 + r23);
                    r0 = objc_msgSend(r0, r21);
                    r0 = [r0 retain];
                    r20 = [r0 boolValue];
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)invokeDelegate:(void *)arg2 instanceId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [NSDate new];
    [self->_lastInvoked setObject:r22 forKeyedSubscript:r19];
    [r22 release];
    r22 = [r19 isEqualToString:@"mediation"];
    r21 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    if (r22 != 0x0) {
            [r21 interstitialDidFailToLoadWithError:r20];
    }
    else {
            [r21 interstitialDidFailToLoadWithError:r20 instanceId:r19];
    }
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_isWaitingForInvocation, 0x0);
    objc_storeStrong((int64_t *)&self->_lastInvoked, 0x0);
    return;
}

@end
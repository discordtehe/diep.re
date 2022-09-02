@implementation SSEReachabilityManager

+(void *)sharedManager {
    if (*qword_1011dacc0 != -0x1) {
            dispatch_once(0x1011dacc0, 0x100e8d370);
    }
    r0 = *0x1011dacb8;
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
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [SSEReachability reachabilityForInternetConnection];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(reachability));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r19 setReachabiltyNetworkStatus:[*(r19 + r21) currentReachabilityStatus]];
            r20 = objc_msgSend([NSMutableArray alloc], r20);
            [r19 setDelegates:r20];
            [r20 release];
            [r19 startNotifyingOfInternetChanges];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(reachability));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [self setDelegates:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)addDelegate:(void *)arg2 {
    [[NSValue valueWithPointer:arg2] retain];
    r0 = [self delegates];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r19 release];
    [r20 release];
    return;
}

-(void)removeDelegate:(void *)arg2 {
    r20 = [[NSValue valueWithPointer:arg2] retain];
    [self->_delegates removeObject:r20];
    [r20 release];
    return;
}

-(void)startNotifyingOfInternetChanges {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(reachabilityChanged:) name:*0x100e8d318 object:0x0];
    [r0 release];
    [self->reachability startNotifier];
    return;
}

-(void *)getReachabilityObject {
    r0 = self->reachability;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(bool)checkReachability {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r19 = [[r0 getReachabilityObject] retain];
    [r0 release];
    if ([r19 currentReachabilityStatus] != 0x0 && ([r19 connectionRequired] & 0x1) == 0x0) {
            r20 = @selector(currentReachabilityStatus);
            if (objc_msgSend(r19, r20) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)reachabiltyNetworkStatus {
    r0 = self->_reachabiltyNetworkStatus;
    return r0;
}

-(void)reachabilityChanged:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = self;
    r0 = [arg2 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 currentReachabilityStatus];
    if (r21 != [r20 reachabiltyNetworkStatus]) {
            [r20 setReachabiltyNetworkStatus:r21];
            var_108 = q0;
            r0 = [r20 delegates];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    r26 = *var_108;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_108 != r26) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r0 = *(var_110 + r27 * 0x8);
                                    r0 = [r0 pointerValue];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 reachabilityChanged:r2];
                                    [r25 release];
                                    r27 = r27 + 0x1;
                            } while (r27 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setReachabiltyNetworkStatus:(long long)arg2 {
    self->_reachabiltyNetworkStatus = arg2;
    return;
}

-(void *)delegates {
    r0 = self->_delegates;
    return r0;
}

-(void)setDelegates:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegates, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_delegates, 0x0);
    objc_storeStrong((int64_t *)&self->reachability, 0x0);
    return;
}

@end
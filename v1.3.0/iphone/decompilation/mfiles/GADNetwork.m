@implementation GADNetwork

+(void *)sharedInstance {
    if (*qword_1011db7d8 != -0x1) {
            dispatch_once(0x1011db7d8, 0x100e902b0);
    }
    r0 = *0x1011db7e0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.network", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_networkType = 0x0;
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_networkReachabilityRef));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            SCNetworkReachabilitySetDispatchQueue(r0, 0x0);
            CFRelease(*(r19 + r20));
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)enableRadioAccessTechnologyChecking {
    r31 = r31 - 0xe0;
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
    r19 = self;
    r0 = sub_100860a2c("com.google.admob.n.network-enable", 0x0, 0x15);
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_enableCheckingQueue));
    r8 = *(r19 + r20);
    *(r19 + r20) = r0;
    [r8 release];
    r20 = [*(r19 + r20) retain];
    r21 = SCNetworkReachabilityCreateWithName(**_kCFAllocatorDefault, "www.google.com");
    if (r21 != 0x0) {
            if (SCNetworkReachabilitySetDispatchQueue(r21, r20) != 0x0) {
                    r0 = SCNetworkReachabilitySetCallback(r21, 0x1007dcc58, &var_68);
                    if (r0 == 0x0) {
                            CFRelease(r21);
                            r21 = 0x0;
                    }
            }
            else {
                    CFRelease(r21);
                    r21 = 0x0;
            }
    }
    [r20 release];
    r19->_networkReachabilityRef = r21;
    objc_initWeak(&var_68, r19);
    objc_copyWeak(&var_90 + 0x20, &var_68);
    r0 = objc_retainBlock(&var_90);
    r22 = [[CTTelephonyNetworkInfo alloc] init];
    r23 = r19->_lockQueue;
    var_A8 = [r19 retain];
    [r22 retain];
    [r0 retain];
    dispatch_async(r23, &var_C8);
    [r0 release];
    [r22 release];
    [var_A8 release];
    [r21 release];
    [r19 release];
    objc_destroyWeak(&var_90 + 0x20);
    objc_destroyWeak(&var_68);
    return;
}

-(void)setNetworkType:(unsigned long long)arg2 {
    r20 = self->_lockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
}

-(void)setNetworkTypeFromFlags:(unsigned int)arg2 {
    r0 = self;
    if ((arg2 & 0x40000) != 0x0) {
            asm { csinc      x2, x9, x8, ne };
    }
    [r0 setNetworkType:r2];
    return;
}

-(void)setRadioAccessTechnology:(void *)arg2 {
    r20 = [arg2 copy];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)userAgentString {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setUserAgentString:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r21 = [r19 copy];
            [r19 release];
            r22 = r20->_lockQueue;
            var_30 = [r20 retain];
            r19 = [r21 retain];
            dispatch_async(r22, &var_50);
            [r19 release];
            [var_30 release];
    }
    [r19 release];
    return;
}

-(void)getSignalUpdateQueue:(void * *)arg2 signalCreationBlock:(void * *)arg3 {
    *arg2 = [[dispatch_get_global_queue(0x0, 0x0) retain] autorelease];
    var_28 = [self retain];
    r0 = objc_retainBlock(&var_48);
    *arg3 = [r0 autorelease];
    [var_28 release];
    return;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
    [arg2 retain];
    var_28 = [[NSMutableDictionary alloc] init];
    r21 = self->_lockQueue;
    var_60 = [self retain];
    dispatch_sync(r21, &var_80);
    [r19 addEntriesFromDictionary:*(&var_50 + 0x28)];
    [var_60 release];
    _Block_object_dispose(&var_50, 0x8);
    [var_28 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_userAgentString, 0x0);
    objc_storeStrong((int64_t *)&self->_lastKnownRadioAccessTechnology, 0x0);
    objc_storeStrong((int64_t *)&self->_radioAccessTechnology, 0x0);
    objc_storeStrong((int64_t *)&self->_telephonyNetworkInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_enableCheckingQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end
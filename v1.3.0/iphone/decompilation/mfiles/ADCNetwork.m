@implementation ADCNetwork

+(void *)sharedNetwork {
    if (*qword_1011d2340 != -0x1) {
            dispatch_once(0x1011d2340, 0x100e756d0);
    }
    r0 = *0x1011d2348;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setHost:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = r0;
    r21 = SCNetworkReachabilityCreateWithName(0x0, [r0 UTF8String]);
    if (r21 != 0x0) {
            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
            r19->_reachability_ref = r21;
    }
    else {
            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_host));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    return;
}

-(bool)startMonitoringWithReachabilityChangeHandler:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_reachability_ref));
    r0 = *(r20 + r21);
    r0 = SCNetworkReachabilitySetCallback(r0, 0x10022cb64, &var_48);
    if (r0 != 0x0 && SCNetworkReachabilityScheduleWithRunLoop(*(r20 + r21), CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode) != 0x0) {
            r20 = *0x1011d2350;
            objc_retainBlock(r19);
            [r20 addObject:r2];
            [r21 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)stopMonitoring {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_reachability_ref;
    if (r19 != 0x0) {
            SCNetworkReachabilityUnscheduleFromRunLoop(r19, CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode);
    }
    [*0x1011d2350 removeAllObjects];
    return;
}

-(unsigned long long)currentReachabilityStatus {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentReachabilityStatus));
    *(r19 + r20) = 0x0;
    r0 = r19->_reachability_ref;
    r0 = SCNetworkReachabilityGetFlags(r0, &var_14);
    if (r0 != 0x0) {
            r0 = [r19 networkStatusForFlags:var_14];
            *(r19 + r20) = r0;
    }
    else {
            r0 = *(r19 + r20);
    }
    return r0;
}

-(unsigned long long)networkStatusForFlags:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = 0x1 & !(r2 / 0x4);
    if ((r2 & 0x10) == 0x0) {
            asm { ccmp       w9, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & E) {
            asm { csinc      x8, x8, xzr, eq };
    }
    if ((r2 & 0x40000) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x2;
            }
            else {
                    r8 = r8;
            }
    }
    if ((r2 & 0x2) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self stopMonitoring];
    r0 = r19->_reachability_ref;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)host {
    r0 = self->_host;
    return r0;
}

-(void)setCurrentReachabilityStatus:(unsigned long long)arg2 {
    self->_currentReachabilityStatus = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_host, 0x0);
    objc_storeStrong((int64_t *)&self->_host_name, 0x0);
    return;
}

@end
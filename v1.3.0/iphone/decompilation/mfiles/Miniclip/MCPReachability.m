@implementation MCPReachability

+(void *)reachabilityWithHostName:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 UTF8String];
    r0 = SCNetworkReachabilityCreateWithName(0x0, r0);
    if (r0 != 0x0) {
            r19 = r0;
            r0 = [r20 alloc];
            r0 = [r0 init];
            r0 = [r0 autorelease];
            if (r0 != 0x0) {
                    *(r0 + 0x8) = r19;
            }
            else {
                    CFRelease(r19);
                    r0 = 0x0;
            }
    }
    return r0;
}

+(void *)reachabilityForInternetConnection {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [self reachabilityWithAddress:&var_18];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)reachabilityWithAddress:(struct sockaddr *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = **_kCFAllocatorDefault;
    r0 = SCNetworkReachabilityCreateWithAddress(r0, arg2);
    if (r0 != 0x0) {
            r19 = r0;
            r0 = [r20 alloc];
            r0 = [r0 init];
            r0 = [r0 autorelease];
            if (r0 != 0x0) {
                    *(r0 + 0x8) = r19;
            }
            else {
                    CFRelease(r19);
                    r0 = 0x0;
            }
    }
    return r0;
}

-(bool)startNotifier {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = SCNetworkReachabilitySetCallback(r0, 0x10099c288, &var_38);
    if (r0 != 0x0) {
            r19 = *(r19 + 0x8);
            r0 = CFRunLoopGetCurrent();
            r0 = SCNetworkReachabilityScheduleWithRunLoop(r19, r0, **_kCFRunLoopDefaultMode);
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void)stopNotifier {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *(self + 0x8);
    if (r19 != 0x0) {
            SCNetworkReachabilityUnscheduleFromRunLoop(r19, CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode);
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self stopNotifier];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(long long)networkStatusForFlags:(unsigned int)arg2 {
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

-(bool)connectionRequired {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (SCNetworkReachabilityGetFlags(*(self + 0x8), &saved_fp - 0x4) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r0 = r8 & (var_4 & 0x4) / 0x4;
    return r0;
}

-(long long)currentReachabilityStatus {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = SCNetworkReachabilityGetFlags(r0, &var_14);
    if (r0 != 0x0) {
            r0 = [r19 networkStatusForFlags:var_14];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

@end
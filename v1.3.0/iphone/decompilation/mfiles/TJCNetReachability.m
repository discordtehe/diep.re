@implementation TJCNetReachability

+(void *)reachabilityWithHostName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [objc_retainAutorelease(arg2) UTF8String];
    [r21 release];
    r20 = SCNetworkReachabilityCreateWithName(0x0, r20);
    if (r20 != 0x0) {
            r19 = [[r19 alloc] init];
            if (r19 != 0x0) {
                    r19->_reachabilityRef = r20;
            }
            else {
                    CFRelease(r20);
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)reachabilityWithAddress:(struct sockaddr *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = SCNetworkReachabilityCreateWithAddress(**_kCFAllocatorDefault, arg2);
    if (r19 != 0x0) {
            r20 = [[r20 alloc] init];
            if (r20 != 0x0) {
                    r20->_reachabilityRef = r19;
            }
            else {
                    CFRelease(r19);
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
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

-(bool)startNotifier {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_reachabilityRef));
    r0 = *(r19 + r20);
    r0 = SCNetworkReachabilitySetCallback(r0, 0x1009017e8, &var_38);
    if (r0 != 0x0) {
            r19 = *(r19 + r20);
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
    r19 = self->_reachabilityRef;
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
    r0 = r19->_reachabilityRef;
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
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = _cmd;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_reachabilityRef));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [NSString stringWithUTF8String:"/Users/mtang/Workspace/plugins/tapjoyconnectlibrary/source/TJCCore/Utilities/TJCNetReachability.m"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r21 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r21;
                    }
                    else {
                            r0 = @"<Unknown File>";
                    }
            }
            r22 = [r0 retain];
            [r21 release];
            r0 = [NSAssertionHandler currentHandler];
            r0 = [r0 retain];
            [r0 handleFailureInMethod:r20 object:r19 file:r22 lineNumber:0xc9 description:@"connectionRequired called with NULL reachabilityRef"];
            [r22 release];
            [r0 release];
            r0 = *(r19 + r23);
    }
    r0 = SCNetworkReachabilityGetFlags(r0, &var_34);
    if (r0 != 0x0) {
            asm { ubfx       w0, w8, #0x2, #0x1 };
    }
    return r0;
}

-(long long)currentReachabilityStatus {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = _cmd;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_reachabilityRef));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [NSString stringWithUTF8String:"/Users/mtang/Workspace/plugins/tapjoyconnectlibrary/source/TJCCore/Utilities/TJCNetReachability.m"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r21 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r21;
                    }
                    else {
                            r0 = @"<Unknown File>";
                    }
            }
            r22 = [r0 retain];
            [r21 release];
            r0 = [NSAssertionHandler currentHandler];
            r0 = [r0 retain];
            [r0 handleFailureInMethod:r20 object:r19 file:r22 lineNumber:0xd6 description:@"currentNetworkStatus called with NULL SCNetworkReachabilityRef"];
            [r22 release];
            [r0 release];
            r0 = *(r19 + r23);
    }
    r0 = SCNetworkReachabilityGetFlags(r0, &var_34);
    if (r0 != 0x0) {
            r0 = [r19 networkStatusForFlags:var_34];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(bool)isUsingInternet {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [TJCNetReachability reachabilityForInternetConnection];
    r0 = [r0 retain];
    r20 = [r0 currentReachabilityStatus];
    r0 = [r0 release];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(bool)isUsingWifi {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [TJCNetReachability reachabilityForInternetConnection];
    r0 = [r0 retain];
    r20 = [r0 currentReachabilityStatus];
    r0 = [r0 release];
    if (r20 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)getReachabilityType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([TJCNetReachability isUsingWifi] != 0x0) {
            r19 = @"wifi";
    }
    else {
            if ([TJCNetReachability isUsingInternet] != 0x0) {
                    r19 = @"mobile";
            }
            else {
                    r19 = @"none";
            }
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

+(bool)isNetworkReachable {
    r0 = [TJCNetReachability getReachabilityType];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2] ^ 0x1;
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)reachabilitySubType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([TJCNetReachability isUsingInternet] != 0x0 && ([TJCNetReachability isUsingWifi] & 0x1) == 0x0 && NSClassFromString(@"CTTelephonyNetworkInfo") != 0x0) {
            r0 = [CTTelephonyNetworkInfo new];
            r19 = r0;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r20 = [[r19 currentRadioAccessTechnology] retain];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

@end
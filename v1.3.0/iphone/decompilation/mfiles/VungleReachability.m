@implementation VungleReachability

-(void *)initWithReachabilityURL:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 host];
            r29 = r29;
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            *(r20 + 0x8) = SCNetworkReachabilityCreateWithName(0x0, [r0 UTF8String]);
            [r0 release];
            if (r19 != 0x0) {
                    *(int16_t *)(r20 + 0x10) = 0x0;
                    r0 = *(r20 + 0x8);
                    r0 = SCNetworkReachabilitySetCallback(r0, 0x10062b014, &var_58);
                    if (r0 != 0x0 && SCNetworkReachabilityScheduleWithRunLoop(*(r20 + 0x8), CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode) == 0x0) {
                            r0 = [VungleSDK sharedSDK];
                            r0 = [r0 retain];
                            [r0 log:@"error scheduling reachability"];
                            [r0 release];
                    }
            }
            else {
                    *(int16_t *)(r20 + 0x10) = 0x101;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = *(self + 0x8);
    if (r20 != 0x0) {
            SCNetworkReachabilityUnscheduleFromRunLoop(r20, CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode);
            SCNetworkReachabilitySetDispatchQueue(*(r19 + 0x8), 0x0);
            CFRelease(*(r19 + 0x8));
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(bool)wifiAvailable {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(void)setWifiAvailable:(bool)arg2 {
    *(int8_t *)(self + 0x10) = arg2;
    return;
}

-(void)setNetworkAvailable:(bool)arg2 {
    *(int8_t *)(self + 0x11) = arg2;
    return;
}

-(bool)networkAvailable {
    r0 = *(int8_t *)(self + 0x11);
    return r0;
}

@end
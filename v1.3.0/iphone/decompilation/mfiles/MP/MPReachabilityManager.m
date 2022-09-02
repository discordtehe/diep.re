@implementation MPReachabilityManager

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [MPReachability reachabilityForInternetConnection];
            r0 = [r0 retain];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8300 != -0x1) {
            dispatch_once(0x1011d8300, &var_28);
    }
    r0 = *0x1011d82f8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) stopNotifier];
    [[&var_20 super] dealloc];
    return;
}

-(void)stopMonitoring {
    r0 = [self reachability];
    r0 = [r0 retain];
    [r0 stopNotifier];
    [r0 release];
    return;
}

-(void)startMonitoring {
    r0 = [self reachability];
    r0 = [r0 retain];
    [r0 startNotifier];
    [r0 release];
    return;
}

-(long long)currentStatus {
    r0 = [self reachability];
    r0 = [r0 retain];
    r20 = [r0 currentReachabilityStatus];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)reachability {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setReachability:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end
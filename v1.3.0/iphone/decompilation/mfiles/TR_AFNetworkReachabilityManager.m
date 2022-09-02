@implementation TR_AFNetworkReachabilityManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6e18 != -0x1) {
            dispatch_once(0x1011d6e18, &var_28);
    }
    r0 = *0x1011d6e10;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)managerForDomain:(void *)arg2 {
    r21 = **_kCFAllocatorDefault;
    r22 = [arg2 retain];
    r19 = [objc_retainAutorelease(arg2) UTF8String];
    [r22 release];
    r19 = SCNetworkReachabilityCreateWithName(r21, r19);
    [[self alloc] initWithReachability:r19];
    CFRelease(r19);
    r0 = [r20 autorelease];
    return r0;
}

+(void *)managerForAddress:(void *)arg2 {
    r20 = SCNetworkReachabilityCreateWithAddress(**_kCFAllocatorDefault, arg2);
    [[self alloc] initWithReachability:r20];
    CFRelease(r20);
    r0 = [r19 autorelease];
    return r0;
}

+(void *)manager {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [self managerForAddress:&var_18];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithReachability:(struct __SCNetworkReachability *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r19->_networkReachability = CFRetain(r20);
            [r19 setNetworkReachabilityStatus:0xffffffffffffffff];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self stopMonitoring];
    r0 = r19->_networkReachability;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(bool)isReachable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isReachableViaWWAN] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [r19 isReachableViaWiFi];
    }
    return r0;
}

-(bool)isReachableViaWWAN {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self networkReachabilityStatus];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isReachableViaWiFi {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self networkReachabilityStatus];
    if (r0 == 0x2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)startMonitoring {
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
    r29 = &saved_fp;
    r20 = self;
    [self stopMonitoring];
    if ([r20 networkReachability] != 0x0) {
            objc_initWeak(r29 - 0x48, r20);
            objc_copyWeak(&var_70 + 0x20, r29 - 0x48);
            r0 = objc_retainBlock(&var_70);
            SCNetworkReachabilitySetCallback([r20 networkReachability], 0x100404ca0, &var_98);
            SCNetworkReachabilityScheduleWithRunLoop([r20 networkReachability], CFRunLoopGetMain(), **_kCFRunLoopCommonModes);
            r22 = [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain];
            [r21 retain];
            dispatch_async(r22, &var_C8);
            [r22 release];
            [r21 release];
            [r20 release];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(r29 - 0x48);
    }
    return;
}

-(void)stopMonitoring {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self networkReachability] != 0x0) {
            SCNetworkReachabilityUnscheduleFromRunLoop([r19 networkReachability], CFRunLoopGetMain(), **_kCFRunLoopCommonModes);
    }
    return;
}

-(void *)localizedNetworkReachabilityStatusString {
    [self networkReachabilityStatus];
    r0 = sub_10040450c();
    return r0;
}

-(void)setReachabilityStatusChangeBlock:(void *)arg2 {
    [self setNetworkReachabilityStatusBlock:arg2];
    return;
}

-(long long)networkReachabilityStatus {
    r0 = self->_networkReachabilityStatus;
    return r0;
}

+(void *)keyPathsForValuesAffectingValueForKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
            if ([r19 isEqualToString:r2] != 0x0) {
                    r0 = [NSSet setWithObject:@"networkReachabilityStatus"];
            }
            else {
                    r0 = [[&var_30 super] keyPathsForValuesAffectingValueForKey:r19];
            }
    }
    else {
            r0 = [NSSet setWithObject:@"networkReachabilityStatus"];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setNetworkReachabilityStatus:(long long)arg2 {
    self->_networkReachabilityStatus = arg2;
    return;
}

-(struct __SCNetworkReachability *)networkReachability {
    r0 = self->_networkReachability;
    return r0;
}

-(void *)networkReachabilityStatusBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_networkReachabilityStatusBlock)), 0x0);
    return r0;
}

-(void)setNetworkReachabilityStatusBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_networkReachabilityStatusBlock, 0x0);
    return;
}

@end
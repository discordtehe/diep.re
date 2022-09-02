@implementation USRVConnectivityMonitor

+(void)setConnectionMonitoring:(bool)arg2 {
    *(int8_t *)0x1011d1aa0 = arg2;
    [self updateListeningStatus];
    return;
}

+(void)startListening:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    if (*0x1011d1aa8 == 0x0) {
            r0 = [NSMutableArray alloc];
            r0 = [r0 init];
            r8 = *0x1011d1aa8;
            *0x1011d1aa8 = r0;
            [r8 release];
    }
    [*0x1011d1aa8 addObject:r20];
    [r19 updateListeningStatus];
    [r20 release];
    return;
}

+(void)stopListening:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*0x1011d1aa8 != 0x0) {
            [*0x1011d1aa8 removeObject:r2];
    }
    [r19 updateListeningStatus];
    return;
}

+(void)stopAll {
    *(int8_t *)0x1011d1aa0 = 0x0;
    *(int8_t *)0x1011d1ab0 = 0x0;
    [*0x1011d1aa8 removeAllObjects];
    [self updateListeningStatus];
    return;
}

+(void)updateListeningStatus {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)byte_1011d1aa0 != 0x0) {
            r1 = @selector(startReachabilityListener);
    }
    else {
            if (*0x1011d1aa8 != 0x0 && [*0x1011d1aa8 count] != 0x0) {
                    r1 = @selector(startReachabilityListener);
            }
            else {
                    r1 = @selector(stopReachabilityListener);
            }
    }
    objc_msgSend(r19, r1);
    return;
}

+(void)startReachabilityListener {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((*(int8_t *)0x1011d1ab0 & 0x1) == 0x0) {
            r0 = SCNetworkReachabilityCreateWithAddress(0x0, &var_38);
            *0x1011d1ab8 = r0;
            r0 = SCNetworkReachabilitySetCallback(r0, 0x1000d00b8, &var_60);
            if (r0 != 0x0 && SCNetworkReachabilityScheduleWithRunLoop(*0x1011d1ab8, CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode) != 0x0) {
                    *(int8_t *)0x1011d1ab0 = 0x1;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

+(void)stopReachabilityListener {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)0x1011d1ab0 = 0x0;
    if (*0x1011d1ab8 != 0x0) {
            SCNetworkReachabilityUnscheduleFromRunLoop(*0x1011d1ab8, CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode);
    }
    return;
}

+(void)dealloc {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    [self stopReachabilityListener];
    if (*0x1011d1ab8 != 0x0) {
            CFRelease(*0x1011d1ab8);
    }
    return;
}

+(void)sendToWebview:(struct __SCNetworkReachability *)arg2 flags:(unsigned int)arg3 {
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
    r20 = arg3;
    if (*(int8_t *)byte_1011d1aa0 == 0x0) goto .l1;

loc_1000d035c:
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_1000d0540;

loc_1000d0380:
    r0 = [USRVConnectivityUtils networkStatusForFlags:r20];
    if (r0 == 0x2) goto loc_1000d0400;

loc_1000d03a0:
    if (r0 == 0x1) goto loc_1000d04a8;

loc_1000d03a8:
    if (r0 != 0x0) goto loc_1000d0540;

loc_1000d03ac:
    r20 = *0x1011a92f0;
    r21 = [sub_1000d1038() retain];
    [r19 sendEvent:r20 category:r21 param1:0x0];
    goto loc_1000d0538;

loc_1000d0538:
    r0 = r21;
    goto loc_1000d053c;

loc_1000d053c:
    [r0 release];
    goto loc_1000d0540;

loc_1000d0540:
    [r19 release];
    return;

.l1:
    return;

loc_1000d04a8:
    r20 = *0x1011a92e8;
    r21 = [sub_1000d1038() retain];
    r22 = [@(YES) retain];
    r23 = [@(0x0) retain];
    [r19 sendEvent:r20 category:r21 param1:r22];
    [r23 release];
    [r22 release];
    goto loc_1000d0538;

loc_1000d0400:
    r21 = *0x1011a92e8;
    r20 = [sub_1000d1038() retain];
    r22 = [@(NO) retain];
    r23 = [[NSNumber numberWithInteger:[USRVConnectivityUtils getNetworkType]] retain];
    [r19 sendEvent:r21 category:r20 param1:r22];
    [r23 release];
    [r22 release];
    r0 = r20;
    goto loc_1000d053c;
}

@end
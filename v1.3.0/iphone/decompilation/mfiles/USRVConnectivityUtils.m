@implementation USRVConnectivityUtils

+(void)initCarrierInfo {
    if (*qword_1011d1ac0 != -0x1) {
            dispatch_once(0x1011d1ac0, 0x100e6a060);
    }
    return;
}

+(long long)networkStatusForFlags:(unsigned int)arg2 {
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

+(long long)getNetworkStatus {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = **_kCFAllocatorDefault;
    r0 = SCNetworkReachabilityCreateWithAddress(r0, &var_28);
    r20 = r0;
    if (r20 != 0x0) {
            r0 = SCNetworkReachabilityGetFlags(r20, &var_2C);
            if (r0 != 0x0) {
                    r19 = [r19 networkStatusForFlags:var_2C];
            }
            else {
                    r19 = 0x0;
            }
            CFRelease(r20);
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(long long)getNetworkType {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d1ac8;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isEqualToString:r2];
    [r0 release];
    if (r22 == 0x0) goto loc_1000d0630;

loc_1000d061c:
    NSLog(@"GPRS");
    r0 = 0x1;
    return r0;

loc_1000d0630:
    r20 = @selector(isEqualToString:);
    r0 = *0x1011d1ac8;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r20);
    [r0 release];
    if (r22 == 0x0) goto loc_1000d0680;

loc_1000d066c:
    NSLog(@"Edge");
    r0 = 0x2;
    return r0;

loc_1000d0680:
    r20 = @selector(isEqualToString:);
    r0 = *0x1011d1ac8;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r20);
    [r0 release];
    if (r22 == 0x0) goto loc_1000d06d0;

loc_1000d06bc:
    r0 = @"WCDMA";
    goto loc_1000d06c4;

loc_1000d06c4:
    NSLog(r0);
    r0 = 0x4;
    return r0;

loc_1000d06d0:
    r20 = @selector(isEqualToString:);
    r0 = *0x1011d1ac8;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r20);
    [r0 release];
    if (r22 == 0x0) goto loc_1000d0720;

loc_1000d070c:
    NSLog(@"HSDPA");
    r0 = 0x8;
    return r0;

loc_1000d0720:
    r20 = @selector(isEqualToString:);
    r0 = *0x1011d1ac8;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r20);
    [r0 release];
    if (r22 == 0x0) goto loc_1000d0770;

loc_1000d075c:
    NSLog(@"HSUPA");
    r0 = 0x9;
    return r0;

loc_1000d0770:
    r20 = @selector(isEqualToString:);
    r0 = *0x1011d1ac8;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r20);
    [r0 release];
    if (r22 == 0x0) goto loc_1000d07b8;

loc_1000d07ac:
    r0 = @"CDMA1x";
    goto loc_1000d06c4;

loc_1000d07b8:
    r20 = @selector(isEqualToString:);
    r0 = *0x1011d1ac8;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r20);
    [r0 release];
    if (r22 != 0x0) {
            NSLog(@"CDMAEVDO0Rev0");
            r0 = 0x5;
    }
    else {
            r20 = @selector(isEqualToString:);
            r0 = *0x1011d1ac8;
            r0 = [r0 currentRadioAccessTechnology];
            r29 = r29;
            r0 = [r0 retain];
            r22 = objc_msgSend(r0, r20);
            [r0 release];
            if (r22 != 0x0) {
                    NSLog(@"CDMAEVDO0RevA");
                    r0 = 0x6;
            }
            else {
                    r20 = @selector(isEqualToString:);
                    r0 = *0x1011d1ac8;
                    r0 = [r0 currentRadioAccessTechnology];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = objc_msgSend(r0, r20);
                    [r0 release];
                    if (r22 != 0x0) {
                            NSLog(@"CDMAEVDO0RevB");
                            r0 = 0xc;
                    }
                    else {
                            r20 = @selector(isEqualToString:);
                            r0 = *0x1011d1ac8;
                            r0 = [r0 currentRadioAccessTechnology];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = objc_msgSend(r0, r20);
                            [r0 release];
                            if (r22 != 0x0) {
                                    NSLog(@"HRPD");
                                    r0 = 0xe;
                            }
                            else {
                                    r20 = @selector(isEqualToString:);
                                    r0 = *0x1011d1ac8;
                                    r0 = [r0 currentRadioAccessTechnology];
                                    r0 = [r0 retain];
                                    r20 = objc_msgSend(r0, r20);
                                    [r0 release];
                                    if (r20 != 0x0) {
                                            NSLog(@"LTE");
                                            r0 = 0xd;
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                    }
            }
    }
    return r0;
}

@end
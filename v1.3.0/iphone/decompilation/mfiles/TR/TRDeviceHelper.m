@implementation TRDeviceHelper

+(void *)osVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r19 release];
    r0 = [NSNumber numberWithFloat:r2];
    return r0;
}

+(void *)orientation {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    [r0 release];
    if (r20 <= 0x1) {
            r19 = @"portrait";
    }
    else {
            r19 = @"landscape";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)connectionType {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = SCNetworkReachabilityCreateWithName(0x0, "8.8.8.8");
    r19 = r0;
    r0 = SCNetworkReachabilityGetFlags(r0, &var_24);
    CFRelease(r19);
    if (r20 == 0x0) goto loc_10042b47c;

loc_10042b45c:
    r8 = var_24;
    if ((r8 & 0x6) != 0x2) goto loc_10042b488;

loc_10042b46c:
    if ((r8 & 0x40000) != 0x0) goto loc_10042b4b0;

loc_10042b470:
    r20 = @"wifi";
    goto loc_10042b490;

loc_10042b490:
    [r20 retain];
    goto loc_10042b498;

loc_10042b498:
    r0 = [r20 autorelease];
    return r0;

loc_10042b4b0:
    r0 = [CTTelephonyNetworkInfo new];
    r19 = r0;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r20 = [[r19 currentRadioAccessTechnology] retain];
    }
    else {
            r20 = @"unknown";
            [r20 retain];
    }
    [r21 release];
    [r19 release];
    goto loc_10042b498;

loc_10042b488:
    r20 = @"no connection";
    goto loc_10042b490;

loc_10042b47c:
    r20 = @"unknown";
    goto loc_10042b490;
}

+(void *)deviceName {
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffe0 - 0x510;
    var_18 = **___stack_chk_guard;
    uname(&stack[-1320]);
    r0 = [NSString stringWithCString:&stack[-1320] + 0x400 encoding:0x4];
    if (**___stack_chk_guard != var_18) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)carrier {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [CTTelephonyNetworkInfo alloc];
    r0 = [r0 init];
    r19 = r0;
    r0 = [r0 subscriberCellularProvider];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 carrierName];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r21 = [[r20 carrierName] retain];
            }
            else {
                    r21 = @"unknown";
                    [r21 retain];
            }
            [r22 release];
    }
    else {
            r21 = @"unknown";
            [r21 retain];
    }
    [r20 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

+(double)screenScale {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 scale];
    r0 = [r19 release];
    return r0;
}

@end
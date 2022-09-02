@implementation VNGMoatCoreUtil

+(void *)getBundleId {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 bundleIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAppName {
    if (*qword_1011da9f0 != -0x1) {
            dispatch_once(0x1011da9f0, 0x100e8a1c8);
    }
    r0 = *0x1011c1508;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)getSystemVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 systemVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(int)getMajorSystemVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = [r0 intValue];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)getIDFA {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [VNGMoatAnalytics sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isIDFACollectionBlocked] & 0x1) != 0x0 || [ASIdentifierManager class] == 0x0) goto loc_10067a36c;

loc_10067a2c4:
    r0 = [ASIdentifierManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    [r19 release];
    if (r22 == 0x0) goto loc_10067a374;

loc_10067a308:
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 advertisingIdentifier];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    if (r19 == 0x0) goto loc_10067a36c;

loc_10067a344:
    r20 = [[r19 UUIDString] retain];
    [r19 release];
    goto loc_10067a384;

loc_10067a384:
    r0 = [r20 autorelease];
    return r0;

loc_10067a36c:
    [r19 release];
    goto loc_10067a374;

loc_10067a374:
    r20 = @"";
    [r20 retain];
    goto loc_10067a384;
}

+(void *)getCarrierName {
    r0 = [CTTelephonyNetworkInfo new];
    r19 = r0;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r21 = [[r0 carrierName] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getRadioTechnology {
    r0 = [CTTelephonyNetworkInfo new];
    r19 = r0;
    r0 = [r0 currentRadioAccessTechnology];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingOccurrencesOfString:@"CTRadioAccessTechnology" withString:@""] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end
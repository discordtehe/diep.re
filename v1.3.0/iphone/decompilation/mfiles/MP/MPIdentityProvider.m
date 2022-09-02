@implementation MPIdentityProvider

+(void *)iso8601Calendar {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8440 != -0x1) {
            dispatch_once(0x1011d8440, 0x100e7f400);
    }
    r0 = *0x1011d8448;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)identifier {
    r0 = [self _identifier:0x0];
    return r0;
}

+(void *)obfuscatedIdentifier {
    r0 = [self _identifier:0x1];
    return r0;
}

+(void *)unobfuscatedMoPubIdentifier {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self mopubIdentifier:0x0];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 hasPrefix:@"mopub:"] != 0x0) {
            r20 = [[r19 substringFromIndex:[@"mopub:" length]] retain];
            [r19 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)_identifier:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if ([MPIdentityProvider advertisingTrackingEnabled] != 0x0) {
            r0 = [MPConsentManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 canCollectPersonalInfo];
            [r0 release];
            if ((r22 & 0x1) != 0x0) {
                    r8 = &@selector(identifierFromASIdentifierManager:);
            }
            else {
                    r8 = &@selector(mopubIdentifier:);
            }
    }
    else {
            r8 = &@selector(mopubIdentifier:);
    }
    r0 = objc_msgSend(r20, *r8);
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(bool)advertisingTrackingEnabled {
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)identifierFromASIdentifierManager:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ((arg2 & 0x1) != 0x0) {
            r19 = @"ifa:XXXX";
    }
    else {
            if ([MPIdentityProvider advertisingTrackingEnabled] != 0x0) {
                    r0 = [ASIdentifierManager sharedManager];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 advertisingIdentifier];
                    r0 = [r0 retain];
                    r21 = [[r0 UUIDString] retain];
                    [r0 release];
                    [r19 release];
                    r20 = [[r21 uppercaseString] retain];
                    r19 = [[NSString stringWithFormat:r2] retain];
                    [r20 release];
                    [r21 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void)setFrequencyCappingIdUsageEnabled:(bool)arg2 {
    *(int8_t *)0x1011bf230 = arg2;
    return;
}

+(bool)frequencyCappingIdUsageEnabled {
    return *(int8_t *)0x1011bf230;
}

+(void *)mopubIdentifier:(bool)arg2 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (([self frequencyCappingIdUsageEnabled] & 0x1) == 0x0) goto loc_1004e576c;

loc_1004e575c:
    if ((r19 & 0x1) == 0x0) goto loc_1004e57a4;

loc_1004e5760:
    r22 = @"mopub:XXXX";
    goto loc_1004e5a5c;

loc_1004e5a5c:
    r0 = [r22 autorelease];
    return r0;

loc_1004e57a4:
    r19 = [[NSDate date] retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    if (r21 == 0x0) goto loc_1004e58c4;

loc_1004e5818:
    r0 = [MPIdentityProvider iso8601Calendar];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isDate:r19 inSameDayAsDate:r21];
    [r0 release];
    if ((r24 & 0x1) != 0x0) goto loc_1004e5928;

loc_1004e585c:
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r19 forKey:@"com.mopub.identifiertime"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 removeObjectForKey:r2];
    goto loc_1004e5920;

loc_1004e5920:
    [r23 release];
    goto loc_1004e5928;

loc_1004e5928:
    r22 = @selector(objectForKey:);
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r23 = r0;
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) {
            r22 = **_kCFAllocatorDefault;
            r24 = CFUUIDCreate(r22);
            CFUUIDCreateString(r22, r24);
            CFRelease(r24);
            r24 = [[r23 uppercaseString] retain];
            r22 = [[@"mopub:" stringByAppendingString:r24] retain];
            [r24 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 setObject:r22 forKey:@"com.mopub.identifier"];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 synchronize];
            [r20 release];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    goto loc_1004e5a5c;

loc_1004e58c4:
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r19 forKey:@"com.mopub.identifiertime"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 synchronize];
    goto loc_1004e5920;

loc_1004e576c:
    r22 = [[NSString stringWithFormat:@"ifa:%@"] retain];
    goto loc_1004e5a5c;
}

@end
@implementation GADMAdapterAdColonyHelper

+(void *)getAppOptionsFromExtras:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [AdColonyAppOptions new];
    r21 = [AdColonyUserMetadata new];
    [r20 setUserMetadata:r21];
    [r21 release];
    if (r19 != 0x0) {
            [GADMAdapterAdColonyExtras class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 userId];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r20 setUserID:r21];
                    [r21 release];
                    [r20 setTestMode:[r19 testMode]];
                    if ([r19 gdprRequired] != 0x0) {
                            [r20 setGdprRequired:[r19 gdprRequired]];
                            r0 = [r19 gdprConsentString];
                            r29 = r29;
                            r21 = [r0 retain];
                            [r20 setGdprConsentString:r21];
                            [r21 release];
                    }
            }
    }
    [r20 setMediationNetwork:*0x100e76800];
    r21 = [[GADMAdapterAdColony adapterVersion] retain];
    [r20 setMediationNetworkVersion:r21];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAppOptionsFromAdConfig:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 extras];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r21 getAppOptionsFromExtras:r20];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 == 0x0) {
                    r21 = [AdColonyAppOptions new];
                    r22 = [AdColonyUserMetadata new];
                    [r21 setUserMetadata:r22];
                    [r22 release];
            }
    }
    else {
            r21 = [AdColonyAppOptions new];
            r22 = [AdColonyUserMetadata new];
            [r21 setUserMetadata:r22];
            [r22 release];
    }
    if (([r19 hasUserLocation] & 0x1) != 0x0) {
            r22 = @class(NSNumber);
            [r19 userLatitude];
            r22 = [[r22 numberWithDouble:r2] retain];
            r0 = [r21 userMetadata];
            r0 = [r0 retain];
            r2 = r22;
            [r0 setUserLatitude:r2];
            [r0 release];
            [r22 release];
            r22 = @class(NSNumber);
            [r19 userLongitude];
            r22 = [[r22 numberWithDouble:r2] retain];
            r0 = [r21 userMetadata];
            r0 = [r0 retain];
            [r0 setUserLongitude:r22];
            [r0 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

+(void *)getAdOptionsFromExtras:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [AdColonyAdOptions new];
    r21 = [AdColonyUserMetadata new];
    [r20 setUserMetadata:r21];
    [r21 release];
    if (r19 != 0x0) {
            [GADMAdapterAdColonyExtras class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    [r20 setShowPrePopup:[r19 showPrePopup]];
                    [r20 setShowPostPopup:[r19 showPostPopup]];
            }
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAppOptionsFromConnector:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 networkExtras];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r22 getAppOptionsFromExtras:r20];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 == 0x0) {
                    r21 = [AdColonyAppOptions new];
                    r23 = [AdColonyUserMetadata new];
                    [r21 setUserMetadata:r23];
                    [r23 release];
            }
    }
    else {
            r21 = [AdColonyAppOptions new];
            r23 = [AdColonyUserMetadata new];
            [r21 setUserMetadata:r23];
            [r23 release];
    }
    if ([r19 userHasLocation] != 0x0) {
            r23 = @class(NSNumber);
            [r19 userLatitude];
            r23 = [[r23 numberWithDouble:r2] retain];
            r0 = [r21 userMetadata];
            r0 = [r0 retain];
            r2 = r23;
            [r0 setUserLatitude:r2];
            [r0 release];
            [r23 release];
            r23 = @class(NSNumber);
            [r19 userLongitude];
            r23 = [[r23 numberWithDouble:r2] retain];
            r0 = [r21 userMetadata];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setUserLongitude:r23];
            [r0 release];
            [r23 release];
    }
    r0 = [r19 userGender];
    if (r0 == 0x2) goto loc_1008ec39c;

loc_1008ec370:
    if (r0 != 0x1) goto loc_1008ec3dc;

loc_1008ec378:
    r23 = *0x100e76a80;
    r0 = [r21 userMetadata];
    r29 = r29;
    goto loc_1008ec3bc;

loc_1008ec3bc:
    r0 = [r0 retain];
    [r0 setUserGender:r23];
    [r0 release];
    goto loc_1008ec3dc;

loc_1008ec3dc:
    r0 = [r19 userBirthday];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r22 = [r22 getNumberOfYearsSinceDate:r23];
            r0 = [r21 userMetadata];
            r0 = [r0 retain];
            [r0 setUserAge:r22];
            [r0 release];
    }
    [r23 release];
    [r20 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;

loc_1008ec39c:
    r23 = *0x100e76a88;
    r0 = [r21 userMetadata];
    r29 = r29;
    goto loc_1008ec3bc;
}

+(void *)getAdOptionsFromConnector:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 networkExtras];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0 && [r19 conformsToProtocol:@protocol(GADMRewardBasedVideoAdNetworkConnector)] != 0x0) {
            r21 = [[r21 getAdOptionsFromExtras:r20] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getAdOptionsFromAdConfig:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 extras];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[r20 getAdOptionsFromExtras:r19] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(long long)getNumberOfYearsSinceDate:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[NSCalendar alloc] initWithCalendarIdentifier:**_NSCalendarIdentifierGregorian];
    r20 = [[NSDate date] retain];
    r22 = [[r19 components:0x4 fromDate:r21 toDate:r20 options:0x0] retain];
    [r21 release];
    [r20 release];
    r20 = [r22 year];
    [r22 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)parseZoneIDs:(void *)arg2 {
    r31 = r31 - 0x150;
    var_50 = r28;
    stack[-88] = r27;
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
    r0 = [arg2 componentsSeparatedByString:@";"];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r29 = &saved_fp;
    var_128 = [r0 retain];
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_130 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r26 = @selector(isEqualToString:);
                            r28 = *(0x0 + r20 * 0x8);
                            r21 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
                            r0 = [r28 stringByTrimmingCharactersInSet:r21];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r21 release];
                            if ((objc_msgSend(r28, r26) & 0x1) == 0x0) {
                                    [var_128 addObject:r2];
                            }
                            [r28 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r22 = objc_msgSend(var_120, var_130);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_128 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)setupZoneFromCredentials:(void *)arg2 options:(void *)arg3 callback:(void *)arg4 {
    r31 = r31 - 0xa0;
    var_50 = r28;
    stack[-88] = r27;
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
    var_58 = **___stack_chk_guard;
    r24 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [arg4 retain];
    r19 = [[arg2 objectForKeyedSubscript:*0x100ea0af8] retain];
    r21 = [[arg2 objectForKeyedSubscript:*0x100ea0b00] retain];
    [r24 release];
    r0 = [self parseZoneIDs:r21];
    r0 = [r0 retain];
    r22 = r0;
    r24 = [[r0 firstObject] retain];
    r25 = [[GADMAdapterAdColonyInitializer sharedInstance] retain];
    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
    r26 = [r0 retain];
    var_70 = r23;
    r23 = [r23 retain];
    var_68 = r24;
    r24 = [r24 retain];
    [r25 initializeAdColonyWithAppId:r19 zones:r26 options:r20 callback:&var_90];
    [r20 release];
    [r26 release];
    [r25 release];
    [var_68 release];
    [var_70 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)setupZoneFromConnector:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[r21 credentials] retain];
    r23 = [[r21 networkExtras] retain];
    [r21 release];
    r21 = [[self getAppOptionsFromExtras:r23] retain];
    [r23 release];
    [self setupZoneFromCredentials:r22 options:r21 callback:r20];
    [r20 release];
    [r21 release];
    [r22 release];
    return;
}

+(void *)getDictionaryFromJsonString:(void *)arg2 {
    r19 = [[arg2 dataUsingEncoding:0x4] retain];
    r20 = [[NSJSONSerialization JSONObjectWithData:r19 options:0x1 error:0x0] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setupZoneFromAdConfig:(void *)arg2 callback:(void *)arg3 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg2 credentials];
    r0 = [r0 retain];
    r24 = [[r0 settings] retain];
    [r0 release];
    r21 = [[arg2 extras] retain];
    [r22 release];
    r22 = [[self getAppOptionsFromExtras:r21] retain];
    [r21 release];
    [self setupZoneFromCredentials:r24 options:r22 callback:r20];
    [r20 release];
    [r22 release];
    [r24 release];
    return;
}

+(void *)getJsonStringFromDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSJSONSerialization dataWithJSONObject:arg2 options:0x1 error:&var_28];
    r19 = [r0 retain];
    r20 = [var_28 retain];
    r21 = 0x0;
    if (r20 == 0x0) {
            r21 = [[NSString alloc] initWithData:r19 encoding:0x4];
    }
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

@end
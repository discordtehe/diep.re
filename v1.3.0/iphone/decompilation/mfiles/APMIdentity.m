@implementation APMIdentity

+(void *)sharedInstance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011d1f18 != -0x1) {
            dispatch_once(0x1011d1f18, 0x100e6d678);
    }
    if (*0x1011d1f20 == 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x4e23 message:@"Identity's shared instance is nil"];
            [r0 release];
    }
    r0 = *0x1011d1f20;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(long long)appMeasurementLibraryVersion {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [@"50700000" length];
    if (r0 >= 0x4) {
            r0 = [@"50700000" substringToIndex:r0 - 0x3];
            r0 = [r0 retain];
            r20 = [r0 longLongValue];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)limitedAdTracking {
    [self updateIdentifiers];
    r0 = *(int8_t *)(int64_t *)&self->_limitedAdTracking;
    return r0;
}

-(bool)hasLimitedAdTracking {
    [self updateIdentifiers];
    r0 = [APMASIdentifierManager sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 hasLimitedAdTracking];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)appInstanceID {
    [self updateIdentifiers];
    r0 = self->_appInstanceID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)resettableDeviceID {
    [self updateIdentifiers];
    r0 = self->_resettableDeviceID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)appIDFromGMP {
    r0 = self->_appIDFromGMP;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)hashedIDFA {
    [self updateIdentifiers];
    r0 = self->_hashedIDFA;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)appIDFromAdMob {
    r0 = self->_appIDFromAdMob;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setAppIDFromGMP:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r19 retain];
            var_18 = r0;
            if (*qword_1011d1f28 != -0x1) {
                    dispatch_once(0x1011d1f28, &var_40);
                    r0 = var_18;
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x4e25 message:@"Cannot set empty Google App ID"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)initWithPersistedConfig:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_1001534f8;

loc_100152f7c:
    r0 = [APMInfoPlistFileUtil dictionaryFromGoogleServiceInfoPlist];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r21 objectForKeyedSubscript:*0x100e6cf18];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_appIDFromGMP));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r21 objectForKeyedSubscript:*0x100e6cf20];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_appIDFromAdMob));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    if (NSClassFromString(@"FIRAnalytics") == 0x0 || [r20->_appIDFromGMP length] != 0x0) goto loc_100153054;

loc_100153274:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x4e26 message:@"Google App ID from GoogleService-Info.plist is empty. Please, define GOOGLE_APP_ID in GoogleService-Info.plist for Analytics to work reliably. See https://goo.gl/txkZbE"];
    [r0 release];
    if (r19 != 0x0) goto loc_100153058;

loc_1001532bc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x4e24 message:@"Unable to create measurement identity, missing a valid persisted config instance"];
    [r0 release];
    [r21 release];
    r21 = 0x0;
    goto loc_100153504;

loc_100153504:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100153058:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    var_70 = r20 + r8;
    objc_storeStrong(r20 + r8, r22);
    r26 = (int64_t *)&r20->_isIDFVCollectionEnabledNumber;
    r0 = *r26;
    *r26 = 0x0;
    [r0 release];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 infoDictionary];
    r29 = r29;
    r27 = [r0 retain];
    [r22 release];
    var_68 = r27;
    if (objc_msgSend(r27, r24) != 0x0) {
            r0 = [var_68 objectForKeyedSubscript:*0x100e6cf10];
            r27 = r0;
            r29 = r29;
            r28 = [r0 retain];
            [NSNumber class];
            if ([r28 isKindOfClass:r2] != 0x0) {
                    objc_storeStrong(r26, r27);
            }
            [r28 release];
    }
    r24 = @selector(count);
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 bundleIdentifier];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appID));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r22 release];
    r0 = [r25 objectForInfoDictionaryKey:*0x100e6cf58];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appVersion));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r27 = [[r25 objectForInfoDictionaryKey:**_kCFBundleVersionKey] retain];
    r0 = [APMIdentity numericFieldsFromAppVersionNumeric:r27];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (objc_msgSend(r0, r24) != 0x0) {
            r0 = [r28 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r22 = [r0 retain];
            r23 = 0x1;
    }
    else {
            r23 = 0x0;
            r22 = 0x0;
    }
    objc_storeStrong((int64_t *)&r20->_appVersionMajor, r22);
    if (r23 != 0x0) {
            [r22 release];
    }
    if ([r28 count] >= 0x2) {
            r23 = 0x1;
            r0 = [r28 objectAtIndexedSubscript:0x1];
            r29 = r29;
            r22 = [r0 retain];
    }
    else {
            r23 = 0x0;
            r22 = 0x0;
    }
    objc_storeStrong((int64_t *)&r20->_appVersionMinor, r22);
    if (r23 != 0x0) {
            [r22 release];
    }
    if ([r28 count] >= 0x3) {
            r0 = [r28 objectAtIndexedSubscript:0x2];
            r29 = r29;
            r24 = [r0 retain];
            r22 = 0x1;
    }
    else {
            r22 = 0x0;
            r24 = 0x0;
    }
    r23 = var_70;
    objc_storeStrong((int64_t *)&r20->_appVersionRelease, r24);
    if (r22 != 0x0) {
            [r24 release];
    }
    r0 = *r23;
    r0 = [r0 hashedIDFA];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_hashedIDFA));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = *r23;
    r0 = [r0 appInstanceID];
    r29 = r29;
    r0 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_appInstanceID));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    if (*(r20 + r22) == 0x0) {
            r0 = [r20 randomAppInstanceID];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            [*r23 setAppInstanceID:*(r20 + r22)];
    }
    [[[APMASIdentifierManager sharedInstance] retain] release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [var_68 release];
    [r21 release];
    goto loc_1001534f8;

loc_1001534f8:
    r21 = [r20 retain];
    goto loc_100153504;

loc_100153054:
    if (r19 == 0x0) goto loc_1001532bc;
}

-(void)setAppIDFromAdMob:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r19 retain];
            var_18 = r0;
            if (*qword_1011d1f30 != -0x1) {
                    dispatch_once(0x1011d1f30, &var_40);
                    r0 = var_18;
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x4e27 message:@"Cannot set empty AdMob App ID"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(bool)isFromAppStore {
    r0 = [APMAEU isFAS];
    return r0;
}

-(void *)identifierForVendor {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self resettableDeviceID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 length];
    [r0 release];
    if (r21 != 0x0) {
            r19 = 0x0;
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_isIDFVCollectionEnabledNumber));
            r0 = *(r19 + r22);
            if (r0 != 0x0) {
                    if ([r0 boolValue] != 0x0) {
                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_identifierForVendorString));
                            r0 = *(r19 + r21);
                            if (r0 != 0x0) {
                                    r19 = [r0 retain];
                            }
                            else {
                                    r0 = objc_retainBlock(&var_48);
                                    r20 = r0;
                                    if ([NSThread isMainThread] != 0x0) {
                                            (*(r20 + 0x10))(r20);
                                    }
                                    else {
                                            dispatch_sync(*__dispatch_main_q, r20);
                                    }
                                    r19 = [*(r19 + r21) retain];
                                    [r20 release];
                            }
                    }
                    else {
                            r19 = 0x0;
                    }
            }
            else {
                    r0 = [APMMeasurement remoteConfig];
                    r0 = [r0 retain];
                    r21 = [r0 isIdentifierForVendorCollectionEnabled];
                    [r0 release];
                    if (r21 != 0x0) {
                            r0 = *(r19 + r22);
                            if (r0 == 0x0) {
                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_identifierForVendorString));
                                    r0 = *(r19 + r21);
                                    if (r0 != 0x0) {
                                            r19 = [r0 retain];
                                    }
                                    else {
                                            r0 = objc_retainBlock(&var_48);
                                            r20 = r0;
                                            if ([NSThread isMainThread] != 0x0) {
                                                    (*(r20 + 0x10))(r20);
                                            }
                                            else {
                                                    dispatch_sync(*__dispatch_main_q, r20);
                                            }
                                            r19 = [*(r19 + r21) retain];
                                            [r20 release];
                                    }
                            }
                            else {
                                    if ([r0 boolValue] != 0x0) {
                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_identifierForVendorString));
                                            r0 = *(r19 + r21);
                                            if (r0 != 0x0) {
                                                    r19 = [r0 retain];
                                            }
                                            else {
                                                    r0 = objc_retainBlock(&var_48);
                                                    r20 = r0;
                                                    if ([NSThread isMainThread] != 0x0) {
                                                            (*(r20 + 0x10))(r20);
                                                    }
                                                    else {
                                                            dispatch_sync(*__dispatch_main_q, r20);
                                                    }
                                                    r19 = [*(r19 + r21) retain];
                                                    [r20 release];
                                            }
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                            }
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)randomAppInstanceID {
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 UUIDString];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingOccurrencesOfString:@"-" withString:@""] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)firebaseInstanceID {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = NSClassFromString(@"FIRInstanceID");
    r19 = r0;
    if (r19 == 0x0) {
            r0 = [r0 respondsToSelector:r2];
            r20 = 0x0;
            if ((r0 & 0x1) == 0x0) {
                    r0 = [r19 instanceID];
                    r29 = r29;
                    r19 = [r0 retain];
                    if (r19 != 0x0 && [r19 respondsToSelector:@selector(appInstanceID:)] != 0x0) {
                            r0 = [r19 appInstanceID:&var_28];
                            r29 = r29;
                            r20 = [r0 retain];
                            r21 = [var_28 retain];
                            if (r20 == 0x0) {
                                    asm { ccmp       x21, #0x0, #0x4, eq };
                            }
                            if (!CPU_FLAGS & E) {
                                    r0 = [APMMeasurement monitor];
                                    r0 = [r0 retain];
                                    [r0 logWithLevel:0x4 messageCode:0x4e21 message:@"Failed to get InstanceID" context:r21];
                                    [r0 release];
                            }
                            [r21 release];
                    }
                    else {
                            r20 = 0x0;
                    }
                    [r19 release];
            }
    }
    else {
            r0 = [r19 instanceID];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0 && [r19 respondsToSelector:@selector(appInstanceID:)] != 0x0) {
                    r0 = [r19 appInstanceID:&var_28];
                    r29 = r29;
                    r20 = [r0 retain];
                    r21 = [var_28 retain];
                    if (r20 == 0x0) {
                            asm { ccmp       x21, #0x0, #0x4, eq };
                    }
                    if (!CPU_FLAGS & E) {
                            r0 = [APMMeasurement monitor];
                            r0 = [r0 retain];
                            [r0 logWithLevel:0x4 messageCode:0x4e21 message:@"Failed to get InstanceID" context:r21];
                            [r0 release];
                    }
                    [r21 release];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void)notCalled {
    sub_100199d2c();
    return;
}

-(void *)appInstanceID:(void * *)arg2 {
    return 0x0;
}

+(void *)instanceID {
    return 0x0;
}

+(void *)numericFieldsFromAppVersionNumeric:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r19 = [[arg2 componentsSeparatedByString:@"."] retain];
    var_138 = [[NSMutableArray alloc] init];
    r0 = [NSCharacterSet decimalDigitCharacterSet];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 invertedSet];
    r29 = &saved_fp;
    var_140 = [r0 retain];
    [r20 release];
    var_108 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r0;
    var_160 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            r28 = *var_108;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_108 != r28) {
                                    objc_enumerationMutation(var_148);
                            }
                            r0 = *(var_110 + r22 * 0x8);
                            r0 = [r0 retain];
                            r20 = r0;
                            if ([r0 length] != 0x0) {
                                    r0 = [r20 componentsSeparatedByCharactersInSet:var_140];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r21 = r0;
                                    if ([r0 count] != 0x1) {
                                            r0 = [APMMeasurement monitor];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 logWithLevel:r2 messageCode:r3 message:r4];
                                            [r27 release];
                                    }
                                    r27 = [[r21 componentsJoinedByString:@""] retain];
                                    [r20 release];
                                    r0 = [NSNumber numberWithInt:[r27 intValue]];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [var_138 addObject:r20];
                                    [r20 release];
                                    [r21 release];
                                    r20 = r27;
                            }
                            [r20 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(var_148, var_160);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_148 release];
    [var_140 release];
    [var_148 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_138 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)updateIdentifiers {
    r31 = r31 - 0xa0;
    var_60 = d9;
    stack[-104] = d8;
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
    r19 = self;
    r20 = (int64_t *)&r19->_lastAppInstanceIDUpdateTimestamp;
    [*r20 timeIntervalSinceNow];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    r0 = *(r19 + r23);
    r0 = [r0 appInstanceID];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            if (CPU_FLAGS & E) {
                    r24 = 0x1;
            }
    }
    if (r21 != 0x0) {
            if (d8 < *0x100ba2070) {
                    asm { ccmp       x8, #0x0, #0x4, ls };
            }
            if (!CPU_FLAGS & E) {
                    r0 = [APMMeasurement remoteConfig];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 adIDCacheTime];
                    [r0 release];
                    if (d8 <= -d8) {
                            var_70 = r23;
                            r27 = [[*(r19 + r23) hashedIDFA] retain];
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_resettableDeviceID));
                            var_88 = r8;
                            r28 = [*(r19 + r8) retain];
                            var_78 = r20;
                            r26 = [*r20 retain];
                            r0 = @class(APMASIdentifierManager);
                            r0 = [r0 sharedInstance];
                            r0 = [r0 retain];
                            var_7C = [r0 limitedAdTracking];
                            [r0 release];
                            r0 = @class(APMASIdentifierManager);
                            r0 = [r0 sharedInstance];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 advertisingIdentifierString];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r22 release];
                            if ([r23 length] != 0x0 && ([r23 isEqual:r2] & 0x1) == 0x0) {
                                    r25 = @selector(isEqual:);
                                    r20 = [r23 retain];
                                    [r28 release];
                                    var_68 = r20;
                                    r0 = [r20 apm_MD5String];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    if ((objc_msgSend(r27, r25) & 0x1) != 0x0) {
                                            r25 = r27;
                                    }
                                    else {
                                            if (r27 != 0x0) {
                                                    r0 = [r19 randomAppInstanceID];
                                                    r29 = r29;
                                                    r24 = [r0 retain];
                                                    [r21 release];
                                                    r21 = r24;
                                            }
                                            r25 = [r22 retain];
                                            [r27 release];
                                            r24 = 0x1;
                                    }
                                    [r22 release];
                            }
                            else {
                                    r25 = r27;
                                    var_68 = r28;
                            }
                            r0 = [NSDate date];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = [r0 copy];
                            [r26 release];
                            [r0 release];
                            r0 = [r19 retain];
                            r26 = r0;
                            objc_sync_enter(r0);
                            if (r24 != 0x0) {
                                    if (r21 != 0x0) {
                                            r20 = 0x0;
                                            r24 = r21;
                                    }
                                    else {
                                            r24 = [[r26 randomAppInstanceID] retain];
                                            r21 = 0x0;
                                            r20 = 0x1;
                                    }
                                    r22 = [r24 retain];
                                    [r21 release];
                                    if (r20 != 0x0) {
                                            [r24 release];
                                    }
                                    r28 = @selector(copy);
                                    [*(r19 + var_70) setAppInstanceID:r22];
                                    r24 = var_68;
                                    r0 = objc_msgSend(r22, r28);
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appInstanceID));
                                    r8 = *(r26 + r9);
                                    *(r26 + r9) = r0;
                                    [r8 release];
                                    [*(r19 + var_70) setHashedIDFA:r25];
                                    r0 = objc_msgSend(r25, r28);
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_hashedIDFA));
                                    r8 = *(r26 + r9);
                                    *(r26 + r9) = r0;
                                    [r8 release];
                                    r21 = r22;
                                    r22 = var_7C;
                            }
                            else {
                                    r22 = var_7C;
                                    r24 = var_68;
                            }
                            objc_storeStrong(var_78, r27);
                            *(int8_t *)(r19 + r20) = r22;
                            r0 = objc_msgSend(r24, r28);
                            r8 = *(r19 + var_88);
                            *(r19 + var_88) = r0;
                            [r8 release];
                            objc_sync_exit(r26);
                            [r26 release];
                            [r23 release];
                            [r27 release];
                            [r24 release];
                            [r25 release];
                    }
            }
            else {
                    var_70 = r23;
                    r27 = [[*(r19 + r23) hashedIDFA] retain];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_resettableDeviceID));
                    var_88 = r8;
                    r28 = [*(r19 + r8) retain];
                    var_78 = r20;
                    r26 = [*r20 retain];
                    r0 = @class(APMASIdentifierManager);
                    r0 = [r0 sharedInstance];
                    r0 = [r0 retain];
                    var_7C = [r0 limitedAdTracking];
                    [r0 release];
                    r0 = @class(APMASIdentifierManager);
                    r0 = [r0 sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 advertisingIdentifierString];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 release];
                    if ([r23 length] != 0x0 && ([r23 isEqual:r2] & 0x1) == 0x0) {
                            r25 = @selector(isEqual:);
                            r20 = [r23 retain];
                            [r28 release];
                            var_68 = r20;
                            r0 = [r20 apm_MD5String];
                            r29 = r29;
                            r22 = [r0 retain];
                            if ((objc_msgSend(r27, r25) & 0x1) != 0x0) {
                                    r25 = r27;
                            }
                            else {
                                    if (r27 != 0x0) {
                                            r0 = [r19 randomAppInstanceID];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [r21 release];
                                            r21 = r24;
                                    }
                                    r25 = [r22 retain];
                                    [r27 release];
                                    r24 = 0x1;
                            }
                            [r22 release];
                    }
                    else {
                            r25 = r27;
                            var_68 = r28;
                    }
                    r0 = [NSDate date];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 copy];
                    [r26 release];
                    [r0 release];
                    r0 = [r19 retain];
                    r26 = r0;
                    objc_sync_enter(r0);
                    if (r24 != 0x0) {
                            if (r21 != 0x0) {
                                    r20 = 0x0;
                                    r24 = r21;
                            }
                            else {
                                    r24 = [[r26 randomAppInstanceID] retain];
                                    r21 = 0x0;
                                    r20 = 0x1;
                            }
                            r22 = [r24 retain];
                            [r21 release];
                            if (r20 != 0x0) {
                                    [r24 release];
                            }
                            r28 = @selector(copy);
                            [*(r19 + var_70) setAppInstanceID:r22];
                            r24 = var_68;
                            r0 = objc_msgSend(r22, r28);
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_appInstanceID));
                            r8 = *(r26 + r9);
                            *(r26 + r9) = r0;
                            [r8 release];
                            [*(r19 + var_70) setHashedIDFA:r25];
                            r0 = objc_msgSend(r25, r28);
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_hashedIDFA));
                            r8 = *(r26 + r9);
                            *(r26 + r9) = r0;
                            [r8 release];
                            r21 = r22;
                            r22 = var_7C;
                    }
                    else {
                            r22 = var_7C;
                            r24 = var_68;
                    }
                    objc_storeStrong(var_78, r27);
                    *(int8_t *)(r19 + r20) = r22;
                    r0 = objc_msgSend(r24, r28);
                    r8 = *(r19 + var_88);
                    *(r19 + var_88) = r0;
                    [r8 release];
                    objc_sync_exit(r26);
                    [r26 release];
                    [r23 release];
                    [r27 release];
                    [r24 release];
                    [r25 release];
            }
    }
    else {
            var_70 = r23;
            r27 = [[*(r19 + r23) hashedIDFA] retain];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_resettableDeviceID));
            var_88 = r8;
            r28 = [*(r19 + r8) retain];
            var_78 = r20;
            r26 = [*r20 retain];
            r0 = @class(APMASIdentifierManager);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            var_7C = [r0 limitedAdTracking];
            [r0 release];
            r0 = @class(APMASIdentifierManager);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 advertisingIdentifierString];
            r29 = r29;
            r23 = [r0 retain];
            [r22 release];
            if ([r23 length] != 0x0 && ([r23 isEqual:r2] & 0x1) == 0x0) {
                    r25 = @selector(isEqual:);
                    r20 = [r23 retain];
                    [r28 release];
                    var_68 = r20;
                    r0 = [r20 apm_MD5String];
                    r29 = r29;
                    r22 = [r0 retain];
                    if ((objc_msgSend(r27, r25) & 0x1) != 0x0) {
                            r25 = r27;
                    }
                    else {
                            if (r27 != 0x0) {
                                    r0 = [r19 randomAppInstanceID];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r21 release];
                                    r21 = r24;
                            }
                            r25 = [r22 retain];
                            [r27 release];
                            r24 = 0x1;
                    }
                    [r22 release];
            }
            else {
                    r25 = r27;
                    var_68 = r28;
            }
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 copy];
            [r26 release];
            [r0 release];
            r0 = [r19 retain];
            r26 = r0;
            objc_sync_enter(r0);
            if (r24 != 0x0) {
                    if (r21 != 0x0) {
                            r20 = 0x0;
                            r24 = r21;
                    }
                    else {
                            r24 = [[r26 randomAppInstanceID] retain];
                            r21 = 0x0;
                            r20 = 0x1;
                    }
                    r22 = [r24 retain];
                    [r21 release];
                    if (r20 != 0x0) {
                            [r24 release];
                    }
                    r28 = @selector(copy);
                    [*(r19 + var_70) setAppInstanceID:r22];
                    r24 = var_68;
                    r0 = objc_msgSend(r22, r28);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appInstanceID));
                    r8 = *(r26 + r9);
                    *(r26 + r9) = r0;
                    [r8 release];
                    [*(r19 + var_70) setHashedIDFA:r25];
                    r0 = objc_msgSend(r25, r28);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_hashedIDFA));
                    r8 = *(r26 + r9);
                    *(r26 + r9) = r0;
                    [r8 release];
                    r21 = r22;
                    r22 = var_7C;
            }
            else {
                    r22 = var_7C;
                    r24 = var_68;
            }
            objc_storeStrong(var_78, r27);
            *(int8_t *)(r19 + r20) = r22;
            r0 = objc_msgSend(r24, r28);
            r8 = *(r19 + var_88);
            *(r19 + var_88) = r0;
            [r8 release];
            objc_sync_exit(r26);
            [r26 release];
            [r23 release];
            [r27 release];
            [r24 release];
            [r25 release];
    }
    [r21 release];
    return;
}

-(void *)appID {
    r0 = self->_appID;
    return r0;
}

-(void *)appVersion {
    r0 = self->_appVersion;
    return r0;
}

-(void *)appVersionMajor {
    r0 = self->_appVersionMajor;
    return r0;
}

-(void *)appVersionMinor {
    r0 = self->_appVersionMinor;
    return r0;
}

-(void *)appVersionRelease {
    r0 = self->_appVersionRelease;
    return r0;
}

-(long long)devCertHash {
    r0 = self->_devCertHash;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_appVersionRelease, 0x0);
    objc_storeStrong((int64_t *)&self->_appVersionMinor, 0x0);
    objc_storeStrong((int64_t *)&self->_appVersionMajor, 0x0);
    objc_storeStrong((int64_t *)&self->_appVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_appID, 0x0);
    objc_storeStrong((int64_t *)&self->_isIDFVCollectionEnabledNumber, 0x0);
    objc_storeStrong((int64_t *)&self->_appIDFromAdMob, 0x0);
    objc_storeStrong((int64_t *)&self->_appIDFromGMP, 0x0);
    objc_storeStrong((int64_t *)&self->_persistedConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_identifierForVendorString, 0x0);
    objc_storeStrong((int64_t *)&self->_appInstanceID, 0x0);
    objc_storeStrong((int64_t *)&self->_resettableDeviceID, 0x0);
    objc_storeStrong((int64_t *)&self->_hashedIDFA, 0x0);
    objc_storeStrong((int64_t *)&self->_lastAppInstanceIDUpdateTimestamp, 0x0);
    return;
}

@end
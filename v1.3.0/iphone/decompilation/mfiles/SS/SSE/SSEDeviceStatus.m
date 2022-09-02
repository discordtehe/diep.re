@implementation SSEDeviceStatus

-(void *)vendorId {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 identifierForVendor];
    r0 = [r0 retain];
    r21 = [[r0 UUIDString] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)advertiserId {
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 advertisingIdentifier];
    r0 = [r0 retain];
    r21 = [[r0 UUIDString] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            [[[SSEReachabilityManager sharedManager] retain] release];
            r0 = [CTTelephonyNetworkInfo alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(networkInfo));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 setIsUuidEnabled:0x1];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)language {
    r0 = [NSLocale preferredLanguages];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r21 = [[r0 uppercaseString] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)customUUID {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"isUuidStringDisabled"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 boolValue];
    [r0 release];
    [self setIsUuidEnabled:r23 ^ 0x1];
    if ([self isUuidEnabled] != 0x0) {
            r0 = [r19 objectForKey:@"uuidStringFromStore"];
            r0 = [r0 retain];
            r20 = r0;
            if (r20 == 0x0) {
                    r20 = CFUUIDCreate(r0);
                    CFUUIDCreateString(0x0, r20);
                    CFRelease(r20);
                    r20 = [r21 retain];
                    [r19 setObject:r2 forKey:r3];
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isAdvertisingTrackingEnabled {
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)diskFreeSizeInMegaBytes {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1) retain];
    r22 = [[NSFileManager defaultManager] retain];
    r23 = [[r19 lastObject] retain];
    r0 = [r22 attributesOfFileSystemForPath:r23 error:&var_38];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [var_38 retain];
    [r23 release];
    [r22 release];
    if (r21 != 0x0) {
            r0 = [r21 objectForKey:**_NSFileSystemFreeSize];
            r0 = [r0 retain];
            r23 = [r0 unsignedLongLongValue];
            [r0 release];
            r22 = r23 >> 0x14;
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)carrier {
    r0 = [CTTelephonyNetworkInfo alloc];
    r0 = [r0 init];
    r19 = r0;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r21 = [[r0 carrierName] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(long long)localTime {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzs     x20, d0 };
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)timezoneOffset {
    r0 = [NSTimeZone systemTimeZone];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 secondsFromGMT];
    r8 = 0x8888888888888889;
    asm { smulh      x8, x0, x8 };
    [r19 release];
    r0 = (SAR(r8 + r0, 0x5)) + (r8 + r0) / 0xffffffff80000000;
    return r0;
}

-(bool)jailBroken {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 fileExistsAtPath:r2];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 fileExistsAtPath:r2];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r0 fileExistsAtPath:r2];
                    [r0 release];
                    if ((r22 & 0x1) == 0x0) {
                            r0 = [NSFileManager defaultManager];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 fileExistsAtPath:r2];
                            [r0 release];
                            if ((r22 & 0x1) != 0x0) {
                                    r0 = 0x1;
                            }
                            else {
                                    r0 = [NSFileManager defaultManager];
                                    r0 = [r0 retain];
                                    r20 = [r0 fileExistsAtPath:r2];
                                    [r0 release];
                                    r0 = r20;
                            }
                    }
                    else {
                            r0 = 0x1;
                    }
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void *)systemVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 systemVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)batteryLevel {
    r19 = [NSNumber alloc];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 batteryLevel];
    r19 = [r19 initWithFloat:r2];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)volume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    [r0 outputVolume];
    r19 = [[NSNumber numberWithFloat:r2] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)mobileCountryCode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = @"0";
    [r20 retain];
    r0 = self->networkInfo;
    r0 = [r0 subscriberCellularProvider];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[r19 mobileCountryCode] retain];
            if (r21 != 0x0) {
                    r20 = [r21 retain];
                    [@"0" release];
            }
            else {
                    r20 = @"0";
            }
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)mobileNetworkCode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = @"0";
    [r20 retain];
    r0 = self->networkInfo;
    r0 = [r0 subscriberCellularProvider];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[r19 mobileNetworkCode] retain];
            if (r21 != 0x0) {
                    r20 = [r21 retain];
                    [@"0" release];
            }
            else {
                    r20 = @"0";
            }
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)isoCountryCode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = @"0";
    [r20 retain];
    r0 = self->networkInfo;
    r0 = [r0 subscriberCellularProvider];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[r19 isoCountryCode] retain];
            if (r21 != 0x0) {
                    r20 = [r21 retain];
                    [@"0" release];
            }
            else {
                    r20 = @"0";
            }
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)description {
    r31 = r31 - 0xc0;
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
    r22 = self;
    r19 = [[self advertiserId] retain];
    r0 = [r22 language];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r23 = [r22 diskFreeSizeInMegaBytes];
    if ([r22 isAdvertisingTrackingEnabled] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r28 = @"NO";
            }
            else {
                    r28 = @"YES";
            }
    }
    r0 = [r22 carrier];
    r29 = r29;
    r24 = [r0 retain];
    r25 = [r22 localTime];
    r26 = [r22 timezoneOffset];
    if ([r22 jailBroken] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r20 = @"false";
            }
            else {
                    r20 = @"true";
            }
    }
    r27 = [[r22 systemVersion] retain];
    r22 = [[r22 volume] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r27 release];
    [r24 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isUuidEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isUuidEnabled;
    return r0;
}

-(void)setIsUuidEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isUuidEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->networkInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_reachability, 0x0);
    return;
}

@end
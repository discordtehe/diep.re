@implementation USRVDevice

+(void)initCarrierUpdates {
    if (*qword_1011d1ba0 != -0x1) {
            dispatch_once(0x1011d1ba0, 0x100e6a360);
    }
    return;
}

+(void *)getOsVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 systemVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getModel {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffd0 - 0x510;
    uname(&stack[-1336]);
    r0 = [NSString stringWithCString:&stack[-1336] + 0x400 encoding:0x4];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([USRVDevice isSimulator] != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r21 = [[r0 model] retain];
            [r19 release];
            [r0 release];
            r19 = r21;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(long long)getScreenLayout {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [r0 orientation];
    [r0 release];
    r0 = r20;
    return r0;
}

+(bool)isSimulator {
    var_20 = r28;
    stack[-40] = r27;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffd0 - 0x510;
    uname(&stack[-1336]);
    r0 = [NSString stringWithCString:&stack[-1336] + 0x400 encoding:0x4];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = @selector(isEqualToString:);
            r20 = objc_msgSend(r19, r20);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)getAdvertisingTrackingId {
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 advertisingIdentifier] retain];
    [r0 release];
    r19 = [[r20 UUIDString] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(bool)isLimitTrackingEnabled {
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isAdvertisingTrackingEnabled] ^ 0x1;
    [r0 release];
    r0 = r20;
    return r0;
}

+(bool)isUsingWifi {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [USRVConnectivityUtils getNetworkStatus];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(long long)getNetworkType {
    r0 = [USRVConnectivityUtils getNetworkType];
    return r0;
}

+(void *)getNetworkOperator {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d1ba8;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r19 = [[r0 mobileCountryCode] retain];
    [r0 release];
    r0 = *0x1011d1ba8;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 mobileNetworkCode];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r21 = @"";
            [r21 retain];
    }
    else {
            r21 = [[r19 stringByAppendingString:r20] retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getNetworkOperatorName {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d1ba8;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r19 = [[r0 carrierName] retain];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(float)getScreenScale {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 scale];
    asm { fcvt       s8, d0 };
    r0 = [r19 release];
    return r0;
}

+(void *)getScreenWidth {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 applicationFrame];
    [r0 release];
    r0 = @class(NSNumber);
    asm { fcvt       s0, d8 };
    r0 = [r0 numberWithFloat:r2];
    return r0;
}

+(void *)getScreenHeight {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 applicationFrame];
    [r0 release];
    r0 = @class(NSNumber);
    asm { fcvt       s0, d8 };
    r0 = [r0 numberWithFloat:r2];
    return r0;
}

+(bool)isActiveNetworkConnected {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [USRVConnectivityUtils getNetworkStatus];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)getUniqueEventId {
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    r20 = [[r0 UUIDString] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)isWiredHeadsetOn {
    r31 = r31 - 0x140;
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
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    r19 = [[r0 currentRoute] retain];
    [r0 release];
    var_108 = q0;
    var_120 = r19;
    r0 = [r19 outputs];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_1000e4864;

loc_1000e47b8:
    r28 = *var_108;
    goto loc_1000e47d4;

loc_1000e47d4:
    r19 = 0x0;
    goto loc_1000e47e0;

loc_1000e47e0:
    if (*var_108 != r28) {
            objc_enumerationMutation(r20);
    }
    r25 = @selector(isEqualToString:);
    r0 = *(var_110 + r19 * 0x8);
    r0 = [r0 portType];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r25);
    [r0 release];
    if ((r27 & 0x1) != 0x0) goto loc_1000e4874;

loc_1000e4830:
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_1000e47e0;

loc_1000e483c:
    r23 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_1000e47d4;

loc_1000e4864:
    [r20 release];
    r20 = 0x0;
    goto loc_1000e4880;

loc_1000e4880:
    var_58 = **___stack_chk_guard;
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1000e4874:
    [r20 release];
    r20 = 0x1;
    goto loc_1000e4880;
}

+(void *)getTimeZone:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[NSDate date] retain];
    r0 = [NSTimeZone localTimeZone];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ((arg2 & 0x1) == 0x0 && [r20 isDaylightSavingTimeForDate:r19] != 0x0) {
            r22 = &@class(MCConfigurationData);
            [r20 secondsFromGMTForDate:r19];
            r2 = r19;
            [r20 daylightSavingTimeOffsetForDate:r2];
            asm { scvtf      d1, x21 };
            asm { fcvtzs     x2, d0 };
            r0 = *(r22 + 0x8e8);
            r0 = [r0 timeZoneForSecondsFromGMT:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            r20 = r21;
    }
    r0 = [NSDateFormatter alloc];
    r0 = [r0 init];
    [r0 setDateFormat:@"ZZZ"];
    [r0 setTimeZone:r20];
    r22 = [[r0 stringFromDate:r19] retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(long long)getTimeZoneOffset {
    r0 = [NSTimeZone localTimeZone];
    r0 = [r0 retain];
    r20 = [r0 secondsFromGMT];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)getPreferredLocalization {
    r0 = [NSLocale preferredLanguages];
    r0 = [r0 retain];
    r20 = [[r0 objectAtIndex:0x0] retain];
    [r0 release];
    r19 = [[r20 stringByReplacingOccurrencesOfString:@"-" withString:@"_"] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(float)getScreenBrightness {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    r19 = r0;
    [r0 brightness];
    asm { fcvt       s8, d0 };
    r0 = [r19 release];
    return r0;
}

+(float)getOutputVolume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    [r0 outputVolume];
    r0 = [r0 release];
    return r0;
}

+(void *)getFreeSpaceInKilobytes {
    r19 = [[NSFileManager defaultManager] retain];
    r20 = [NSHomeDirectory() retain];
    r0 = [r19 attributesOfFileSystemForPath:r20 error:0x0];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:**_NSFileSystemFreeSize];
    r0 = [r0 retain];
    r23 = [r0 unsignedLongLongValue];
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [NSNumber numberWithUnsignedLongLong:r23 >> 0xa];
    return r0;
}

+(void *)getTotalSpaceInKilobytes {
    r19 = [[NSFileManager defaultManager] retain];
    r20 = [NSHomeDirectory() retain];
    r0 = [r19 attributesOfFileSystemForPath:r20 error:0x0];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:**_NSFileSystemSize];
    r0 = [r0 retain];
    r23 = [r0 unsignedLongLongValue];
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [NSNumber numberWithUnsignedLongLong:r23 >> 0xa];
    return r0;
}

+(float)getBatteryLevel {
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    r20 = [r0 isBatteryMonitoringEnabled];
    [r0 release];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    [r0 setBatteryMonitoringEnabled:0x1];
    [r0 release];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    [r0 batteryLevel];
    [r0 release];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    [r0 setBatteryMonitoringEnabled:r20];
    r0 = [r0 release];
    return r0;
}

+(long long)getBatteryStatus {
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    r20 = [r0 isBatteryMonitoringEnabled];
    [r0 release];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    [r0 setBatteryMonitoringEnabled:0x1];
    [r0 release];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    r23 = [r0 batteryState];
    [r0 release];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    [r0 setBatteryMonitoringEnabled:r20];
    [r0 release];
    r0 = r23;
    return r0;
}

+(void *)getTotalMemoryInKilobytes {
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = mach_host_self();
    host_page_size(r0, &saved_fp - 0x30);
    r2 = &var_70;
    r3 = &saved_fp - 0x24;
    if (host_statistics(r19, 0x2, r2, r3) != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Failed to fetch vm statistics", r1, r2, r3);
            }
    }
    r21 = (var_64 + stack[-120] + var_6C) * var_30;
    r22 = var_30 * var_70;
    r20 = r22 + r21;
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: used: %llu free: %llu total: %llu", r1, r2, r3, r4, r5, r6);
    }
    r0 = [NSNumber numberWithUnsignedLongLong:r20 >> 0xa];
    return r0;
}

+(void *)getFreeMemoryInKilobytes {
    r31 = r31 - 0xc0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = mach_host_self();
    host_page_size(r0, &saved_fp - 0x40);
    r2 = &var_80;
    r3 = &saved_fp - 0x34;
    if (host_statistics(r19, 0x2, r2, r3) != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Failed to fetch vm statistics", r1, r2, r3);
            }
    }
    r22 = var_7C;
    r23 = stack[-136];
    r24 = var_74;
    r21 = var_40;
    r20 = r21 * var_80;
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: used: %llu free: %llu", r1, r2, r3, r4, r5);
    }
    r0 = [NSNumber numberWithLongLong:r20 >> 0xa];
    return r0;
}

+(long long)getUserInterfaceIdiom {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [r0 userInterfaceIdiom];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)getProcessInfo {
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffb0 - 0x10b0;
    r0 = *(int32_t *)*_mach_task_self_;
    r0 = task_info(r0, 0x12, &stack[-89], &var_DD);
    if (r0 != 0x0) goto loc_1000e5258;

loc_1000e5244:
    r0 = *(int32_t *)*_mach_task_self_;
    r0 = task_threads(r0, &var_E9, &var_ED);
    if (r0 == 0x0) goto loc_1000e5298;

loc_1000e5258:
    r19 = 0x0;
    goto loc_1000e525c;

loc_1000e525c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1000e5298:
    r8 = var_ED;
    if (r8 < 0x1) goto loc_1000e5320;

loc_1000e52a4:
    r20 = 0x0;
    goto loc_1000e52c0;

loc_1000e52c0:
    r0 = *(int32_t *)(var_E9 + r20 * 0x4);
    r0 = thread_info(r0, 0x3, &stack[-217], &var_F1);
    if (r0 != 0x0) goto loc_1000e5258;

loc_1000e52e0:
    if ((var_AD & 0x2) == 0x0) {
            d10 = *0x100ba1ea0;
            asm { fcvt       d0, s8 };
            asm { scvtf      s1, s1 };
            asm { fdiv       s1, s1, s9 };
            asm { fcvt       d1, s1 };
            d1 = d1 * d10;
            d0 = d1 + d0;
            asm { fcvt       s8, d0 };
    }
    r20 = r20 + 0x1;
    r8 = sign_extend_64(var_ED);
    if (r20 < r8) goto loc_1000e52c0;

loc_1000e5320:
    if (vm_deallocate(*(int32_t *)*_mach_task_self_, var_E9, r8 << 0x2) != 0x0) goto loc_1000e53a8;

loc_1000e5338:
    r20 = [[NSNumber numberWithFloat:r2] retain];
    r19 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r20 release];
    goto loc_1000e525c;

loc_1000e53a8:
    r0 = __assert_rtn("+[USRVDevice getProcessInfo]", "/Users/igorlunev/projects/ios-3.0.3/UnityServices/Core/Device/USRVDevice.m", 0x129, "kr == KERN_SUCCESS");
    return r0;
}

+(bool)isRooted {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
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
                            if ((r22 & 0x1) == 0x0) {
                                    r0 = [NSFileManager defaultManager];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r20 = [r0 fileExistsAtPath:r2];
                                    [r0 release];
                                    if ((r20 & 0x1) != 0x0) {
                                            r20 = 0x1;
                                    }
                                    else {
                                            r20 = 0x1;
                                            [@"Check if a device is jailbroken" writeToFile:@"/private/jailbreak.txt" atomically:0x1 encoding:0x4 error:&var_38];
                                            r21 = [var_38 retain];
                                            if (r21 != 0x0) {
                                                    r0 = [NSFileManager defaultManager];
                                                    r0 = [r0 retain];
                                                    [r0 removeItemAtPath:@"/private/jailbreak.txt" error:0x0];
                                                    [r0 release];
                                                    r20 = 0x0;
                                            }
                                            [r21 release];
                                    }
                            }
                            else {
                                    r20 = 0x1;
                            }
                    }
                    else {
                            r20 = 0x1;
                    }
            }
            else {
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x1;
    }
    r0 = r20;
    return r0;
}

+(void *)getGLVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [[EAGLContext alloc] initWithAPI:r2];
    if (r19 != 0x0) {
            r0 = [NSString stringWithFormat:r2];
    }
    else {
            r19 = [[EAGLContext alloc] initWithAPI:r2];
            if (r19 != 0x0) {
                    r0 = [NSString stringWithFormat:r2];
            }
            else {
                    r0 = [NSString stringWithFormat:r2];
            }
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(float)getDeviceMaxVolume {
    r0 = self;
    return r0;
}

+(unsigned long long)getCPUCount {
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r20 = [r0 processorCount];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)getSensorList {
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
    r19 = [objc_getClass("CMMotionManager") retain];
    if (r19 != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: MotionManager class found", r1, r2, r3);
            }
            r20 = [[r19 alloc] init];
            if (r20 != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: MotionManager object created", r1, r2, r3);
                    }
                    r24 = NSSelectorFromString(@"isGyroAvailable");
                    r2 = r24;
                    if ([r20 respondsToSelector:r2] != 0x0) {
                            r1 = @selector(getLogLevel);
                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Performing gyro selector", r1, r2, r3);
                            }
                            r24 = ([r20 methodForSelector:r24])(r20, r24);
                    }
                    else {
                            r24 = 0x0;
                    }
                    r25 = @selector(respondsToSelector:);
                    r26 = NSSelectorFromString(@"isAccelerometerAvailable");
                    r2 = r26;
                    if (objc_msgSend(r20, r25) != 0x0) {
                            r1 = @selector(getLogLevel);
                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Performing accelerometer selector", r1, r2, r3);
                            }
                            r26 = ([r20 methodForSelector:r26])(r20, r26);
                    }
                    else {
                            r26 = 0x0;
                    }
                    r25 = @selector(respondsToSelector:);
                    r27 = NSSelectorFromString(@"isMagnetometerAvailable");
                    r2 = r27;
                    if (objc_msgSend(r20, r25) != 0x0) {
                            r1 = @selector(getLogLevel);
                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Performing magnetometer selector", r1, r2, r3);
                            }
                            r23 = ([r20 methodForSelector:r27])(r20, r27);
                    }
                    else {
                            r23 = 0x0;
                    }
                    r21 = [[NSMutableArray alloc] init];
                    if (r24 == 0x0) {
                            if (r26 == 0x0) {
                                    if (r23 != 0x0) {
                                            [r21 addObject:r2];
                                    }
                            }
                            else {
                                    [r21 addObject:r2];
                                    if (r23 != 0x0) {
                                            [r21 addObject:r2];
                                    }
                            }
                    }
                    else {
                            [r21 addObject:r2];
                            if (r26 != 0x0) {
                                    [r21 addObject:r2];
                                    if (r23 != 0x0) {
                                            [r21 addObject:r2];
                                    }
                            }
                            else {
                                    if (r23 != 0x0) {
                                            [r21 addObject:r2];
                                    }
                            }
                    }
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end
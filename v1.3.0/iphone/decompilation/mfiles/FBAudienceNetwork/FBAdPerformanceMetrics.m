@implementation FBAdPerformanceMetrics

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdPerformanceMetrics");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(unsigned int)coreCount {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sysctl(&saved_fp - 0x8, 0x2, &saved_fp - 0xc, &var_18, 0x0, 0x0);
    r8 = var_C;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

+(struct FBAdDeviceBatteryInfo)batteryInfo {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([NSThread isMainThread] != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            [r0 isBatteryMonitoringEnabled];
            [r0 setBatteryMonitoringEnabled:r2];
            r19 = [r21 batteryState];
            [r21 batteryLevel];
            asm { fcvt       d0, s0 };
            r20 = d0;
            objc_msgSend(r21, r23);
            [r21 release];
    }
    else {
            r19 = 0x0;
            r20 = 0xbff0000000000000;
    }
    r0 = r19;
    return r0;
}

+(unsigned long long)freeMemoryBytes {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctl(&var_60, 0x2, r29 - 0x14, r29 - 0x20, 0x0, 0x0);
    r8 = r0;
    r0 = 0x0;
    if (r8 == 0x0) {
            r0 = 0x0;
            r19 = var_14;
            if (r19 != 0x0) {
                    r0 = mach_host_self();
                    r0 = host_statistics(r0, 0x2, &var_60, r29 - 0x20);
                    r8 = var_60 * r19;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = 0x0;
                            }
                            else {
                                    r0 = r8;
                            }
                    }
            }
    }
    return r0;
}

+(unsigned long long)totalMemoryBytes {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sysctl(&saved_fp - 0x8, 0x2, &var_10, &var_18, 0x0, 0x0);
    r8 = var_10;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

+(unsigned long long)residentMemoryBytes {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(int32_t *)*_mach_task_self_;
    r0 = task_info(r0, 0x12, &var_30, &var_34);
    r8 = var_24;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

+(unsigned long long)virtualMemoryBytes {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(int32_t *)*_mach_task_self_;
    r0 = task_info(r0, 0x12, &var_30, &var_34);
    r8 = var_2C;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

+(unsigned long long)freeDiskBytes {
    r0 = [FBAdPerformanceMetrics freeAndTotalDiskBytes];
    return r0;
}

+(union ?)freeAndTotalDiskBytes {
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
    r19 = [NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1) retain];
    r21 = [[NSFileManager defaultManager] retain];
    r22 = [[r19 lastObject] retain];
    r0 = [r21 attributesOfFileSystemForPath:r22 error:0x0];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:**_NSFileSystemFreeSize];
            r0 = [r0 retain];
            r23 = r0;
            r21 = [r0 unsignedLongLongValue];
            r0 = [r20 objectForKeyedSubscript:**_NSFileSystemSize];
            r0 = [r0 retain];
            r22 = [r0 unsignedLongLongValue];
            [r0 release];
            [r23 release];
    }
    else {
            r21 = 0x0;
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

@end
@implementation FBAdDevice

+(void *)sharedLock {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea8f48);
    if (*qword_1011dcd28 != -0x1) {
            dispatch_once(0x1011dcd28, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcd30);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)initializeAndCacheValues {
    [self isPad];
    [self systemVersion];
    objc_unsafeClaimAutoreleasedReturnValue();
    return;
}

+(void)initialize {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = NSStringFromClass(self);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
            [r21 release];
            if ([FBAdDevice class] == r19) {
                    [r19 resetCache];
            }
    }
    else {
            r22 = [FBAdDevice class];
            [r21 release];
            if (r22 == r19) {
                    if ([FBAdDevice class] == r19) {
                            [r19 resetCache];
                    }
            }
            else {
                    r20 = @selector(class);
                    r20 = [NSStringFromClass(objc_msgSend(@class(FBAdDevice), r20)) retain];
                    r0 = NSStringFromClass(r19);
                    r0 = [r0 retain];
                    r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                    [r0 release];
                    [r20 release];
                    objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
            }
    }
    return;
}

+(void)resetCache {
    r0 = [self sharedLock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r0 = *0x1011dcd20;
    *0x1011dcd20 = 0x0;
    [r0 release];
    r0 = *0x1011dcd18;
    *0x1011dcd18 = 0x0;
    [r0 release];
    r0 = *0x1011dcd08;
    *0x1011dcd08 = 0x0;
    [r0 release];
    r0 = *0x1011dcc98;
    *0x1011dcc98 = 0x0;
    [r0 release];
    *0x1011dccf0 = 0xffffffffffffffff;
    *0x1011dcd10 = 0xffffffffffffffff;
    *(int128_t *)0x1011dcce0 = 0x0;
    *(int128_t *)0x1011dcce8 = 0xbff0000000000000;
    *(int32_t *)0x1011dccf8 = 0xffffffffffffffff;
    *0x1011dccd0 = 0x0;
    *0x1011dccc0 = 0x0;
    *0x1011dccb0 = 0x0;
    *0x1011dcca0 = 0xffffffffffffffff;
    *0x1011dcd00 = 0xffffffffffffffff;
    r0 = [self sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

+(void *)machine {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*0x1011dcd20 == 0x0) {
            r0 = sub_100a3d658(0x6, 0x1, 0x20);
            r29 = r29;
            [r0 retain];
            sub_100a3d750();
            r0 = [r21 copy];
            r8 = *0x1011dcd20;
            *0x1011dcd20 = r0;
            [r8 release];
            [r21 release];
    }
    r21 = [*0x1011dcd20 retain];
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)machineName {
    r0 = [self machine];
    return r0;
}

+(void *)architecture {
    r0 = [self machine];
    return r0;
}

+(void *)model {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*0x1011dcd18 == 0x0) {
            r0 = sub_100a3d658(0x6, 0x2, 0x0);
            r29 = r29;
            [r0 retain];
            sub_100a3d750();
            r0 = [r21 copy];
            r8 = *0x1011dcd18;
            *0x1011dcd18 = r0;
            [r8 release];
            [r21 release];
    }
    r21 = [*0x1011dcd18 retain];
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)systemName {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*0x1011dcd08 == 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 systemName];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *0x1011dcd08;
            *0x1011dcd08 = r0;
            [r8 release];
            [r21 release];
    }
    r21 = [*0x1011dcd08 retain];
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(unsigned int)coreCount {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r21 = *(int32_t *)0x1011dccf8;
    if (r21 == -0x1) {
            r0 = [FBAdPerformanceMetrics coreCount];
            r21 = r0;
            *(int32_t *)0x1011dccf8 = r0;
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

+(unsigned long long)freeDiskSpace {
    r0 = [FBAdPerformanceMetrics freeDiskBytes];
    return r0;
}

+(bool)isPad {
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
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    [r0 lock];
    [r21 release];
    r8 = *0x1011dcd00;
    if ((r8 & 0xffffffff80000000) == 0x0) goto loc_100a3c434;

loc_100a3c224:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r22 = [r0 userInterfaceIdiom];
    [r21 release];
    if (r22 != 0x1) goto loc_100a3c354;

loc_100a3c264:
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:@"UIDeviceFamily"];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    [NSArray class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_100a3c360;

loc_100a3c300:
    r0 = @(0x2);
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r21 containsObject:r2];
    [r23 release];
    if ((r24 & 0x1) == 0x0) goto loc_100a3c39c;

loc_100a3c34c:
    r22 = 0x1;
    goto loc_100a3c424;

loc_100a3c424:
    *0x1011dcd00 = r22;
    [r21 release];
    r8 = *0x1011dcd00;
    goto loc_100a3c434;

loc_100a3c434:
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;

loc_100a3c39c:
    r0 = r21;
    r1 = @selector(containsObject:);
    goto loc_100a3c3ac;

loc_100a3c3ac:
    r22 = objc_msgSend(r0, r1);
    goto loc_100a3c424;

loc_100a3c360:
    r23 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_100a3c3b8;

loc_100a3c384:
    r1 = @selector(isEqualToString:);
    r0 = r21;
    goto loc_100a3c3ac;

loc_100a3c3b8:
    r23 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r21, r23) != 0x0) {
            r0 = @(0x2);
            r29 = r29;
            r23 = [r0 retain];
            r22 = [r21 isEqualToNumber:r23];
            [r23 release];
    }
    else {
            r22 = 0x0;
    }
    goto loc_100a3c424;

loc_100a3c354:
    r8 = 0x0;
    *0x1011dcd00 = 0x0;
    goto loc_100a3c434;
}

+(struct FBAdDeviceBatteryInfo)deviceBatteryInfo {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    sub_100a66fe8();
    asm { ucvtf      d0, x0 };
    asm { fdiv       d8, d0, d1 };
    if (d8 - *0x1011dccd8 > *0x100bf4870) {
            if ([NSThread isMainThread] != 0x0) {
                    asm { fcsel      d0, d8, d0, ne };
            }
            *0x1011dccd8 = 0x0;
            r0 = [FBAdPerformanceMetrics batteryInfo];
            r21 = r0;
            r22 = @selector(batteryInfo);
            *(int128_t *)0x1011dcce0 = r0;
            *(int128_t *)0x1011dcce8 = @selector(batteryInfo);
    }
    else {
            r21 = *(int128_t *)0x1011dcce0;
            r22 = *(int128_t *)0x1011dcce8;
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

+(unsigned long long)freeMemoryBytes {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*qword_1011dcd88 != -0x1) {
            dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
    }
    qword_1011dcd90();
    if (d8 - *0x1011dccc8 > 0x404e000000000000) {
            if ([NSThread isMainThread] != 0x0) {
                    asm { fcsel      d0, d8, d0, ne };
            }
            *0x1011dccc8 = 0x0;
            r0 = [FBAdPerformanceMetrics freeMemoryBytes];
            r21 = r0;
            *0x1011dccd0 = r0;
    }
    else {
            r21 = *0x1011dccd0;
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

+(unsigned long long)adjustedFillRate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r21 = *0x1011dccf0;
    if (r21 == -0x1) {
            r0 = [r19 deviceModel];
            if (r0 > 0x68) {
                    if (r0 > 0xcc) {
                            if (r0 <= 0xcf) {
                                    if (r0 >= 0xcf) {
                                            if (r0 != 0xcf) {
                                                    r21 = 0x4;
                                            }
                                            else {
                                                    r21 = 0x1;
                                            }
                                    }
                                    else {
                                            r21 = 0x3;
                                    }
                            }
                            else {
                                    if (r0 != 0xd0) {
                                            if (r0 != 0x384) {
                                                    CMP(r0, 0x3e7);
                                                    r21 = 0x4;
                                            }
                                            else {
                                                    r21 = 0x2;
                                            }
                                    }
                                    else {
                                            r21 = 0x3;
                                    }
                            }
                    }
                    else {
                            if (r0 > 0xc9) {
                                    if (r0 != 0xca) {
                                            r21 = 0x0;
                                            if (r0 != 0xcb) {
                                                    if (r0 != 0xcc) {
                                                            r21 = 0x4;
                                                    }
                                                    else {
                                                            r21 = 0x2;
                                                    }
                                            }
                                    }
                                    else {
                                            r21 = 0x1;
                                    }
                            }
                            else {
                                    if (r0 != 0x69) {
                                            r21 = 0x0;
                                            if (r0 != 0xc9) {
                                                    r21 = 0x4;
                                            }
                                    }
                                    else {
                                            r21 = 0x1;
                                    }
                            }
                    }
            }
            else {
                    if (r0 > 0x6) {
                            if (r0 >= 0xb) {
                                    r21 = 0x0;
                                    if (r0 >= 0x69) {
                                            r21 = 0x4;
                                    }
                            }
                            else {
                                    r21 = 0x3;
                            }
                    }
                    else {
                            r21 = 0x0;
                            if (r0 >= 0x5) {
                                    if (r0 != 0x5) {
                                            if (r0 != 0x6) {
                                                    r21 = 0x4;
                                            }
                                            else {
                                                    r21 = 0x2;
                                            }
                                    }
                                    else {
                                            r21 = 0x1;
                                    }
                            }
                    }
            }
            *0x1011dccf0 = r21;
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

+(unsigned long long)deviceModel {
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
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*0x1011dcd10 != -0x1) goto loc_100a3c054;

loc_100a3bdac:
    r0 = [r19 machine];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 componentsSeparatedByString:@","];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 count] >= 0x2) {
            r0 = [r22 objectAtIndexedSubscript:0x1];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 integerValue];
            [r0 release];
    }
    else {
            r23 = 0x3e7;
    }
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3be68;

loc_100a3be60:
    r26 = 0x3;
    goto loc_100a3c034;

loc_100a3c034:
    [r22 release];
    [r21 release];
    *0x1011dcd10 = r26;
    [r21 release];
    goto loc_100a3c054;

loc_100a3c054:
    r21 = *0x1011dcd10;
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;

loc_100a3be68:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3be88;

loc_100a3be80:
    r26 = 0x4;
    goto loc_100a3c034;

loc_100a3be88:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3bea8;

loc_100a3bea0:
    r26 = 0x5;
    goto loc_100a3c034;

loc_100a3bea8:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3bec8;

loc_100a3bec0:
    r26 = 0x6;
    goto loc_100a3c034;

loc_100a3bec8:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3bee8;

loc_100a3bee0:
    r26 = 0x7;
    goto loc_100a3c034;

loc_100a3bee8:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_100a3bf10;

loc_100a3bf00:
    if (r23 <= 0x1) {
            asm { cinc       x26, x8, le };
    }
    goto loc_100a3c034;

loc_100a3bf10:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_100a3bf3c;

loc_100a3bf28:
    r26 = 0xa;
    if (r23 == 0x3) goto loc_100a3c034;

loc_100a3bf34:
    r26 = 0xa;
    if (r23 == 0x6) goto loc_100a3c034;

loc_100a3bf3c:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3bf5c;

loc_100a3bf54:
    r26 = 0x67;
    goto loc_100a3c034;

loc_100a3bf5c:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3bf7c;

loc_100a3bf74:
    r26 = 0x68;
    goto loc_100a3c034;

loc_100a3bf7c:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3bf9c;

loc_100a3bf94:
    r26 = 0x69;
    goto loc_100a3c034;

loc_100a3bf9c:
    if (([r21 hasPrefix:r2] & 0x1) == 0x0) goto loc_100a3bfbc;

loc_100a3bfb4:
    r26 = 0xc9;
    goto loc_100a3c034;

loc_100a3bfbc:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_100a3bfe4;

loc_100a3bfd4:
    CMP(r23, 0x4);
    r8 = 0xca;
    r9 = 0xcf;
    goto loc_100a3c030;

loc_100a3c030:
    if (CPU_FLAGS & G) {
            if (!CPU_FLAGS & G) {
                    r26 = r8;
            }
            else {
                    r26 = r9;
            }
    }
    goto loc_100a3c034;

loc_100a3bfe4:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_100a3c00c;

loc_100a3bffc:
    if (r23 > 0x3) {
            asm { cinc       x26, x8, gt };
    }
    goto loc_100a3c034;

loc_100a3c00c:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_100a3c09c;

loc_100a3c024:
    CMP(r23, 0x3);
    r8 = 0xcd;
    r9 = 0xd0;
    goto loc_100a3c030;

loc_100a3c09c:
    if (([r21 hasPrefix:r2] & 0x1) != 0x0) {
            r26 = 0xce;
    }
    else {
            if ([r21 hasPrefix:r2] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r26 = 0x3e7;
                    }
                    else {
                            r26 = 0x384;
                    }
            }
    }
    goto loc_100a3c034;
}

+(unsigned long long)totalMemoryBytes {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*qword_1011dcd88 != -0x1) {
            dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
    }
    qword_1011dcd90();
    if (d8 - *0x1011dccb8 > *0x100bf4870) {
            if ([NSThread isMainThread] != 0x0) {
                    asm { fcsel      d0, d8, d0, ne };
            }
            *0x1011dccb8 = 0x0;
            r0 = [FBAdPerformanceMetrics totalMemoryBytes];
            r21 = r0;
            *0x1011dccc0 = r0;
    }
    else {
            r21 = *0x1011dccc0;
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

+(unsigned long long)freeDiskBytes {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*qword_1011dcd88 != -0x1) {
            dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
    }
    qword_1011dcd90();
    if (d8 - *0x1011dcca8 > *0x100bf4870) {
            if ([NSThread isMainThread] != 0x0) {
                    asm { fcsel      d0, d8, d0, ne };
            }
            *0x1011dcca8 = 0x0;
            r0 = [FBAdPerformanceMetrics freeDiskBytes];
            r21 = r0;
            *0x1011dccb0 = r0;
    }
    else {
            r21 = *0x1011dccb0;
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

+(bool)isSlowerDevice {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r8 = *0x1011dcca0;
    if ((r8 & 0xffffffff80000000) != 0x0) {
            r0 = [r19 deviceModel];
            r8 = 0x1;
            r9 = r0 - 0x3;
            if (r9 >= 0x3) {
                    if (r0 == 0x67) {
                            if (CPU_FLAGS & E) {
                                    r9 = 0x1;
                            }
                    }
                    r8 = 0x1;
                    if (r0 == 0xc9) {
                            if (!CPU_FLAGS & E) {
                                    r8 = r9;
                            }
                            else {
                                    r8 = 0x1;
                            }
                    }
            }
            *0x1011dcca0 = r8;
    }
    r21 = 0x1011dc000;
    if (r8 != 0x0) {
            r21 = 0x1011dc000;
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

+(bool)isRunningOnPadInPhoneEmulator {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 model];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 hasPrefix:@"iPad"] != 0x0) {
            r21 = [FBAdDevice isPad] ^ 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)systemVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sharedLock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    if (*0x1011dcc98 == 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *0x1011dcc98;
            *0x1011dcc98 = r0;
            [r8 release];
            [r21 release];
    }
    r21 = [*0x1011dcc98 retain];
    r0 = [r19 sharedLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)systemBuildNumber {
    [sub_100a3d658(0x1, 0x41, 0x10) retain];
    sub_100a3d750();
    r0 = [r19 autorelease];
    return r0;
}

+(bool)systemVersionIsLessThan:(void *)arg2 {
    r0 = [self systemVersionIsGreaterThanOrEqualTo:arg2];
    r0 = r0 ^ 0x1;
    return r0;
}

+(bool)systemVersionIsGreaterThanOrEqualToiOS10 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011dcc78 != -0x1) {
            dispatch_once(0x1011dcc78, r19);
    }
    r20 = *(int8_t *)0x1011dcc80;
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)systemVersionIsGreaterThanOrEqualToiOS11 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011dcc68 != -0x1) {
            dispatch_once(0x1011dcc68, r19);
    }
    r20 = *(int8_t *)0x1011dcc70;
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)systemVersionIsGreaterThanOrEqualTo:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100a3d018;

loc_100a3ce78:
    var_1E8 = r20;
    if (*qword_1011dcc88 != -0x1) {
            dispatch_once(0x1011dcc88, 0x100ea8f08);
    }
    var_1F0 = r19;
    r0 = [r19 componentsSeparatedByString:@"."];
    r29 = r29;
    r0 = [r0 retain];
    var_1D0 = q0;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100a3cf80;

loc_100a3cee4:
    r24 = r0;
    r19 = *var_1D0;
    goto loc_100a3cef8;

loc_100a3cef8:
    r22 = 0x0;
    goto loc_100a3cf0c;

loc_100a3cf0c:
    if (*var_1D0 != r19) {
            objc_enumerationMutation(r21);
    }
    r27 = *(var_1D8 + r22 * 0x8);
    if ([r27 length] == 0x0) goto loc_100a3d39c;

loc_100a3cf3c:
    if ([r27 rangeOfCharacterFromSet:r2] != 0x7fffffffffffffff) goto loc_100a3d3d0;

loc_100a3cf54:
    r22 = r22 + 0x1;
    if (r22 < r24) goto loc_100a3cf0c;

loc_100a3cf60:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 != 0x0) goto loc_100a3cef8;

loc_100a3cf80:
    [r21 release];
    r0 = [var_1E8 systemVersion];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 componentsSeparatedByString:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    r19 = @selector(count);
    if (objc_msgSend(r21, r19) >= objc_msgSend(r22, r19)) {
            r19 = @selector(count);
            r23 = objc_msgSend(r21, r19) - objc_msgSend(r22, r19);
    }
    else {
            r23 = 0x0;
    }
    r19 = @selector(count);
    if (objc_msgSend(r22, r19) >= objc_msgSend(r21, r19)) {
            r19 = @selector(count);
            var_1E8 = objc_msgSend(r22, r19) - objc_msgSend(r21, r19);
    }
    else {
            var_1E8 = 0x0;
    }
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    r19 = @selector(count);
    r0 = [r22 retain];
    r22 = r0;
    var_1F8 = r19;
    r0 = objc_msgSend(r0, r19);
    var_200 = r23;
    var_210 = r0 + r23;
    r24 = calloc(r0 + r23, 0x8);
    var_190 = q0;
    r0 = [r22 retain];
    r22 = r0;
    r0 = objc_msgSend(r0, r20);
    if (r0 != 0x0) {
            r25 = r0;
            r28 = 0x0;
            r26 = *var_190;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_190 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            if (r24 != 0x0) {
                                    r0 = *(var_198 + r23 * 0x8);
                                    r0 = [r0 integerValue];
                                    *(r24 + r28 * 0x8) = r0 & !(r0 / 0xffffffff80000000);
                                    r28 = r28 + 0x1;
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r25);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    else {
            r28 = 0x0;
    }
    [r22 release];
    r8 = var_200;
    if (r8 != 0x0) {
            bzero(r24 + r28 * 0x8, r8 << 0x3);
    }
    r0 = [NSIndexPath indexPathWithIndexes:r24 length:var_210];
    r29 = r29;
    [r0 retain];
    free(r24);
    [r22 release];
    var_200 = [[r26 autorelease] retain];
    r0 = [r21 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, var_1F8);
    var_1F8 = r0 + var_1E8;
    r23 = calloc(r0 + var_1E8, 0x8);
    var_190 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r20);
    if (r0 != 0x0) {
            r27 = r0;
            r24 = 0x0;
            r25 = *var_190;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_190 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            if (r23 != 0x0) {
                                    r0 = *(var_198 + r26 * 0x8);
                                    r0 = [r0 integerValue];
                                    *(r23 + r24 * 0x8) = r0 & !(r0 / 0xffffffff80000000);
                                    r24 = r24 + 0x1;
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r27);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r27 = r0;
            } while (r0 != 0x0);
    }
    else {
            r24 = 0x0;
    }
    [r21 release];
    r8 = var_1E8;
    if (r8 != 0x0) {
            bzero(r23 + r24 * 0x8, r8 << 0x3);
    }
    [[NSIndexPath indexPathWithIndexes:r2 length:r3] retain];
    free(r23);
    [r21 release];
    r20 = [var_200 compare:[r20 autorelease]];
    [var_200 release];
    if (r20 < 0x2) {
            if (CPU_FLAGS & B) {
                    r20 = 0x1;
            }
    }
    [r22 release];
    [r21 release];
    r19 = var_1F0;
    goto loc_100a3d33c;

loc_100a3d33c:
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a3d3d0:
    r0 = [NSException exceptionWithName:**_NSInternalInconsistencyException reason:@"Invalid version number." userInfo:0x0];
    goto loc_100a3d400;

loc_100a3d400:
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r0 = objc_exception_throw(r0);
    return r0;

loc_100a3d39c:
    r0 = [NSException exceptionWithName:**_NSInternalInconsistencyException reason:@"Invalid version number" userInfo:0x0];
    goto loc_100a3d400;

loc_100a3d018:
    r20 = 0x0;
    goto loc_100a3d33c;
}

@end
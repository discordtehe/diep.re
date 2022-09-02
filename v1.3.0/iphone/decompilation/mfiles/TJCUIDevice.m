@implementation TJCUIDevice

+(void *)getSysInfoByName:(char *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    var_28 = **___stack_chk_guard;
    sysctlbyname(arg2, 0x0, r29 - 0x30, 0x0, 0x0);
    sysctlbyname(arg2, &var_30 - (var_30 + 0xf & 0xfffffffffffffff0), r29 - 0x30, 0x0, 0x0);
    r0 = [NSString stringWithCString:&var_30 - (var_30 + 0xf & 0xfffffffffffffff0) encoding:0x4];
    if (**___stack_chk_guard != var_28) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)platform {
    r0 = [self getSysInfoByName:"hw.machine"];
    return r0;
}

+(void *)hwmodel {
    r0 = [self getSysInfoByName:"hw.model"];
    return r0;
}

+(unsigned long long)getSysInfo:(unsigned int)arg2 {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    sysctl(&var_10, 0x2, &var_1C, &var_18, 0x0, 0x0);
    r0 = sign_extend_64(var_1C);
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(unsigned long long)cpuFrequency {
    r0 = [self getSysInfo:0xf];
    return r0;
}

+(unsigned long long)totalMemory {
    r0 = [self getSysInfo:0x5];
    return r0;
}

+(unsigned long long)busFrequency {
    r0 = [self getSysInfo:0xe];
    return r0;
}

+(unsigned long long)maxSocketBufferSize {
    r0 = [self getSysInfo:0x1];
    return r0;
}

+(unsigned long long)userMemory {
    r0 = [self getSysInfo:0x6];
    return r0;
}

+(void *)freeDiskSpace {
    r19 = [[NSFileManager defaultManager] retain];
    r20 = [NSHomeDirectory() retain];
    r21 = [[r19 attributesOfFileSystemForPath:r20 error:0x0] retain];
    [r20 release];
    [r19 release];
    r19 = [[r21 objectForKey:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)totalDiskSpace {
    r19 = [[NSFileManager defaultManager] retain];
    r20 = [NSHomeDirectory() retain];
    r21 = [[r19 attributesOfFileSystemForPath:r20 error:0x0] retain];
    [r20 release];
    [r19 release];
    r19 = [[r21 objectForKey:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)platformString {
    *(0x100ea1200 + [self platformType] * 0x8);
    r0 = [NSString stringWithUTF8String:r2];
    return r0;
}

+(void *)platformCode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = [self platformType] - 0x1;
    if (r8 > 0x10) goto loc_100900d00;

loc_100900cc8:
    goto *0x100900d98[sign_extend_64(*(int32_t *)(0x100900d98 + r8 * 0x4)) + 0x100900d98];

loc_100900cf4:
    r19 = @"iPhone Simulator";
    goto loc_100900d80;

loc_100900d80:
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;

loc_100900d00:
    r19 = @"Unknown iOS device";
    goto loc_100900d80;

loc_100900d0c:
    r19 = @"M68";
    goto loc_100900d80;

loc_100900d18:
    r19 = @"N82";
    goto loc_100900d80;

loc_100900d24:
    r19 = @"N88";
    goto loc_100900d80;

loc_100900d30:
    r19 = @"N89";
    goto loc_100900d80;

loc_100900cdc:
    r19 = @"Unknown iPhone";
    goto loc_100900d80;

loc_100900d3c:
    r19 = @"N45";
    goto loc_100900d80;

loc_100900d48:
    r19 = @"N72";
    goto loc_100900d80;

loc_100900d54:
    r19 = @"N18";
    goto loc_100900d80;

loc_100900d60:
    r19 = @"N80";
    goto loc_100900d80;

loc_100900d6c:
    r19 = @"K48";
    goto loc_100900d80;

loc_100900ce8:
    r19 = @"Unknown iPad";
    goto loc_100900d80;

loc_100900d78:
    r19 = @"Unknown iPod";
    goto loc_100900d80;
}

+(unsigned long long)platformType {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self platform];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x12;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x4;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x5;
                    }
                    else {
                            if (([r19 hasPrefix:r2] & 0x1) != 0x0) {
                                    r20 = 0x6;
                            }
                            else {
                                    if (([r19 hasPrefix:r2] & 0x1) != 0x0) {
                                            r20 = 0x7;
                                    }
                                    else {
                                            if (([r19 hasPrefix:r2] & 0x1) != 0x0) {
                                                    r20 = 0x8;
                                            }
                                            else {
                                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                            r20 = 0x9;
                                                    }
                                                    else {
                                                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                                    r20 = 0xa;
                                                            }
                                                            else {
                                                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                                            r20 = 0xb;
                                                                    }
                                                                    else {
                                                                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                                                    r20 = 0xc;
                                                                            }
                                                                            else {
                                                                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                                                            r20 = 0xd;
                                                                                    }
                                                                                    else {
                                                                                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                                                                    r20 = 0xe;
                                                                                            }
                                                                                            else {
                                                                                                    if (([r19 hasPrefix:r2] & 0x1) != 0x0) {
                                                                                                            r20 = 0xf;
                                                                                                    }
                                                                                                    else {
                                                                                                            if (([r19 hasPrefix:r2] & 0x1) != 0x0) {
                                                                                                                    r20 = 0x10;
                                                                                                            }
                                                                                                            else {
                                                                                                                    if (([r19 hasPrefix:r2] & 0x1) != 0x0) {
                                                                                                                            r20 = 0x11;
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            if (([r19 hasSuffix:r2] & 0x1) == 0x0 && [r19 isEqual:r2] == 0x0) {
                                                                                                                                    r20 = 0x0;
                                                                                                                            }
                                                                                                                            else {
                                                                                                                                    r0 = [UIScreen mainScreen];
                                                                                                                                    r0 = [r0 retain];
                                                                                                                                    r20 = r0;
                                                                                                                                    [r0 bounds];
                                                                                                                                    [r20 release];
                                                                                                                                    if (d8 < *0x100ba1e88) {
                                                                                                                                            if (!CPU_FLAGS & S) {
                                                                                                                                                    r20 = 0x3;
                                                                                                                                            }
                                                                                                                                            else {
                                                                                                                                                    r20 = 0x2;
                                                                                                                                            }
                                                                                                                                    }
                                                                                                                            }
                                                                                                                    }
                                                                                                            }
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end
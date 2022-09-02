@implementation ADJSystemProfile

+(bool)is64bit {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctlbyname("hw.cpu64bit_capable", r29 - 0x4, &var_10, 0x0, 0x0);
    if (r0 != 0x0) {
            r0 = sysctlbyname("hw.optional.x86_64", r29 - 0x4, &var_10, 0x0, 0x0);
            if (r0 != 0x0) {
                    r8 = 0x4;
                    r0 = sysctlbyname("hw.optional.64bitops", r29 - 0x4, &var_10, 0x0, 0x0);
                    if (r0 == 0x0) {
                            r8 = 0x4;
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
            }
            else {
                    r8 = 0x1;
            }
    }
    else {
            r8 = 0x1;
    }
    r9 = 0x0;
    if (r9 == 0x1) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r0 = r8 & r9;
    return r0;
}

+(int)cpuCount {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctlbyname("hw.ncpu", r29 - 0x14, &var_20, 0x0, 0x0);
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 error:@"Failed to obtain CPU count (%d)"];
            [r0 release];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void *)machineArch {
    r0 = [ADJSystemProfile readSysctlbByNameString:"hw.machinearch" errorLog:@"Failed to obtain machine arch"];
    return r0;
}

+(void *)machineModel {
    r0 = [ADJSystemProfile readSysctlbByNameString:"hw.model" errorLog:@"Failed to obtain machine model"];
    return r0;
}

+(void *)cpuBrand {
    r0 = [ADJSystemProfile readSysctlbByNameString:"machdep.cpu.brand_string" errorLog:@"Failed to obtain CPU brand"];
    return r0;
}

+(void *)cpuFeatures {
    r0 = [ADJSystemProfile readSysctlbByNameString:"machdep.cpu.features" errorLog:@"Failed to obtain CPU features"];
    return r0;
}

+(void *)cpuFamily {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctlbyname("hw.cpufamily", r29 - 0x14, &var_20, 0x0, 0x0);
    r19 = r0;
    if (r19 == 0x0) goto loc_1006a24bc;

loc_1006a2474:
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 error:@"Failed to obtain CPU family (%d)"];
    [r0 release];
    r19 = 0x0;
    goto loc_1006a27e8;

loc_1006a27e8:
    r0 = [r19 autorelease];
    return r0;

loc_1006a24bc:
    if (0xffffffffffffffff <= 0x1e2d6380) goto loc_1006a252c;

loc_1006a24d0:
    if (0xffffffffffffffff <= 0x5490b78b) goto loc_1006a2588;

loc_1006a24e0:
    if (0xffffffffffffffff <= 0x67ceee92) goto loc_1006a2614;

loc_1006a24f0:
    if (0xffffffffffffffff > 0x77c184ad) goto loc_1006a26f8;

loc_1006a2500:
    if (0xffffffffffffffff == 0x67ceee93) goto loc_1006a2724;

loc_1006a2510:
    if (0xffffffffffffffff != 0x6b5a4cd2) goto loc_1006a27fc;

loc_1006a2520:
    r19 = @"CPUFAMILY_INTEL_NEHALEM";
    goto loc_1006a27e0;

loc_1006a27e0:
    [r19 retain];
    goto loc_1006a27e8;

loc_1006a27fc:
    r19 = [[NSString stringWithFormat:r2] retain];
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 warn:@"%@"];
    [r0 release];
    goto loc_1006a27e8;

loc_1006a2724:
    r19 = @"CPUFAMILY_ARM_HURRICANE";
    goto loc_1006a27e0;

loc_1006a26f8:
    if (0xffffffffffffffff == 0x77c184ae) goto loc_1006a27d8;

loc_1006a2708:
    if (0xffffffffffffffff != 0x78ea4fbc) goto loc_1006a27fc;

loc_1006a2718:
    r19 = @"CPUFAMILY_INTEL_PENRYN";
    goto loc_1006a27e0;

loc_1006a27d8:
    r19 = @"CPUFAMILY_POWERPC_G4";
    goto loc_1006a27e0;

loc_1006a2614:
    if (0xffffffffffffffff == 0x5490b78c) goto loc_1006a2778;

loc_1006a2624:
    if (0xffffffffffffffff == 0x573b5eec) goto loc_1006a2784;

loc_1006a2634:
    if (0xffffffffffffffff != 0x582ed09c) goto loc_1006a27fc;

loc_1006a2644:
    r19 = @"CPUFAMILY_INTEL_BROADWELL";
    goto loc_1006a27e0;

loc_1006a2784:
    r19 = @"CPUFAMILY_INTEL_WESTMERE";
    goto loc_1006a27e0;

loc_1006a2778:
    r19 = @"CPUFAMILY_INTEL_SANDYBRIDGE";
    goto loc_1006a27e0;

loc_1006a2588:
    if (0xffffffffffffffff > 0x37a09641) goto loc_1006a268c;

loc_1006a2598:
    if (0xffffffffffffffff == 0x1e2d6381) goto loc_1006a2748;

loc_1006a25a8:
    if (0xffffffffffffffff == 0x1f65e835) goto loc_1006a2754;

loc_1006a25b8:
    if (0xffffffffffffffff != 0x2c91a47e) goto loc_1006a27fc;

loc_1006a25c8:
    r19 = @"CPUFAMILY_ARM_TYPHOON";
    goto loc_1006a27e0;

loc_1006a2754:
    r19 = @"CPUFAMILY_INTEL_IVYBRIDGE";
    goto loc_1006a27e0;

loc_1006a2748:
    r19 = @"CPUFAMILY_ARM_SWIFT";
    goto loc_1006a27e0;

loc_1006a268c:
    if (0xffffffffffffffff == 0x37a09642) goto loc_1006a27a8;

loc_1006a269c:
    if (0xffffffffffffffff == 0x37fc219f) goto loc_1006a27b4;

loc_1006a26ac:
    if (0xffffffffffffffff != 0x53b005f5) goto loc_1006a27fc;

loc_1006a26bc:
    r19 = @"CPUFAMILY_ARM_XSCALE";
    goto loc_1006a27e0;

loc_1006a27b4:
    r19 = @"CPUFAMILY_INTEL_SKYLAKE";
    goto loc_1006a27e0;

loc_1006a27a8:
    r19 = @"CPUFAMILY_ARM_CYCLONE";
    goto loc_1006a27e0;

loc_1006a252c:
    if (0xffffffffffffffff > 0xffffffffcee41548) goto loc_1006a25d4;

loc_1006a253c:
    if (0xffffffffffffffff > 0xffffffffa8511bc9) goto loc_1006a2650;

loc_1006a254c:
    if (0xffffffffffffffff == 0xffffffff8ff620d8) goto loc_1006a2730;

loc_1006a255c:
    if (0xffffffffffffffff == 0xffffffff92fb37c8) goto loc_1006a273c;

loc_1006a256c:
    if (0xffffffffffffffff != 0xffffffff96077ef1) goto loc_1006a27fc;

loc_1006a257c:
    r19 = @"CPUFAMILY_ARM_14";
    goto loc_1006a27e0;

loc_1006a273c:
    r19 = @"CPUFAMILY_ARM_TWISTER";
    goto loc_1006a27e0;

loc_1006a2730:
    r19 = @"CPUFAMILY_ARM_11";
    goto loc_1006a27e0;

loc_1006a2650:
    if (0xffffffffffffffff == 0xffffffffa8511bca) goto loc_1006a2790;

loc_1006a2660:
    if (0xffffffffffffffff == 0xffffffffaa33392b) goto loc_1006a279c;

loc_1006a2670:
    if (0xffffffffffffffff != 0xffffffffbd1b0ae9) goto loc_1006a27fc;

loc_1006a2680:
    r19 = @"CPUFAMILY_ARM_12";
    goto loc_1006a27e0;

loc_1006a279c:
    r19 = @"CPUFAMILY_INTEL_6_13";
    goto loc_1006a27e0;

loc_1006a2790:
    r19 = @"CPUFAMILY_ARM_15";
    goto loc_1006a27e0;

loc_1006a25d4:
    if ((0xffffffffffffffff & 0xffffffff80000000) == 0x0) goto loc_1006a26c8;

loc_1006a25d8:
    if (0xffffffffffffffff == 0xffffffffcee41549) goto loc_1006a2760;

loc_1006a25e8:
    if (0xffffffffffffffff == 0xffffffffe73283ae) goto loc_1006a276c;

loc_1006a25f8:
    if (0xffffffffffffffff != 0xffffffffed76d8aa) goto loc_1006a27fc;

loc_1006a2608:
    r19 = @"CPUFAMILY_POWERPC_G5";
    goto loc_1006a27e0;

loc_1006a276c:
    r19 = @"CPUFAMILY_ARM_9";
    goto loc_1006a27e0;

loc_1006a2760:
    r19 = @"CPUFAMILY_POWERPC_G3";
    goto loc_1006a27e0;

loc_1006a26c8:
    if (0xffffffffffffffff == 0x0) goto loc_1006a27c0;

loc_1006a26cc:
    if (0xffffffffffffffff == 0xcc90e64) goto loc_1006a27cc;

loc_1006a26dc:
    if (0xffffffffffffffff != 0x10b282dc) goto loc_1006a27fc;

loc_1006a26ec:
    r19 = @"CPUFAMILY_INTEL_HASWELL";
    goto loc_1006a27e0;

loc_1006a27cc:
    r19 = @"CPUFAMILY_ARM_13";
    goto loc_1006a27e0;

loc_1006a27c0:
    r19 = @"CPUFAMILY_UNKNOWN";
    goto loc_1006a27e0;
}

+(void *)cpuVendor {
    r0 = [ADJSystemProfile readSysctlbByNameString:"machdep.cpu.vendor" errorLog:@"Failed to obtain CPU vendor"];
    return r0;
}

+(void *)osVersion {
    r0 = [ADJSystemProfile readSysctlbByNameString:"kern.osversion" errorLog:@"Failed to obtain OS version"];
    return r0;
}

+(void *)appleLanguage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"AppleLanguages"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r21 = [[r20 objectAtIndex:r2] retain];
    }
    else {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 error:@"Failed to obtain preferred language"];
            [r0 release];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)readSysctlbByNameString:(char *)arg2 errorLog:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = sysctlbyname(r21, 0x0, &var_28, 0x0, 0x0);
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 error:@"%@ (%d)"];
            [r0 release];
            r21 = 0x0;
    }
    else {
            r20 = malloc(var_28);
            if (r20 != 0x0) {
                    r0 = sysctlbyname(r21, r20, &var_28, 0x0, 0x0);
                    r21 = r0;
                    if (r21 != 0x0) {
                            r0 = [ADJAdjustFactory logger];
                            r0 = [r0 retain];
                            [r0 error:@"%@ (%d)"];
                            [r0 release];
                            free(r20);
                            r21 = 0x0;
                    }
                    else {
                            r21 = [[NSString stringWithUTF8String:r2] retain];
                            free(r20);
                    }
            }
            else {
                    r21 = [[NSString stringWithUTF8String:r2] retain];
                    free(r20);
            }
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(long long)cpuSpeed {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctl(&var_28, 0x2, &var_18, &var_20, 0x0, 0x0);
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 error:@"Failed to obtain CPU speed (%d)"];
            [r0 release];
            r0 = 0xffffffffffffffff;
    }
    else {
            r8 = var_18;
            asm { smulh      x8, x8, x9 };
            r0 = (SAR(r8, 0x12)) + r8 / 0xffffffff80000000;
    }
    return r0;
}

+(long long)ramsize {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctlbyname("hw.memsize", &var_18, &var_20, 0x0, 0x0);
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 error:@"Failed to obtain RAM size (%d)"];
            [r0 release];
            r0 = 0xffffffffffffffff;
    }
    else {
            r8 = var_18;
            r9 = r8 + 0xfffff;
            if (r8 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r8 = r8;
                    }
                    else {
                            r8 = r9;
                    }
            }
            r0 = SAR(r8, 0x14);
    }
    return r0;
}

+(void *)cpuType {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctlbyname("hw.cputype", &var_24, &var_30, 0x0, 0x0);
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 error:@"Failed to obtain CPU type (%d)"];
            [r0 release];
            r20 = 0x0;
    }
    else {
            r0 = [ADJSystemProfile readCpuTypeSubtype:var_24 readSubType:0x0 cpusubtype:0x0];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r20 = [[NSString stringWithFormat:@"Unknown CPU type %d"] retain];
                    r0 = [ADJAdjustFactory logger];
                    r0 = [r0 retain];
                    [r0 warn:@"%@"];
                    [r0 release];
            }
            [r19 release];
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)cpuSubtype {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctlbyname("hw.cputype", &var_24, &var_30, 0x0, 0x0);
    r19 = r0;
    if (r19 == 0x0) goto loc_1006a2f70;

loc_1006a2f38:
    r20 = [[ADJAdjustFactory logger] retain];
    goto loc_1006a2fd4;

loc_1006a2fd4:
    [r20 error:r2];
    [r20 release];
    r20 = 0x0;
    goto loc_1006a2fe8;

loc_1006a2fe8:
    r0 = [r20 autorelease];
    return r0;

loc_1006a2f70:
    r0 = sysctlbyname("hw.cpusubtype", &var_34, &var_30, 0x0, 0x0);
    r19 = r0;
    if (r19 == 0x0) goto loc_1006a3000;

loc_1006a2fa0:
    r20 = [[ADJAdjustFactory logger] retain];
    goto loc_1006a2fd4;

loc_1006a3000:
    r0 = [ADJSystemProfile readCpuTypeSubtype:var_24 readSubType:0x1 cpusubtype:var_34];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = [[NSString stringWithFormat:@"Unknown CPU subtype %d"] retain];
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 warn:@"%@"];
            [r0 release];
    }
    [r19 release];
    goto loc_1006a2fe8;
}

+(void *)readCpuTypeSubtype:(int)arg2 readSubType:(bool)arg3 cpusubtype:(int)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 > 0x1000006) goto loc_1006a3124;

loc_1006a30dc:
    r19 = 0x0;
    r8 = r2 + 0x1;
    if (r8 > 0x13) goto loc_1006a374c;

loc_1006a30e8:
    r19 = 0x0;
    goto *0x1006a375c[sign_extend_64(*(int32_t *)(0x1006a375c + r8 * 0x4)) + 0x1006a375c];

loc_1006a30fc:
    if ((r3 & 0x1) == 0x0) goto loc_1006a3350;

loc_1006a3100:
    if (r4 == 0x1) goto loc_1006a3448;

loc_1006a3108:
    if (r4 == 0x0) goto loc_1006a3454;

loc_1006a310c:
    r19 = 0x0;
    if (r4 != -0x1) goto loc_1006a374c;

loc_1006a3118:
    r19 = @"CPU_SUBTYPE_MULTIPLE";
    goto loc_1006a3744;

loc_1006a3744:
    [r19 retain];
    goto loc_1006a374c;

loc_1006a374c:
    r0 = [r19 autorelease];
    return r0;

loc_1006a3454:
    r19 = @"CPU_SUBTYPE_LITTLE_ENDIAN";
    goto loc_1006a3744;

loc_1006a3448:
    r19 = @"CPU_SUBTYPE_BIG_ENDIAN";
    goto loc_1006a3744;

loc_1006a3350:
    r19 = @"CPU_TYPE_ANY";
    goto loc_1006a3744;

loc_1006a3184:
    if ((r3 & 0x1) == 0x0) goto loc_1006a335c;

loc_1006a3188:
    r8 = r4;
    if (r4 > 0xc) goto loc_1006a32c0;

loc_1006a3194:
    switch (sign_extend_64(*(int32_t *)(0x1006a3888 + r8 * 0x4)) + 0x1006a3888) {
        case 0:
            r19 = @"CPU_SUBTYPE_VAX_ALL";
            break;
        case 1:
            r19 = @"CPU_SUBTYPE_VAX780";
            break;
        case 2:
            r19 = @"CPU_SUBTYPE_VAX785";
            break;
        case 3:
            r19 = @"CPU_SUBTYPE_VAX750";
            break;
        case 4:
            r19 = @"CPU_SUBTYPE_VAX730";
            break;
        case 5:
            r19 = @"CPU_SUBTYPE_UVAXI";
            break;
        case 6:
            r19 = @"CPU_SUBTYPE_UVAXII";
            break;
        case 7:
            r19 = @"CPU_SUBTYPE_VAX8200";
            break;
        case 8:
            r19 = @"CPU_SUBTYPE_VAX8500";
            break;
        case 9:
            r19 = @"CPU_SUBTYPE_VAX8600";
            break;
        case 10:
            r19 = @"CPU_SUBTYPE_VAX8650";
            break;
        case 11:
            r19 = @"CPU_SUBTYPE_VAX8800";
            break;
        case 12:
            r19 = @"CPU_SUBTYPE_UVAXIII";
            break;
    }

loc_1006a32c0:
    r19 = 0x0;
    goto loc_1006a374c;

loc_1006a335c:
    r19 = @"CPU_TYPE_VAX";
    goto loc_1006a3744;

loc_1006a31b4:
    if ((r3 & 0x1) == 0x0) goto loc_1006a3368;

loc_1006a31b8:
    if (r4 == 0x3) goto loc_1006a3460;

loc_1006a31c0:
    if (r4 == 0x2) goto loc_1006a346c;

loc_1006a31c8:
    r19 = 0x0;
    if (r4 != 0x1) goto loc_1006a374c;

loc_1006a31d4:
    r19 = @"CPU_SUBTYPE_MC680x0_ALL";
    goto loc_1006a3744;

loc_1006a346c:
    r19 = @"CPU_SUBTYPE_MC68040";
    goto loc_1006a3744;

loc_1006a3460:
    r19 = @"CPU_SUBTYPE_MC68030_ONLY";
    goto loc_1006a3744;

loc_1006a3368:
    r19 = @"CPU_TYPE_MC680x0";
    goto loc_1006a3744;

loc_1006a31e0:
    if ((r3 & 0x1) == 0x0) goto loc_1006a3374;

loc_1006a31e4:
    if (r4 > 0x27) goto loc_1006a341c;

loc_1006a31f0:
    r19 = 0x0;
    r8 = r4 - 0x3;
    if (r8 > 0x19) goto loc_1006a374c;

loc_1006a31fc:
    r19 = 0x0;
    goto *0x1006a3820[sign_extend_64(*(int32_t *)(0x1006a3820 + r8 * 0x4)) + 0x1006a3820];

loc_1006a3210:
    r19 = @"CPU_SUBTYPE_386";
    goto loc_1006a3744;

loc_1006a3688:
    r19 = @"CPU_SUBTYPE_486";
    goto loc_1006a3744;

loc_1006a3694:
    r19 = @"CPU_SUBTYPE_586";
    goto loc_1006a3744;

loc_1006a36a0:
    r19 = @"CPU_SUBTYPE_PENTIUM_3";
    goto loc_1006a3744;

loc_1006a36ac:
    r19 = @"CPU_SUBTYPE_PENTIUM_M";
    goto loc_1006a3744;

loc_1006a36b8:
    r19 = @"CPU_SUBTYPE_PENTIUM_4";
    goto loc_1006a3744;

loc_1006a36c4:
    r19 = @"CPU_SUBTYPE_ITANIUM";
    goto loc_1006a3744;

loc_1006a36d0:
    r19 = @"CPU_SUBTYPE_XEON";
    goto loc_1006a3744;

loc_1006a36dc:
    r19 = @"CPU_SUBTYPE_PENTPRO";
    goto loc_1006a3744;

loc_1006a36e8:
    r19 = @"CPU_SUBTYPE_PENTIUM_3_M";
    goto loc_1006a3744;

loc_1006a36f4:
    r19 = @"CPU_SUBTYPE_PENTIUM_4_M";
    goto loc_1006a3744;

loc_1006a3700:
    r19 = @"CPU_SUBTYPE_ITANIUM_2";
    goto loc_1006a3744;

loc_1006a370c:
    r19 = @"CPU_SUBTYPE_XEON_MP";
    goto loc_1006a3744;

loc_1006a341c:
    if (r4 > 0x66) goto loc_1006a34a8;

loc_1006a3424:
    if (r4 == 0x28) goto loc_1006a3730;

loc_1006a342c:
    if (r4 == 0x36) goto loc_1006a3718;

loc_1006a3434:
    r19 = 0x0;
    if (r4 != 0x56) goto loc_1006a374c;

loc_1006a343c:
    r19 = @"CPU_SUBTYPE_PENTII_M5";
    goto loc_1006a3744;

loc_1006a3718:
    r19 = @"CPU_SUBTYPE_PENTII_M3";
    goto loc_1006a3744;

loc_1006a3730:
    r19 = @"CPU_SUBTYPE_PENTIUM_3_XEON";
    goto loc_1006a3744;

loc_1006a34a8:
    if (r4 == 0x67) goto loc_1006a373c;

loc_1006a34b0:
    if (r4 == 0x77) goto loc_1006a3724;

loc_1006a34b8:
    r19 = 0x0;
    if (r4 != 0x84) goto loc_1006a374c;

loc_1006a34c0:
    r19 = @"CPU_SUBTYPE_486SX";
    goto loc_1006a3744;

loc_1006a3724:
    r19 = @"CPU_SUBTYPE_CELERON_MOBILE";
    goto loc_1006a3744;

loc_1006a373c:
    r19 = @"CPU_SUBTYPE_CELERON";
    goto loc_1006a3744;

loc_1006a3374:
    r19 = @"CPU_TYPE_X86";
    goto loc_1006a3744;

loc_1006a321c:
    if ((r3 & 0x1) == 0x0) goto loc_1006a3380;

loc_1006a3220:
    if (r4 == 0x1) goto loc_1006a33f8;

loc_1006a3228:
    r19 = 0x0;
    if (r4 != 0x0) goto loc_1006a374c;

loc_1006a3230:
    r19 = @"CPU_SUBTYPE_MC98000_ALL";
    goto loc_1006a3744;

loc_1006a33f8:
    r19 = @"CPU_SUBTYPE_MC98601";
    goto loc_1006a3744;

loc_1006a3380:
    r19 = @"CPU_TYPE_MC98000";
    goto loc_1006a3744;

loc_1006a323c:
    if ((r3 & 0x1) == 0x0) goto loc_1006a338c;

loc_1006a3240:
    if (r4 == 0x1) goto loc_1006a3404;

loc_1006a3248:
    r19 = 0x0;
    if (r4 != 0x0) goto loc_1006a374c;

loc_1006a3250:
    r19 = @"CPU_SUBTYPE_HPPA_7100";
    goto loc_1006a3744;

loc_1006a3404:
    r19 = @"CPU_SUBTYPE_HPPA_7100LC";
    goto loc_1006a3744;

loc_1006a338c:
    r19 = @"CPU_TYPE_HPPA";
    goto loc_1006a3744;

loc_1006a325c:
    if ((r3 & 0x1) == 0x0) goto loc_1006a3398;

loc_1006a3260:
    r19 = 0x0;
    r8 = r4;
    if (r4 > 0x10) goto loc_1006a374c;

loc_1006a3270:
    r19 = 0x0;
    goto *0x1006a37dc[sign_extend_64(*(int32_t *)(0x1006a37dc + r8 * 0x4)) + 0x1006a37dc];

loc_1006a3284:
    r19 = @"CPU_SUBTYPE_ARM_ALL";
    goto loc_1006a3744;

loc_1006a3574:
    r19 = @"CPU_SUBTYPE_ARM_V4T";
    goto loc_1006a3744;

loc_1006a3580:
    r19 = @"CPU_SUBTYPE_ARM_V6";
    goto loc_1006a3744;

loc_1006a358c:
    r19 = @"CPU_SUBTYPE_ARM_V5TEJ";
    goto loc_1006a3744;

loc_1006a3598:
    r19 = @"CPU_SUBTYPE_ARM_XSCALE";
    goto loc_1006a3744;

loc_1006a35a4:
    r19 = @"CPU_SUBTYPE_ARM_V7";
    goto loc_1006a3744;

loc_1006a35b0:
    r19 = @"CPU_SUBTYPE_ARM_V7F";
    goto loc_1006a3744;

loc_1006a35bc:
    r19 = @"CPU_SUBTYPE_ARM_V7S";
    goto loc_1006a3744;

loc_1006a35c8:
    r19 = @"CPU_SUBTYPE_ARM_V7K";
    goto loc_1006a3744;

loc_1006a35d4:
    r19 = @"CPU_SUBTYPE_ARM_V8";
    goto loc_1006a3744;

loc_1006a35e0:
    r19 = @"CPU_SUBTYPE_ARM_V6M";
    goto loc_1006a3744;

loc_1006a35ec:
    r19 = @"CPU_SUBTYPE_ARM_V7M";
    goto loc_1006a3744;

loc_1006a35f8:
    r19 = @"CPU_SUBTYPE_ARM_V7EM";
    goto loc_1006a3744;

loc_1006a3398:
    r19 = @"CPU_TYPE_ARM";
    goto loc_1006a3744;

loc_1006a3290:
    if ((r3 & 0x1) == 0x0) goto loc_1006a33a4;

loc_1006a3294:
    if (r4 == 0x2) goto loc_1006a3478;

loc_1006a329c:
    if (r4 == 0x1) goto loc_1006a3484;

loc_1006a32a4:
    r19 = 0x0;
    if (r4 != 0x0) goto loc_1006a374c;

loc_1006a32ac:
    r19 = @"CPU_SUBTYPE_MC88000_ALL";
    goto loc_1006a3744;

loc_1006a3484:
    r19 = @"CPU_SUBTYPE_MC88100";
    goto loc_1006a3744;

loc_1006a3478:
    r19 = @"CPU_SUBTYPE_MC88110";
    goto loc_1006a3744;

loc_1006a33a4:
    r19 = @"CPU_TYPE_MC88000";
    goto loc_1006a3744;

loc_1006a32b8:
    if ((r3 & 0x1) == 0x0) goto loc_1006a33b0;

loc_1006a32bc:
    if (r4 == 0x0) goto loc_1006a33e0;
    goto loc_1006a32c0;

loc_1006a33e0:
    r19 = @"CPU_SUBTYPE_SPARC_ALL";
    goto loc_1006a3744;

loc_1006a33b0:
    r19 = @"CPU_TYPE_SPARC";
    goto loc_1006a3744;

loc_1006a3164:
    if ((r3 & 0x1) == 0x0) goto loc_1006a3344;

loc_1006a3168:
    if (r4 == 0x1) goto loc_1006a33ec;

loc_1006a3170:
    r19 = 0x0;
    if (r4 != 0x0) goto loc_1006a374c;

loc_1006a3178:
    r19 = @"CPU_SUBTYPE_I860_ALL";
    goto loc_1006a3744;

loc_1006a33ec:
    r19 = @"CPU_SUBTYPE_I860_860";
    goto loc_1006a3744;

loc_1006a3344:
    r19 = @"CPU_TYPE_I860";
    goto loc_1006a3744;

loc_1006a32c8:
    if ((r3 & 0x1) == 0x0) goto loc_1006a33bc;

loc_1006a32cc:
    r8 = r4;
    if (r4 > 0xb) goto loc_1006a34cc;

loc_1006a32d8:
    switch (sign_extend_64(*(int32_t *)(0x1006a37ac + r8 * 0x4)) + 0x1006a37ac) {
        case 0:
            r19 = @"CPU_SUBTYPE_POWERPC_ALL";
            break;
        case 1:
            r19 = @"CPU_SUBTYPE_POWERPC_601";
            break;
        case 2:
            r19 = @"CPU_SUBTYPE_POWERPC_602";
            break;
        case 3:
            r19 = @"CPU_SUBTYPE_POWERPC_603";
            break;
        case 4:
            r19 = @"CPU_SUBTYPE_POWERPC_603e";
            break;
        case 5:
            r19 = @"CPU_SUBTYPE_POWERPC_603ev";
            break;
        case 6:
            r19 = @"CPU_SUBTYPE_POWERPC_604";
            break;
        case 7:
            r19 = @"CPU_SUBTYPE_POWERPC_604e";
            break;
        case 8:
            r19 = @"CPU_SUBTYPE_POWERPC_620";
            break;
        case 9:
            r19 = @"CPU_SUBTYPE_POWERPC_750";
            break;
        case 10:
            r19 = @"CPU_SUBTYPE_POWERPC_7400";
            break;
        case 11:
            r19 = @"CPU_SUBTYPE_POWERPC_7450";
            break;
    }

loc_1006a34cc:
    r19 = 0x0;
    if (r4 != 0x64) goto loc_1006a374c;

loc_1006a34d8:
    r19 = @"CPU_SUBTYPE_POWERPC_970";
    goto loc_1006a3744;

loc_1006a33bc:
    r19 = @"CPU_TYPE_POWERPC";
    goto loc_1006a3744;

loc_1006a3124:
    if (r2 == 0x1000007) goto loc_1006a32f8;

loc_1006a3134:
    if (r2 == 0x100000c) goto loc_1006a3324;

loc_1006a3144:
    r19 = 0x0;
    if (r2 != 0x1000012) goto loc_1006a374c;

loc_1006a3154:
    if ((r3 & 0x1) != 0x0) goto loc_1006a32c0;

loc_1006a3158:
    r19 = @"CPU_TYPE_POWERPC64";
    goto loc_1006a3744;

loc_1006a3324:
    if ((r3 & 0x1) == 0x0) goto loc_1006a33d4;

loc_1006a3328:
    if (r4 == 0x1) goto loc_1006a3410;

loc_1006a3330:
    r19 = 0x0;
    if (r4 != 0x0) goto loc_1006a374c;

loc_1006a3338:
    r19 = @"CPU_SUBTYPE_ARM64_ALL";
    goto loc_1006a3744;

loc_1006a3410:
    r19 = @"CPU_SUBTYPE_ARM64_V8";
    goto loc_1006a3744;

loc_1006a33d4:
    r19 = @"CPU_TYPE_ARM64";
    goto loc_1006a3744;

loc_1006a32f8:
    if ((r3 & 0x1) == 0x0) goto loc_1006a33c8;

loc_1006a32fc:
    if (r4 == 0x8) goto loc_1006a3490;

loc_1006a3304:
    if (r4 == 0x4) goto loc_1006a349c;

loc_1006a330c:
    r19 = 0x0;
    if (r4 != 0x3) goto loc_1006a374c;

loc_1006a3318:
    r19 = @"CPU_SUBTYPE_X86_64_ALL";
    goto loc_1006a3744;

loc_1006a349c:
    r19 = @"CPU_SUBTYPE_X86_ARCH1";
    goto loc_1006a3744;

loc_1006a3490:
    r19 = @"CPU_SUBTYPE_X86_64_H";
    goto loc_1006a3744;

loc_1006a33c8:
    r19 = @"CPU_TYPE_X86_64";
    goto loc_1006a3744;
}

@end
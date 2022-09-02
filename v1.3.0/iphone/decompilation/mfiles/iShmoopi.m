@implementation iShmoopi

+(void)defenestration:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r8 = *0x1011e6fe8;
    *0x1011e6fe8 = r0;
    [r8 release];
    [self onDefenestration:[Kartzela callipygian] error:0x0];
    return;
}

+(void)flummox {
    system("killall SpringBoard");
    r20 = [[UIApplication sharedApplication] retain];
    r21 = [[UIApplication sharedApplication] retain];
    [r20 sendAction:0x9 to:r21 from:self forEvent:0x0];
    [r21 release];
    [r20 release];
    r19 = [[NSMutableArray alloc] init];
    goto loc_1005f5290;

loc_1005f5290:
    [r19 addObject:r2];
    goto loc_1005f5290;
}

+(void)onSelcouth:(int)arg2 error:(void *)arg3 {
    r0 = *0x1011e6ff0;
    r4 = *(r0 + 0x10);
    (r4)(r0, arg2, arg3, arg3, r4);
    return;
}

+(void)onDefenestration:(int)arg2 error:(void *)arg3 {
    r0 = *0x1011e6fe8;
    r4 = *(r0 + 0x10);
    (r4)(r0, arg2, arg3, arg3, r4);
    return;
}

+(void)selcouth:(void *)arg2 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x460;
    r23 = self;
    r0 = [arg2 retain];
    var_498 = r0;
    r0 = objc_retainBlock(r0);
    r8 = *0x1011e6ff0;
    *0x1011e6ff0 = r0;
    [r8 release];
    if ([Kartzela callipygian] == 0x45e3b14) goto loc_1005f3b34;

loc_1005f3aa0:
    if ((sub_1005f52dc() & 0x1) == 0x0) goto loc_1005f3b68;

loc_1005f3aa8:
    r0 = NSHomeDirectory();
    r0 = [r0 retain];
    r19 = [[r0 stringByAppendingPathComponent:@"iTunesArtwork"] retain];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 fileExistsAtPath:r19];
    [r0 release];
    [r19 release];
    if ((r21 & 0x1) != 0x0) goto loc_1005f3b68;

loc_1005f3b34:
    [r23 onSelcouth:0x2ca7d58 error:0x0];
    goto loc_1005f5104;

loc_1005f5104:
    var_68 = **___stack_chk_guard;
    [var_498 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_1005f3b68:
    r0 = dlopen(0x0, 0xa);
    (dlsym(r0, "ptrace"))(0x1f, 0x0, 0x0, 0x0);
    dlclose(r19);
    r0 = [NSMutableArray arrayWithCapacity:0xc];
    r29 = r29;
    r19 = [r0 retain];
    r0 = dladdr(0x1000211fc, &stack[-968]);
    r22 = 0x1497d;
    if (r0 == 0x0) goto loc_1005f3c50;

loc_1005f3be8:
    r9 = var_3B0;
    r22 = 0x1497d;
    if (r9 == 0x0) goto loc_1005f3c50;

loc_1005f3bf8:
    r8 = r9 + 0x1c;
    r9 = *(int32_t *)(r9 + 0x10);
    r10 = 0xffffffffffffffff;
    goto loc_1005f3c04;

loc_1005f3c04:
    r10 = r10 + 0x1;
    r22 = 0x180f9;
    if (r10 >= r9) goto loc_1005f3c50;

loc_1005f3c18:
    if (*(int32_t *)r8 == 0x21) goto loc_1005f3c3c;

loc_1005f3c24:
    r8 = r8 + *(int32_t *)(r8 + 0x4);
    if (r8 != 0x0) goto loc_1005f3c04;

loc_1005f3c38:
    r22 = 0x180f9;
    goto loc_1005f3c50;

loc_1005f3c50:
    var_4A0 = r19;
    var_488 = r23;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 infoDictionary];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    r0 = sub_1005f52dc();
    r23 = 0x1edb;
    if ((r0 & 0x1) != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 executablePath];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            r23 = 0x1e5a;
            if (r19 != 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 fileExistsAtPath:r20];
                    [r0 release];
                    if (r23 != -0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r23 = 0x1e5a;
                            }
                            else {
                                    r23 = 0x1837f;
                            }
                    }
            }
            [r20 release];
    }
    [r19 release];
    r0 = NSHomeDirectory();
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    r0 = sub_1005f52dc();
    r24 = 0x333;
    if ((r0 & 0x1) != 0x0) {
            r24 = 0x333;
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 fileExistsAtPath:r19];
            [r0 release];
            if (r21 != -0x0) {
                    if (!CPU_FLAGS & NE) {
                            r24 = 0x5019;
                    }
                    else {
                            r24 = 0x4b7a;
                    }
            }
    }
    var_480 = r23;
    [r19 release];
    bzero(&stack[-920], 0x288);
    getpid();
    r8 = 0x0;
    if (sysctl(&var_398, 0x4, &stack[-920], r29 - 0x100, 0x0, 0x0) != 0x0) {
            r8 = 0x1400b;
            if ((var_367 & 0x8) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = 0x0;
                    }
                    else {
                            r8 = 0x1400b;
                    }
            }
    }
    var_4A8 = r8;
    [@"Info.plist, iTunesMetadata.plist" retain];
    r19 = [@"Info.plist, iTunesMetadata.plist" isEqualToString:@"Info.plist, iTunesMetadata.plist"];
    [@"Info.plist, iTunesMetadata.plist" release];
    if (r19 != -0x0) {
            if (!CPU_FLAGS & NE) {
                    r19 = 0x18389;
            }
            else {
                    r19 = 0x17eba;
            }
    }
    r8 = 0x237ba4;
    if (getuid() == -0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x237ba4;
            }
            else {
                    r8 = 0xdea2f;
            }
    }
    var_490 = r19;
    var_48C = r8;
    var_4A4 = r24;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r19 release];
    if (s8 >= 0x4014000000000000) goto loc_1005f4030;

loc_1005f3f68:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 bundlePath];
    r29 = r29;
    r19 = [r0 retain];
    [r21 release];
    r0 = sub_1005f52dc();
    r21 = 0x2006;
    if ((r0 & 0x1) == 0x0) goto loc_1005f4104;

loc_1005f3fac:
    r21 = [[NSFileManager defaultManager] retain];
    r0 = [r19 stringByAppendingPathComponent:@"_CodeSignature"];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r21 fileExistsAtPath:r23];
    [r23 release];
    [r21 release];
    r8 = 0xce9dc;
    goto loc_1005f40f4;

loc_1005f40f4:
    if (r24 != -0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = r8;
            }
            else {
                    r21 = 0x3d957b3;
            }
    }
    goto loc_1005f4104;

loc_1005f4104:
    [r19 release];
    var_4AC = r21;
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r19 release];
    if (s8 >= 0x4014000000000000) goto loc_1005f4240;

loc_1005f4178:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 bundlePath];
    r29 = r29;
    r23 = [r0 retain];
    [r19 release];
    r0 = sub_1005f52dc();
    r19 = 0x4a0e54;
    if ((r0 & 0x1) == 0x0) goto loc_1005f4314;

loc_1005f41c0:
    r19 = [[NSFileManager defaultManager] retain];
    r0 = [r23 stringByAppendingPathComponent:@"_CodeSignature"];
    r29 = r29;
    r21 = [r0 retain];
    r24 = [r19 fileExistsAtPath:r21];
    [r21 release];
    [r19 release];
    r8 = 0x21ce;
    goto loc_1005f4304;

loc_1005f4304:
    if (r24 != -0x0) {
            if (!CPU_FLAGS & NE) {
                    r19 = r8;
            }
            else {
                    r19 = 0x444bcf;
            }
    }
    goto loc_1005f4314;

loc_1005f4314:
    [r23 release];
    var_4B0 = r19;
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r19 release];
    if (s8 >= 0x4014000000000000) goto loc_1005f4450;

loc_1005f4388:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 bundlePath];
    r29 = r29;
    r23 = [r0 retain];
    [r19 release];
    r0 = sub_1005f52dc();
    r20 = 0xfd15;
    if ((r0 & 0x1) == 0x0) goto loc_1005f4520;

loc_1005f43cc:
    r19 = [[NSFileManager defaultManager] retain];
    r0 = [r23 stringByAppendingPathComponent:@"CodeResources"];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [r19 fileExistsAtPath:r20];
    [r20 release];
    [r19 release];
    r8 = 0xa27bc;
    goto loc_1005f4510;

loc_1005f4510:
    if (r21 != -0x0) {
            if (!CPU_FLAGS & NE) {
                    r20 = r8;
            }
            else {
                    r20 = 0xe7e73;
            }
    }
    goto loc_1005f4520;

loc_1005f4520:
    [r23 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r24 = [[r0 executablePath] retain];
    [r0 release];
    r25 = sub_1005f3854(r24, 0x1000);
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r26 = [[r0 executablePath] retain];
    [r0 release];
    var_4C0 = r26;
    r23 = [[NSString stringWithFormat:@"%@"] retain];
    r27 = [r25 retain];
    r0 = [ShmoopiKeychainUtils getPasswordForUsername:@"Shmoopi" andServiceName:r23 error:r29 - 0xf0];
    r29 = r29;
    r21 = [r0 retain];
    r19 = [0x0 retain];
    if (r27 != 0x0) {
            r28 = &@class(MPVASTModel);
            if (r21 == 0x0) {
                    [ShmoopiKeychainUtils storeUsername:@"Shmoopi" andPassword:r25 forServiceName:r23 updateExisting:0x0 error:r29 - 0xf8];
                    r28 = [r19 retain];
                    [r19 release];
                    r19 = r28;
            }
            if (r25 == r21) {
                    if (!CPU_FLAGS & E) {
                            r28 = 0x2ace1dd;
                    }
                    else {
                            r28 = 0xe0e0;
                    }
            }
            CFRelease(r27);
    }
    else {
            r28 = 0x925;
    }
    [r21 release];
    [r27 release];
    [r23 release];
    [r26 release];
    [r19 release];
    [r24 release];
    r0 = [JailBreakChecks isApplicationCrackd];
    r25 = 0x54dc8;
    if (r0 != 0x0) {
            r0 = [JailBreakChecks isApplicationTamperedWith];
            r25 = 0x8047;
            if (r0 != 0x0) {
                    r25 = 0x8047;
                    if ([JailBreakChecks isDeviceJailbroken] != -0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r25 = 0x3a4f4e;
                            }
                            else {
                                    r25 = 0x2fc8fe;
                            }
                    }
            }
    }
    r2 = @"Shmoopi";
    if (dladdr(class_getMethodImplementation(objc_getClass("iShmoopi"), sel_registerName("defenestration:")), r29 - 0x88) == 0x0) goto loc_1005f47f0;

loc_1005f478c:
    r0 = [NSString stringWithUTF8String:var_88];
    r29 = r29;
    r0 = [r0 retain];
    r2 = @"dylib";
    r21 = [r0 rangeOfString:r2 options:0x1];
    [r0 release];
    r26 = 0x13e31;
    if (r21 != 0x7fffffffffffffff) goto loc_1005f4ac4;

loc_1005f47f0:
    if (dladdr(class_getMethodImplementation(objc_getClass("iShmoopi"), sel_registerName("flummox")), r29 - 0xa8) == 0x0) goto loc_1005f4894;

loc_1005f482c:
    r0 = [NSString stringWithUTF8String:var_A8];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 rangeOfString:@"dylib" options:0x1];
    [r0 release];
    if (r21 != 0x7fffffffffffffff) {
            asm { cinc       w26, w24, ne };
    }
    r26 = 0x13e31;
    r2 = @"dylib";
    if (CPU_FLAGS & NE) goto loc_1005f4ac4;

loc_1005f4894:
    r26 = 0x13e31;
    if (dladdr(class_getMethodImplementation(objc_getClass("iShmoopi"), sel_registerName("selcouth:")), r29 - 0xc8) == 0x0) goto loc_1005f4930;

loc_1005f48c8:
    r26 = 0x13e31;
    r0 = [NSString stringWithUTF8String:var_C8];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 rangeOfString:@"dylib" options:0x1];
    [r0 release];
    if (r21 == 0x7fffffffffffffff) {
            if (!CPU_FLAGS & E) {
                    r26 = 0x13e33;
            }
            else {
                    r26 = 0x13e31;
            }
    }
    r2 = @"dylib";
    if (CPU_FLAGS & NE) goto loc_1005f4ac4;

loc_1005f4930:
    if (dladdr(class_getMethodImplementation(objc_getClass("NSFileManager"), sel_registerName("fileExistsAtPath:")), r29 - 0xe8) == 0x0) goto loc_1005f4abc;

loc_1005f4964:
    r0 = [NSString stringWithUTF8String:var_E8];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 rangeOfString:@"dylib" options:0x1];
    [r0 release];
    if (r21 == 0x7fffffffffffffff) {
            if (!CPU_FLAGS & E) {
                    r26 = 0x13e34;
            }
            else {
                    r26 = r26;
            }
    }
    r2 = @"dylib";
    if (CPU_FLAGS & NE) goto loc_1005f4ac4;

loc_1005f49cc:
    r2 = @"dylib";
    goto loc_1005f4abc;

loc_1005f4abc:
    r26 = 0x354bf1b;
    goto loc_1005f4ac4;

loc_1005f4ac4:
    r23 = 0x0;
    r21 = var_4A0;
    if (r22 != 0xbd08) {
            r0 = [NSNumber numberWithInt:r22];
            r29 = r29;
            r19 = [r0 retain];
            r2 = r19;
            [r21 addObject:r2];
            [r19 release];
            r23 = 0x1;
    }
    r22 = var_4A4;
    if (var_480 != 0x1837f) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r19 = [r0 retain];
            r2 = r19;
            [r21 addObject:r2];
            [r19 release];
    }
    if (r22 != 0x4b7a) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r22];
            r29 = r29;
            r19 = [r0 retain];
            r2 = r19;
            [r21 addObject:r2];
            [r19 release];
    }
    if (var_4A8 == 0x1400b) {
            r23 = r23 + 0x1;
            r0 = @(0x1400b);
            r29 = r29;
            r19 = [r0 retain];
            r2 = r19;
            [r21 addObject:r2];
            [r19 release];
    }
    r22 = var_48C;
    if (var_490 != 0x17eba) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r19 = [r0 retain];
            r2 = r19;
            [r21 addObject:r2];
            [r19 release];
    }
    if (r22 != 0x237ba4) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r22];
            r29 = r29;
            r19 = [r0 retain];
            r2 = r19;
            [r21 addObject:r2];
            [r19 release];
    }
    if (var_4AC != 0x3d957b3) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r19 = [r0 retain];
            r2 = r19;
            [r21 addObject:r2];
            [r19 release];
    }
    if (var_4B0 != 0x444bcf) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r21 addObject:r19];
            [r19 release];
    }
    if (r20 != 0xe7e73) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r20];
            r29 = r29;
            r19 = [r0 retain];
            [r21 addObject:r19];
            [r19 release];
    }
    if (r28 != 0x2ace1dd) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r28];
            r29 = r29;
            r19 = [r0 retain];
            [r21 addObject:r19];
            [r19 release];
    }
    if (r25 != 0x2fc8fe) {
            r23 = r23 + 0x1;
            r0 = [NSNumber numberWithInt:r25];
            r29 = r29;
            r19 = [r0 retain];
            [r21 addObject:r19];
            [r19 release];
    }
    if (r26 == 0x354bf1b) {
            var_48C = r23;
    }
    else {
            var_48C = r23 + 0x2;
            r0 = [NSNumber numberWithInt:r26];
            r29 = r29;
            r19 = [r0 retain];
            [r21 addObject:r19];
            [r19 release];
    }
    r20 = @"SAP: ";
    [r20 retain];
    r0 = [r21 retain];
    r19 = r0;
    r23 = [r0 countByEnumeratingWithState:&var_3F8 objects:&stack[-1160] count:0x10];
    if (r23 != 0x0) {
            r20 = @"SAP: ";
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            var_4C0 = [*(0x0 + r27 * 0x8) intValue];
                            r28 = [[NSString stringWithFormat:@"%d, "] retain];
                            r0 = [r20 stringByAppendingString:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r20 release];
                            [r28 release];
                            r27 = r27 + 0x1;
                            r20 = r24;
                    } while (r27 < r23);
                    r20 = r24;
                    r23 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    [r19 release];
    r0 = [NSError errorWithDomain:r20 code:[r19 count] userInfo:0x0];
    r29 = r29;
    r21 = [r0 retain];
    [var_488 onSelcouth:r2 error:r3];
    [r20 release];
    [r19 release];
    [r21 release];
    goto loc_1005f5104;

loc_1005f4450:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 bundlePath];
    r29 = r29;
    r23 = [r0 retain];
    [r19 release];
    r0 = sub_1005f52dc();
    r20 = 0xc6;
    if (r0 == 0x0) goto loc_1005f4520;

loc_1005f4494:
    r19 = [[NSFileManager defaultManager] retain];
    r0 = [r23 stringByAppendingPathComponent:@"PkgInfo"];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [r19 fileExistsAtPath:r20];
    [r20 release];
    [r19 release];
    r8 = 0xff9c;
    goto loc_1005f4510;

loc_1005f4240:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 bundlePath];
    r29 = r29;
    r23 = [r0 retain];
    [r19 release];
    r0 = sub_1005f52dc();
    r19 = 0x551f3;
    if (r0 == 0x0) goto loc_1005f4314;

loc_1005f4288:
    r19 = [[NSFileManager defaultManager] retain];
    r0 = [r23 stringByAppendingPathComponent:@"PkgInfo"];
    r29 = r29;
    r21 = [r0 retain];
    r24 = [r19 fileExistsAtPath:r21];
    [r21 release];
    [r19 release];
    r8 = 0x5f24;
    goto loc_1005f4304;

loc_1005f4030:
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 bundlePath];
    r29 = r29;
    r19 = [r0 retain];
    [r21 release];
    r0 = sub_1005f52dc();
    r21 = 0x90d5f9;
    if (r0 == 0x0) goto loc_1005f4104;

loc_1005f4078:
    r21 = [[NSFileManager defaultManager] retain];
    r0 = [r19 stringByAppendingPathComponent:@"PkgInfo"];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r21 fileExistsAtPath:r23];
    [r23 release];
    [r21 release];
    r8 = 0x765e;
    goto loc_1005f40f4;

loc_1005f3c3c:
    r22 = 0x180f9;
    if (*(int32_t *)(r8 + 0x10) == -0x0) {
            if (!CPU_FLAGS & E) {
                    r22 = 0xbd08;
            }
            else {
                    r22 = 0x4cf;
            }
    }
    goto loc_1005f3c50;
}

@end
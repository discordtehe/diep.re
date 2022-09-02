@implementation Kartzela

+(int)openSURL {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    r19 = [[NSURL URLWithString:@"cydia://package/com.fake.package"] retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [r0 canOpenURL:r19];
    [r0 release];
    r0 = [r19 release];
    if (r21 != -0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x45e3b14;
            }
            else {
                    r0 = 0x1ea7;
            }
    }
    return r0;
}

+(int)cynthiaS {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    [@"/Applications/Cydia.app" retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r20 = [r0 fileExistsAtPath:@"/Applications/Cydia.app"];
    [r0 release];
    r0 = [@"/Applications/Cydia.app" release];
    if (r20 != -0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x45e3b14;
            }
            else {
                    r0 = 0x1265c;
            }
    }
    return r0;
}

+(int)callipygian {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    r19 = self;
    r21 = [self openSURL];
    r22 = 0x3;
    r20 = [r19 cynthiaS];
    if (r21 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r22 = 0x3;
            }
            else {
                    r22 = 0x0;
            }
    }
    r24 = r22 + 0x3;
    r21 = [r19 iADFS];
    if (r20 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r20 = r24;
            }
            else {
                    r20 = r22;
            }
    }
    r24 = r20 + 0x2;
    r22 = [r19 pCS];
    if (r21 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r21 = r24;
            }
            else {
                    r21 = r20;
            }
    }
    r24 = r21 + 0x2;
    r20 = [r19 pscsS];
    if (r22 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r24 = r24;
            }
            else {
                    r24 = r21;
            }
    }
    r25 = r24 + 0x2;
    r22 = [r19 FSTS];
    r21 = [r19 doSS];
    if (r22 != 0x45e3b14) {
            asm { cinc       w22, w8, ne };
    }
    r24 = r22 + 0x2;
    r20 = [r19 iewoqw];
    if (r21 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r22 = r24;
            }
            else {
                    r22 = r22;
            }
    }
    r24 = r22 + 0x2;
    r21 = [r19 jCSS];
    if (r20 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r20 = r24;
            }
            else {
                    r20 = r22;
            }
    }
    r22 = r20 + 0x2;
    r8 = &@selector(oasis);
    r0 = objc_msgSend(r19, *r8);
    if (r21 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r8 = r22;
            }
            else {
                    r8 = r20;
            }
    }
    r10 = r8 + 0x2;
    if (r0 == 0x45e3b14) {
            if (!CPU_FLAGS & E) {
                    r8 = r10;
            }
            else {
                    r8 = r8;
            }
    }
    if (r8 > 0x2) {
            if (!CPU_FLAGS & G) {
                    r0 = 0x45e3b14;
            }
            else {
                    r0 = 0x36b;
            }
    }
    return r0;
}

+(int)iADFS {
    r31 = r31 + 0xffffffffffffffa0 - 0x190;
    r0 = [NSArray arrayWithObjects:@"/Applications/RockApp.app"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r29 - 0x98 objects:&stack[-296] count:0x10];
    r24 = 0x45e3b14;
    if (r21 == 0x0) goto loc_1005f6418;

loc_1005f6384:
    r20 = 0x0;
    goto loc_1005f6388;

loc_1005f6388:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 fileExistsAtPath:r2];
    [r0 release];
    r24 = 0x13353;
    if ((r26 & 0x1) != 0x0) goto loc_1005f6418;

loc_1005f63e4:
    r20 = r20 + 0x1;
    if (r20 < r21) goto loc_1005f6388;

loc_1005f63f0:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = 0x45e3b14;
    if (r21 != 0x0) goto loc_1005f6384;

loc_1005f6418:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(int)pCS {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 executablePath] retain];
    [r0 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 infoDictionary] retain];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 fileExistsAtPath:r19] != 0x0 && r20 != 0x0) {
            r22 = [r20 count];
            [r21 release];
            if (r22 == -0x0) {
                    if (!CPU_FLAGS & E) {
                            r21 = 0x45e3b14;
                    }
                    else {
                            r21 = 0x24c4;
                    }
            }
    }
    else {
            [r21 release];
            r21 = 0x24c4;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(int)doSS {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = system(0x0);
    if (r0 == -0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0xb973;
            }
            else {
                    r0 = 0x45e3b14;
            }
    }
    return r0;
}

+(int)FSTS {
    stat("/etc/fstab", &var_A0);
    return 0x2594;
}

+(int)iewoqw {
    r29 = &saved_fp;
    r0 = lstat("/Applications", &var_90);
    r8 = 0x45e3b14;
    if (r0 == 0x0) {
            r8 = 0x45e3b14;
            if ((var_8B & 0xa0) == -0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x882b;
                    }
                    else {
                            r8 = 0x45e3b14;
                    }
            }
    }
    r0 = r8;
    return r0;
}

+(int)jCSS {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    r19 = [[NSFileManager defaultManager] retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r22 = [[r0 executablePath] retain];
    r21 = [r19 fileExistsAtPath:r22];
    [r22 release];
    [r0 release];
    r0 = [r19 release];
    if (r21 != -0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x19e1;
            }
            else {
                    r0 = 0x45e3b14;
            }
    }
    return r0;
}

+(int)pscsS {
    r31 = r31 + 0xffffffffffffffa0 - 0xe0;
    r0 = [self runningProcesses];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:&var_98 objects:&stack[-296] count:0x10];
    r28 = 0x45e3b14;
    if (r21 == 0x0) goto loc_1005f67b8;

loc_1005f66bc:
    r26 = 0x0;
    goto loc_1005f66c0;

loc_1005f66c0:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r0 = *(0x0 + r26 * 0x8);
    r0 = [r0 objectForKey:@"ProcessName"];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 isEqualToString:r2];
    r28 = 0x18710;
    if ((r0 & 0x1) != 0x0) goto loc_1005f67b0;

loc_1005f6718:
    r0 = [r20 isEqualToString:r2];
    r28 = 0x13a18;
    if ((r0 & 0x1) != 0x0) goto loc_1005f67b0;

loc_1005f6738:
    r24 = [r20 isEqualToString:r2];
    [r20 release];
    r28 = 0xc9aa;
    if ((r24 & 0x1) != 0x0) goto loc_1005f67b8;

loc_1005f675c:
    r26 = r26 + 0x1;
    if (r26 < r21) goto loc_1005f66c0;

loc_1005f6768:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) goto loc_1005f66bc;

loc_1005f6790:
    r28 = 0x45e3b14;
    goto loc_1005f67b8;

loc_1005f67b8:
    var_58 = **___stack_chk_guard;
    [r19 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r28;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005f67b0:
    [r20 release];
    goto loc_1005f67b8;
}

+(int)oasis {
    r29 = &saved_fp;
    r19 = objc_getClass("NSFileManager");
    r0 = sel_registerName("fileExistsAtPath:");
    r0 = class_getMethodImplementation(r19, r0);
    r0 = dladdr(r0, &var_50);
    r8 = r0;
    r0 = 0x45e3b14;
    if (r8 != 0x0) {
            r0 = [NSString stringWithUTF8String:var_50];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 rangeOfString:@"dylib" options:0x1];
            r0 = [r0 release];
            if (r20 == 0x7fffffffffffffff) {
                    if (!CPU_FLAGS & E) {
                            r0 = 0x13e30;
                    }
                    else {
                            r0 = 0x45e3b14;
                    }
            }
    }
    return r0;
}

+(void *)runningProcesses {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0xa0;
    r0 = sysctl(r29 - 0x70, 0x4, 0x0, &var_78, 0x0, 0x0);
    r21 = 0x0;
    goto loc_1005f6b80;

loc_1005f6b80:
    r8 = var_78;
    asm { umulh      x9, x8, x22 };
    r19 = realloc(r21, r8 + r9 / 0x8);
    if (r19 == 0x0) goto loc_1005f6be8;

loc_1005f6ba0:
    r0 = sysctl(r29 - 0x70, 0x4, r19, &var_78, 0x0, 0x0);
    if (r0 == 0x0) goto loc_1005f6c00;

loc_1005f6bc4:
    r20 = 0x0;
    if (r0 != -0x1) goto loc_1005f6eb8;

loc_1005f6bcc:
    r0 = __error();
    r21 = r19;
    if (*(int32_t *)r0 == 0xc) goto loc_1005f6b80;

loc_1005f6be4:
    r20 = 0x0;
    goto loc_1005f6eb8;

loc_1005f6eb8:
    var_58 = **___stack_chk_guard;
    r0 = [r20 autorelease];
    if (**___stack_chk_guard != var_58) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005f6c00:
    r20 = 0x0;
    r8 = var_78;
    r10 = 0x288;
    r11 = r8 >> 0x3;
    asm { umulh      x11, x11, x9 };
    if (r8 == (r11 >> 0x4) * r10) {
            r20 = 0x0;
            asm { umulh      x8, x21, x9 };
            r22 = r8 >> 0x4;
            if (r22 != 0x0) {
                    var_C8 = r19;
                    r20 = [[NSMutableArray alloc] init];
                    var_C0 = r20;
                    if (r22 >= 0x1) {
                            r24 = @selector(alloc);
                            r8 = 0x288;
                            r9 = 0x329161f9add3c0cb;
                            asm { umulh      x9, x21, x9 };
                            r21 = r9 >> 0x4;
                            asm { sxtw       x9, w21 };
                            asm { madd       x8, x9, x8, x10 };
                            r28 = r8 - 0x288;
                            do {
                                    var_A8 = @selector(arrayWithObjects:);
                                    var_B0 = @selector(initWithObjects:forKeys:);
                                    var_B8 = @selector(addObject:);
                                    var_A0 = @selector(dateWithTimeIntervalSince1970:);
                                    r25 = &@class(MCConfigurationData);
                                    var_80 = [objc_msgSend(@class(NSString), r24) initWithFormat:r2];
                                    var_88 = [objc_msgSend(@class(NSString), r24) initWithFormat:r2];
                                    var_90 = [objc_msgSend(@class(NSString), r24) initWithFormat:r2];
                                    r0 = @class(NSDate);
                                    asm { scvtf      d0, d0 };
                                    [objc_msgSend(r0, var_A0) retain];
                                    r27 = objc_msgSend(@class(NSDictionary), r24);
                                    r0 = *(r25 + 0xc0);
                                    r20 = var_C0;
                                    r0 = objc_msgSend(r0, var_A8);
                                    r0 = [r0 retain];
                                    r19 = r24;
                                    r24 = r0;
                                    r0 = *(r25 + 0xc0);
                                    var_E8 = @"ProcessName";
                                    var_F0 = @"ProcessPriority";
                                    r0 = objc_msgSend(r0, var_A8);
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    objc_msgSend(r27, var_B0);
                                    [r22 release];
                                    r0 = r24;
                                    r24 = r19;
                                    [r0 release];
                                    objc_msgSend(r20, var_B8);
                                    [r27 release];
                                    [r26 release];
                                    [var_90 release];
                                    [var_88 release];
                                    [var_80 release];
                                    r28 = r28 - 0x288;
                                    r21 = r21 - 0x1;
                            } while (r21 > -0x0);
                    }
                    free(var_C8);
            }
    }
    goto loc_1005f6eb8;

loc_1005f6be8:
    r20 = 0x0;
    if (r21 != 0x0) {
            free(r21);
            r20 = 0x0;
    }
    goto loc_1005f6eb8;
}

@end
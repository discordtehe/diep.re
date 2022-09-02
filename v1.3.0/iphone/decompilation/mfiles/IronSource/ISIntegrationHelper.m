@implementation ISIntegrationHelper

+(bool)doesAdapterSupportBanners:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r0 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = @selector(isEqualToString:);
                    r20 = objc_msgSend(r19, r20);
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)validateAppTransportSecurity {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 objectForInfoDictionaryKey:@"NSAppTransportSecurity"] retain];
    [r0 release];
    r0 = [r19 objectForKey:@"NSAllowsArbitraryLoads"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    if (r21 != 0x0) {
            r0 = @"App Transport Security settings VERIFIED\n";
    }
    else {
            r0 = @"App Transport Security settings MISSING\n";
    }
    NSLog(r0);
    [r19 release];
    return;
}

+(void)validateIntegration {
    r31 = r31 - 0x1e0;
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
    NSLog(@"Verifying Integration:");
    [ISIntegrationHelper validateAppTransportSecurity];
    r19 = [NSMutableSet new];
    r28 = @selector(allFrameworks);
    r0 = objc_msgSend(@class(NSBundle), r28);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 != 0x0) {
            r20 = 0x0;
            r21 = @selector(bundleIdentifier);
            var_190 = r21;
            r22 = @selector(objectAtIndexedSubscript:);
            var_1C0 = r22;
            do {
                    r0 = objc_msgSend(@class(NSBundle), r28);
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = objc_msgSend(r0, r22);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = objc_msgSend(r0, r21);
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if ([r0 length] != 0x0) {
                            [r23 release];
                            [r25 release];
                            [r24 release];
                            r0 = objc_msgSend(@class(NSBundle), r28);
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = objc_msgSend(r0, r22);
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = objc_msgSend(r0, var_190);
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 lowercaseString];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r19 addObject:r25];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                            [r21 release];
                    }
                    else {
                            r0 = objc_msgSend(@class(NSBundle), r28);
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = objc_msgSend(r0, var_1C0);
                            r0 = [r0 retain];
                            r26 = r0;
                            r0 = objc_msgSend(r0, r21);
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = r0;
                            [r0 release];
                            [r26 release];
                            r0 = r22;
                            r22 = var_1C0;
                            [r0 release];
                            [r23 release];
                            [r25 release];
                            [r24 release];
                            if (r21 != 0x0) {
                                    r0 = objc_msgSend(@class(NSBundle), r28);
                                    r0 = [r0 retain];
                                    r21 = r0;
                                    r0 = objc_msgSend(r0, r22);
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = objc_msgSend(r0, var_190);
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r0 = [r0 lowercaseString];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [r19 addObject:r25];
                                    [r25 release];
                                    [r24 release];
                                    [r23 release];
                                    [r21 release];
                            }
                    }
                    var_1A8 = @selector(count);
                    r20 = r20 + 0x1;
                    r28 = @selector(allFrameworks);
                    r0 = objc_msgSend(@class(NSBundle), r28);
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = objc_msgSend(r0, var_1A8);
                    [r0 release];
                    r21 = var_190;
            } while (r23 > r20);
    }
    r0 = [NSArray arrayWithObjects:r29 - 0xc8 count:0xe];
    r29 = r29;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [ISIntegrationHelper validateAdapter:r2 frameworksSet:r3];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    [r20 release];
    NSLog(@"\n");
    r0 = [SSEDeviceStatus alloc];
    r0 = [r0 init];
    r21 = r0;
    r22 = [[r0 advertiserId] retain];
    if (r22 != 0x0) {
            NSLog(@"IDFA  is :%@ (use this for test devices).", @selector(advertiserId));
    }
    var_58 = **___stack_chk_guard;
    NSLog(@"\n");
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)validateAdapter:(void *)arg2 frameworksSet:(void *)arg3 {
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
    r28 = arg3;
    r19 = [arg2 retain];
    var_58 = [r28 retain];
    [@"VERIFIED" retain];
    [@"*** MISSING ***" retain];
    [@"*** NOT VERIFIED ***" retain];
    NSLog(@"--------------- %@ --------------", _cmd);
    r0 = [NSString stringWithFormat:@"IS%@Adapter"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = NSClassFromString(r0);
    r22 = r0;
    r0 = [r0 alloc];
    r8 = 0x101137000;
    r1 = *(r8 + 0x1e0);
    r21 = objc_msgSend(r0, r1);
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = @"VERIFIED";
            }
            else {
                    r8 = @"*** MISSING ***";
            }
    }
    NSLog(@"Adapter %@", r1);
    r0 = [r21 valueForKey:r2];
    r0 = [r0 retain];
    r22 = r0;
    r25 = NSClassFromString(r0);
    r1 = @selector(valueForKey:);
    r0 = objc_msgSend(r21, r1);
    r29 = r29;
    r23 = [r0 retain];
    var_60 = r20;
    if (r25 != 0x0) {
            r0 = [NSString stringWithFormat:@"version %@ - %@"];
            r29 = r29;
            [r0 retain];
            NSLog(@"SDK - %@", @selector(stringWithFormat:));
            [r25 release];
    }
    else {
            r8 = @"*** MISSING ***";
            if (r22 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = @"*** MISSING ***";
                    }
                    else {
                            r8 = @"*** NOT VERIFIED ***";
                    }
            }
            NSLog(@"SDK - %@", r1);
    }
    r26 = [[r21 valueForKey:r2] retain];
    r0 = [r28 allObjects];
    r29 = r29;
    r28 = [r0 retain];
    [var_58 release];
    r3 = r28;
    r25 = [ISIntegrationHelper areSystemFrameworksValidated:r26 frameworksInProject:r3];
    [r28 release];
    r8 = @"*** MISSING ***";
    if (r26 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = @"*** MISSING ***";
            }
            else {
                    r8 = @"*** NOT VERIFIED ***";
            }
    }
    if (r25 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = r8;
            }
            else {
                    r8 = @"VERIFIED";
            }
    }
    NSLog(@"Frameworks - %@", @selector(areSystemFrameworksValidated:frameworksInProject:));
    r0 = [r21 valueForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    if ([ISIntegrationHelper doesAdapterSupportBanners:r19] != 0x0) {
            r2 = @"4.3.";
            if (([r24 hasPrefix:r2] & 0x1) == 0x0) {
                    [[IronSource sdkVersion] retain];
                    r20 = var_60;
                    NSLog(@"*** NOT VERIFIED *** - %@ adapter version %@ that includes %@ SDK version %@ is incompatible with mediation SDK version %@. Please upgrade your %@ adapter to the newest version in the knowledge center.", @selector(sdkVersion), r2, r3, r4, r5, r6);
                    [r25 release];
            }
            else {
                    NSLog(@"Adapter Version %@ - VERIFIED", @selector(hasPrefix:));
                    r20 = var_60;
            }
    }
    else {
            r2 = @"4.1.";
            if ([r24 hasPrefix:r2] != 0x0) {
                    NSLog(@"Adapter Version %@ - VERIFIED", @selector(hasPrefix:));
                    r20 = var_60;
            }
            else {
                    [[IronSource sdkVersion] retain];
                    r20 = var_60;
                    NSLog(@"*** NOT VERIFIED *** - %@ adapter version %@ that includes %@ SDK version %@ is incompatible with mediation SDK version %@. Please upgrade your %@ adapter to the newest version in the knowledge center.", @selector(sdkVersion), r2, r3, r4, r5, r6);
                    [r25 release];
            }
    }
    [r24 release];
    [r26 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [@"*** NOT VERIFIED ***" release];
    [@"*** MISSING ***" release];
    [@"VERIFIED" release];
    [r19 release];
    return;
}

+(bool)areSystemFrameworksValidated:(void *)arg2 frameworksInProject:(void *)arg3 {
    r31 = r31 - 0x160;
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
    r8 = *___stack_chk_guard;
    r8 = *r8;
    var_58 = r8;
    r20 = [arg2 retain];
    var_120 = [arg3 retain];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    var_12C = r8;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_138 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_128);
                            }
                            r27 = @selector(containsObject:);
                            r26 = @selector(stringWithFormat:);
                            r25 = @selector(lowercaseString);
                            r28 = *(0x0 + r19 * 0x8);
                            r24 = [objc_msgSend(r28, r25) retain];
                            r0 = objc_msgSend(@class(NSString), r26);
                            r29 = r29;
                            r21 = [r0 retain];
                            r1 = r27;
                            r20 = objc_msgSend(var_120, r1);
                            [r21 release];
                            [r24 release];
                            if ((r20 & 0x1) == 0x0) {
                                    NSLog(@"Missing system framework: %@, please be sure to add it to your project.", r1);
                                    var_12C = 0x0;
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r22 = objc_msgSend(var_128, var_138);
            } while (r22 != 0x0);
    }
    [var_128 release];
    [var_120 release];
    [var_128 release];
    if (**___stack_chk_guard == var_58) {
            r0 = var_12C & 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end
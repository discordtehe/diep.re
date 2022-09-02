@implementation GADCrashReporter

+(void *)sharedInstance {
    if (*qword_1011dbd98 != -0x1) {
            dispatch_once(0x1011dbd98, 0x100e94d88);
    }
    r0 = *0x1011dbda0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0xc0;
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
    r0 = [[&var_68 super] init];
    r19 = r0;
    if (r19 == 0x0) goto loc_100833e60;

loc_100833bec:
    r8 = 0x1011dbd90;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) != 0x0) goto loc_100833e60;

loc_100833bfc:
    r0 = sub_1008bf68c(@"crash_reporting", &var_70);
    r29 = r29;
    r21 = [r0 retain];
    r20 = [var_70 retain];
    if (r20 != 0x0) {
            sub_1007ce06c(0x0, @"Couldn't create crash reporting cache directory. Handling and reporting disabled. %@");
    }
    r0 = [r21 URLByAppendingPathComponent:@"exception_handling.txt"];
    r0 = [r0 retain];
    r26 = @selector(copy);
    r22 = objc_msgSend(r0, r26);
    [r0 release];
    r0 = [r21 URLByAppendingPathComponent:@"signal_handling.txt"];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r26);
    [r0 release];
    if (r22 == 0x0 || r23 == 0x0) goto loc_100833ea8;

loc_100833cc0:
    r24 = @selector(init);
    r0 = [NSArray arrayWithObjects:&var_58 count:0x2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_crashFileURLs));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [GADObserverCollection alloc];
    r0 = objc_msgSend(r0, r24);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    r8 = *(r19 + r25);
    *(r19 + r25) = r0;
    [r8 release];
    objc_initWeak(&stack[-136], r19);
    r24 = &var_A0 + 0x20;
    objc_copyWeak(r24, &stack[-136]);
    [r25 addObserverForName:*0x100e9c400 object:0x0 queue:0x0 usingBlock:&var_A0];
    [r19 updateSettings];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r26 = [r0 boolForKey:*0x100e9b768];
    [r0 release];
    if (r26 != 0x0) {
            sub_100821108(r23, r22);
            [r19 storeEnvironmentInfo];
            sub_100821b88();
            sub_1008218f8();
    }
    objc_destroyWeak(r24);
    objc_destroyWeak(&stack[-136]);
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_100833e60;

loc_100833e60:
    [r19 retain];
    goto loc_100833e68;

loc_100833e68:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100833ea8:
    sub_1007ce06c(0x0, @"Unable to configure handling and reporting. %@ %@");
    [r19 retain];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_100833e68;
}

-(void)updateSettings {
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [[r0 arrayForKey:*0x100e9b6a8] retain];
    [r0 release];
    sub_100821428();
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 boolForKey:*0x100e9b760];
    [r0 release];
    asm { stlrb      w22, [x8] };
    r21 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_38 = [r19 retain];
    dispatch_async(r21, &var_58);
    [r21 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)reportURL:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [GADPinger sharedInstance];
            r0 = [r0 retain];
            [r0 storeRetryURL:r21];
            [r21 release];
            [r0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_crashFileURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)storeEnvironmentInfo {
    r31 = r31 - 0x170;
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
    [@"error" retain];
    r23 = [[GADApplication sharedInstance] retain];
    r0 = [GADDevice sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r19 release];
    if (*0x1011dbda8 == 0x0) {
            r0 = backtrace(&var_100, 0x1);
            if (r0 == 0x1) {
                    dladdr(var_100, r29 - 0x78);
                    if (0x0 != 0x0) {
                            r0 = [NSString stringWithUTF8String:r2];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 lastPathComponent];
                            r29 = r29;
                            r0 = [r0 retain];
                            r8 = *0x1011dbda8;
                            *0x1011dbda8 = r0;
                            [r8 release];
                            [r19 release];
                    }
            }
            if (*0x1011dbda8 == 0x0) {
                    r0 = [NSProcessInfo processInfo];
                    r0 = [r0 retain];
                    r19 = r0;
                    r1 = @selector(processName);
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r1 = @"";
                            }
                            else {
                                    r1 = r20;
                            }
                    }
                    objc_storeStrong(0x1011dbda8, r1);
                    [r20 release];
                    [r19 release];
            }
    }
    r20 = [*0x1011dbda8 retain];
    r21 = [[r23 mainBundleIdentifier] retain];
    r28 = [[r23 version] retain];
    r27 = [[r23 buildNumber] retain];
    r0 = @class(GADDevice);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 deviceModel];
    r29 = r29;
    r25 = [r0 retain];
    [r19 release];
    r8 = @"os";
    if (r24 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"error";
            }
            else {
                    r8 = r24;
            }
    }
    r8 = @"proc";
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"error";
            }
            else {
                    r8 = r20;
            }
    }
    r8 = @"appid";
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"error";
            }
            else {
                    r8 = r21;
            }
    }
    r8 = @"api";
    if (r28 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"error";
            }
            else {
                    r8 = r28;
            }
    }
    r8 = @"bn";
    if (r27 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"error";
            }
            else {
                    r8 = r27;
            }
    }
    r8 = @"device";
    if (r25 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"error";
            }
            else {
                    r8 = r25;
            }
    }
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 URLForResource:@"embedded" withExtension:@"mobileprovision"];
    r29 = r29;
    r26 = [r0 retain];
    [r19 release];
    if (r26 == 0x0) goto loc_100834610;

loc_100834400:
    var_108 = r27;
    r27 = [[NSData alloc] initWithContentsOfURL:r26 options:0x2 error:&var_100];
    r22 = [var_100 retain];
    if (r22 != 0x0) {
            r0 = [r22 description];
            r29 = r29;
            [r0 retain];
            sub_1007ce06c(0x0, @"Error reading embedded.mobileprovision: %@");
            [r19 release];
    }
    var_110 = r22;
    if ([r27 length] == 0x0) goto loc_100834624;

loc_1008344a0:
    r19 = @selector(length);
    var_148 = r25;
    stack[-336] = r28;
    var_138 = r21;
    stack[-320] = r20;
    var_128 = r24;
    stack[-304] = r23;
    [[@"get-task-allow" dataUsingEncoding:0x4] retain];
    objc_msgSend(r27, r19);
    var_150 = r22;
    r22 = [r27 rangeOfData:r2 options:r3 range:r4];
    r23 = @selector(rangeOfData:options:range:);
    r0 = [@"<" dataUsingEncoding:0x4];
    r29 = r29;
    r20 = [r0 retain];
    r24 = 0x0;
    r25 = r29 - 0x78;
    goto loc_100834544;

loc_100834544:
    [r27 length] - r22 + r23;
    r2 = r20;
    r22 = [r27 rangeOfData:r2 options:r3 range:r4];
    r23 = @selector(rangeOfData:options:range:);
    if (r22 == 0x7fffffffffffffff) goto loc_10083462c;

loc_100834580:
    *(r25 + r24 * 0x8) = r22;
    r24 = r24 + 0x1;
    if (r24 < 0x3) goto loc_100834544;

loc_100834590:
    r0 = [r27 subdataWithRange:r2];
    r29 = r29;
    r19 = [r0 retain];
    r0 = [NSString alloc];
    r0 = [r0 initWithData:r19 encoding:0x4];
    r21 = r0;
    if ([r0 rangeOfString:@"true"] != 0x7fffffffffffffff) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    [r21 release];
    [r19 release];
    goto loc_100834630;

loc_100834630:
    [r20 release];
    [var_150 release];
    r24 = var_128;
    r23 = stack[-304];
    r21 = var_138;
    r20 = stack[-320];
    r25 = var_148;
    r28 = stack[-336];
    goto loc_10083464c;

loc_10083464c:
    [r27 release];
    [var_110 release];
    [r26 release];
    r8 = @"0";
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"0";
            }
            else {
                    r8 = @"1";
            }
    }
    r27 = var_108;
    goto loc_100834680;

loc_100834680:
    var_58 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_B8 forKeys:&var_F8 count:0x8];
    r0 = [r0 retain];
    sub_100821254(r0);
    [r19 release];
    [r25 release];
    [r27 release];
    [r28 release];
    [r21 release];
    [r20 release];
    [r24 release];
    [r23 release];
    [@"error" release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10083462c:
    r22 = 0x0;
    goto loc_100834630;

loc_100834624:
    r22 = 0x0;
    goto loc_10083464c;

loc_100834610:
    [r26 release];
    r8 = @"0";
    goto loc_100834680;
}

-(void)reportIssues {
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
    r31 = r31 + 0xffffffffffffff90 - 0x340;
    var_2D8 = self;
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 boolForKey:*0x100e9b758];
    [r0 release];
    if (r20 == 0x0) goto loc_1008354d8;

loc_1008347c4:
    r8 = 0x1011dbd90;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) != 0x0) goto loc_1008354d8;

loc_1008347d4:
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) != 0x0) goto loc_1008354d8;

loc_1008347f8:
    r0 = var_2D8->_crashFileURLs;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_318 = r0;
    var_288 = r1;
    r0 = objc_msgSend(r0, r1);
    var_2B8 = r0;
    if (r0 == 0x0) goto loc_1008354d0;

loc_1008348b4:
    r23 = 0x0;
    goto loc_1008349a4;

loc_1008349a4:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_318);
    }
    r20 = *(0x0 + r23 * 0x8);
    r19 = [sub_100821484() retain];
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    [r0 removeItemAtURL:r20 error:&var_210];
    r20 = [var_210 retain];
    [r0 release];
    if (r20 != 0x0) {
            if ([r20 code] != 0x4) {
                    sub_1007ce06c(0x0, @"Error removing previous crash report. Error: %@");
            }
    }
    r0 = [r19 retain];
    r21 = r0;
    r0 = [r0 count];
    var_280 = r21;
    if (r0 == 0x0) goto loc_100834e84;

loc_100834a68:
    var_2A0 = r20;
    stack[-680] = r23;
    r19 = [[r21 objectForKeyedSubscript:@"proc"] retain];
    r0 = [r21 objectForKeyedSubscript:@"_rawStackTrace"];
    r29 = r29;
    r20 = [r0 retain];
    var_220 = [r19 retain];
    r19 = [r20 retain];
    r24 = [[NSMutableArray alloc] init];
    r0 = [r19 retain];
    r23 = r0;
    r25 = objc_msgSend(r0, var_288);
    var_230 = r23;
    if (r25 == 0x0) goto loc_100834dcc;

loc_100834b24:
    r21 = *0x0;
    var_270 = r21;
    goto loc_100834b30;

loc_100834b30:
    r26 = 0x0;
    r20 = @selector(length);
    r27 = @selector(componentsSeparatedByString:);
    var_240 = r25;
    var_238 = r20;
    var_248 = r27;
    goto loc_100834b90;

loc_100834b90:
    if (*0x0 != r21) {
            objc_enumerationMutation(r23);
    }
    r19 = *(0x0 + r26 * 0x8);
    if (objc_msgSend(r19, r20) == 0x0) goto loc_100834ddc;

loc_100834bc0:
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if ([r0 count] > 0x2) goto loc_100834c18;

loc_100834bf0:
    sub_1007ce06c(0x0, @"Invalid stack trace frame. %@");
    sub_100822370(r24, @"--");
    goto loc_100834d98;

loc_100834d98:
    [r28 release];
    r26 = r26 + 0x1;
    if (r26 < r25) goto loc_100834b90;

loc_100834dac:
    r25 = objc_msgSend(r23, var_288);
    if (r25 != 0x0) goto loc_100834b30;

loc_100834dcc:
    [r23 release];
    r22 = @selector(length);
    goto loc_100834de8;

loc_100834de8:
    [r23 release];
    [var_220 release];
    r19 = [[r24 autorelease] retain];
    r27 = @selector(sharedInstance);
    r0 = objc_msgSend(@class(GADSettings), r27);
    r0 = [r0 retain];
    r21 = r0;
    r24 = @selector(stringForKey:);
    r0 = objc_msgSend(r0, r24);
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    r28 = r22;
    if (objc_msgSend(r20, r22) != 0x0) {
            r0 = [r20 componentsSeparatedByString:@","];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    r19 = [r19 retain];
    r25 = [r21 retain];
    r0 = [r19 retain];
    r26 = r0;
    r19 = objc_msgSend(r0, var_288);
    if (r19 == 0x0) goto loc_100834f54;

loc_100834ef4:
    r22 = 0x0;
    goto loc_100834ef8;

loc_100834ef8:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r26);
    }
    r20 = *(0x0 + r22 * 0x8);
    if ((sub_1008355fc(r20, r25) & 0x1) != 0x0) goto loc_100834f64;

loc_100834f28:
    r22 = r22 + 0x1;
    if (r22 < r19) goto loc_100834ef8;

loc_100834f34:
    r19 = objc_msgSend(r26, var_288);
    if (r19 != 0x0) goto loc_100834ef4;

loc_100834f54:
    [r26 release];
    r19 = 0x0;
    goto loc_100834f78;

loc_100834f78:
    [r25 release];
    [r26 release];
    r0 = [r19 retain];
    r22 = var_280;
    var_238 = r0;
    sub_100822058(r22, @"exclc", r0);
    r20 = [[NSString stringWithUTF8String:"excr"] retain];
    r0 = [r22 objectForKeyedSubscript:r20];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    r21 = r28;
    if (r19 != 0x0) {
            r20 = [r19 retain];
            r0 = sub_10080f564();
            r29 = r29;
            r22 = [r0 retain];
            r21 = [r22 stringByReplacingMatchesInString:r20 options:0x0 range:0x0 withTemplate:objc_msgSend(r20, r21)];
            [r20 release];
            r0 = r21;
            r21 = r28;
            r20 = [r0 retain];
            r0 = r22;
            r22 = var_280;
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    if (objc_msgSend(r20, r21) != 0x0) {
            r0 = [NSString stringWithUTF8String:"excr"];
            r29 = r29;
            sub_100822058(r22, [r0 retain], r20);
            [r19 release];
    }
    var_240 = r20;
    r0 = objc_msgSend(@class(GADSettings), r27);
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 boolForKey:r2];
    [r0 release];
    if (r20 != 0x0) {
            r0 = sub_1008355fc(var_240, r25);
            if (var_238 == 0x0 && r0 == 0x0) {
                    r22 = 0x0;
            }
            else {
                    r28 = &@class(MCPromoSystemNotificationCenter);
                    var_320 = @selector(integerForKey:);
                    var_328 = @selector(enumerateObjectsUsingBlock:);
                    r19 = [r26 retain];
                    [@"\n" retain];
                    objc_msgSend(@"\n", r21);
                    asm { neg        x8, x20 };
                    r0 = *(r28 + 0xe8);
                    r0 = objc_msgSend(r0, r27);
                    r29 = r29;
                    r0 = [r0 retain];
                    objc_msgSend(r0, var_320);
                    [r0 release];
                    objc_msgSend(r19, var_328);
                    r8 = *(&var_188 + 0x18);
                    if ((r8 & 0xffffffff80000000) == 0x0) {
                            r0 = [r19 subarrayWithRange:0x0];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 componentsJoinedByString:@"\n"];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r20 release];
                            r20 = [r22 autorelease];
                    }
                    else {
                            r20 = 0x0;
                    }
                    r22 = var_280;
                    _Block_object_dispose(&var_188, 0x8);
                    _Block_object_dispose(&var_1C8, 0x8);
                    [@"\n" release];
                    [r19 release];
                    sub_100822058(r22, @"excst", r20);
                    r0 = @class(GADSettings);
                    r21 = r27;
                    r0 = objc_msgSend(r0, r27);
                    r0 = [r0 retain];
                    r20 = r0;
                    r27 = r24;
                    r0 = objc_msgSend(r0, r24);
                    r29 = r29;
                    r19 = [r0 retain];
                    [r20 release];
                    sub_100822058(r22, @"id", r19);
                    r20 = [[[NSMutableArray alloc] init] retain];
                    var_C8 = r20;
                    [r22 enumerateKeysAndObjectsUsingBlock:r29 - 0xe8];
                    if ([r20 count] != 0x0) {
                            [r22 removeObjectsForKeys:r20];
                    }
                    r0 = [r22 count];
                    r28 = r22;
                    if (r0 < 0x2) {
                            r22 = 0x0;
                    }
                    else {
                            r0 = objc_msgSend(@class(GADSettings), r21);
                            r0 = [r0 retain];
                            r23 = [objc_msgSend(r0, r27) retain];
                            [r0 release];
                            r0 = [NSURL URLWithString:r23];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = sub_100899534(r0, r28);
                            r29 = r29;
                            r22 = [r0 retain];
                            [r24 release];
                            [r23 release];
                    }
                    r23 = var_230;
                    [var_C8 release];
                    [r20 release];
                    [r19 release];
            }
    }
    else {
            r28 = &@class(MCPromoSystemNotificationCenter);
            var_320 = @selector(integerForKey:);
            var_328 = @selector(enumerateObjectsUsingBlock:);
            r19 = [r26 retain];
            [@"\n" retain];
            objc_msgSend(@"\n", r21);
            asm { neg        x8, x20 };
            r0 = *(r28 + 0xe8);
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, var_320);
            [r0 release];
            objc_msgSend(r19, var_328);
            r8 = *(&var_188 + 0x18);
            if ((r8 & 0xffffffff80000000) == 0x0) {
                    r0 = [r19 subarrayWithRange:0x0];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 componentsJoinedByString:@"\n"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 release];
                    r20 = [r22 autorelease];
            }
            else {
                    r20 = 0x0;
            }
            r22 = var_280;
            _Block_object_dispose(&var_188, 0x8);
            _Block_object_dispose(&var_1C8, 0x8);
            [@"\n" release];
            [r19 release];
            sub_100822058(r22, @"excst", r20);
            r0 = @class(GADSettings);
            r21 = r27;
            r0 = objc_msgSend(r0, r27);
            r0 = [r0 retain];
            r20 = r0;
            r27 = r24;
            r0 = objc_msgSend(r0, r24);
            r29 = r29;
            r19 = [r0 retain];
            [r20 release];
            sub_100822058(r22, @"id", r19);
            r20 = [[[NSMutableArray alloc] init] retain];
            var_C8 = r20;
            [r22 enumerateKeysAndObjectsUsingBlock:r29 - 0xe8];
            if ([r20 count] != 0x0) {
                    [r22 removeObjectsForKeys:r20];
            }
            r0 = [r22 count];
            r28 = r22;
            if (r0 < 0x2) {
                    r22 = 0x0;
            }
            else {
                    r0 = objc_msgSend(@class(GADSettings), r21);
                    r0 = [r0 retain];
                    r23 = [objc_msgSend(r0, r27) retain];
                    [r0 release];
                    r0 = [NSURL URLWithString:r23];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = sub_100899534(r0, r28);
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    [r23 release];
            }
            r23 = var_230;
            [var_C8 release];
            [r20 release];
            [r19 release];
    }
    [var_240 release];
    [var_238 release];
    [r25 release];
    [r26 release];
    [r23 release];
    [var_220 release];
    r20 = var_2A0;
    r23 = stack[-680];
    goto loc_100835470;

loc_100835470:
    [var_280 release];
    [var_2D8 reportURL:[r22 autorelease]];
    [r20 release];
    [var_280 release];
    r23 = r23 + 0x1;
    if (r23 < var_2B8) goto loc_1008349a4;

loc_1008354b0:
    r0 = objc_msgSend(var_318, var_288);
    var_2B8 = r0;
    if (r0 != 0x0) goto loc_1008348b4;

loc_1008354d0:
    [var_318 release];
    goto loc_1008354d8;

loc_1008354d8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100834f64:
    r19 = objc_retainAutorelease(r20);
    [r26 release];
    goto loc_100834f78;

loc_100834c18:
    r25 = r24;
    r27 = [[r28 objectAtIndexedSubscript:0x0] retain];
    r19 = [[r28 objectAtIndexedSubscript:0x1] retain];
    r20 = [[r28 objectAtIndexedSubscript:0x2] retain];
    r24 = [var_220 retain];
    r0 = [r20 lastPathComponent];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100834cb8;

loc_100834c98:
    if ([r24 isEqual:r2] == 0x0) goto loc_100834ccc;

loc_100834cac:
    r23 = @"app";
    goto loc_100834cc0;

loc_100834cc0:
    [r23 retain];
    goto loc_100834cd8;

loc_100834cd8:
    [r21 release];
    [r24 release];
    [r20 release];
    r0 = [NSScanner alloc];
    r0 = [r0 initWithString:r19];
    [r0 scanHexLongLong:&var_188];
    r21 = [[NSString alloc] initWithFormat:@"%@,%@+0x%llx"];
    r24 = r25;
    sub_100822370(r24, r21);
    [r21 release];
    [r20 release];
    [r23 release];
    [r19 release];
    [r27 release];
    r20 = var_238;
    r23 = var_230;
    r21 = var_270;
    r27 = var_248;
    r25 = var_240;
    goto loc_100834d98;

loc_100834ccc:
    r23 = [r21 retain];
    goto loc_100834cd8;

loc_100834cb8:
    r23 = @"--";
    goto loc_100834cc0;

loc_100834ddc:
    [r23 release];
    r22 = r20;
    goto loc_100834de8;

loc_100834e84:
    r22 = 0x0;
    goto loc_100835470;
}

@end
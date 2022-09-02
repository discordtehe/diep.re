@implementation ADCCrashManager

-(void)install {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2248 != -0x1) {
            dispatch_once(0x1011d2248, &var_28);
    }
    return;
}

-(void)handleUnhandledException:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r19 = [arg2 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCCrashManager handleUnhandledException:]" line:0x7c withFormat:@"Detecting a crash"];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCCrashManager handleUnhandledException:]" line:0x7d withFormat:@"Crash: %@"];
    r23 = @class(ADCLogManager);
    r24 = [[r19 callStackSymbols] retain];
    [r23 fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCCrashManager handleUnhandledException:]" line:0x7e withFormat:@"Stack Trace: %@"];
    [r24 release];
    r23 = @class(ADCLogManager);
    r24 = [[r19 callStackReturnAddresses] retain];
    [r23 fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCCrashManager handleUnhandledException:]" line:0x7f withFormat:@"Stack Trace Return Addresses: %@"];
    [r24 release];
    r21 = [[ADCCrash alloc] initWithException:r19];
    if (r21 != 0x0) {
            [r21 getDict:&var_68];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_previousCrashHandler));
    r8 = *(r20 + r8);
    if (r8 != 0x0) {
            (r8)(r19);
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)updateCacheInfo {
    r19 = [[self getActiveAdID] retain];
    r20 = [[self getCachedAds] retain];
    r21 = [[self getActiveAdCreativeID] retain];
    r22 = [[self getCreativeAdIDsInCache] retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r19 forKey:@"ADCActiveAdID"];
    [r0 setObject:r20 forKey:@"ADCCachedAds"];
    [r0 setObject:r21 forKey:@"ADCActiveAdCreativeID"];
    [r0 setObject:r22 forKey:@"ADCCreativeIDList"];
    [r0 synchronize];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)writeReportToDisk:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = sub_1001b8494(0x0);
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 fileExistsAtPath:r20] & 0x1) == 0x0) goto loc_1001b8ee0;

loc_1001b8e88:
    r0 = [NSArray arrayWithContentsOfFile:r20];
    r0 = [r0 retain];
    r23 = [r0 mutableCopy];
    [r0 release];
    if (r23 == 0x0) goto loc_1001b8f7c;

loc_1001b8ec8:
    [r23 addObject:r2];
    goto loc_1001b8f0c;

loc_1001b8f0c:
    r22 = [r23 writeToFile:r20 atomically:0x1];
    goto loc_1001b8f28;

loc_1001b8f28:
    var_38 = **___stack_chk_guard;
    [r23 release];
    CFRelease(r20);
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001b8f7c:
    r22 = 0x0;
    goto loc_1001b8f28;

loc_1001b8ee0:
    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
    r23 = [r0 retain];
    goto loc_1001b8f0c;
}

-(void *)getActiveAdID {
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
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = [[r0 sessionFromID] retain];
    [r0 release];
    var_108 = q0;
    r0 = [r22 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_158 = r1;
    r28 = objc_msgSend(r0, r1);
    if (r28 != 0x0) {
            var_148 = 0x0;
            r19 = *var_108;
            do {
                    r27 = 0x0;
                    r23 = @selector(objectForKeyedSubscript:);
                    r24 = @selector(class);
                    r25 = @selector(isKindOfClass:);
                    var_130 = r25;
                    var_128 = r24;
                    var_138 = r23;
                    do {
                            if (*var_108 != r19) {
                                    objc_enumerationMutation(var_120);
                            }
                            r0 = objc_msgSend(r22, r23);
                            r29 = r29;
                            r21 = [r0 retain];
                            objc_msgSend(@class(ADCInterstitialAdSession), r24);
                            if (objc_msgSend(r21, r25) != 0x0) {
                                    r24 = r28;
                                    r23 = r19;
                                    r19 = r22;
                                    r0 = [r21 retain];
                                    r20 = r0;
                                    r0 = [r0 interstitialAd];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = [r0 getActive];
                                    [r0 release];
                                    if (r28 != 0x0) {
                                            r0 = [r20 interstitialAd];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 adID];
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            [var_148 release];
                                            [r22 release];
                                            var_148 = r28;
                                    }
                                    r28 = r24;
                                    [r20 release];
                                    r22 = r19;
                                    r19 = r23;
                                    r23 = var_138;
                                    r25 = var_130;
                                    r24 = var_128;
                            }
                            [r21 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r28);
                    r28 = objc_msgSend(var_120, var_158);
            } while (r28 != 0x0);
    }
    else {
            var_148 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_148 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)badAccess {
    return;
}

-(void *)getActiveAdCreativeID {
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
    var_148 = [@(0x0) retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 sessionFromID] retain];
    [r0 release];
    var_108 = q0;
    r0 = [r21 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_158 = r1;
    r28 = objc_msgSend(r0, r1);
    if (r28 != 0x0) {
            r20 = *var_108;
            do {
                    r27 = 0x0;
                    r23 = @selector(objectForKeyedSubscript:);
                    r24 = @selector(class);
                    r25 = @selector(isKindOfClass:);
                    var_130 = r25;
                    var_128 = r24;
                    var_138 = r23;
                    do {
                            if (*var_108 != r20) {
                                    objc_enumerationMutation(var_120);
                            }
                            r0 = objc_msgSend(r21, r23);
                            r29 = r29;
                            r19 = [r0 retain];
                            objc_msgSend(@class(ADCInterstitialAdSession), r24);
                            if (objc_msgSend(r19, r25) != 0x0) {
                                    r24 = r28;
                                    r23 = r20;
                                    r20 = r21;
                                    r0 = [r19 retain];
                                    r22 = r0;
                                    r0 = [r0 interstitialAd];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = [r0 getActive];
                                    [r0 release];
                                    if (r28 != 0x0) {
                                            r0 = [r22 interstitialAd];
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            r0 = [r0 creativeID];
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            [var_148 release];
                                            [r21 release];
                                            var_148 = r28;
                                    }
                                    r28 = r24;
                                    [r22 release];
                                    r21 = r20;
                                    r20 = r23;
                                    r23 = var_138;
                                    r25 = var_130;
                                    r24 = var_128;
                            }
                            [r19 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r28);
                    r28 = objc_msgSend(var_120, var_158);
            } while (r28 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_148 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setPreviousCrashHandler:(void * *)arg2 {
    self->_previousCrashHandler = arg2;
    return;
}

-(void *)getCachedAds {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    var_1E0 = [NSMutableArray new];
    r0 = [ADCDevice sharedDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 mediaPath];
    r0 = [r0 retain];
    r19 = [[r0 stringByAppendingPathComponent:@"422de421e0f4e019426b9abfd780746bc40740eb"] retain];
    [r0 release];
    [r20 release];
    var_210 = r19;
    r9 = [[NSData dataWithContentsOfFile:r19] retain];
    var_218 = r9;
    r0 = [ADCUtil JSONObjectFromData:r9];
    r0 = [r0 retain];
    var_220 = r0;
    r0 = [r0 objectForKeyedSubscript:@"app"];
    r0 = [r0 retain];
    var_228 = r0;
    r0 = [r0 objectForKeyedSubscript:@"zones"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_208 = r0;
    var_1E8 = r1;
    r0 = objc_msgSend(r0, r1);
    var_1F8 = r0;
    if (r0 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_208);
                            }
                            var_1F0 = r19;
                            r0 = *(0x0 + r19 * 0x8);
                            r0 = [r0 objectForKeyedSubscript:@"ads"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            r25 = objc_msgSend(r0, var_1E8);
                            if (r25 != 0x0) {
                                    do {
                                            r22 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r24);
                                                    }
                                                    r26 = *(0x0 + r22 * 0x8);
                                                    r0 = [r26 objectForKeyedSubscript:@"legacy"];
                                                    r29 = r29;
                                                    r28 = [r0 retain];
                                                    if (r28 != 0x0) {
                                                            r26 = [r28 retain];
                                                            if (r26 != 0x0) {
                                                                    r0 = [r26 objectForKeyedSubscript:@"uuid"];
                                                                    r29 = r29;
                                                                    r21 = [r0 retain];
                                                                    if (r21 != 0x0) {
                                                                            [var_1E0 addObject:r2];
                                                                    }
                                                                    [r21 release];
                                                            }
                                                    }
                                                    else {
                                                            r0 = [r26 objectForKeyedSubscript:@"aurora"];
                                                            r29 = r29;
                                                            r21 = [r0 retain];
                                                            if (r21 != 0x0) {
                                                                    r26 = [r21 retain];
                                                            }
                                                            else {
                                                                    r26 = 0x0;
                                                            }
                                                            [r21 release];
                                                            if (r26 != 0x0) {
                                                                    r0 = [r26 objectForKeyedSubscript:@"uuid"];
                                                                    r29 = r29;
                                                                    r21 = [r0 retain];
                                                                    if (r21 != 0x0) {
                                                                            [var_1E0 addObject:r2];
                                                                    }
                                                                    [r21 release];
                                                            }
                                                    }
                                                    [r28 release];
                                                    [r26 release];
                                                    r22 = r22 + 0x1;
                                            } while (r22 < r25);
                                            r25 = objc_msgSend(r24, var_1E8);
                                    } while (r25 != 0x0);
                            }
                            [r24 release];
                            r19 = var_1F0 + 0x1;
                    } while (r19 < var_1F8);
                    r0 = objc_msgSend(var_208, var_1E8);
                    var_1F8 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_208 release];
    [var_228 release];
    [var_220 release];
    [var_218 release];
    [var_210 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_1E0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getCreativeAdIDsInCache {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1f0;
    var_1E8 = [NSMutableArray new];
    r0 = [ADCDevice sharedDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 mediaPath];
    r0 = [r0 retain];
    r19 = [[r0 stringByAppendingPathComponent:@"422de421e0f4e019426b9abfd780746bc40740eb"] retain];
    [r0 release];
    [r20 release];
    var_218 = r19;
    r9 = [[NSData dataWithContentsOfFile:r19] retain];
    var_220 = r9;
    r0 = [ADCUtil JSONObjectFromData:r9];
    r0 = [r0 retain];
    var_228 = r0;
    r0 = [r0 objectForKeyedSubscript:@"app"];
    r0 = [r0 retain];
    var_230 = r0;
    r0 = [r0 objectForKeyedSubscript:@"zones"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_210 = r0;
    var_1F0 = r1;
    r0 = objc_msgSend(r0, r1);
    var_200 = r0;
    if (r0 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_210);
                            }
                            var_1F8 = r20;
                            r0 = *(0x0 + r20 * 0x8);
                            r0 = [r0 objectForKeyedSubscript:@"ads"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = r0;
                            r27 = objc_msgSend(r0, var_1F0);
                            if (r27 != 0x0) {
                                    do {
                                            r20 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r25);
                                                    }
                                                    r21 = *(0x0 + r20 * 0x8);
                                                    r0 = [r21 objectForKeyedSubscript:@"legacy"];
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    if (r26 != 0x0) {
                                                            r21 = [r26 retain];
                                                            if (r21 != 0x0) {
                                                                    r0 = [r21 objectForKeyedSubscript:@"meta"];
                                                                    r29 = r29;
                                                                    r24 = [r0 retain];
                                                                    if (r24 != 0x0) {
                                                                            r0 = [r24 objectForKeyedSubscript:@"creative_id"];
                                                                            r29 = r29;
                                                                            [r0 retain];
                                                                            [var_1E8 addObject:r2];
                                                                            [r19 release];
                                                                    }
                                                                    [r24 release];
                                                            }
                                                    }
                                                    else {
                                                            r0 = [r21 objectForKeyedSubscript:@"aurora"];
                                                            r29 = r29;
                                                            r24 = [r0 retain];
                                                            if (r24 != 0x0) {
                                                                    r21 = [r24 retain];
                                                            }
                                                            else {
                                                                    r21 = 0x0;
                                                            }
                                                            [r24 release];
                                                            if (r21 != 0x0) {
                                                                    r0 = [r21 objectForKeyedSubscript:@"meta"];
                                                                    r29 = r29;
                                                                    r24 = [r0 retain];
                                                                    if (r24 != 0x0) {
                                                                            r0 = [r24 objectForKeyedSubscript:@"creative_id"];
                                                                            r29 = r29;
                                                                            [r0 retain];
                                                                            [var_1E8 addObject:r2];
                                                                            [r19 release];
                                                                    }
                                                                    [r24 release];
                                                            }
                                                    }
                                                    [r26 release];
                                                    [r21 release];
                                                    r20 = r20 + 0x1;
                                            } while (r20 < r27);
                                            r27 = objc_msgSend(r25, var_1F0);
                                    } while (r27 != 0x0);
                            }
                            [r25 release];
                            r20 = var_1F8 + 0x1;
                    } while (r20 < var_200);
                    r0 = objc_msgSend(var_210, var_1F0);
                    var_200 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_210 release];
    [var_230 release];
    [var_228 release];
    [var_220 release];
    [var_218 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_1E8 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end
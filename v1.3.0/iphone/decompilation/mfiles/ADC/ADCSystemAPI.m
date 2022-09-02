@implementation ADCSystemAPI

-(void)sendOpenHookMessageWithUrl:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg2 retain];
    r20 = [[NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_48 count:0x2] retain];
    r0 = [ADCMessage controllerCustomMessageWithContent:r20];
    r0 = [r0 retain];
    [r0 send];
    [r22 release];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)openBrowser:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x1c0;
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
    r29 = &saved_fp;
    r19 = r2;
    r23 = self;
    if (*(int8_t *)(int64_t *)&r23->_showingBrowser != 0x0) goto loc_1001ea828;

loc_1001ea7fc:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_browser));
    r0 = *(r23 + r21);
    r0 = [r0 presentingViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001ea898;

loc_1001ea828:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openBrowser:]" line:0x77 withFormat:@"Tried to open the browser while already showing one. Ignoring."];
    goto loc_1001ea85c;

loc_1001ea85c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1001ea898:
    r19 = [r19 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"url"];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1001eaa3c;

loc_1001ea8d4:
    [r19 origin];
    asm { sxtw       x24, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 moduleForIdentifier:r24];
    r29 = r29;
    r28 = [r0 retain];
    [r22 release];
    if (r28 == 0x0) goto loc_1001eab40;

loc_1001ea934:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 sessionFromID] retain];
    var_188 = r28;
    r28 = [[r28 adSessionID] retain];
    r0 = [r27 objectForKeyedSubscript:r28];
    r29 = r29;
    r22 = [r0 retain];
    [r28 release];
    [r27 release];
    [r26 release];
    if (r22 == 0x0) goto loc_1001eab7c;

loc_1001ea9c8:
    r0 = [r22 appViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001eabb8;

loc_1001ea9ec:
    [ADCInterstitialAdSession class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001eac20;

loc_1001eaa24:
    r0 = [r22 fullscreenModule];
    r29 = r29;
    goto loc_1001eac58;

loc_1001eac58:
    r0 = [r0 retain];
    r26 = [r0 originNumber];
    [r0 release];
    goto loc_1001eac80;

loc_1001eac80:
    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"in_app"];
    r29 = r29;
    r0 = [r0 retain];
    var_198 = r0;
    var_190 = r26;
    if (r0 != 0x0) {
            r24 = [r0 boolValue] ^ 0x1;
    }
    else {
            r24 = 0x1;
    }
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI openBrowser:]" line:0xa1 withFormat:@"Will try to open an external app url: %@"];
    if ([r20 rangeOfString:r2] != 0x7fffffffffffffff) {
            r0 = [r20 stringByReplacingOccurrencesOfString:@"browser://" withString:@"safari://"];
            r29 = r29;
            r26 = [r0 retain];
            [r20 release];
            r20 = r26;
    }
    r26 = [r20 rangeOfString:r2];
    [r23 sendOpenHookMessageWithUrl:r20];
    r0 = [ADCNativeLayer sharedLayer];
    r29 = r29;
    r28 = [r0 retain];
    r8 = *(r23 + r21);
    if (r8 == 0x0) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r26 == 0x7fffffffffffffff && ((r24 | r8) & 0x1) == 0x0) {
            if ([r22 isMemberOfClass:[ADCNativeAdSession class]] != 0x0) {
                    r0 = [r22 retain];
                    r25 = r0;
                    r0 = [r0 nativeAd];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_currNativeAd));
                    r8 = *(r23 + r24);
                    *(r23 + r24) = r0;
                    [r8 release];
                    if (([*(r23 + r24) finished] & 0x1) == 0x0) {
                            [*(r23 + r24) pause];
                    }
                    [r25 release];
            }
            objc_initWeak(r29 - 0x80, r23);
            objc_copyWeak((r29 - 0xb8) + 0x28, r29 - 0x80);
            [r28 retain];
            [r27 setOpenHandler:r29 - 0xb8];
            objc_copyWeak(&var_F0 + 0x28, r29 - 0x80);
            var_D0 = [r26 retain];
            [r28 setDismissalHandler:&var_F0];
            objc_copyWeak(&var_138 + 0x40, r29 - 0x80);
            var_118 = [r20 retain];
            var_110 = [r22 retain];
            var_108 = r23;
            [r23 retain];
            var_100 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_138);
            [var_100 release];
            [var_108 release];
            [var_110 release];
            [var_118 release];
            objc_destroyWeak(&var_138 + 0x40);
            [var_D0 release];
            objc_destroyWeak(&var_F0 + 0x28);
            [r26 release];
            [r23 release];
            objc_destroyWeak((r29 - 0xb8) + 0x28);
            objc_destroyWeak(r29 - 0x80);
    }
    else {
            if (r26 != 0x7fffffffffffffff) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            var_160 = [r20 retain];
            [r28 retain];
            var_150 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_180);
            [var_150 release];
            [r28 release];
            [var_160 release];
            [r23 release];
    }
    r28 = var_188;
    [var_198 release];
    goto loc_1001eb0a4;

loc_1001eb0a4:
    [r22 release];
    goto loc_1001eb0ac;

loc_1001eb0ac:
    r0 = r28;
    goto loc_1001eb0b0;

loc_1001eb0b0:
    [r0 release];
    [r20 release];
    [r19 release];
    goto loc_1001ea85c;

loc_1001eac20:
    r24 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r22, r24) == 0x0) goto loc_1001eac7c;

loc_1001eac44:
    r0 = [r22 nativeModule];
    r29 = r29;
    goto loc_1001eac58;

loc_1001eac7c:
    r26 = 0x0;
    goto loc_1001eac80;

loc_1001eabb8:
    r24 = [[r22 identifier] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openBrowser:]" line:0x90 withFormat:@"Ad session with id: %@ has no view controller"];
    [r24 release];
    goto loc_1001eac18;

loc_1001eac18:
    r28 = var_188;
    goto loc_1001eb0a4;

loc_1001eab7c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openBrowser:]" line:0x8c withFormat:@"No ad session registered with module id: %lu"];
    goto loc_1001eac18;

loc_1001eab40:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openBrowser:]" line:0x87 withFormat:@"No module registered with id: %lu"];
    goto loc_1001eb0ac;

loc_1001eaa3c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openBrowser:]" line:0x7f withFormat:@"Tried to open an invalid URL: %@"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r23 = [[r19 messageReplyWithDict:r22] retain];
    [r20 sendMessage:r23];
    [r23 release];
    [r22 release];
    r0 = r21;
    goto loc_1001eb0b0;
}

-(void *)productInfoStringWithId:(void *)arg2 productInfo:(void *)arg3 {
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
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    var_140 = r20;
    r0 = [NSString stringWithFormat:@"itunes://id=%@"];
    r29 = &saved_fp;
    var_120 = [r0 retain];
    r0 = [r19 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r26 = *0x0;
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            r23 = *(0x0 + r19 * 0x8);
                            if (([r23 isEqualToString:@"id"] & 0x1) == 0x0 && ([r23 isEqualToString:@"product_id"] & 0x1) == 0x0) {
                                    r21 = [[r22 objectForKeyedSubscript:r2] retain];
                                    r0 = [NSString stringWithFormat:r2];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    r22 = r22;
                                    r26 = r26;
                                    r24 = r24;
                                    [var_120 release];
                                    [r21 release];
                                    var_120 = r23;
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r24);
                    r24 = objc_msgSend(r22, var_138);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r22 release];
    [var_140 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_120 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sanitizeProductInfo:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x180;
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
    r28 = arg3;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1001ec838;

loc_1001ec4ac:
    [NSDictionary class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1001ec838;

loc_1001ec4e0:
    r0 = [NSMutableDictionary dictionaryWithDictionary:r19];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            [NSString class];
            if (objc_msgSend(r26, r23) != 0x0) {
                    r0 = [NSNumberFormatter alloc];
                    r0 = [r0 init];
                    r27 = r0;
                    [r0 setNumberStyle:0x0];
                    r0 = [r27 numberFromString:r26];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            [r21 setObject:r20 forKeyedSubscript:**_SKStoreProductParameterITunesItemIdentifier];
                    }
                    [r20 release];
                    [r27 release];
            }
    }
    r0 = [r21 objectForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r26 release];
    if (r24 != 0x0) goto loc_1001ec624;

loc_1001ec600:
    [NSNumber class];
    if ((objc_msgSend(0x0, r23) & 0x1) == 0x0) goto loc_1001ec974;

loc_1001ec624:
    var_140 = r24;
    r24 = [[NSArray arrayWithObjects:r29 - 0x68 count:0x2] retain];
    r0 = [NSMutableArray arrayWithArray:r24];
    r29 = r29;
    r26 = [r0 retain];
    [r24 release];
    if (sub_1009f77b0(0x8, 0x3, 0x0) != 0x0) {
            [r26 addObject:r2];
    }
    if (sub_1009f77b0(0x9, 0x3, 0x0) != 0x0) {
            [r26 addObject:r2];
    }
    var_150 = r28;
    var_138 = r19;
    if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
            [r26 addObject:r2];
    }
    var_118 = q0;
    r0 = [r26 retain];
    r26 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r1;
    r28 = objc_msgSend(r0, r1);
    if (r28 == 0x0) goto loc_1001ec820;

loc_1001ec77c:
    r27 = *var_118;
    goto loc_1001ec788;

loc_1001ec788:
    r22 = 0x0;
    goto loc_1001ec78c;

loc_1001ec78c:
    if (*var_118 != r27) {
            objc_enumerationMutation(r26);
    }
    r25 = @selector(objectForKey:);
    r20 = *(var_120 + r22 * 0x8);
    r0 = objc_msgSend(r21, r25);
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1001ec7ec;

loc_1001ec7cc:
    [NSString class];
    if (objc_msgSend(r24, r23) == 0x0) goto loc_1001ec8a0;

loc_1001ec7ec:
    [r24 release];
    r22 = r22 + 0x1;
    if (r22 < r28) goto loc_1001ec78c;

loc_1001ec800:
    r28 = objc_msgSend(r26, var_148);
    if (r28 != 0x0) goto loc_1001ec788;

loc_1001ec820:
    [r26 release];
    r20 = [r21 retain];
    goto loc_1001ec914;

loc_1001ec914:
    [r26 release];
    r24 = var_140;
    r19 = var_138;
    goto loc_1001ec920;

loc_1001ec920:
    [r24 release];
    [r21 release];
    goto loc_1001ec930;

loc_1001ec930:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001ec8a0:
    r20 = [[NSString stringWithFormat:@"Invalid product info key %@, received: %@"] retain];
    *var_150 = [[[ADCUtil errorWithMessage:r20] retain] autorelease];
    [r20 release];
    [r24 release];
    [r26 release];
    r20 = 0x0;
    goto loc_1001ec914;

loc_1001ec974:
    r22 = [[NSString stringWithFormat:@"Invalid product id: %@"] retain];
    *r28 = [[[ADCUtil errorWithMessage:r22] retain] autorelease];
    [r22 release];
    r20 = 0x0;
    goto loc_1001ec920;

loc_1001ec838:
    r21 = [[NSString stringWithFormat:@"Invalid product info dictionary %@"] retain];
    *r28 = [[[ADCUtil errorWithMessage:r21] retain] autorelease];
    [r21 release];
    r20 = 0x0;
    goto loc_1001ec930;
}

-(void)telephone:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if (([self supportsPhoneCalls] & 0x1) == 0x0) goto loc_1001ee90c;

loc_1001ee794:
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"phone_number"];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0 || [r20 length] == 0x0) goto loc_1001ee9f8;

loc_1001ee7d8:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI telephone:]" line:0x1f8 withFormat:@"Detected phone number is valid and the device can make phone calls - will attempt"];
    r22 = [[NSString stringWithFormat:@"tel:%@"] retain];
    r23 = [[NSURL URLWithString:r22] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&stack[-112] count:0x0];
    r24 = [r0 retain];
    var_68 = [r19 retain];
    [ADCSystemAPI openURL:r23 options:r24 completionHandler:&var_88];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = var_68;
    goto loc_1001eeb00;

loc_1001eeb00:
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_1001ee9f8:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI telephone:]" line:0x1f5 withFormat:@"Tried to make a call with an invalid phone number: %@"];
    r21 = [[ADCNativeLayer sharedLayer] retain];
    r22 = [@(NO) retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    r24 = [[r19 messageReplyWithDict:r23] retain];
    [r21 sendMessage:r24];
    [r24 release];
    goto loc_1001eeaec;

loc_1001eeaec:
    [r23 release];
    [r22 release];
    r0 = r21;
    goto loc_1001eeb00;

loc_1001ee90c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI telephone:]" line:0x1ee withFormat:@"Detected the device cannot make phone calls - will not attempt"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x40 forKeys:&var_48 count:0x1] retain];
    r23 = [[r19 messageReplyWithDict:r22] retain];
    [r20 sendMessage:r23];
    goto loc_1001eeaec;
}

-(void *)parseStoreIDFromURL:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r22 = @selector(length);
            var_58 = 0x0;
            r21 = [[NSRegularExpression regularExpressionWithPattern:@"\?id=([\d]+)" options:0x1 error:&var_58] retain];
            r20 = [var_58 retain];
            objc_msgSend(r19, r22);
            r0 = [r21 firstMatchInString:r19 options:0x0 range:0x0];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0 && [r23 numberOfRanges] != 0x0) {
                    r8 = [r23 rangeAtIndex:0x1];
                    r10 = 0x7fffffffffffffff;
                    if (r8 == r10) {
                            r10 = 0x7fffffffffffffff;
                            if (CPU_FLAGS & E) {
                                    r10 = 0x1;
                            }
                    }
                    if (@selector(rangeAtIndex:) == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r11 = 0x1;
                            }
                    }
                    if (r8 != 0x0 && (r10 & r11 & 0x1) == 0x0) {
                            r0 = [r19 substringWithRange:r8];
                            r29 = r29;
                            r24 = [r0 retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCSystemAPI parseStoreIDFromURL:]" line:0x1cf withFormat:@"Product id found via regex %@"];
                            if (r24 == 0x0) {
                                    r22 = @selector(length);
                                    r0 = [NSScanner scannerWithString:r19];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    [r0 scanUpToString:@"/id" intoString:0x0];
                                    if ([r25 scanLocation] + 0x3 < objc_msgSend(r19, r22)) {
                                            [r25 setScanLocation:[r25 scanLocation] + 0x3];
                                            [r25 scanUpToString:@"?" intoString:&var_60];
                                            r24 = [var_60 retain];
                                            [r25 release];
                                            if (r24 != 0x0) {
                                                    if ([r24 length] >= 0x2) {
                                                            r24 = [r24 retain];
                                                            r22 = r24;
                                                    }
                                                    else {
                                                            r22 = 0x0;
                                                    }
                                            }
                                            else {
                                                    r22 = 0x0;
                                            }
                                    }
                                    else {
                                            [r25 release];
                                            r24 = 0x0;
                                            r22 = 0x0;
                                    }
                            }
                            else {
                                    if ([r24 length] >= 0x2) {
                                            r24 = [r24 retain];
                                            r22 = r24;
                                    }
                                    else {
                                            r22 = 0x0;
                                    }
                            }
                    }
                    else {
                            r22 = @selector(length);
                            r0 = [NSScanner scannerWithString:r19];
                            r0 = [r0 retain];
                            r25 = r0;
                            [r0 scanUpToString:@"/id" intoString:0x0];
                            if ([r25 scanLocation] + 0x3 < objc_msgSend(r19, r22)) {
                                    [r25 setScanLocation:[r25 scanLocation] + 0x3];
                                    [r25 scanUpToString:@"?" intoString:&var_60];
                                    r24 = [var_60 retain];
                                    [r25 release];
                                    if (r24 != 0x0) {
                                            if ([r24 length] >= 0x2) {
                                                    r24 = [r24 retain];
                                                    r22 = r24;
                                            }
                                            else {
                                                    r22 = 0x0;
                                            }
                                    }
                                    else {
                                            r22 = 0x0;
                                    }
                            }
                            else {
                                    [r25 release];
                                    r24 = 0x0;
                                    r22 = 0x0;
                            }
                    }
            }
            else {
                    r22 = @selector(length);
                    r0 = [NSScanner scannerWithString:r19];
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 scanUpToString:@"/id" intoString:0x0];
                    if ([r25 scanLocation] + 0x3 < objc_msgSend(r19, r22)) {
                            [r25 setScanLocation:[r25 scanLocation] + 0x3];
                            [r25 scanUpToString:@"?" intoString:&var_60];
                            r24 = [var_60 retain];
                            [r25 release];
                            if (r24 != 0x0) {
                                    if ([r24 length] >= 0x2) {
                                            r24 = [r24 retain];
                                            r22 = r24;
                                    }
                                    else {
                                            r22 = 0x0;
                                    }
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    else {
                            [r25 release];
                            r24 = 0x0;
                            r22 = 0x0;
                    }
            }
            [r23 release];
            [r21 release];
            [r24 release];
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(bool)supportsPhoneCalls {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[UIApplication sharedApplication] retain];
    r0 = [NSURL URLWithString:@"tel://"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r19 canOpenURL:r20];
    [r20 release];
    [r19 release];
    if (r21 != 0x0) {
            r0 = [CTTelephonyNetworkInfo alloc];
            r0 = [r0 init];
            r19 = r0;
            r0 = [r0 subscriberCellularProvider];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 mobileNetworkCode];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 length] != 0x0) {
                    r22 = [r21 isEqualToString:r2] ^ 0x1;
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
            [r20 release];
            [r19 release];
    }
    else {
            r22 = 0x0;
    }
    r0 = r22;
    return r0;
}

-(void)openStore:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x190;
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
    r26 = r2;
    r27 = self;
    r19 = [r26 retain];
    if (NSClassFromString(@"SKStoreProductViewController") == 0x0) goto loc_1001ecd58;

loc_1001ecc74:
    if ([r27 openingStore] == 0x0) goto loc_1001ece28;

loc_1001ecc88:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x142 withFormat:@"Tried to open another store view while already opening one. Ignoring"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r22];
    goto loc_1001ecf04;

loc_1001ecf04:
    r23 = [r0 retain];
    [r20 sendMessage:r23];
    goto loc_1001ecf20;

loc_1001ecf20:
    r0 = r23;
    goto loc_1001ecf24;

loc_1001ecf24:
    [r0 release];
    r0 = r22;
    goto loc_1001ecf2c;

loc_1001ecf2c:
    [r0 release];
    goto loc_1001ecf30;

loc_1001ecf30:
    [r21 release];
    goto loc_1001ecf38;

loc_1001ecf38:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001ece28:
    if (*(int8_t *)(int64_t *)&r27->_showingStoreView == 0x0) goto loc_1001ecf80;

loc_1001ece38:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x148 withFormat:@"Tried to show a store view while already displaying one. Ignoring"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x88 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r22];
    goto loc_1001ecf04;

loc_1001ecf80:
    [r19 origin];
    asm { sxtw       x22, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 moduleForIdentifier:r22];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    if (r20 == 0x0) goto loc_1001ed258;

loc_1001ecfe0:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 sessionFromID] retain];
    r23 = [[r20 adSessionID] retain];
    r0 = [r25 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    [r25 release];
    [r24 release];
    if (r21 == 0x0) goto loc_1001ed294;

loc_1001ed078:
    r0 = [r21 appViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001ed2d0;

loc_1001ed09c:
    r0 = [ADCMessage dictionaryValueFromMessage:r19 withKey:@"product_data"];
    r29 = r29;
    r24 = [r0 retain];
    [@"" retain];
    if (r24 == 0x0) goto loc_1001ed330;

loc_1001ed0dc:
    r22 = @"";
    r25 = r24;
    goto loc_1001ed0e0;

loc_1001ed0e0:
    r0 = [r27 sanitizeProductInfo:r25 error:&var_C0];
    r29 = r29;
    r24 = [r0 retain];
    r23 = [var_C0 retain];
    [r25 release];
    var_120 = r23;
    if (r24 == 0x0) goto loc_1001ed40c;

loc_1001ed124:
    r25 = [[r24 objectForKeyedSubscript:r2] retain];
    r23 = [[NSString stringWithFormat:@"%@"] retain];
    [r22 release];
    [r25 release];
    [r27 setOpeningStore:0x1];
    var_F0 = [r21 retain];
    var_E0 = [r20 retain];
    r22 = [r23 retain];
    var_D0 = [r24 retain];
    var_C8 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_110);
    objc_storeStrong((int64_t *)&r27->_currStoreViewMessage, r26);
    [var_C8 release];
    [var_D0 release];
    [r22 release];
    [var_E0 release];
    r0 = var_F0;
    goto loc_1001ed7dc;

loc_1001ed7dc:
    [r0 release];
    [var_120 release];
    r0 = r24;
    goto loc_1001ecf24;

loc_1001ed40c:
    r0 = [r21 adID];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            r0 = [r21 adID];
            r29 = r29;
            r27 = [r0 retain];
            [NSString class];
            var_150 = r27;
            if ([r27 isKindOfClass:r2] != 0x0) {
                    r0 = [r21 adID];
                    r29 = r29;
                    var_128 = [r0 retain];
                    var_13C = 0x1;
                    var_140 = 0x1;
            }
            else {
                    var_128 = @"";
                    var_140 = 0x0;
                    var_13C = 0x1;
            }
    }
    else {
            var_140 = 0x0;
            var_128 = @"";
    }
    r0 = [r21 creativeID];
    r29 = r29;
    r28 = [r0 retain];
    var_130 = r25;
    if (r28 == 0x0) goto loc_1001ed614;

loc_1001ed5a0:
    r0 = [r21 creativeID];
    r29 = r29;
    r26 = [r0 retain];
    [NSNumber class];
    r0 = [r26 isKindOfClass:r2];
    var_158 = r26;
    if (r0 == 0x0) goto loc_1001ed61c;

loc_1001ed5e8:
    r0 = [r21 creativeID];
    r29 = r29;
    r27 = [r0 retain];
    r25 = 0x0;
    var_144 = 0x1;
    r26 = 0x1;
    goto loc_1001ed650;

loc_1001ed650:
    r0 = [r23 localizedDescription];
    r29 = r29;
    r23 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x173 withFormat:@"Invalid product data sent to open store (%@ / %@): %@"];
    [r23 release];
    if (r25 != 0x0) {
            [r27 release];
    }
    r23 = @selector(sharedLayer);
    if (r26 != 0x0) {
            [r27 release];
    }
    r25 = var_130;
    if (var_144 != 0x0) {
            [var_158 release];
    }
    [r28 release];
    if (var_140 != 0x0) {
            [var_128 release];
    }
    if (var_13C != 0x0) {
            [var_150 release];
    }
    [r25 release];
    r23 = [objc_msgSend(@class(ADCNativeLayer), r23) retain];
    r25 = [@(NO) retain];
    r26 = [[NSDictionary dictionaryWithObjects:r29 - 0xb0 forKeys:r29 - 0xb8 count:0x1] retain];
    r27 = [[r19 messageReplyWithDict:r26] retain];
    [r23 sendMessage:r27];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = r23;
    goto loc_1001ed7dc;

loc_1001ed61c:
    var_144 = 0x1;
    goto loc_1001ed624;

loc_1001ed624:
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r27 = [r0 retain];
    r26 = 0x0;
    r25 = 0x1;
    goto loc_1001ed650;

loc_1001ed614:
    var_144 = 0x0;
    goto loc_1001ed624;

loc_1001ed330:
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"product_id"];
    r29 = r29;
    r22 = [r0 retain];
    [@"" release];
    if (r22 == 0x0 || [r22 length] == 0x0) goto loc_1001ed4b0;

loc_1001ed37c:
    if ([r22 hasPrefix:@"http"] != 0x0) {
            r0 = [r27 parseStoreIDFromURL:r22];
            r29 = r29;
            r23 = [r0 retain];
            [r22 release];
            r22 = r23;
    }
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r25 = [r0 retain];
    [r24 release];
    goto loc_1001ed0e0;

loc_1001ed4b0:
    r25 = @selector(adID);
    r0 = objc_msgSend(r21, r25);
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r25 = @selector(adID);
            r0 = objc_msgSend(r21, r25);
            r29 = r29;
            r23 = [r0 retain];
            [NSString class];
            if ([r23 isKindOfClass:r2] != 0x0) {
                    r25 = @selector(adID);
                    r0 = objc_msgSend(r21, r25);
                    r29 = r29;
                    r27 = [r0 retain];
                    var_128 = 0x1;
                    var_130 = 0x1;
            }
            else {
                    var_130 = 0x0;
                    r27 = @"";
                    var_128 = 0x1;
            }
    }
    else {
            r23 = &@class(MCConfigurationData);
            var_128 = 0x0;
            var_130 = 0x0;
            r27 = @"";
    }
    r0 = [r21 creativeID];
    r29 = r29;
    r28 = [r0 retain];
    var_138 = r23;
    if (r28 == 0x0) goto loc_1001ed8e0;

loc_1001ed840:
    r0 = [r21 creativeID];
    r29 = r29;
    r25 = [r0 retain];
    [NSNumber class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_1001ed8e8;

loc_1001ed884:
    r0 = [r21 creativeID];
    r29 = r29;
    r23 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x163 withFormat:@"Failed to open AppStore with invalid invalid iTunes product ID: %@, (ad id: %@, creative id: %@)"];
    [r23 release];
    [r25 release];
    goto loc_1001ed95c;

loc_1001ed95c:
    [r28 release];
    r23 = @selector(sharedLayer);
    if (var_130 != 0x0) {
            [r27 release];
    }
    if (var_128 != 0x0) {
            [var_138 release];
    }
    [r24 release];
    r23 = [objc_msgSend(@class(ADCNativeLayer), r23) retain];
    r24 = [@(NO) retain];
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0x90 forKeys:r29 - 0x98 count:0x1] retain];
    r26 = [[r19 messageReplyWithDict:r25] retain];
    [r23 sendMessage:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    goto loc_1001ecf20;

loc_1001ed8e8:
    r26 = 0x1;
    goto loc_1001ed8ec;

loc_1001ed8ec:
    r0 = @(0x0);
    r29 = r29;
    r23 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x163 withFormat:@"Failed to open AppStore with invalid invalid iTunes product ID: %@, (ad id: %@, creative id: %@)"];
    [r23 release];
    if (r26 != 0x0) {
            [r25 release];
    }
    goto loc_1001ed95c;

loc_1001ed8e0:
    r26 = 0x0;
    goto loc_1001ed8ec;

loc_1001ed2d0:
    r23 = [[r21 identifier] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x15a withFormat:@"Ad session with id: %@ has no view controller"];
    r0 = r23;
    goto loc_1001ecf2c;

loc_1001ed294:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x156 withFormat:@"No ad session registered with module id: %lu"];
    goto loc_1001ecf30;

loc_1001ed258:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x150 withFormat:@"No module registered with id: %lu"];
    goto loc_1001ecf38;

loc_1001ecd58:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI openStore:]" line:0x13c withFormat:@"SKStoreProductViewController class is not loaded - will not open In-App AppStore"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r22];
    goto loc_1001ecf04;
}

-(void)vibrate:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCDevice sharedDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 model];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 rangeOfString:@"iPhone"];
    [r0 release];
    [r20 release];
    if (r22 == 0x7fffffffffffffff) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI vibrate:]" line:0x24b withFormat:@"Detected current device cannot vibrate - will ignore"];
            r20 = [[ADCNativeLayer sharedLayer] retain];
            r21 = [@(NO) retain];
            r22 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
            r0 = [r19 messageReplyWithDict:r22];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI vibrate:]" line:0x250 withFormat:@"Detected current device can vibrate - will attempt"];
            AudioServicesPlaySystemSound(0xfff);
            r20 = [[ADCNativeLayer sharedLayer] retain];
            r21 = [@(YES) retain];
            r22 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r0 = [r19 messageReplyWithDict:r22];
    }
    var_38 = **___stack_chk_guard;
    r23 = [r0 retain];
    [r20 sendMessage:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)sms:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
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
    r21 = r2;
    r24 = self;
    r19 = [r21 retain];
    r22 = (int64_t *)&r24->_currSMSMessage;
    if (*r22 == 0x0) goto loc_1001eeef4;

loc_1001eee24:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCSystemAPI sms:]" line:0x217 withFormat:@"Tried to send SMS while already in the process of doing so - ignoring"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r22];
    goto loc_1001ef3a8;

loc_1001ef3a8:
    r23 = [r0 retain];
    [r20 sendMessage:r23];
    [r23 release];
    [r22 release];
    r0 = r21;
    goto loc_1001ef3d8;

loc_1001ef3d8:
    [r0 release];
    goto loc_1001ef3dc;

loc_1001ef3dc:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001eeef4:
    r20 = [[UIApplication sharedApplication] retain];
    r0 = [NSURL URLWithString:@"sms:"];
    r29 = r29;
    r23 = [r0 retain];
    if ([r20 canOpenURL:r23] == 0x0) goto loc_1001ef2cc;

loc_1001eef54:
    r25 = [MFMessageComposeViewController canSendText];
    [r23 release];
    [r20 release];
    if ((r25 & 0x1) == 0x0) goto loc_1001ef2dc;

loc_1001eef80:
    [r19 origin];
    asm { sxtw       x25, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 moduleForIdentifier:r25];
    r29 = r29;
    r20 = [r0 retain];
    [r23 release];
    if (r20 == 0x0) goto loc_1001ef424;

loc_1001eefdc:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 sessionFromID] retain];
    var_B0 = r20;
    r23 = [[r20 adSessionID] retain];
    r0 = [r28 objectForKeyedSubscript:r2];
    r29 = r29;
    r20 = [r0 retain];
    [r23 release];
    r0 = r28;
    r28 = r20;
    [r0 release];
    [r27 release];
    if (r28 == 0x0) goto loc_1001ef460;

loc_1001ef078:
    r0 = [r28 appViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001ef49c;

loc_1001ef09c:
    r0 = [r19 dict];
    r0 = [r0 retain];
    r25 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    r0 = [r19 dict];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r26 = [r0 retain];
    [r23 release];
    r0 = [MFMessageComposeViewController alloc];
    r0 = [r0 init];
    r27 = r0;
    [r0 setMessageComposeDelegate:r24];
    if (r25 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isEqual:r2];
            [r0 release];
            if ((r24 & 0x1) == 0x0) {
                    [r27 setRecipients:r25];
            }
    }
    r20 = var_B0;
    if (r26 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            r24 = [r0 isEqual:r2];
            [r0 release];
            if ((r24 & 0x1) == 0x0) {
                    [r27 setBody:r26];
            }
    }
    objc_storeStrong(r22, r21);
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI sms:]" line:0x241 withFormat:@"Sending SMS to: %@ with message body: %@"];
    var_88 = [r28 retain];
    [r27 retain];
    dispatch_async(*__dispatch_main_q, &var_A8);
    [r27 release];
    [var_88 release];
    [r21 release];
    [r26 release];
    [r25 release];
    goto loc_1001ef500;

loc_1001ef500:
    r0 = r28;
    goto loc_1001ef3d8;

loc_1001ef49c:
    r22 = [[r28 identifier] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI sms:]" line:0x22f withFormat:@"Ad session with id: %@ has no view controller"];
    [r22 release];
    goto loc_1001ef4fc;

loc_1001ef4fc:
    r20 = var_B0;
    goto loc_1001ef500;

loc_1001ef460:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI sms:]" line:0x22b withFormat:@"No ad session registered with module id: %lu"];
    goto loc_1001ef4fc;

loc_1001ef424:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI sms:]" line:0x225 withFormat:@"No module registered with id: %lu"];
    goto loc_1001ef3dc;

loc_1001ef2dc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI sms:]" line:0x21d withFormat:@"Detected the device cannot send SMS - will not attempt"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r22];
    goto loc_1001ef3a8;

loc_1001ef2cc:
    [r23 release];
    [r20 release];
    goto loc_1001ef2dc;
}

-(void)launchApp:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"handle"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r22 = [[NSURL URLWithString:r20] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&stack[-96] count:0x0];
            r23 = [r0 retain];
            var_60 = [r20 retain];
            var_58 = [r19 retain];
            [ADCSystemAPI openURL:r22 options:r23 completionHandler:&var_80];
            [r23 release];
            [r22 release];
            [var_58 release];
            r0 = var_60;
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI launchApp:]" line:0x294 withFormat:@"Tried to launch an external app with an invalid handle: %@"];
            r21 = [[ADCNativeLayer sharedLayer] retain];
            r22 = [@(NO) retain];
            r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x40 forKeys:&var_48 count:0x1] retain];
            r24 = [[r19 messageReplyWithDict:r23] retain];
            [r21 sendMessage:r24];
            [r24 release];
            [r23 release];
            [r22 release];
            r0 = r21;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)createCalendarEventWithUrl:(void *)arg2 message:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r23 = [[NSURL URLWithString:r21] retain];
    [r21 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0];
    r21 = [r0 retain];
    var_40 = r22;
    r22 = [r22 retain];
    [ADCSystemAPI openURL:r23 options:r21 completionHandler:&var_68];
    [r21 release];
    [r23 release];
    [var_40 release];
    [r22 release];
    return;
}

-(void)mail:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x120;
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
    r22 = r2;
    r25 = self;
    r19 = [r22 retain];
    r23 = (int64_t *)&r25->_currMailMessage;
    if (*r23 == 0x0) goto loc_1001ef9dc;

loc_1001ef8d4:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCSystemAPI mail:]" line:0x259 withFormat:@"Tried to send mail while already in the process of doing so - ignoring"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
    r23 = [[r19 messageReplyWithDict:r22] retain];
    [r20 sendMessage:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = r20;
    goto loc_1001f0204;

loc_1001f0204:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001ef9dc:
    [r19 origin];
    asm { sxtw       x27, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 moduleForIdentifier:r27];
    r29 = r29;
    r24 = [r0 retain];
    [r21 release];
    if (r24 == 0x0) goto loc_1001efe50;

loc_1001efa3c:
    var_C0 = r19;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r20 = [[r0 sessionFromID] retain];
    var_C8 = r24;
    r24 = [[r24 adSessionID] retain];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r19 = [r0 retain];
    [r24 release];
    [r20 release];
    r0 = r21;
    r21 = r19;
    [r0 release];
    if (r21 == 0x0) goto loc_1001efe8c;

loc_1001efadc:
    if (([MFMailComposeViewController canSendMail] & 0x1) == 0x0) goto loc_1001efec8;

loc_1001efaf4:
    r0 = [r21 appViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001f00b8;

loc_1001efb18:
    var_D8 = r21;
    r0 = [var_C0 dict];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    r0 = [var_C0 dict];
    r0 = [r0 retain];
    var_D0 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    r0 = [var_C0 dict];
    r0 = [r0 retain];
    r26 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    r0 = [var_C0 dict];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_E0 = [r0 boolValue];
    [r0 release];
    [r20 release];
    r0 = @class(MFMailComposeViewController);
    r0 = [r0 alloc];
    r0 = [r0 init];
    r28 = r0;
    r2 = r25;
    r25 = r19;
    [r0 setMailComposeDelegate:r2];
    if (r25 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isEqual:r2];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    [r28 setToRecipients:r25];
            }
    }
    r19 = var_D0;
    if (r19 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isEqual:r2];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    [r28 setSubject:r19];
            }
    }
    r24 = var_C8;
    if (r26 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            r21 = [r0 isEqual:r2];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    [r28 setMessageBody:r26 isHTML:var_E0];
            }
    }
    objc_storeStrong(r23, r22);
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI mail:]" line:0x289 withFormat:@"Sending mail to: %@ with subject: %@ and message body: %@"];
    r21 = var_D8;
    var_98 = [r21 retain];
    [r28 retain];
    dispatch_async(*__dispatch_main_q, &var_B8);
    [r28 release];
    [var_98 release];
    [r20 release];
    [r26 release];
    [r19 release];
    [r25 release];
    goto loc_1001f01f4;

loc_1001f01f4:
    r19 = var_C0;
    [r21 release];
    goto loc_1001f0200;

loc_1001f0200:
    r0 = r24;
    goto loc_1001f0204;

loc_1001f00b8:
    r0 = [r21 identifier];
    r0 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI mail:]" line:0x273 withFormat:@"Ad session with id: %@ has no view controller"];
    r0 = r0;
    r21 = r21;
    goto loc_1001f01ec;

loc_1001f01ec:
    [r0 release];
    goto loc_1001f01f0;

loc_1001f01f0:
    r24 = var_C8;
    goto loc_1001f01f4;

loc_1001efec8:
    var_D8 = r21;
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI mail:]" line:0x26c withFormat:@"Detected the device cannot send mail - will not attempt"];
    r23 = [[ADCNativeLayer sharedLayer] retain];
    r20 = [@(NO) retain];
    r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r24 = [[var_C0 messageReplyWithDict:r21] retain];
    [r23 sendMessage:r24];
    [r24 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r23 = [[ADCNativeLayer sharedLayer] retain];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    r26 = r0;
    r21 = [r0 nextNativeMessageID];
    r22 = @selector(adSessionID);
    r20 = var_C8;
    r0 = objc_msgSend(r20, r22);
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r24 = [r0 retain];
            [NSString class];
            var_E8 = r24;
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r0 = objc_msgSend(r20, r22);
                    r29 = r29;
                    r24 = [r0 retain];
                    r28 = 0x1;
            }
            else {
                    r28 = 0x0;
                    r24 = @"";
            }
            r22 = 0x1;
    }
    else {
            r28 = 0x0;
            r22 = 0x0;
            r24 = @"";
    }
    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    r21 = [[ADCMessage nativeMessageWithType:@"Alerts.NoMailAccount" identifier:r21 contents:r20] retain];
    [r23 sendMessage:r21];
    [r21 release];
    [r20 release];
    if (r28 != 0x0) {
            [r24 release];
    }
    r21 = var_D8;
    if (r22 != 0x0) {
            [var_E8 release];
    }
    [r27 release];
    [r26 release];
    r0 = r23;
    goto loc_1001f01ec;

loc_1001efe8c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI mail:]" line:0x267 withFormat:@"No ad session registered with module id: %lu"];
    goto loc_1001f01f0;

loc_1001efe50:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI mail:]" line:0x261 withFormat:@"No module registered with id: %lu"];
    goto loc_1001f0200;
}

-(void)sendCreateCalendarResultMessage:(void *)arg2 success:(bool)arg3 {
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
    r19 = [arg2 retain];
    r24 = [[ADCNativeLayer sharedLayer] retain];
    [[NSNumber numberWithBool:arg3] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r26];
    r29 = &saved_fp;
    [r0 retain];
    [r24 sendMessage:r2];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if (arg3 != 0x0) {
            r28 = &@class(MCConfigurationData);
            r23 = @selector(sharedLayer);
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCSystemAPI sendCreateCalendarResultMessage:success:]" line:0x2ab withFormat:@"Sending AdSession.on_left_application"];
            [r19 origin];
            asm { sxtw       x26, w0 };
            r0 = *(r28 + 0xf00);
            r0 = objc_msgSend(r0, r23);
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 moduleForIdentifier:r26];
            r29 = r29;
            r20 = [r0 retain];
            [r24 release];
            if (r20 != 0x0) {
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    r27 = r0;
                    r28 = [[r0 sessionFromID] retain];
                    var_80 = r20;
                    r20 = [[r20 adSessionID] retain];
                    r0 = [r28 objectForKeyedSubscript:r20];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r20 release];
                    [r28 release];
                    [r27 release];
                    if (r24 != 0x0) {
                            r0 = [r24 appViewController];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    [ADCInterstitialAdSession class];
                                    if ([r24 isKindOfClass:r2] != 0x0) {
                                            r0 = [r24 fullscreenModule];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r27 = [r0 originNumber];
                                            [r0 release];
                                    }
                                    else {
                                            r26 = @selector(isKindOfClass:);
                                            [ADCNativeAdSession class];
                                            if (objc_msgSend(r24, r26) != 0x0) {
                                                    r0 = [r24 nativeModule];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r27 = [r0 originNumber];
                                                    [r0 release];
                                            }
                                            else {
                                                    r27 = 0x0;
                                            }
                                    }
                                    r25 = [[ADCNativeLayer sharedLayer] retain];
                                    r0 = @class(ADCNativeLayer);
                                    r0 = [r0 sharedLayer];
                                    r0 = [r0 retain];
                                    r20 = [r0 nextNativeMessageID];
                                    [[NSNumber numberWithUnsignedInteger:r27] retain];
                                    [[ADCMessage nativeMessageWithType:@"AdSession.on_left_application" identifier:r20 contents:[[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1] retain]] retain];
                                    [r25 sendMessage:r2];
                                    [r20 release];
                                    [r21 release];
                                    [r27 release];
                                    [r23 release];
                                    r0 = r25;
                            }
                            else {
                                    r21 = [[r24 identifier] retain];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI sendCreateCalendarResultMessage:success:]" line:0x2bb withFormat:@"Ad session with id: %@ has no view controller"];
                                    r0 = r21;
                            }
                            [r0 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI sendCreateCalendarResultMessage:success:]" line:0x2b7 withFormat:@"No ad session registered with module id: %lu"];
                    }
                    [r24 release];
                    r20 = var_80;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI sendCreateCalendarResultMessage:success:]" line:0x2b2 withFormat:@"No module registered with id: %lu"];
            }
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)createCalendarEvent:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [r2 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 options];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 getNumericOptionWithKey:@"adc_disable_calendar"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    [r22 release];
    [r20 release];
    if (r24 == 0x0) goto loc_1001f11c8;

loc_1001f119c:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"Calendar service disabled. Ignoring"];
    goto loc_1001f1414;

loc_1001f1414:
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_1001f11c8:
    r0 = [ADCMessage dictionaryValueFromMessage:r19 withKey:@"params"];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1001f1294;

loc_1001f11f8:
    r22 = [[r20 objectForKeyedSubscript:@"ics_url"] retain];
    if (r22 != 0x0) {
            [NSString class];
            [r22 isKindOfClass:r2];
    }
    if (([NSThread isMainThread] & 0x1) == 0x0) goto loc_1001f1398;

loc_1001f1260:
    r22 = [r22 retain];
    [r21 createCalendarEventWithUrl:r22 message:r19];
    [r22 release];
    r0 = r22;
    goto loc_1001f1408;

loc_1001f1408:
    [r0 release];
    [r20 release];
    goto loc_1001f1414;

loc_1001f1398:
    r21 = [r22 retain];
    var_50 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_80);
    [var_50 release];
    r0 = r22;
    goto loc_1001f1400;

loc_1001f1400:
    [r0 release];
    r0 = r21;
    goto loc_1001f1408;

loc_1001f1294:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI createCalendarEvent:]" line:0x2dd withFormat:@"Tried to create a calendar event with invalid parameters: %@ - will not attempt"];
    r21 = [[ADCNativeLayer sharedLayer] retain];
    r22 = [@(NO) retain];
    r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x40 forKeys:&var_48 count:0x1] retain];
    r24 = [[r19 messageReplyWithDict:r23] retain];
    [r21 sendMessage:r24];
    [r24 release];
    [r23 release];
    r0 = r22;
    goto loc_1001f1400;
}

-(void)checkSocialPresence:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xf0;
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
    r21 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"service"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r21 getCanonicalSocialName:r20];
            r29 = r29;
            r21 = [r0 retain];
            NSClassFromString(@"SLComposeViewController");
            if (r21 != 0x0) {
                    asm { ccmp       x0, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & E && [SLComposeViewController isAvailableForServiceType:r21] != 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI checkSocialPresence:]" line:0x2fd withFormat:@"Detected social presence for service of type: %@"];
                    r23 = [[ADCNativeLayer sharedLayer] retain];
                    r24 = [@(YES) retain];
                    r22 = [@(YES) retain];
                    r25 = [[NSDictionary dictionaryWithObjects:&var_90 forKeys:&var_A8 count:0x3] retain];
                    r0 = [r19 messageReplyWithDict:r25];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI checkSocialPresence:]" line:0x305 withFormat:@"Detected lack of social presence for service of type: %@"];
                    r23 = [[ADCNativeLayer sharedLayer] retain];
                    r24 = [@(NO) retain];
                    r22 = [@(NO) retain];
                    r25 = [[NSDictionary dictionaryWithObjects:&var_C0 forKeys:&var_D8 count:0x3] retain];
                    r0 = [r19 messageReplyWithDict:r25];
            }
            r26 = [r0 retain];
            [r23 sendMessage:r26];
            [r26 release];
            [r25 release];
            [r22 release];
            r0 = r24;
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI checkSocialPresence:]" line:0x2f3 withFormat:@"Tried to check social presence with invalid service name: %@ - will not attempt"];
            r21 = [[ADCNativeLayer sharedLayer] retain];
            r23 = [@(NO) retain];
            r22 = [@(NO) retain];
            r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:&var_78 count:0x3] retain];
            r25 = [[r19 messageReplyWithDict:r24] retain];
            [r21 sendMessage:r25];
            [r25 release];
            [r24 release];
            r0 = r22;
    }
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)socialPost:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x120;
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
    r29 = &saved_fp;
    r22 = self;
    r0 = [r2 retain];
    r19 = r0;
    [r0 origin];
    asm { sxtw       x23, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 moduleForIdentifier:r23];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    if (r20 == 0x0) goto loc_1001f1d84;

loc_1001f1a04:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 sessionFromID] retain];
    r28 = [[r20 adSessionID] retain];
    r0 = [r27 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r28 release];
    [r27 release];
    [r26 release];
    if (r21 == 0x0) goto loc_1001f1dc0;

loc_1001f1a98:
    r0 = [r21 appViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001f1dfc;

loc_1001f1abc:
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"service"];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001f1e5c;

loc_1001f1aec:
    r22 = [[r22 getCanonicalSocialName:r23] retain];
    [r23 release];
    r0 = [r19 dict];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    r0 = [r19 dict];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r26 release];
    if (NSClassFromString(@"SLComposeViewController") == 0x0) goto loc_1001f2018;

loc_1001f1ba4:
    if (r22 == 0x0 || ([SLComposeViewController isAvailableForServiceType:r22] & 0x1) == 0x0) goto loc_1001f1f48;

loc_1001f1bc4:
    r25 = [[NSURL URLWithString:r24] retain];
    r0 = @class(SLComposeViewController);
    r0 = [r0 composeViewControllerForServiceType:**_SLServiceTypeFacebook];
    r0 = [r0 retain];
    r26 = r0;
    if (([r0 setInitialText:r23] & 0x1) == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x33a withFormat:@"Attempted to create social post with too much initial text"];
    }
    if (r24 != 0x0 && ([r26 addURL:r25] & 0x1) == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x33d withFormat:@"Attempted to add URL to social post without enough room"];
    }
    var_B0 = [r19 retain];
    var_A8 = [r22 retain];
    r27 = [r21 retain];
    [r26 setCompletionHandler:&var_D0];
    var_E0 = [r27 retain];
    var_D8 = r26;
    r26 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_100);
    [var_D8 release];
    [var_E0 release];
    [r27 release];
    [var_A8 release];
    r0 = var_B0;
    goto loc_1001f2108;

loc_1001f2108:
    [r0 release];
    [r26 release];
    goto loc_1001f2114;

loc_1001f2114:
    [r25 release];
    [r24 release];
    [r23 release];
    r0 = r22;
    goto loc_1001f2130;

loc_1001f2130:
    [r0 release];
    goto loc_1001f2134;

loc_1001f2134:
    [r21 release];
    goto loc_1001f213c;

loc_1001f213c:
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_1001f1f48:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x331 withFormat:@"Attempted to create social post, but it was not available for service of type: %@"];
    r25 = [[ADCNativeLayer sharedLayer] retain];
    r26 = [@(NO) retain];
    r27 = [[NSDictionary dictionaryWithObjects:&var_90 forKeys:&var_98 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r27];
    goto loc_1001f20e0;

loc_1001f20e0:
    r28 = [r0 retain];
    [r25 sendMessage:r28];
    [r28 release];
    r0 = r27;
    goto loc_1001f2108;

loc_1001f2018:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x32b withFormat:@"SLComposeViewController class is not loaded - cannot make social post"];
    r25 = [[ADCNativeLayer sharedLayer] retain];
    r26 = [@(NO) retain];
    r27 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:&var_88 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r27];
    goto loc_1001f20e0;

loc_1001f1e5c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x321 withFormat:@"Tried to make a social post to an invalid service parameter: %@ - will not attempt"];
    r22 = [[ADCNativeLayer sharedLayer] retain];
    r23 = [@(NO) retain];
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r25 = [[r19 messageReplyWithDict:r24] retain];
    [r22 sendMessage:r25];
    goto loc_1001f2114;

loc_1001f1dfc:
    r23 = [[r21 identifier] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x31b withFormat:@"Ad session with id: %@ has no view controller"];
    r0 = r23;
    goto loc_1001f2130;

loc_1001f1dc0:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x317 withFormat:@"No ad session registered with module id: %lu"];
    goto loc_1001f2134;

loc_1001f1d84:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI socialPost:]" line:0x311 withFormat:@"No module registered with id: %lu"];
    goto loc_1001f213c;
}

-(void *)getCanonicalSocialName:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1001f2638;

loc_1001f262c:
    r8 = *_SLServiceTypeFacebook;
    goto loc_1001f2684;

loc_1001f2684:
    r0 = *r8;
    goto loc_1001f2688;

loc_1001f2688:
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1001f2638:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1001f265c;

loc_1001f2650:
    r8 = *_SLServiceTypeTwitter;
    goto loc_1001f2684;

loc_1001f265c:
    r8 = [r19 isEqualToString:r2];
    r0 = r19;
    if (r8 == 0x0) goto loc_1001f2688;

loc_1001f267c:
    r8 = *_SLServiceTypeSinaWeibo;
    goto loc_1001f2684;
}

-(void)checkAppPresence:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xe0;
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"name"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[NSURL URLWithString:r20] retain];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r24 = [r0 canOpenURL:r21];
            [r0 release];
            r0 = [ADCNativeLayer sharedLayer];
            r29 = r29;
            r23 = [r0 retain];
            if (r24 != 0x0) {
                    r24 = [@(YES) retain];
                    r25 = [@(YES) retain];
                    r22 = [[NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_98 count:0x3] retain];
                    r0 = [r19 messageReplyWithDict:r22];
            }
            else {
                    r24 = [@(YES) retain];
                    r25 = [@(NO) retain];
                    r22 = [[NSDictionary dictionaryWithObjects:&var_B0 forKeys:&var_C8 count:0x3] retain];
                    r0 = [r19 messageReplyWithDict:r22];
            }
            r26 = [r0 retain];
            [r23 sendMessage:r26];
            [r26 release];
            [r22 release];
            [r25 release];
            r0 = r24;
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI checkAppPresence:]" line:0x36f withFormat:@"Attempted to check app presence with an invalid app handle"];
            r21 = [[ADCNativeLayer sharedLayer] retain];
            r23 = [@(NO) retain];
            r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x58 forKeys:&var_68 count:0x2] retain];
            r24 = [[r19 messageReplyWithDict:r22] retain];
            [r21 sendMessage:r24];
            [r24 release];
            r0 = r22;
    }
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)saveScreenshot:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
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
    r22 = self;
    r0 = [r2 retain];
    r19 = r0;
    [r0 origin];
    asm { sxtw       x23, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 moduleForIdentifier:r23];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r26 = [[r0 sessionFromID] retain];
            r27 = [[r20 adSessionID] retain];
            r0 = [r26 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r27 release];
            [r26 release];
            [r24 release];
            if (r21 != 0x0) {
                    r0 = [r21 appViewController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [NSBundle mainBundle];
                            r0 = [r0 retain];
                            r23 = [[r0 infoDictionary] retain];
                            [r0 release];
                            r0 = [UIDevice currentDevice];
                            r0 = [r0 retain];
                            r26 = r0;
                            r0 = [r0 systemVersion];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = r0;
                            r0 = [r0 compare:@"11.0" options:0x40];
                            if (r0 == -0x1) {
                                    if (!CPU_FLAGS & E) {
                                            r0 = @"NSPhotoLibraryAddUsageDescription";
                                    }
                                    else {
                                            r0 = @"NSPhotoLibraryUsageDescription";
                                    }
                            }
                            r24 = [r0 retain];
                            [r27 release];
                            [r26 release];
                            r0 = [r23 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    var_80 = [r21 retain];
                                    var_70 = [r19 retain];
                                    dispatch_async(*__dispatch_main_q, &var_A0);
                                    [var_70 release];
                                    r0 = var_80;
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI saveScreenshot:]" line:0x398 withFormat:@"Missing %@ in Info.plist, cannot take a screenshot"];
                                    r25 = [[NSString stringWithFormat:@"Missing %@ in app Info.plist, cannot save screenshot."] retain];
                                    r27 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
                                    r26 = [[NSError errorWithDomain:@"com.adcolony.error" code:0xffffffffffffffff userInfo:r27] retain];
                                    [r22 saveScreenshotResponse:0x0 withError:r26 forMessage:[r19 retain]];
                                    [r26 release];
                                    [r27 release];
                                    r0 = r25;
                            }
                            [r0 release];
                            [r24 release];
                    }
                    else {
                            r23 = [[r21 identifier] retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI saveScreenshot:]" line:0x391 withFormat:@"Ad session with id: %@ has no view controller"];
                    }
                    [r23 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI saveScreenshot:]" line:0x38d withFormat:@"No ad session registered with module id: %lu"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI saveScreenshot:]" line:0x387 withFormat:@"No module registered with id: %lu"];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)saveScreenshotResponse:(void *)arg2 withError:(void *)arg3 forMessage:(void *)arg4 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg4;
    r19 = [arg3 retain];
    if (r19 != 0x0) {
            r20 = [r20 retain];
            r22 = [[r19 localizedDescription] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI saveScreenshotResponse:withError:forMessage:]" line:0x3b2 withFormat:@"failed to save image to photo album with error: %@"];
            [r22 release];
            r21 = [[ADCNativeLayer sharedLayer] retain];
            r22 = [@(NO) retain];
            r23 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
            r24 = [[r20 messageReplyWithDict:r23] retain];
            [r20 release];
            [r21 sendMessage:r24];
            [r24 release];
            [r23 release];
            [r22 release];
            r0 = r21;
    }
    else {
            r21 = [r20 retain];
            r20 = [[ADCNativeLayer sharedLayer] retain];
            r22 = [@(YES) retain];
            r23 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r24 = [[r21 messageReplyWithDict:r23] retain];
            [r21 release];
            [r20 sendMessage:r24];
            [r24 release];
            [r23 release];
            [r22 release];
            r0 = r20;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)prepareBrowser:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
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
    r28 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage dictionaryValueFromMessage:r19 withKey:@"config"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r20 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [r20 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r23 = [r0 retain];
                            if (r23 != 0x0) {
                                    r0 = [r20 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    if (r24 != 0x0) {
                                            r0 = [r20 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            if (r25 != 0x0) {
                                                    r0 = [r20 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    if (r26 != 0x0) {
                                                            r0 = [r20 objectForKeyedSubscript:r2];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            var_98 = r0;
                                                            if (r0 != 0x0) {
                                                                    r0 = [r20 objectForKeyedSubscript:r2];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    var_A0 = r0;
                                                                    if (r0 != 0x0) {
                                                                            r0 = [r20 objectForKeyedSubscript:r2];
                                                                            r29 = r29;
                                                                            r27 = [r0 retain];
                                                                            if (r27 != 0x0) {
                                                                                    var_A8 = r27;
                                                                                    r0 = [ADCBrowser alloc];
                                                                                    r0 = [r0 initWithDict:r20];
                                                                                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_browser));
                                                                                    r8 = *(r28 + r27);
                                                                                    *(r28 + r27) = r0;
                                                                                    [r8 release];
                                                                                    r27 = *(r28 + r27);
                                                                                    if (r27 != 0x0) {
                                                                                            var_70 = [r19 retain];
                                                                                            [r27 prepareWithCompletionHandler:&var_90];
                                                                                            r0 = var_70;
                                                                                    }
                                                                                    else {
                                                                                            r27 = [[ADCNativeLayer sharedLayer] retain];
                                                                                            var_B0 = [@(NO) retain];
                                                                                            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
                                                                                            r0 = [r0 retain];
                                                                                            r28 = [[r19 messageReplyWithDict:r0] retain];
                                                                                            [r27 sendMessage:r28];
                                                                                            [r28 release];
                                                                                            [r0 release];
                                                                                            [var_B0 release];
                                                                                            r0 = r27;
                                                                                    }
                                                                                    [r0 release];
                                                                                    r27 = var_A8;
                                                                            }
                                                                            else {
                                                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3f4 withFormat:@"Tiny glow image path not supplied. Ignoring."];
                                                                            }
                                                                            [r27 release];
                                                                    }
                                                                    else {
                                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3ee withFormat:@"Background tile image path not supplied. Ignoring."];
                                                                    }
                                                                    r27 = var_98;
                                                                    [var_A0 release];
                                                            }
                                                            else {
                                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3e8 withFormat:@"Background bar image path not supplied. Ignoring."];
                                                                    r27 = var_98;
                                                            }
                                                            [r27 release];
                                                    }
                                                    else {
                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3e2 withFormat:@"Logo image path not supplied. Ignoring."];
                                                    }
                                                    [r26 release];
                                            }
                                            else {
                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3dc withFormat:@"Stop button image path not supplied. Ignoring."];
                                            }
                                            [r25 release];
                                    }
                                    else {
                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3d6 withFormat:@"Close button image path not supplied. Ignoring."];
                                    }
                                    [r24 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3d0 withFormat:@"Reload button image path not supplied. Ignoring."];
                            }
                            [r23 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3ca withFormat:@"Forward button image path not supplied. Ignoring."];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3c4 withFormat:@"Back button image path not supplied. Ignoring."];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI prepareBrowser:]" line:0x3be withFormat:@"Browser config not supplied. Ignoring."];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)disableService:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"service"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) goto loc_1001f4020;

loc_1001f405c:
    r21 = @selector(isEqualToString:);
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI disableService:]" line:0x42d withFormat:@"Disabling service: %@"];
    if (objc_msgSend(r20, r21) == 0x0) goto loc_1001f411c;

loc_1001f40ac:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 options] retain];
    r23 = [@(YES) retain];
    goto loc_1001f4228;

loc_1001f4228:
    [r22 setOption:r2 withNumericValue:r3];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_1001f424c;

loc_1001f424c:
    [r20 release];
    [r19 release];
    return;

loc_1001f411c:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1001f41a4;

loc_1001f4134:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 options] retain];
    r23 = [@(YES) retain];
    goto loc_1001f4228;

loc_1001f41a4:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1001f424c;

loc_1001f41bc:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 options] retain];
    r23 = [@(YES) retain];
    goto loc_1001f4228;

loc_1001f4020:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI disableService:]" line:0x429 withFormat:@"Invalid service param sent to System.disable_service: %@. Ignoring"];
    goto loc_1001f424c;
}

-(void)makeInAppPurchase:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1001f3f60;

loc_1001f3c2c:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r21 == 0x0) goto loc_1001f3f58;

loc_1001f3c94:
    [ADCInterstitialAdSession class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001f3cec;

loc_1001f3cc8:
    r0 = [r21 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001f3f58;

loc_1001f3cec:
    r23 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_1001f3d34;

loc_1001f3d10:
    r0 = [r21 nativeModule];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001f3f58;

loc_1001f3d34:
    r23 = @selector(isKindOfClass:);
    [ADCInterstitialAdSession class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_1001f3d84;

loc_1001f3d54:
    r0 = [r21 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 originNumber];
    goto loc_1001f3e38;

loc_1001f3e38:
    [r22 release];
    goto loc_1001f3e40;

loc_1001f3e40:
    r22 = [[ADCNativeLayer sharedLayer] retain];
    r25 = @class(ADCMessage);
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    r26 = [r0 nextNativeMessageID];
    r24 = [[NSNumber numberWithUnsignedInteger:r24] retain];
    r27 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
    r25 = [[r25 nativeMessageWithType:@"AdUnit.make_in_app_purchase" identifier:r26 contents:r27] retain];
    [r22 sendMessage:r25];
    [r25 release];
    [r27 release];
    [r24 release];
    [r0 release];
    [r22 release];
    goto loc_1001f3f58;

loc_1001f3f58:
    [r21 release];
    goto loc_1001f3f60;

loc_1001f3f60:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001f3d84:
    r23 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_1001f3dfc;

loc_1001f3da4:
    r0 = [r21 retain];
    r22 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 opened];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r22 fullscreenModule];
            r29 = r29;
    }
    else {
            r0 = [r22 nativeModule];
            r29 = r29;
    }
    r0 = [r0 retain];
    r24 = [r0 originNumber];
    [r0 release];
    goto loc_1001f3e38;

loc_1001f3dfc:
    r24 = 0x0;
    goto loc_1001f3e40;
}

-(void)mailComposeController:(void *)arg2 didFinishWithResult:(long long)arg3 error:(void *)arg4 {
    r20 = [arg2 retain];
    r21 = [arg4 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI mailComposeController:didFinishWithResult:error:]" line:0x4a3 withFormat:@"Dismissing MFMailComposeViewController"];
    r24 = [[AdColony sharedInstance] retain];
    var_48 = r21;
    r21 = [r21 retain];
    [r24 performBlockOnWorkerThread:&var_68 mode:0x1];
    [r24 release];
    [arg2 dismissViewControllerAnimated:0x1 completion:0x0];
    [r20 release];
    [var_48 release];
    [r21 release];
    return;
}

-(void)close:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
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
    r0 = [r2 retain];
    r19 = r0;
    [r0 origin];
    asm { sxtw       x22, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 moduleForIdentifier:r22];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            r21 = [[r20 adSessionID] retain];
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r23 = [r0 retain];
            [r26 release];
            [r25 release];
            if (r23 != 0x0) {
                    [ADCInterstitialAdSession class];
                    if (([r23 isKindOfClass:r2] & 0x1) != 0x0) {
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 sessionAPI];
                            r0 = [r0 retain];
                            [r0 onRequestClose:r21];
                            [r0 release];
                            [r22 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
            }
            [r23 release];
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI close:]" line:0x48e withFormat:@"No module registered with id: %lu"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)messageComposeViewController:(void *)arg2 didFinishWithResult:(long long)arg3 {
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
    r29 = &saved_fp;
    r24 = arg3;
    r20 = self;
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI messageComposeViewController:didFinishWithResult:]" line:0x4b9 withFormat:@"Dismissing MFMessageComposeView"];
    [r20->_currSMSMessage origin];
    asm { sxtw       x25, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 moduleForIdentifier:r25];
    r29 = r29;
    r19 = [r0 retain];
    [r23 release];
    if (r19 != 0x0) {
            var_88 = r24;
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r26 = r0;
            r27 = [[r0 sessionFromID] retain];
            r28 = [[r19 adSessionID] retain];
            r0 = [r27 objectForKeyedSubscript:r28];
            r29 = r29;
            r23 = [r0 retain];
            [r28 release];
            [r27 release];
            [r26 release];
            if (r23 != 0x0) {
                    r0 = [r23 appViewController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r23 appViewController];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 presentedViewController];
                            r0 = [r0 retain];
                            [r0 dismissViewControllerAnimated:0x1 completion:0x0];
                            [r0 release];
                            [r22 release];
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            [r0 performBlockOnWorkerThread:&var_80 mode:0x1];
                            r0 = r0;
                    }
                    else {
                            r21 = [[r23 identifier] retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI messageComposeViewController:didFinishWithResult:]" line:0x4c8 withFormat:@"Ad session with id: %@ has no view controller"];
                            r0 = r21;
                    }
                    [r0 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI messageComposeViewController:didFinishWithResult:]" line:0x4c4 withFormat:@"No ad session registered with module id: %lu"];
            }
            [r23 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI messageComposeViewController:didFinishWithResult:]" line:0x4be withFormat:@"No module registered with id: %lu"];
    }
    [r19 release];
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    [self dismissStoreViewController];
    return;
}

-(void)dismissStoreViewController {
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
    r29 = &saved_fp;
    r21 = self;
    *(int8_t *)(int64_t *)&r21->_showingStoreView = 0x0;
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCSystemAPI dismissStoreViewController]" line:0x4e0 withFormat:@"Dismissing In-App AppStore view"];
    [r21->_currStoreViewMessage origin];
    asm { sxtw       x23, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 moduleForIdentifier:r23];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    if (r20 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r25 = [[r0 sessionFromID] retain];
            r26 = [[r20 adSessionID] retain];
            r0 = [r25 objectForKeyedSubscript:r26];
            r29 = r29;
            r22 = [r0 retain];
            [r26 release];
            [r25 release];
            [r24 release];
            if (r22 != 0x0) {
                    r0 = [r22 appViewController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r19 = r21->_storeViewPresentingVC;
                            var_58 = [r20 retain];
                            [r19 dismissViewControllerAnimated:0x1 completion:&var_80];
                            r0 = var_58;
                    }
                    else {
                            r23 = [[r22 identifier] retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI dismissStoreViewController]" line:0x4ef withFormat:@"Ad session with id: %@ has no view controller"];
                            r0 = r23;
                    }
                    [r0 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI dismissStoreViewController]" line:0x4eb withFormat:@"No ad session registered with module id: %lu"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI dismissStoreViewController]" line:0x4e5 withFormat:@"No module registered with id: %lu"];
    }
    [r20 release];
    return;
}

-(void)preloadStore:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r25 = self;
    r19 = [r2 retain];
    if (NSClassFromString(@"SKStoreProductViewController") == 0x0) goto loc_1001f455c;

loc_1001f42c0:
    r0 = [ADCMessage dictionaryValueFromMessage:r19 withKey:@"product_data"];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_1001f462c;

loc_1001f42f0:
    [r19 origin];
    asm { sxtw       x27, w0 };
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 moduleForIdentifier:r27];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    if (r20 == 0x0) goto loc_1001f4734;

loc_1001f4350:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r28 = [[r0 sessionFromID] retain];
    var_F0 = r20;
    r21 = [[r20 adSessionID] retain];
    r0 = [r28 objectForKeyedSubscript:r2];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    r0 = r28;
    r28 = r20;
    [r0 release];
    [r22 release];
    if (r28 == 0x0) goto loc_1001f4774;

loc_1001f43ec:
    r0 = [r25 sanitizeProductInfo:r26 error:&var_B0];
    r29 = r29;
    r22 = [r0 retain];
    r21 = [var_B0 retain];
    [r26 release];
    var_F8 = r21;
    if (r22 == 0x0) goto loc_1001f4888;

loc_1001f4430:
    r23 = [[r22 objectForKeyedSubscript:r2] retain];
    r26 = [[NSString stringWithFormat:@"%@"] retain];
    [r23 release];
    [r25 setPreloadedProductId:r26];
    [r25 setPreloadModuleId:r27];
    r0 = [r25 productInfoStringWithId:r26 productInfo:r22];
    r29 = r29;
    r21 = [r0 retain];
    [r25 setOpenStoreProductInfoString:r21];
    [r21 release];
    [ADCInterstitialAdSession class];
    if ([r28 isMemberOfClass:r2] != 0x0) {
            r0 = [r28 fullscreenContainer];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewPresentingVC));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
    }
    else {
            [ADCNativeAdSession class];
            if ([r28 isMemberOfClass:r2] != 0x0) {
                    r20 = r28;
                    r0 = [r28 retain];
                    r23 = r0;
                    r0 = [r0 nativeAd];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = [r0 opened];
                    [r0 release];
                    if (r28 != 0x0) {
                            r0 = [r23 fullscreenContainer];
                            r29 = r29;
                    }
                    else {
                            r0 = [r23 appViewController];
                            r29 = r29;
                    }
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewPresentingVC));
                    r8 = *(r25 + r9);
                    *(r25 + r9) = r0;
                    [r8 release];
                    [r23 release];
                    r28 = r20;
            }
    }
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 userInterfaceIdiom];
    [r0 release];
    if (r23 == 0x0) goto loc_1001f4d00;

loc_1001f4cc0:
    r0 = [ADCStoreProductViewController alloc];
    r1 = @selector(initWithSupportedOrientations:);
    r0 = objc_msgSend(r0, r1);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewVC));
    r8 = *(r25 + r21);
    *(r25 + r21) = r0;
    [r8 release];
    goto loc_1001f4e14;

loc_1001f4e14:
    r20 = var_F0;
    [*(r25 + (r21 << r1)) setDelegate:r25];
    r21 = *(r25 + (r21 << @selector(setDelegate:)));
    var_C8 = [r26 retain];
    var_C0 = [r28 retain];
    var_B8 = [r19 retain];
    [r21 loadProductWithParameters:r22 completionBlock:&var_E8];
    [var_B8 release];
    [var_C0 release];
    [var_C8 release];
    goto loc_1001f4eb4;

loc_1001f4eb4:
    [r26 release];
    goto loc_1001f4ebc;

loc_1001f4ebc:
    [var_F8 release];
    goto loc_1001f4ec4;

loc_1001f4ec4:
    [r28 release];
    goto loc_1001f4ecc;

loc_1001f4ecc:
    [r20 release];
    r0 = r22;
    goto loc_1001f4ed8;

loc_1001f4ed8:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001f4d00:
    r20 = r28;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewPresentingVC));
    r21 = *(r25 + r28);
    [ADCStaticContainer class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1001f4d94;

loc_1001f4d3c:
    r21 = [ADCStaticStoreProductViewController alloc];
    [*(r25 + r28) supportedInterfaceOrientations];
    [*(r25 + r28) preferredInterfaceOrientationForPresentation];
    r1 = @selector(initWithSupportedOrientations:preferredOrientation:);
    r0 = objc_msgSend(r21, r1);
    goto loc_1001f4df8;

loc_1001f4df8:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewVC));
    r8 = *(r25 + r21);
    *(r25 + r21) = r0;
    [r8 release];
    r28 = r20;
    goto loc_1001f4e14;

loc_1001f4d94:
    r23 = @selector(isKindOfClass:);
    r21 = *(r25 + r28);
    [ADCContainer class];
    if (objc_msgSend(r21, r23) == 0x0) goto loc_1001f4f1c;

loc_1001f4dbc:
    r21 = [ADCStoreProductViewController alloc];
    [*(r25 + r28) supportedInterfaceOrientations];
    r1 = @selector(initWithSupportedOrientations:);
    r0 = objc_msgSend(r21, r1);
    goto loc_1001f4df8;

loc_1001f4f1c:
    r23 = [NSStringFromClass([*(r25 + r28) class]) retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCSystemAPI preloadStore:]" line:0x474 withFormat:@"_storeViewPresentingVC was not an expected type. It's of class: %@"];
    [r23 release];
    r23 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0xa0 forKeys:&var_A8 count:0x1] retain];
    r25 = [[r19 messageReplyWithDict:r24] retain];
    [r23 sendMessage:r25];
    [r25 release];
    [r24 release];
    [r21 release];
    [r23 release];
    r28 = r20;
    r20 = var_F0;
    goto loc_1001f4eb4;

loc_1001f4888:
    r0 = [r28 adID];
    r29 = r29;
    r0 = [r0 retain];
    var_108 = r0;
    if (r0 != 0x0) {
            r0 = [r28 adID];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_120 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r28 adID];
                    r29 = r29;
                    var_100 = [r0 retain];
                    var_114 = 0x1;
                    var_118 = 0x1;
            }
            else {
                    var_100 = @"";
                    var_118 = 0x0;
                    var_114 = 0x1;
            }
    }
    else {
            var_118 = 0x0;
            var_100 = @"";
    }
    r0 = [r28 creativeID];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_1001f4a6c;

loc_1001f49f8:
    r0 = [r28 creativeID];
    r29 = r29;
    r20 = [r0 retain];
    [NSNumber class];
    var_128 = r20;
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_1001f4a78;

loc_1001f4a40:
    r20 = r28;
    r0 = [r28 creativeID];
    r29 = r29;
    r27 = [r0 retain];
    r23 = 0x0;
    r25 = 0x1;
    r28 = 0x1;
    goto loc_1001f4aac;

loc_1001f4aac:
    r0 = [r21 localizedDescription];
    r29 = r29;
    r21 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI preloadStore:]" line:0x458 withFormat:@"Invalid product data sent to preload store (%@ / %@): %@"];
    [r21 release];
    if (r23 == 0x0) {
            if (r28 == 0x0) {
                    if (r25 != 0x0) {
                            [var_128 release];
                    }
            }
            else {
                    [r27 release];
                    if (r25 != 0x0) {
                            [var_128 release];
                    }
            }
    }
    else {
            [r27 release];
            if (r28 != 0x0) {
                    [r27 release];
                    if (r25 != 0x0) {
                            [var_128 release];
                    }
            }
            else {
                    if (r25 != 0x0) {
                            [var_128 release];
                    }
            }
    }
    [r26 release];
    r28 = r20;
    if (var_118 != 0x0) {
            [var_100 release];
    }
    if (var_114 != 0x0) {
            [var_120 release];
    }
    [var_108 release];
    r23 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x90 forKeys:r29 - 0x98 count:0x1] retain];
    r25 = [[r19 messageReplyWithDict:r24] retain];
    [r23 sendMessage:r25];
    [r25 release];
    [r24 release];
    [r21 release];
    [r23 release];
    r20 = var_F0;
    goto loc_1001f4ebc;

loc_1001f4a78:
    r20 = r28;
    r25 = 0x1;
    goto loc_1001f4a80;

loc_1001f4a80:
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r27 = [r0 retain];
    r28 = 0x0;
    r23 = 0x1;
    goto loc_1001f4aac;

loc_1001f4a6c:
    r20 = r28;
    r25 = 0x0;
    goto loc_1001f4a80;

loc_1001f4774:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI preloadStore:]" line:0x450 withFormat:@"No ad session registered with module id: %lu"];
    r22 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x88 count:0x1] retain];
    r24 = [[r19 messageReplyWithDict:r23] retain];
    [r22 sendMessage:r24];
    [r24 release];
    [r23 release];
    [r21 release];
    [r22 release];
    r22 = r26;
    r20 = var_F0;
    goto loc_1001f4ec4;

loc_1001f4734:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI preloadStore:]" line:0x44a withFormat:@"No module registered with id: %lu"];
    r22 = r26;
    goto loc_1001f4ecc;

loc_1001f462c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI preloadStore:]" line:0x442 withFormat:@"Failed to open AppStore with invalid iTunes product info"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r22];
    goto loc_1001f46f8;

loc_1001f46f8:
    r23 = [r0 retain];
    [r20 sendMessage:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = r20;
    goto loc_1001f4ed8;

loc_1001f455c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCSystemAPI preloadStore:]" line:0x43b withFormat:@"SKStoreProductViewController class is not loaded - cannot load store view"];
    r20 = [[ADCNativeLayer sharedLayer] retain];
    r21 = [@(NO) retain];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
    r0 = [r19 messageReplyWithDict:r22];
    goto loc_1001f46f8;
}

+(void *)privateInstance {
    if (*qword_1011d22a0 != -0x1) {
            dispatch_once(0x1011d22a0, 0x100e72bf8);
    }
    r0 = *0x1011d22a8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)cleanupModule:(unsigned long long)arg2 {
    r0 = [self privateInstance];
    r0 = [r0 retain];
    [r0 moduleCleanup:arg2];
    [r0 release];
    return;
}

+(void)load {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(registerHandlers) name:@"ADCRegisterForMessageDispatch" object:0x0];
    [r0 release];
    r19 = [[NSNotificationCenter defaultCenter] retain];
    r20 = [[ADCSystemAPI privateInstance] retain];
    [r19 addObserver:r20 selector:@selector(preBackgroundHandler:) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r20 release];
    [r19 release];
    return;
}

-(void)moduleCleanup:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self preloadModuleId] == arg2 && ([r19 openingStore] & 0x1) == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_storeViewVC));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            [r19 setPreloadModuleId:0x0];
            [r19 setPreloadedProductId:0x0];
            [r19 setOpenStoreProductInfoString:0x0];
    }
    return;
}

+(void)registerHandlers {
    r19 = [[ADCSystemAPI privateInstance] retain];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(openBrowser:) forMessageType:@"System.open_browser"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(openStore:) forMessageType:@"System.open_store"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(telephone:) forMessageType:@"System.telephone"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(sms:) forMessageType:@"System.sms"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(vibrate:) forMessageType:@"System.vibrate"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(mail:) forMessageType:@"System.mail"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(launchApp:) forMessageType:@"System.launch_app"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(createCalendarEvent:) forMessageType:@"System.create_calendar_event"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(checkSocialPresence:) forMessageType:@"System.check_social_presence"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(socialPost:) forMessageType:@"System.social_post"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(checkAppPresence:) forMessageType:@"System.check_app_presence"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(saveScreenshot:) forMessageType:@"System.save_screenshot"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(prepareBrowser:) forMessageType:@"System.prepare_browser"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(makeInAppPurchase:) forMessageType:@"System.make_in_app_purchase"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(disableService:) forMessageType:@"System.disable_service"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(preloadStore:) forMessageType:@"System.preload_store"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(close:) forMessageType:@"System.close"];
    [r0 release];
    [r19 release];
    return;
}

-(void)preBackgroundHandler:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 dismissAdOnBackground];
    [r0 release];
    if (r21 != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_48);
    }
    return;
}

+(void)openURL:(void *)arg2 options:(void *)arg3 completionHandler:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = sub_1009f77b0(0xa, 0x0, 0x0);
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r24 != 0x0) {
            [r23 openURL:r19 options:r20 completionHandler:r21];
            [r23 release];
    }
    else {
            r24 = [r23 canOpenURL:r19];
            [r23 release];
            if (r24 != 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r22 = [r0 openURL:r2];
                    [r0 release];
                    if (r21 != 0x0) {
                            (*(r21 + 0x10))(r21, r22);
                    }
            }
            else {
                    r22 = 0x0;
                    if (r21 != 0x0) {
                            (*(r21 + 0x10))(r21, r22);
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(bool)isShowingStoreView {
    r0 = [ADCSystemAPI privateInstance];
    r0 = [r0 retain];
    r19 = *(int8_t *)(int64_t *)&r0->_showingStoreView;
    [r0 release];
    r0 = r19;
    return r0;
}

+(bool)isShowingBrowser {
    r0 = [ADCSystemAPI privateInstance];
    r0 = [r0 retain];
    r19 = *(int8_t *)(int64_t *)&r0->_showingBrowser;
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)currNativeAd {
    r0 = self->_currNativeAd;
    return r0;
}

-(void *)preloadedProductId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_preloadedProductId)), 0x1);
    return r0;
}

-(void)setCurrNativeAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currNativeAd, arg2);
    return;
}

-(void)setPreloadedProductId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)openingStore {
    r0 = *(int8_t *)(int64_t *)&self->_openingStore & 0x1;
    return r0;
}

-(unsigned long long)preloadModuleId {
    r0 = self->_preloadModuleId;
    return r0;
}

-(void)setOpeningStore:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_openingStore = arg2;
    return;
}

-(void)setPreloadModuleId:(unsigned long long)arg2 {
    self->_preloadModuleId = arg2;
    return;
}

-(void *)openStoreProductInfoString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_openStoreProductInfoString)), 0x1);
    return r0;
}

-(void)setOpenStoreProductInfoString:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_openStoreProductInfoString, 0x0);
    objc_storeStrong((int64_t *)&self->_preloadedProductId, 0x0);
    objc_storeStrong((int64_t *)&self->_currNativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_browser, 0x0);
    objc_storeStrong((int64_t *)&self->_storeViewPresentingVC, 0x0);
    objc_storeStrong((int64_t *)&self->_storeViewVC, 0x0);
    objc_storeStrong((int64_t *)&self->_currStoreViewMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_currMailMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_currSMSMessage, 0x0);
    return;
}

@end
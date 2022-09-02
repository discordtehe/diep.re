@implementation APMInAppPurchaseTransactionReporter

+(void *)sharedInstance {
    if (*qword_1011d2048 != -0x1) {
            dispatch_once(0x1011d2048, 0x100e6ec70);
    }
    r0 = *0x1011d2050;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)reportTransactionsFromArray:(void *)arg2 {
    r31 = r31 - 0x1f0;
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
    r9 = [[APMAEU appStoreRURL] retain];
    var_1D8 = r9;
    r0 = [NSData dataWithContentsOfURL:r9];
    r29 = &saved_fp;
    var_158 = [r0 retain];
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_198 = r0;
    var_1D0 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            var_160 = *0x0;
            do {
                    r28 = 0x0;
                    r24 = @selector(payment);
                    do {
                            if (*0x0 != var_160) {
                                    objc_enumerationMutation(var_198);
                            }
                            r19 = *(0x0 + r28 * 0x8);
                            r22 = objc_autoreleasePoolPush();
                            r0 = objc_msgSend(r19, r24);
                            r0 = [r0 retain];
                            r23 = [[r0 productIdentifier] retain];
                            [r0 release];
                            r0 = @class(APMInAppPurchaseProductCache);
                            r0 = [r0 sharedInstance];
                            r0 = [r0 retain];
                            r27 = [[r0 cachedProductForProductIdentifier:r23] retain];
                            [r0 release];
                            var_120 = r27;
                            r0 = sub_100189a5c(r27, r19, var_158);
                            r29 = r29;
                            r0 = [r0 retain];
                            r20 = r0;
                            if ([r0 count] != 0x0) {
                                    var_130 = r23;
                                    stack[-312] = r22;
                                    r23 = [r20 mutableCopy];
                                    [@"_iap" retain];
                                    r26 = [[r23 objectForKeyedSubscript:*0x100e6ec08] retain];
                                    r0 = [APMMeasurement remoteConfig];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    if ([r0 parsePurchaseDataEnabled] != 0x0 && sub_1001862c8() == 0x0) {
                                            [r22 release];
                                            [@"_iapx" retain];
                                            [@"_iap" release];
                                            if ([APMAEU isASRS] != 0x0) {
                                                    r22 = [[APMValue alloc] initWithInt64:0x1];
                                                    [r23 setObject:r22 forKeyedSubscript:@"sandbox"];
                                                    [r22 release];
                                            }
                                            if (r26 != 0x0) {
                                                    [r23 removeObjectForKey:r2];
                                            }
                                            r22 = @"_iapx";
                                    }
                                    else {
                                            r27 = [r26 int64Value];
                                            [r22 release];
                                            r24 = r24;
                                            if (r27 != 0x1) {
                                                    r22 = @"_iap";
                                            }
                                            else {
                                                    [@"_iapx" retain];
                                                    [@"_iap" release];
                                                    if ([APMAEU isASRS] != 0x0) {
                                                            r22 = [[APMValue alloc] initWithInt64:0x1];
                                                            [r23 setObject:r22 forKeyedSubscript:@"sandbox"];
                                                            [r22 release];
                                                    }
                                                    if (r26 != 0x0) {
                                                            [r23 removeObjectForKey:r2];
                                                    }
                                                    r22 = @"_iapx";
                                            }
                                    }
                                    [APMAnalytics logInternalEventWithOrigin:@"auto" name:r22 parameters:r23];
                                    [r26 release];
                                    [r22 release];
                                    [r23 release];
                                    r23 = var_130;
                                    r22 = stack[-312];
                            }
                            [r20 release];
                            [var_120 release];
                            [r23 release];
                            objc_autoreleasePoolPop(r22);
                            r28 = r28 + 0x1;
                    } while (r28 < r25);
                    r25 = objc_msgSend(var_198, var_1D0);
            } while (r25 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_198 release];
    [var_158 release];
    [var_1D8 release];
    [var_198 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)paymentQueue:(void *)arg2 updatedFilteredTransactions:(void *)arg3 {
    r31 = r31 - 0x1f0;
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
    var_1D0 = self;
    r19 = [arg3 retain];
    var_1B8 = [[NSMutableArray alloc] init];
    var_1C0 = [[NSMutableSet alloc] init];
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_180 = r0;
    var_1C8 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_180);
                            }
                            r21 = *(0x0 + r28 * 0x8);
                            if ([r21 transactionState] == 0x1) {
                                    r0 = [r21 payment];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 productIdentifier];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r20 = [r0 copy];
                                    [r0 release];
                                    if ([r20 length] != 0x0) {
                                            r0 = [APMInAppPurchaseProductCache sharedInstance];
                                            r0 = [r0 retain];
                                            r26 = r0;
                                            r0 = [r0 cachedProductForProductIdentifier:r20];
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            [r26 release];
                                            if (r19 == 0x0) {
                                                    [var_1C0 addObject:r2];
                                            }
                                            [var_1B8 addObject:r2];
                                            [r19 release];
                                    }
                                    [r20 release];
                                    [r23 release];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = objc_msgSend(var_180, var_1C8);
            } while (r24 != 0x0);
    }
    [var_180 release];
    r0 = [var_1B8 count];
    r22 = var_1C0;
    if (r0 != 0x0) {
            r20 = @selector(count);
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r29 = r29;
            r19 = [r0 retain];
            if (objc_msgSend(r22, r20) != 0x0) {
                    var_120 = [var_1B8 retain];
                    r0 = objc_retainBlock(&var_148);
                    r20 = r0;
                    r0 = [APMInAppPurchaseProductCache sharedInstance];
                    r0 = [r0 retain];
                    [r0 requestProductsWithProductIdentifiers:r22 queue:r19 completionHandler:r20];
                    [r0 release];
                    [r20 release];
                    r0 = var_120;
            }
            else {
                    var_150 = [var_1B8 retain];
                    dispatch_async(r19, &var_178);
                    r0 = var_150;
            }
            [r0 release];
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [var_1B8 release];
    [var_180 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void *)transactionFingerprint:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_10018c2f8;

loc_10018c190:
    if ([r19 transactionState] != 0x1) goto loc_10018c33c;

loc_10018c1a8:
    r0 = [r19 transactionIdentifier];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10018c344;

loc_10018c1c8:
    if ([r20 length] == 0x0) goto loc_10018c3d0;

loc_10018c1dc:
    r0 = [NSCharacterSet characterSetWithCharactersInString:@"0-"];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 invertedSet];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    if ([r20 rangeOfCharacterFromSet:r21] == 0x7fffffffffffffff) {
            r22 = [[APMMeasurement monitor] retain];
            r0 = [r19 error];
            r0 = [r0 retain];
            r23 = [[NSNumber numberWithLong:[r0 code]] retain];
            [r22 logWithLevel:0x2 messageCode:0x5219 message:@"Transaction identifier is only zeroes. Code" context:r23];
            [r23 release];
            [r0 release];
            [r22 release];
            r22 = 0x0;
    }
    else {
            r22 = [[r20 apm_MD5String] retain];
    }
    [r21 release];
    goto loc_10018c4a8;

loc_10018c4a8:
    [r20 release];
    goto loc_10018c4b0;

loc_10018c4b0:
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_10018c3d0:
    r21 = [[APMMeasurement monitor] retain];
    r0 = [r19 error];
    r0 = [r0 retain];
    r23 = r0;
    r22 = [[NSNumber numberWithLong:[r0 code]] retain];
    goto loc_10018c458;

loc_10018c458:
    [r21 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r22 release];
    [r23 release];
    [r21 release];
    r22 = 0x0;
    goto loc_10018c4a8;

loc_10018c344:
    r21 = [[APMMeasurement monitor] retain];
    r0 = [r19 error];
    r0 = [r0 retain];
    r23 = r0;
    r22 = [[NSNumber numberWithLong:[r0 code]] retain];
    goto loc_10018c458;

loc_10018c33c:
    r22 = 0x0;
    goto loc_10018c4b0;

loc_10018c2f8:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x2 messageCode:0x5216 message:@"Transaction is nil"];
    [r0 release];
    goto loc_10018c33c;
}

@end
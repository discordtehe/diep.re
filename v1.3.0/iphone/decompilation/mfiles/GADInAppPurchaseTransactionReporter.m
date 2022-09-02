@implementation GADInAppPurchaseTransactionReporter

+(void *)sharedInstance {
    if (*qword_1011dbed8 != -0x1) {
            dispatch_once(0x1011dbed8, 0x100e9caf8);
    }
    r0 = *0x1011dbee0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    r0 = [SKPaymentQueue defaultQueue];
    r0 = [r0 retain];
    [r0 removeTransactionObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)enableReporting {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_reportingEnabled));
    if (*(int8_t *)(r19 + r21) == 0x0) {
            r0 = [SKPaymentQueue defaultQueue];
            r0 = [r0 retain];
            [r0 addTransactionObserver:r19];
            [r0 release];
            *(int8_t *)(r19 + r21) = 0x1;
    }
    return;
}

-(void)disableReporting {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_wasDisabled = 0x1;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_reportingEnabled));
    if (*(int8_t *)(r19 + r21) != 0x0) {
            r0 = [SKPaymentQueue defaultQueue];
            r0 = [r0 retain];
            [r0 removeTransactionObserver:r19];
            [r0 release];
            *(int8_t *)(r19 + r21) = 0x0;
    }
    return;
}

-(bool)shouldBeEnabled {
    r31 = r31 - 0x120;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*(int8_t *)(int64_t *)&self->_wasDisabled == 0x0) goto loc_10089e704;

loc_10089e6fc:
    r21 = 0x0;
    goto loc_10089e874;

loc_10089e874:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10089e704:
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b6f8];
    [r0 release];
    if (r21 == 0x0) goto loc_10089e874;

loc_10089e750:
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r19 = [[r0 stringForKey:*0x100e9b6f0] retain];
    [r0 release];
    r0 = [r19 componentsSeparatedByString:@","];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_10089e850;

loc_10089e7f8:
    r24 = 0x0;
    goto loc_10089e7fc;

loc_10089e7fc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    if (NSClassFromString(*(0x0 + r24 * 0x8)) != 0x0) goto loc_10089e858;

loc_10089e824:
    r24 = r24 + 0x1;
    if (r24 < r22) goto loc_10089e7fc;

loc_10089e830:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_10089e7f8;

loc_10089e850:
    r21 = 0x1;
    goto loc_10089e85c;

loc_10089e85c:
    [r20 release];
    [r20 release];
    [r19 release];
    goto loc_10089e874;

loc_10089e858:
    r21 = 0x0;
    goto loc_10089e85c;
}

-(void)paymentQueue:(void *)arg2 updatedTransactions:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1e0;
    var_230 = self;
    r19 = [arg3 retain];
    r21 = [[NSMutableArray alloc] init];
    var_220 = [[NSMutableSet alloc] init];
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A0 = r0;
    var_228 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            r24 = *0x0;
            var_218 = r24;
            var_210 = r21;
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != r24) {
                                    objc_enumerationMutation(var_1A0);
                            }
                            r23 = *(0x0 + r20 * 0x8);
                            if ([r23 transactionState] == 0x1) {
                                    r0 = [r23 payment];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    r0 = [r0 productIdentifier];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r19 = [r0 copy];
                                    [r0 release];
                                    if ([r19 length] != 0x0) {
                                            r0 = [GADInAppPurchaseProductCache sharedInstance];
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            r0 = [r0 cachedProductForProductIdentifier:r19];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r28 release];
                                            if (r22 == 0x0) {
                                                    sub_100822430(var_220, r19);
                                            }
                                            r0 = [r23 transactionDate];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 timeIntervalSince1970];
                                            v8 = v0;
                                            [r0 release];
                                            if (d8 > 0x0) {
                                                    v0 = v8;
                                                    r0 = sub_1007da734();
                                                    r29 = r29;
                                                    r28 = [r0 retain];
                                            }
                                            else {
                                                    r28 = 0x0;
                                            }
                                            r8 = @"";
                                            if (r19 != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r8 = @"";
                                                    }
                                                    else {
                                                            r8 = r19;
                                                    }
                                            }
                                            r0 = [r23 transactionIdentifier];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            r8 = @"missing";
                                            r24 = r8;
                                            if (r23 != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r8 = r24;
                                                    }
                                                    else {
                                                            r8 = r23;
                                                    }
                                            }
                                            r21 = [NSString alloc];
                                            [r26 quantity];
                                            r21 = [r21 initWithFormat:@"%ld"];
                                            r8 = @"timestamp";
                                            if (r28 != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r8 = r24;
                                                    }
                                                    else {
                                                            r8 = r28;
                                                    }
                                            }
                                            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [r21 release];
                                            [r23 release];
                                            r21 = var_210;
                                            sub_100822370(r21, r24);
                                            [r24 release];
                                            [r28 release];
                                            [r22 release];
                                            r24 = var_218;
                                    }
                                    [r19 release];
                                    [r26 release];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r25);
                    r25 = objc_msgSend(var_1A0, var_228);
            } while (r25 != 0x0);
    }
    [var_1A0 release];
    r0 = [r21 count];
    r20 = var_220;
    if (r0 != 0x0) {
            if ([r20 count] != 0x0) {
                    r19 = [[GADInAppPurchaseProductCache sharedInstance] retain];
                    var_178 = [var_230 retain];
                    var_170 = [r21 retain];
                    [r19 requestProductsWithProductIdentifiers:r20 queue:*__dispatch_main_q completionHandler:&var_198];
                    [r19 release];
                    [var_170 release];
                    [var_178 release];
            }
            else {
                    [var_230 reportTransactionInformationArray:r21];
            }
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r21 release];
    [var_1A0 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)reportTransactionInformationArray:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1e0;
    var_1A8 = [arg2 retain];
    r19 = [[NSNumberFormatter alloc] init];
    r20 = [[NSLocale localeWithLocaleIdentifier:@"en_US"] retain];
    [r19 setLocale:r20];
    [r20 release];
    [r19 setPositiveFormat:@"#.######"];
    [r19 setNegativeFormat:@"-#.######"];
    var_220 = r19;
    [r19 setRoundingMode:0x1];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 stringForKey:*0x100e9b700] retain];
    [r0 release];
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    var_1B0 = r0;
    r8 = &@selector(alloc);
    r0 = objc_msgSend(r0, *(r8 + 0x220));
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r22;
            }
    }
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r8 = &@selector(bannerView:didFailToReceiveAdWithError:);
    r0 = objc_msgSend(r0, *(r8 + 0x7a8));
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r24;
            }
    }
    r0 = [GADDevice sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r8 = &@selector(alloc);
    r0 = objc_msgSend(r0, *(r8 + 0xca8));
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r26;
            }
    }
    r8 = @"rdid";
    r0 = sub_100818ab4();
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r27;
            }
    }
    r8 = @"lat";
    r0 = sub_100818a88();
    r29 = r29;
    r28 = [r0 retain];
    if (r28 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r28;
            }
    }
    r8 = *0x100e9f550;
    if (r8 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = *0x100e9f550;
            }
    }
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xa0 forKeys:r29 - 0xd8 count:0x7];
    r29 = r29;
    r19 = [r0 retain];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [var_1B0 release];
    var_1D8 = [[r19 autorelease] retain];
    r0 = [var_1A8 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_210 = r0;
    var_228 = r1;
    r0 = objc_msgSend(r0, r1);
    var_1A8 = r0;
    if (r0 != 0x0) {
            var_208 = **_NSLocaleCurrencyCode;
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_210);
                            }
                            r19 = *(0x0 + r27 * 0x8);
                            r0 = [var_1D8 mutableCopy];
                            r25 = r0;
                            [r0 addEntriesFromDictionary:r19];
                            r22 = [[r19 objectForKeyedSubscript:@"sku"] retain];
                            r0 = [GADInAppPurchaseProductCache sharedInstance];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 cachedProductForProductIdentifier:r22];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r19 release];
                            if (r20 != 0x0) {
                                    r0 = [r20 price];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    if (r28 != 0x0) {
                                            r2 = r28;
                                            r0 = [var_220 stringFromNumber:r2];
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            if (r19 != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r2 = @"";
                                                    }
                                                    else {
                                                            r2 = r19;
                                                    }
                                            }
                                            sub_100822058(r25, @"price", r2);
                                            [r19 release];
                                    }
                                    else {
                                            sub_100822058(r25, @"price", @"missing");
                                    }
                                    r0 = [r20 priceLocale];
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    r2 = var_208;
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r19 release];
                                    if (r23 != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r2 = @"";
                                            }
                                            else {
                                                    r2 = r23;
                                            }
                                    }
                                    sub_100822058(r25, @"currencycode", r2);
                                    [r23 release];
                                    [r28 release];
                            }
                            r28 = [r21 retain];
                            r25 = [r25 retain];
                            r19 = [r28 mutableCopy];
                            [r21 release];
                            [r19 retain];
                            [r25 enumerateKeysAndObjectsUsingBlock:r29 - 0xa0];
                            [r25 release];
                            sub_1008a96c4();
                            sub_1008a961c(r19);
                            [r19 release];
                            r19 = [[r19 autorelease] retain];
                            r0 = [NSURL URLWithString:r19];
                            r29 = r29;
                            r23 = [r0 retain];
                            if (r23 != 0x0) {
                                    r0 = [GADPinger sharedInstance];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 pingURL:r23 context:0x0 queue:0x0 completionBlock:0x100e9cb38];
                                    [r0 release];
                            }
                            else {
                                    sub_1007ce06c(0x0, @"Couldn't build IAP URL with format and parameters. format: %@\nparams: %@");
                            }
                            [r23 release];
                            [r19 release];
                            [r20 release];
                            [r22 release];
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < var_1A8);
                    r0 = objc_msgSend(var_210, var_228);
                    var_1A8 = r0;
            } while (r0 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [var_210 release];
    [var_1D8 release];
    [r21 release];
    [var_220 release];
    [var_210 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

@end
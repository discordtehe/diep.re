@implementation USTRTransactionObserver

-(void)paymentQueue:(void *)arg2 updatedTransactions:(void *)arg3 {
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
    r19 = [arg3 retain];
    var_190 = [[NSMutableArray alloc] init];
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D0 = r1;
    var_1C8 = r0;
    r0 = objc_msgSend(r0, r1);
    var_140 = r0;
    if (r0 != 0x0) {
            r26 = @selector(alloc);
            var_1A0 = r26;
            do {
                    r25 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_1C8);
                            }
                            r24 = *(0x0 + r25 * 0x8);
                            r28 = [[r24 payment] retain];
                            r0 = [USTRStore getReceipt];
                            r0 = [r0 retain];
                            var_130 = r0;
                            r2 = 0x0;
                            r21 = [[r0 base64EncodedStringWithOptions:r2] retain];
                            r0 = [r24 originalTransaction];
                            r0 = [r0 retain];
                            var_138 = r0;
                            [r0 release];
                            r19 = [objc_msgSend(@class(NSMutableDictionary), r26) init];
                            r0 = [r24 payment];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 productIdentifier];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r22 release];
                            if (r0 != 0x0) {
                                    r0 = [r24 payment];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 productIdentifier];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    r2 = r26;
                                    [r19 setObject:r2 forKey:@"productId"];
                                    [r26 release];
                                    [r22 release];
                            }
                            if ([r24 transactionState] != 0x0) {
                                    [r24 transactionState];
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r2 = r22;
                                    [r19 setObject:r2 forKey:@"transactionState"];
                                    [r22 release];
                            }
                            r0 = [r24 transactionDate];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r24 transactionDate];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    [r0 timeIntervalSince1970];
                                    r0 = [NSNumber numberWithDouble:r2];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r2 = r22;
                                    [r19 setObject:r2 forKey:@"transactionDate"];
                                    [r22 release];
                                    [r26 release];
                            }
                            r0 = [r24 transactionIdentifier];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r24 transactionIdentifier];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r2 = r22;
                                    [r19 setObject:r2 forKey:@"transactionId"];
                                    [r22 release];
                            }
                            r26 = var_1A0;
                            r24 = [objc_msgSend(@class(NSMutableDictionary), r26) init];
                            r0 = [r28 productIdentifier];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r28 productIdentifier];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r2 = r22;
                                    [r24 setObject:r2 forKey:@"productId"];
                                    [r22 release];
                            }
                            r27 = @selector(quantity);
                            if (objc_msgSend(r28, r27) != 0x0) {
                                    r0 = [NSNumber numberWithInteger:objc_msgSend(r28, r27)];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r2 = r22;
                                    [r24 setObject:r2 forKey:@"numberOfItems"];
                                    [r22 release];
                            }
                            if (r24 != 0x0) {
                                    r2 = r24;
                                    [r19 setObject:r2 forKey:@"payment"];
                            }
                            if (r21 != 0x0) {
                                    r2 = r21;
                                    [r19 setObject:r2 forKey:@"receipt"];
                            }
                            if (var_138 != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r2 = 0x1;
                                    }
                            }
                            r0 = [NSNumber numberWithBool:r2];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r19 setObject:r22 forKey:@"hasOriginalTransaction"];
                            [r22 release];
                            [var_190 addObject:r2];
                            [r24 release];
                            [r19 release];
                            [r21 release];
                            [var_130 release];
                            [r28 release];
                            r25 = r25 + 0x1;
                    } while (r25 < var_140);
                    r0 = objc_msgSend(var_1C8, var_1D0);
                    var_140 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_1C8 release];
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    [r0 sendEvent:@"RECEIVED_TRANSACTION" category:@"STORE" param1:var_190];
    [r0 release];
    [var_190 release];
    [var_1C8 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end
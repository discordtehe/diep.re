@implementation USTRProductRequest

-(void *)initWithProductIds:(void *)arg2 requestId:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setProductIds:r19];
            [r21 setRequestId:r20];
            if (*0x1011d1d50 == 0x0) {
                    r22 = @selector(init);
                    r0 = [NSMutableArray alloc];
                    r0 = objc_msgSend(r0, r22);
                    r8 = *0x1011d1d50;
                    *0x1011d1d50 = r0;
                    [r8 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)addToActiveRequests {
    r0 = *0x1011d1d50;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*0x1011d1d50 addObject:r2];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)requestProducts {
    r21 = [[self productIds] retain];
    r20 = [[NSSet setWithArray:r21] retain];
    [r21 release];
    r21 = [[SKProductsRequest alloc] initWithProductIdentifiers:r20];
    [self setCurrentRequest:r21];
    [r21 release];
    r0 = [self currentRequest];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    [self addToActiveRequests];
    r0 = [self currentRequest];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    [r20 release];
    return;
}

-(void)removeFromActiveRequests {
    r0 = *0x1011d1d50;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*0x1011d1d50 removeObject:self];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)productsRequest:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r22 = [arg3 retain];
    r21 = [[arg3 products] retain];
    r19 = [[arg3 invalidProductIdentifiers] retain];
    [r22 release];
    [self sendProducts:r21 invalidProducts:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void)requestDidFinish:(void *)arg2 {
    [self removeFromActiveRequests];
    return;
}

-(void *)productIds {
    r0 = self->_productIds;
    return r0;
}

-(void)request:(void *)arg2 didFailWithError:(void *)arg3 {
    r23 = [arg3 retain];
    r21 = [[USRVWebViewApp getCurrentApp] retain];
    r22 = [[self requestId] retain];
    r20 = [[arg3 description] retain];
    [r23 release];
    [r21 sendEvent:@"PRODUCT_REQUEST_FAILED" category:@"STORE" param1:r22];
    [r20 release];
    [r22 release];
    [r21 release];
    [self removeFromActiveRequests];
    return;
}

-(void)setProductIds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productIds, arg2);
    return;
}

-(void *)currentRequest {
    r0 = self->_currentRequest;
    return r0;
}

-(void)setCurrentRequest:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentRequest, arg2);
    return;
}

-(void *)requestId {
    r0 = self->_requestId;
    return r0;
}

-(void)setRequestId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestId, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestId, 0x0);
    objc_storeStrong((int64_t *)&self->_currentRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_productIds, 0x0);
    return;
}

-(void)sendProducts:(void *)arg2 invalidProducts:(void *)arg3 {
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
    r23 = self;
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    if (r21 == 0x0) goto loc_1000fb234;

loc_1000fa848:
    r19 = [r21 count];
    if (r22 != 0x0) {
            r19 = [r22 count] + zero_extend_64(r19);
    }
    if (r19 <= 0x0) goto loc_1000fb26c;

loc_1000fa87c:
    var_1C0 = r23;
    var_1B8 = r22;
    var_178 = [[NSMutableDictionary alloc] init];
    var_1B0 = r21;
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_180 = r0;
    var_1A8 = r1;
    r0 = objc_msgSend(r0, r1);
    var_138 = r0;
    if (r0 == 0x0) goto loc_1000fb1a4;

loc_1000fa908:
    r27 = 0x0;
    r28 = @selector(setObject:forKey:);
    r25 = @selector(localizedTitle);
    r26 = @selector(localizedDescription);
    var_160 = r26;
    stack[-360] = r25;
    goto loc_1000fa978;

loc_1000fa978:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_180);
    }
    r19 = *(0x0 + r27 * 0x8);
    if (r19 == 0x0) goto loc_1000fb174;

loc_1000fa9a0:
    r20 = [[NSMutableDictionary alloc] init];
    if ([r19 isDownloadable] != 0x0) {
            r0 = [NSNumber numberWithBool:[r19 isDownloadable]];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r20, r28);
            [r23 release];
    }
    r0 = objc_msgSend(r19, r25);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_msgSend(r19, r25);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r20, r28);
            [r23 release];
    }
    r0 = objc_msgSend(r19, r26);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_msgSend(r19, r26);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r20, r28);
            [r23 release];
    }
    r0 = [r19 price];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 price];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r20, r28);
            [r23 release];
    }
    r26 = [[NSMutableDictionary alloc] init];
    r0 = [r19 priceLocale];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1000fac04;

loc_1000fab5c:
    r0 = [r19 priceLocale];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKey:@"countryCode"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1000fac0c;

loc_1000fabac:
    r0 = [r19 priceLocale];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 valueForKey:@"countryCode"];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r26, r28);
    [r24 release];
    goto loc_1000fac04;

loc_1000fac04:
    [r23 release];
    goto loc_1000fac0c;

loc_1000fac0c:
    r0 = [r19 priceLocale];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1000facd0;

loc_1000fac28:
    r0 = [r19 priceLocale];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKey:@"currencyCode"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1000facd8;

loc_1000fac78:
    r0 = [r19 priceLocale];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 valueForKey:@"currencyCode"];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r26, r28);
    [r24 release];
    goto loc_1000facd0;

loc_1000facd0:
    [r23 release];
    goto loc_1000facd8;

loc_1000facd8:
    r0 = [r19 priceLocale];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1000fad94;

loc_1000facf4:
    r0 = [r19 priceLocale];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKey:@"currencySymbol"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1000fad9c;

loc_1000fad40:
    r0 = [r19 priceLocale];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 valueForKey:@"currencySymbol"];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r26, r28);
    [r24 release];
    goto loc_1000fad94;

loc_1000fad94:
    [r23 release];
    goto loc_1000fad9c;

loc_1000fad9c:
    if (r26 != 0x0) {
            objc_msgSend(r20, r28);
    }
    r0 = [r19 valueForKey:@"subscriptionPeriod"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 valueForKey:@"subscriptionPeriod"];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 valueForKey:@"numberOfUnits"];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            [r0 release];
            if (r25 != 0x0 && r23 != 0x0) {
                    var_150 = r20;
                    var_190 = r26;
                    r20 = [[NSMutableDictionary alloc] init];
                    r26 = r28;
                    r28 = @selector(numberWithUnsignedInteger:);
                    [objc_msgSend(@class(NSNumber), r28) retain];
                    objc_msgSend(r20, r26);
                    [r23 release];
                    r0 = [r25 valueForKey:@"unit"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r24 = [[r25 valueForKey:@"unit"] retain];
                            r0 = objc_msgSend(@class(NSNumber), r28);
                            r29 = r29;
                            [r0 retain];
                            [r24 release];
                            objc_msgSend(r20, r26);
                            [r23 release];
                    }
                    var_188 = r20;
                    r0 = [r19 valueForKey:@"introductoryPrice"];
                    r29 = r29;
                    r23 = [r0 retain];
                    r28 = r26;
                    r26 = var_190;
                    r20 = var_150;
                    if (r23 != 0x0) {
                            r0 = [r23 valueForKey:@"price"];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r23 valueForKey:@"price"];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(var_188, r28);
                                    [r24 release];
                            }
                            r0 = [r23 valueForKey:@"subscriptionPeriod"];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r23 valueForKey:@"subscriptionPeriod"];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    if (r0 != 0x0) {
                                            r0 = [r20 valueForKey:@"unit"];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r0 != 0x0) {
                                                    r0 = [r20 valueForKey:@"unit"];
                                                    r29 = r29;
                                                    [r0 retain];
                                                    objc_msgSend(var_188, r28);
                                                    [r24 release];
                                            }
                                            r0 = [r20 valueForKey:@"numberOfUnits"];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r0 != 0x0) {
                                                    r0 = [r20 valueForKey:@"numberOfUnits"];
                                                    r29 = r29;
                                                    [r0 retain];
                                                    objc_msgSend(var_188, r28);
                                                    [r24 release];
                                            }
                                    }
                                    [r20 release];
                                    r20 = var_150;
                            }
                    }
                    objc_msgSend(r20, r28);
                    [r23 release];
                    r20 = var_150;
                    [var_188 release];
            }
            [r25 release];
    }
    r0 = [r19 productIdentifier];
    r29 = r29;
    [r0 retain];
    objc_msgSend(var_178, r28);
    [r19 release];
    [r26 release];
    [r20 release];
    r26 = var_160;
    r25 = stack[-360];
    goto loc_1000fb174;

loc_1000fb174:
    r27 = r27 + 0x1;
    if (r27 < var_138) goto loc_1000fa978;

loc_1000fb184:
    r0 = objc_msgSend(var_180, var_1A8);
    var_138 = r0;
    if (r0 != 0x0) goto loc_1000fa908;

loc_1000fb1a4:
    [var_180 release];
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r20 = [[var_1C0 requestId] retain];
    [r19 sendEvent:@"PRODUCT_REQUEST_COMPLETE" category:@"STORE" param1:r20];
    [r20 release];
    [r19 release];
    [var_178 release];
    r22 = var_1B8;
    r21 = var_1B0;
    goto loc_1000fb2e0;

loc_1000fb2e0:
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1000fb26c:
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r0 = [r23 requestId];
    goto loc_1000fb2a0;

loc_1000fb2a0:
    r20 = [r0 retain];
    [r19 sendEvent:@"PRODUCT_REQUEST_ERROR_NO_PRODUCTS" category:@"STORE" param1:r20];
    [r20 release];
    [r19 release];
    goto loc_1000fb2e0;

loc_1000fb234:
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r0 = [r23 requestId];
    goto loc_1000fb2a0;
}

@end
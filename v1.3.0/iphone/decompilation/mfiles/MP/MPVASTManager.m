@implementation MPVASTManager

+(void)fetchVASTWithData:(void *)arg2 completion:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [dispatch_get_global_queue(0x0, 0x0) retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(r22, &var_58);
    [r22 release];
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

+(void)parseVASTResponseFromData:(void *)arg2 depth:(long long)arg3 completion:(void *)arg4 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x210;
    r26 = self;
    r20 = [arg2 retain];
    r21 = [arg4 retain];
    var_218 = arg3;
    if (arg3 >= 0xa) {
            (*(r21 + 0x10))(r21, 0x0, [[NSError errorWithDomain:@"com.mopub.MPVASTManager" code:0x1 userInfo:0x0] retain]);
            r0 = r19;
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 init];
            r22 = r0;
            r0 = [r0 dictionaryWithData:r20 error:r29 - 0x100];
            r29 = r29;
            r24 = [r0 retain];
            r0 = [0x0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r25 = [[NSError errorWithDomain:@"com.mopub.MPVASTManager" code:0x0 userInfo:0x0] retain];
                    (*(r21 + 0x10))(r21, 0x0, r25);
            }
            else {
                    r25 = [objc_alloc() initWithDictionary:r24];
                    r0 = [r26 wrappersForVASTResponse:r25];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    if ([r0 count] != 0x0) {
                            var_228 = r25;
                            var_220 = r21;
                            var_260 = r24;
                            stack[-616] = r23;
                            var_250 = r22;
                            stack[-600] = r20;
                            var_230 = r26;
                            objc_initWeak(&stack[-280], r26);
                            *(int128_t *)&stack[-384] = q0;
                            *(int128_t *)(&stack[-384] + 0x10) = q0;
                            *(int128_t *)(&stack[-384] + 0x20) = q0;
                            *(int128_t *)(&stack[-384] + 0x30) = q0;
                            var_268 = r27;
                            r0 = [r27 retain];
                            r28 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_240 = r1;
                            r0 = objc_msgSend(r0, r1);
                            r19 = r0;
                            if (r0 != 0x0) {
                                    var_238 = *var_160;
                                    r23 = &var_1D0 + 0x50;
                                    do {
                                            r22 = 0x0;
                                            do {
                                                    if (*var_160 != var_238) {
                                                            objc_enumerationMutation(r28);
                                                    }
                                                    [[MPURLRequest requestWithURL:[[*(var_168 + r22 * 0x8) VASTAdTagURI] retain]] retain];
                                                    objc_copyWeak(r23, &stack[-280]);
                                                    var_1B0 = [var_220 retain];
                                                    r0 = [r28 retain];
                                                    r25 = r0;
                                                    var_1A0 = r0;
                                                    var_190 = [var_228 retain];
                                                    r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r2 responseHandler:r3 errorHandler:r4];
                                                    r29 = r29;
                                                    [[r0 retain] release];
                                                    [r21 release];
                                                    [r20 release];
                                                    [var_190 release];
                                                    [var_1A0 release];
                                                    [var_1B0 release];
                                                    objc_destroyWeak(r23);
                                                    r22 = r22 + 0x1;
                                            } while (r22 < r19);
                                            r0 = objc_msgSend(r25, var_240);
                                            r19 = r0;
                                    } while (r0 != 0x0);
                            }
                            [r28 release];
                            _Block_object_dispose(&var_128, 0x8);
                            objc_destroyWeak(&stack[-280]);
                            r22 = var_250;
                            r20 = stack[-600];
                            r25 = var_228;
                            r21 = var_220;
                            r24 = var_260;
                            r23 = stack[-616];
                            r27 = var_268;
                    }
                    else {
                            if ([r26 VASTResponseContainsAtLeastOneAd:r25] != 0x0) {
                                    (*(r21 + 0x10))(r21, r25, 0x0);
                            }
                            else {
                                    (*(r21 + 0x10))(r21, 0x0, [[NSError errorWithDomain:@"com.mopub.MPVASTManager" code:0x2 userInfo:0x0] retain]);
                                    [r19 release];
                            }
                    }
                    [r27 release];
            }
            [r25 release];
            [r24 release];
            [r22 release];
            r0 = r23;
    }
    var_78 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

+(bool)VASTResponseContainsAtLeastOneAd:(void *)arg2 {
    r31 = r31 - 0x140;
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
    var_110 = q0;
    r0 = [arg2 ads];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1004df244;

loc_1004df158:
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    r21 = r0;
    r28 = *var_110;
    var_128 = r20;
    goto loc_1004df174;

loc_1004df174:
    r20 = 0x0;
    goto loc_1004df184;

loc_1004df184:
    if (*var_110 != r28) {
            objc_enumerationMutation(r19);
    }
    r26 = *(var_118 + r20 * 0x8);
    r0 = [r26 inlineAd];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) goto loc_1004df24c;

loc_1004df1c0:
    r0 = [r26 wrapper];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 wrappedVASTResponse];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    if (r0 != 0x0) goto loc_1004df254;

loc_1004df204:
    r20 = r20 + 0x1;
    if (r20 < r21) goto loc_1004df184;

loc_1004df210:
    r0 = objc_msgSend(r19, var_128);
    r21 = r0;
    if (r0 != 0x0) goto loc_1004df174;

loc_1004df240:
    r22 = 0x0;
    goto loc_1004df258;

loc_1004df258:
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004df254:
    r22 = 0x1;
    goto loc_1004df258;

loc_1004df24c:
    [r25 release];
    goto loc_1004df254;

loc_1004df244:
    r22 = 0x0;
    goto loc_1004df258;
}

+(void *)wrappersForVASTResponse:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r20 = [[NSMutableArray array] retain];
    var_110 = q0;
    var_128 = r19;
    r0 = [r19 ads];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r26 = *(var_118 + r19 * 0x8);
                            r0 = [r26 wrapper];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r25 = @selector(addObject:);
                                    r0 = [r26 wrapper];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r20, r25);
                                    [r26 release];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end
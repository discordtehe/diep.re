@implementation VungleLegacyAdPreparer

-(void)prepareAd:(void *)arg2 placementID:(void *)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    [r22 setAdBeingPrepared:r21];
    r0 = [r21 retain];
    r21 = r0;
    if ([r0 isValid] != 0x0) {
            (*(r20 + 0x10))(r20, r21, 0x0);
    }
    else {
            var_28 = [r20 retain];
            [r22 prepareAd:r21 placementID:r19 completionHandler:&var_48];
            [var_28 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r21 release];
    return;
}

-(long long)networkRequestCount {
    r0 = self->_networkRequestCount;
    return r0;
}

-(void)setNetworkRequestCount:(long long)arg2 {
    self->_networkRequestCount = arg2;
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ad, arg2);
    return;
}

-(void *)ad {
    r0 = self->_ad;
    return r0;
}

-(void *)errors {
    r0 = self->_errors;
    return r0;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setErrors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_errors, arg2);
    return;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)prepareAd:(void *)arg2 placementID:(void *)arg3 completionHandler:(void *)arg4 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x2d0;
    r26 = [arg2 retain];
    r20 = [arg3 retain];
    r27 = [arg4 retain];
    [self setAd:r26];
    [self setNetworkRequestCount:0x0];
    var_2D0 = self;
    [self setPlacementID:r20];
    [r20 release];
    r0 = [r26 cacheKey];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(length);
    var_280 = r1;
    r22 = objc_msgSend(r0, r1);
    [r0 release];
    if (r22 != 0x0) {
            r20 = [[r26 cacheKey] retain];
            r0 = [VNGPersistenceManager URLForAdKey:r20];
            r29 = r29;
            r25 = [r0 retain];
            [r20 release];
    }
    else {
            r25 = 0x0;
    }
    r28 = [[NSMutableSet set] retain];
    r0 = [NSMutableArray array];
    r29 = r29;
    var_310 = [r0 retain];
    if (r25 != 0x0) {
            var_328 = r27;
            r0 = [VNGOperationQueue new];
            r23 = r0;
            [r0 setSuspended:0x0];
            r0 = [r26 parts];
            r0 = [r0 retain];
            [var_2D0 setNetworkRequestCount:[r0 count]];
            [r0 release];
            var_1A0 = q0;
            var_320 = r26;
            r0 = [r26 parts];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_318 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r27 = r0;
                    var_2D8 = r28;
                    r26 = *var_1A0;
                    var_28C = 0x1;
                    var_2E8 = r20;
                    var_2E0 = r23;
                    var_2F0 = r26;
                    do {
                            r19 = 0x0;
                            r21 = @selector(isLocal);
                            r28 = @selector(remotePath);
                            var_2A0 = r28;
                            stack[-680] = r27;
                            var_278 = r21;
                            do {
                                    if (*var_1A0 != r26) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r22 = *(var_1A8 + r19 * 0x8);
                                    if (objc_msgSend(r22, r21) != 0x0) {
                                            r0 = objc_msgSend(r22, r28);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r24 = objc_msgSend(r0, var_280);
                                            [r0 release];
                                            if (r24 != 0x0) {
                                                    r24 = [objc_msgSend(r22, r28) retain];
                                                    r26 = [[NSURL URLWithString:r24] retain];
                                                    [r24 release];
                                                    r21 = [[r22 filename] retain];
                                                    r24 = [[r25 URLByAppendingPathComponent:r21] retain];
                                                    [r21 release];
                                                    r21 = [[VNGNetworkManager sharedManager] retain];
                                                    r23 = [[var_2D0 placementID] retain];
                                                    r0 = [var_2D8 retain];
                                                    r28 = r0;
                                                    var_1C0 = r0;
                                                    r27 = r25;
                                                    var_1B8 = [r25 retain];
                                                    r0 = [r21 vungleDownloadOperationWithRemoteURL:r26 localFileURL:r24 placementID:r23 error:&var_1F0 responseBlock:&var_1E8];
                                                    r29 = r29;
                                                    r25 = [r0 retain];
                                                    r22 = [var_1F0 retain];
                                                    [r23 release];
                                                    if (r25 != 0x0 && r22 == 0x0) {
                                                            [var_310 addObject:r25];
                                                            [r25 setMaxAttempts:0x5];
                                                            r0 = [VNGNetworkManager sharedManager];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 sendVungleOperation:r2];
                                                            [r23 release];
                                                    }
                                                    else {
                                                            if (r22 != 0x0) {
                                                                    [r28 addObject:r22];
                                                            }
                                                            var_28C = 0x0;
                                                    }
                                                    r23 = var_2E0;
                                                    [r25 release];
                                                    [var_1B8 release];
                                                    [var_1C0 release];
                                                    [r22 release];
                                                    [r21 release];
                                                    [r24 release];
                                                    [r26 release];
                                                    r25 = r27;
                                                    r26 = var_2F0;
                                                    r20 = var_2E8;
                                                    r28 = var_2A0;
                                                    r27 = stack[-680];
                                            }
                                            else {
                                                    var_28C = 0x0;
                                            }
                                            r21 = var_278;
                                    }
                                    r19 = r19 + 0x1;
                            } while (r19 < r27);
                            r0 = objc_msgSend(r20, var_318);
                            r27 = r0;
                    } while (r0 != 0x0);
                    [r20 release];
                    [r23 release];
                    r27 = var_328;
                    r26 = var_320;
                    r28 = var_2D8;
                    if ((var_28C & 0x1) == 0x0) {
                            [r26 setState:0x2];
                            (*(r27 + 0x10))(r27, r26, r28);
                    }
                    else {
                            var_330 = r25;
                            var_208 = [r28 retain];
                            var_200 = [r26 retain];
                            var_1F8 = [r27 retain];
                            r0 = [NSBlockOperation blockOperationWithBlock:&var_228];
                            r29 = r29;
                            r19 = [r0 retain];
                            var_260 = q0;
                            r0 = [var_310 retain];
                            r20 = r0;
                            r0 = objc_msgSend(r0, var_318);
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    r23 = *var_260;
                                    do {
                                            r25 = 0x0;
                                            do {
                                                    if (*var_260 != r23) {
                                                            objc_enumerationMutation(r20);
                                                    }
                                                    [r19 addDependency:r2];
                                                    r25 = r25 + 0x1;
                                            } while (r25 < r21);
                                            r0 = objc_msgSend(r20, var_318);
                                            r21 = r0;
                                    } while (r0 != 0x0);
                            }
                            [r20 release];
                            r0 = [var_2D0 queue];
                            r0 = [r0 retain];
                            [r0 addOperation:r19];
                            [r0 release];
                            [r19 release];
                            [var_1F8 release];
                            [var_200 release];
                            [var_208 release];
                            r25 = var_330;
                    }
            }
            else {
                    [r20 release];
                    [r23 release];
                    r27 = var_328;
                    r26 = var_320;
                    var_330 = r25;
                    var_208 = [r28 retain];
                    var_200 = [r26 retain];
                    var_1F8 = [r27 retain];
                    r0 = [NSBlockOperation blockOperationWithBlock:&var_228];
                    r29 = r29;
                    r19 = [r0 retain];
                    var_260 = q0;
                    r0 = [var_310 retain];
                    r20 = r0;
                    r0 = objc_msgSend(r0, var_318);
                    if (r0 != 0x0) {
                            r21 = r0;
                            r23 = *var_260;
                            do {
                                    r25 = 0x0;
                                    do {
                                            if (*var_260 != r23) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [r19 addDependency:r2];
                                            r25 = r25 + 0x1;
                                    } while (r25 < r21);
                                    r0 = objc_msgSend(r20, var_318);
                                    r21 = r0;
                            } while (r0 != 0x0);
                    }
                    [r20 release];
                    r0 = [var_2D0 queue];
                    r0 = [r0 retain];
                    [r0 addOperation:r19];
                    [r0 release];
                    [r19 release];
                    [var_1F8 release];
                    [var_200 release];
                    [var_208 release];
                    r25 = var_330;
            }
    }
    else {
            [r26 setState:0x2];
            (*(r27 + 0x10))(r27, r26, r28);
    }
    var_70 = **___stack_chk_guard;
    [var_310 release];
    [r28 release];
    [r25 release];
    [r27 release];
    [r26 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_errors, 0x0);
    objc_storeStrong((int64_t *)&self->_ad, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    return;
}

@end
@implementation VungleMRAIDAdPreparer

-(void)prepareAd:(void *)arg2 placementID:(void *)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    [r21 setAd:r22];
    [r21 setAdBeingPrepared:r22];
    [r21 setPlacementID:r20];
    [r20 release];
    r0 = [r22 retain];
    r20 = r0;
    r0 = [r0 cacheableTemplateReplacements];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_30 = [r19 retain];
            [r21 prepareMRAIDAd:r20 completionHandler:&var_50];
            r0 = var_30;
    }
    else {
            [r20 setState:0x2];
            (*(r19 + 0x10))(r19, 0x0, [[VungleAdPreparer buildErrorWithVungleMRAIDAd:r20] retain]);
            r0 = r21;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)prepareMRAIDAd:(void *)arg2 completionHandler:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [[NSMutableSet set] retain];
    [r20 setErrors:r22];
    [r22 release];
    [r20 setCompletionBlock:r21];
    [r21 release];
    r0 = [r19 templateAsset];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r21 = objc_alloc();
            r22 = [[r19 templateURL] retain];
            r21 = [r21 initWithURL:r22 MRAIDAd:r19];
            [r22 release];
            [r19 addTemplateAsset:r21];
            [r21 release];
    }
    [r20 downloadTemplateForAd:r19];
    [r19 release];
    return;
}

-(void)downloadTemplateForAd:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r19 = [arg2 retain];
    r23 = [[VNGPersistenceManager sharedManager] retain];
    r0 = [r21 placementID];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r25 = [r23 checkFileSystemSizeAvailabilityForCase:0x3 withError:&var_48 withPlacementID:r24];
    r20 = [var_48 retain];
    [r24 release];
    [r23 release];
    if (r25 != 0x0) {
            objc_initWeak(&stack[-96], r21);
            objc_alloc();
            [[r19 templateAsset] retain];
            [[r21 placementID] retain];
            objc_copyWeak(&var_88 + 0x30, &stack[-96]);
            var_68 = [r19 retain];
            r23 = [r23 initWithVungleMRAIDAsset:r24 placementID:r25 completion:&var_88];
            [r25 release];
            [r24 release];
            r0 = [r21 queue];
            r0 = [r0 retain];
            [r0 addOperation:r23];
            [r0 release];
            [r23 release];
            [var_68 release];
            objc_destroyWeak(&var_88 + 0x30);
            objc_destroyWeak(&stack[-96]);
    }
    else {
            if (r20 != 0x0) {
                    r0 = [r21 errors];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addObject:r2];
                    [r23 release];
            }
            r0 = [r21 ad];
            r0 = [r0 retain];
            [r0 setState:0x1];
            [r0 release];
            r23 = [[r21 completionBlock] retain];
            r0 = [r21 errors];
            r0 = [r0 retain];
            (*(r23 + 0x10))(r23, r19, [r0 copy]);
            [r22 release];
            [r21 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)operationDidFinish:(void *)arg2 withErrors:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [VungleRetrieveAssetOperation class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r20 allObjects];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 count];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = [r21 ad];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setState:0x1];
                    [r0 release];
            }
    }
    r23 = @selector(isKindOfClass:);
    [VungleRetrieveAssetOperation class];
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r20 allObjects];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 count];
            [r0 release];
            if (r23 == 0x0) {
                    r0 = [r19 retain];
                    r22 = r0;
                    r0 = [r0 asset];
                    r0 = [r0 retain];
                    r25 = [r0 type];
                    [r0 release];
                    r21 = [[r21 ad] retain];
                    r23 = [[r22 asset] retain];
                    if (r25 != 0x0) {
                            r1 = @selector(addTemplateAsset:);
                    }
                    else {
                            r1 = @selector(appendAsset:);
                    }
                    objc_msgSend(r21, r1);
                    [r23 release];
                    [r21 release];
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)ad {
    r0 = self->_ad;
    return r0;
}

-(void)setAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ad, arg2);
    return;
}

-(void)finishAssets:(void *)arg2 operations:(void *)arg3 {
    r31 = r31 - 0x1a0;
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
    r20 = self;
    var_130 = [arg2 retain];
    r0 = [arg3 retain];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r0;
    var_188 = r1;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 != 0x0) {
            var_138 = *var_110;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_110 != var_138) {
                                    objc_enumerationMutation(var_140);
                            }
                            r28 = *(var_118 + r23 * 0x8);
                            r0 = [r28 asset];
                            r29 = r29;
                            r21 = [r0 retain];
                            r22 = [var_130 containsObject:r21];
                            [r21 release];
                            if (r22 != 0x0) {
                                    if ([r28 isKindOfClass:[VungleRetrieveAssetOperation class]] != 0x0) {
                                            r0 = [r20 errors];
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            r0 = [r0 allObjects];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r19 = [r0 count];
                                            [r0 release];
                                            [r21 release];
                                            if (r19 != 0x0) {
                                                    r0 = [r20 ad];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 setState:0x1];
                                                    [r0 release];
                                            }
                                    }
                                    if ([r28 isKindOfClass:[VungleRetrieveAssetOperation class]] != 0x0) {
                                            r0 = [r20 errors];
                                            r0 = [r0 retain];
                                            r19 = r0;
                                            r0 = [r0 allObjects];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r22 = [r0 count];
                                            [r0 release];
                                            [r19 release];
                                            if (r22 == 0x0) {
                                                    r0 = [r28 retain];
                                                    r28 = r0;
                                                    r0 = [r0 asset];
                                                    r0 = [r0 retain];
                                                    r19 = r0;
                                                    r0 = [r0 type];
                                                    r21 = r20;
                                                    r20 = r0;
                                                    [r19 release];
                                                    r19 = r21;
                                                    r22 = [[r21 ad] retain];
                                                    r0 = [r28 asset];
                                                    r29 = r29;
                                                    r21 = [r0 retain];
                                                    r0 = r22;
                                                    if (r20 != 0x0) {
                                                            r1 = @selector(addTemplateAsset:);
                                                    }
                                                    else {
                                                            r1 = @selector(appendAsset:);
                                                    }
                                                    objc_msgSend(r0, r1);
                                                    [r28 release];
                                                    [r21 release];
                                                    [r22 release];
                                                    r20 = r19;
                                            }
                                    }
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < var_128);
                    r0 = objc_msgSend(var_140, var_188);
                    var_128 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_140 release];
    [var_130 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)downloadAssetsForAd:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x240;
    var_250 = self;
    r0 = [arg2 retain];
    r21 = r0;
    r0 = [r0 assets];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 == 0x0) {
            r0 = [r21 buildAssets];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            r19 = r20;
    }
    var_278 = [NSMutableArray new];
    var_190 = q0;
    r0 = [r19 retain];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_280 = r1;
    r0 = objc_msgSend(r0, r1);
    var_258 = r23;
    var_238 = r0;
    var_288 = r21;
    if (r0 == 0x0) goto loc_100648aec;

loc_100648920:
    var_240 = *var_190;
    goto loc_10064892c;

loc_10064892c:
    r19 = 0x0;
    r24 = var_250;
    goto loc_10064897c;

loc_10064897c:
    if (*var_190 != var_240) {
            objc_enumerationMutation(var_258);
    }
    r20 = *(var_198 + r19 * 0x8);
    r28 = [[VNGPersistenceManager sharedManager] retain];
    r0 = [r24 placementID];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [r28 checkFileSystemSizeAvailabilityForCase:0x3 withError:&var_1A8 withPlacementID:r23];
    r21 = [var_1A8 retain];
    [r23 release];
    [r28 release];
    if (r22 == 0x0) goto loc_100648a84;

loc_100648a14:
    if ([r20 type] != 0x0) goto loc_100648ab0;

loc_100648a24:
    r22 = objc_alloc();
    r0 = [r24 placementID];
    r29 = r29;
    r23 = [r0 retain];
    r20 = [r22 initWithVungleMRAIDAsset:r2 placementID:r3 completion:r4];
    r24 = var_250;
    [r23 release];
    r0 = var_278;
    goto loc_100648aa4;

loc_100648aa4:
    [r0 addObject:r2];
    [r20 release];
    goto loc_100648ab0;

loc_100648ab0:
    [r21 release];
    r19 = r19 + 0x1;
    if (r19 < var_238) goto loc_10064897c;

loc_100648ac8:
    r23 = var_258;
    r0 = objc_msgSend(r23, var_280);
    var_238 = r0;
    if (r0 != 0x0) goto loc_10064892c;

loc_100648aec:
    [r23 release];
    r24 = var_250;
    r0 = [r24 errors];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 allObjects];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    [r20 release];
    if (r22 != 0x0) {
            r0 = [r24 ad];
            r0 = [r0 retain];
            [r0 setState:0x1];
            [r0 release];
            r20 = [[r24 completionBlock] retain];
            r0 = [r24 errors];
            r0 = [r0 retain];
            r21 = [r0 copy];
            r22 = var_288;
            (*(r20 + 0x10))(r20, r22, r21);
            [r21 release];
            [r19 release];
            [r20 release];
    }
    else {
            r0 = [var_278 retain];
            r20 = r0;
            var_1C8 = r0;
            var_1C0 = [r23 retain];
            var_1B0 = [var_288 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_1E8];
            r29 = r29;
            r24 = [r0 retain];
            var_220 = q0;
            r0 = [r20 retain];
            var_238 = r0;
            r0 = objc_msgSend(r0, var_280);
            if (r0 != 0x0) {
                    r20 = r0;
                    r28 = *var_220;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_220 != r28) {
                                            objc_enumerationMutation(var_238);
                                    }
                                    r21 = *(var_228 + r19 * 0x8);
                                    [r24 addDependency:r21];
                                    r0 = [r21 downloadOperation];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = [r21 downloadOperation];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r24 addDependency:r22];
                                            [r22 release];
                                    }
                                    r0 = [var_250 queue];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 addOperation:r2];
                                    [r22 release];
                                    r19 = r19 + 0x1;
                            } while (r19 < r20);
                            r0 = objc_msgSend(var_238, var_280);
                            r20 = r0;
                    } while (r0 != 0x0);
            }
            [var_238 release];
            r0 = [var_250 queue];
            r0 = [r0 retain];
            [r0 addOperation:r24];
            [r0 release];
            [r24 release];
            [var_1B0 release];
            [var_1C0 release];
            [var_1C8 release];
            r22 = var_288;
            r23 = var_258;
    }
    var_60 = **___stack_chk_guard;
    [var_278 release];
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_100648a84:
    r0 = [r24 errors];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    goto loc_100648aa4;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void *)errors {
    r0 = self->_errors;
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setErrors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_errors, arg2);
    return;
}

-(void *)completionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionBlock)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_errors, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_ad, 0x0);
    return;
}

-(void)setCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end
@implementation FBAdChooseYourOwnAdDataModel

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_choosableAds, 0x0);
    objc_storeStrong((int64_t *)&self->_config, 0x0);
    return;
}

-(void *)config {
    r0 = self->_config;
    return r0;
}

-(bool)isValid {
    r31 = r31 - 0x120;
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
    r19 = self;
    r0 = [self choosableAds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 == 0x0) goto loc_100a21ed0;

loc_100a21e04:
    var_100 = q0;
    r0 = [r19 choosableAds];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100a21eb8;

loc_100a21e48:
    r21 = r0;
    r23 = *var_100;
    goto loc_100a21e58;

loc_100a21e58:
    r25 = 0x0;
    goto loc_100a21e60;

loc_100a21e60:
    if (*var_100 != r23) {
            objc_enumerationMutation(r19);
    }
    if ([*(var_108 + r25 * 0x8) isValid] == 0x0) goto loc_100a21ec0;

loc_100a21e8c:
    r25 = r25 + 0x1;
    if (r25 < r21) goto loc_100a21e60;

loc_100a21e98:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r21 = r0;
    if (r0 != 0x0) goto loc_100a21e58;

loc_100a21eb8:
    r20 = 0x1;
    goto loc_100a21ec4;

loc_100a21ec4:
    [r19 release];
    goto loc_100a21ed4;

loc_100a21ed4:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a21ec0:
    r20 = 0x0;
    goto loc_100a21ec4;

loc_100a21ed0:
    r20 = 0x0;
    goto loc_100a21ed4;
}

-(void *)cacheKeysForCreatives {
    r31 = r31 - 0x130;
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
    r19 = [NSMutableArray new];
    var_110 = q0;
    r0 = [self choosableAds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r26 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = *(var_118 + r27 * 0x8);
                            r0 = [r0 cacheKeysForCreatives];
                            r29 = r29;
                            [r0 retain];
                            [r19 addObjectsFromArray:r2];
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [[&var_F0 super] initWithMetadata:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [FBAdChooseYourOwnAdConfig alloc];
            r22 = @selector(initWithMetadata:);
            r0 = [r0 initWithMetadata:r2];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_config));
            r8 = *(r19 + r9);
            r21 = r19;
            *(r19 + r9) = r0;
            [r8 release];
            r23 = [NSMutableArray new];
            var_120 = q0;
            var_150 = r20;
            r0 = [r20 arrayForKey:@"choosable_ads" orDefault:**___NSArray0__];
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_148 = r1;
            var_140 = r0;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r26 = r0;
                    r24 = *var_120;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_120 != r24) {
                                            objc_enumerationMutation(var_140);
                                    }
                                    r19 = @selector(addObject:);
                                    [objc_msgSend([FBRewardedVideoAdDataModel alloc], r22) setIconType:[r21 iconType]];
                                    objc_msgSend(r23, r19);
                                    [r25 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r26);
                            r0 = objc_msgSend(var_140, var_148);
                            r26 = r0;
                    } while (r0 != 0x0);
            }
            [var_140 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_choosableAds));
            r19 = r21;
            r0 = *(r21 + r8);
            *(r21 + r8) = r23;
            [r0 release];
            r20 = var_150;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)choosableAds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_choosableAds)), 0x0);
    return r0;
}

-(void)setChoosableAds:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end
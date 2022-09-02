@implementation MCPromoOffer

+(void *)getOfferFromConfiguration:(void *)arg2 {
    r0 = [self getOfferFromConfiguration:arg2 withError:&var_8];
    return r0;
}

+(void *)getOfferFromConfiguration:(void *)arg2 withError:(void * *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r3;
            r20 = r2;
            if ([r2 count] != 0x0) {
                    r0 = objc_alloc();
                    r0 = [r0 initWithConfiguration:r20 withError:r19];
                    r0 = [r0 autorelease];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)init {
    return 0x0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r0 = [self initWithConfiguration:arg2 withError:&var_8];
    return r0;
}

-(int)getPromoTypeFromStringId:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = 0x3;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                    r0 = 0x1;
                            }
                            else {
                                    r0 = [r19 isEqualToString:r2];
                                    if (r0 == 0x0) {
                                            asm { cinc       w0, w8, eq };
                                    }
                            }
                    }
            }
    }
    else {
            r0 = 0x3;
    }
    return r0;
}

-(double)loadDeltaTimeFromConfig:(void *)arg2 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r26 = @selector(objectForKey:);
    r25 = objc_msgSend(arg2, r26);
    r24 = objc_msgSend(arg2, r26);
    r23 = objc_msgSend(arg2, r26);
    r22 = objc_msgSend(arg2, r26);
    r21 = objc_msgSend(arg2, r26);
    r20 = objc_msgSend(arg2, r26);
    r0 = objc_msgSend(arg2, r26);
    r19 = r0;
    if (r25 != 0x0) {
            r0 = [r25 doubleValue];
            d0 = d0 * *0x100bfa1b0 * 0x0;
            d8 = d0 + 0x0;
            if (r24 != 0x0) {
                    r0 = [r24 doubleValue];
                    d0 = d0 * 0x0;
                    d8 = d8 + d0;
            }
    }
    else {
            d8 = 0x0;
            if (r24 != 0x0) {
                    r0 = [r24 doubleValue];
                    d0 = d0 * 0x0;
                    d8 = d8 + d0;
            }
    }
    if (r23 != 0x0) {
            r0 = [r23 doubleValue];
            d0 = d0 * 0x0;
            d8 = d8 + d0;
    }
    if (r22 != 0x0) {
            r0 = [r22 doubleValue];
            d0 = d0 * 0x0;
            d8 = d8 + d0;
    }
    if (r21 != 0x0) {
            r0 = [r21 doubleValue];
            d0 = d0 * 0x0;
            d8 = d8 + d0;
    }
    if (r20 != 0x0) {
            r0 = [r20 doubleValue];
            d0 = d0 * 0x404e000000000000;
            d8 = d8 + d0;
    }
    if (r19 != 0x0) {
            r0 = [r19 doubleValue];
    }
    return r0;
}

-(void)reset {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            r19 = r0;
            r8 = *(int32_t *)(r0 + 0x180);
            if ((r8 | 0x4) != 0x4) {
                    r0 = *(r19 + 0x168);
                    if (r0 != 0x0) {
                            if (r8 == 0x2) {
                                    r0 = *(r19 + 0xc0);
                                    if (r0 != 0x0 && [r0 count] != 0x0) {
                                            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                                    }
                                    [*(r19 + 0x168) offerDeactivated:r19];
                                    if (*(int8_t *)(r19 + 0x184) != 0x0) {
                                            [*(r19 + 0x168) hideOfferPopUp:r19];
                                    }
                                    *(int8_t *)(r19 + 0x184) = 0x0;
                                    r0 = *(r19 + 0x168);
                            }
                            if ([r0 respondsToSelector:@selector(offerReset:)] != 0x0) {
                                    r3 = r19;
                                    [*(r19 + 0x168) performSelector:@selector(offerReset:) withObject:r3];
                            }
                    }
                    [r19 setOfferState:0x0 timestamp:r3];
            }
    }
    return;
}

-(void)kill {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            r19 = r0;
            r8 = *(int32_t *)(r0 + 0x180);
            if ((r8 | 0x4) != 0x4) {
                    r0 = *(r19 + 0x168);
                    if (r0 != 0x0) {
                            if (r8 == 0x2) {
                                    r0 = *(r19 + 0xc0);
                                    if (r0 != 0x0 && [r0 count] != 0x0) {
                                            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                                    }
                                    [*(r19 + 0x168) offerDeactivated:r19];
                                    if (*(int8_t *)(r19 + 0x184) != 0x0) {
                                            [*(r19 + 0x168) hideOfferPopUp:r19];
                                    }
                                    *(int8_t *)(r19 + 0x184) = 0x0;
                                    r0 = *(r19 + 0x168);
                            }
                            if ([r0 respondsToSelector:@selector(offerKilled:)] != 0x0) {
                                    r3 = r19;
                                    [*(r19 + 0x168) performSelector:@selector(offerKilled:) withObject:r3];
                            }
                    }
                    [r19 setOfferState:0x4 timestamp:r3];
            }
    }
    return;
}

-(double)badgeRemainingTime {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(r0 + 0x180) != 0x2) goto .l3;

loc_1009ddafc:
    r19 = r0;
    d0 = *(r0 + 0x178);
    if (d0 < 0x0) goto .l3;

loc_1009ddb0c:
    r0 = *(r19 + 0xe8);
    if (r0 == 0x0) goto loc_1009ddb58;

loc_1009ddb14:
    r0 = [r0 respondsToSelector:r2];
    if (r0 == 0x0) goto .l3;

loc_1009ddb30:
    r0 = *(r19 + 0xe8);
    r0 = [r0 timeToNextActivation];
    if (d0 >= 0x0) {
            if (d0 > *(r19 + 0x48)) {
                    asm { fccmp      d1, d2, #0x4, gt };
            }
            if (!CPU_FLAGS & E) {
                    d0 = *(r19 + 0x48);
            }
    }
    else {
            d0 = *(r19 + 0x48);
    }
    goto loc_1009ddb5c;

loc_1009ddb5c:
    if (d0 >= 0x0) {
            d1 = *(r19 + 0x178);
    }
    return r0;

.l3:
    return r0;

loc_1009ddb58:
    d0 = *(r19 + 0x48);
    goto loc_1009ddb5c;
}

-(void *)getPopUpDismissedEvent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(self + 0x130);
    r0 = [r0 getActivationEvents:0x0];
    if (r0 != 0x0) {
            r19 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [r19 objectAtIndex:r2];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getKillEvent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = *(self + 0x150);
    [MCPromoWaitForEventTrigger class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r0 = *(r19 + 0x150);
            r0 = [r0 getActivationEvents:0x0];
            if (r0 != 0x0) {
                    r19 = r0;
                    if ([r0 count] != 0x0) {
                            r0 = [r19 objectAtIndex:r2];
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setPopUpActiveState:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r8 = *(int8_t *)(self + 0x184);
    if (r8 != 0x0 && (r20 & 0x1) == 0x0) {
            r0 = [r19 getPopUpDismissedEvent];
            if (r0 != 0x0) {
                    r19 = r0;
                    if ([r0 count] != 0x0) {
                            [[MCPromoEventDispatcher sharedMCPromoEventDispatcher] postEvent:r19];
                    }
            }
    }
    else {
            if (r8 == 0x0) {
                    asm { ccmp       w20, #0x0, #0x4, eq };
            }
            if (!CPU_FLAGS & E) {
                    [*(r19 + 0x128) setEnabled:r2];
                    objc_msgSend(*(r19 + 0x130), r21);
                    *(int8_t *)(r19 + 0x184) = r20;
            }
    }
    return;
}

-(bool)isPopUpActive {
    r0 = *(int8_t *)(self + 0x184);
    return r0;
}

-(void)setOfferState:(int)arg2 timestamp:(double)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1f0;
    var_50 = d9;
    stack[-88] = d8;
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
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            if (*(int32_t *)(r0 + 0x180) != r2) {
                    asm { ccmp       w2, #0x4, #0x2, ne };
            }
            if (!CPU_FLAGS & B) {
                    if (**___stack_chk_guard != **___stack_chk_guard) {
                            __stack_chk_fail();
                    }
            }
            else {
                    (0x1009dddf4 + *(int8_t *)(0x100bfa1a1 + r2) * 0x4)();
            }
    }
    else {
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)processTime:(double)arg2 {
    r2 = arg2;
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    v8 = v0;
    r19 = self;
    r28 = *(int32_t *)(self + 0x180);
    goto loc_1009de890;

loc_1009de890:
    r8 = r28;
    if ((r28 | 0x4) == 0x4) goto loc_1009dea14;

loc_1009de8a0:
    r0 = [*(r19 + 0x150) isKindOfClass:[MCPromoWaitForTimeBaseTrigger class]];
    r24 = *(r19 + 0x150);
    if (r0 != 0x0) goto loc_1009de8ec;

loc_1009de8c8:
    if ([r24 isKindOfClass:[MCPromoWaitForNestedTriggersBaseTrigger class]] == 0x0) goto loc_1009de8fc;

loc_1009de8e8:
    r24 = *(r19 + 0x150);
    goto loc_1009de8ec;

loc_1009de8ec:
    [r24 setCurrentTimestamp:r2];
    goto loc_1009de8fc;

loc_1009de8fc:
    r0 = [*(r19 + 0x148) isKindOfClass:[MCPromoWaitForTimeBaseTrigger class]];
    r24 = *(r19 + 0x148);
    if (r0 != 0x0) goto loc_1009de948;

loc_1009de924:
    if ([r24 isKindOfClass:[MCPromoWaitForNestedTriggersBaseTrigger class]] == 0x0) goto loc_1009de958;

loc_1009de944:
    r24 = *(r19 + 0x148);
    goto loc_1009de948;

loc_1009de948:
    [r24 setCurrentTimestamp:r2];
    goto loc_1009de958;

loc_1009de958:
    r0 = [*(r19 + 0x158) isKindOfClass:[MCPromoWaitForTimeBaseTrigger class]];
    r24 = *(r19 + 0x158);
    if (r0 != 0x0) goto loc_1009de9a4;

loc_1009de980:
    if ([r24 isKindOfClass:[MCPromoWaitForNestedTriggersBaseTrigger class]] == 0x0) goto loc_1009de9b4;

loc_1009de9a0:
    r24 = *(r19 + 0x158);
    goto loc_1009de9a4;

loc_1009de9a4:
    [r24 setCurrentTimestamp:r2];
    goto loc_1009de9b4;

loc_1009de9b4:
    r0 = [*(r19 + 0x160) isKindOfClass:[MCPromoWaitForTimeBaseTrigger class]];
    r24 = *(r19 + 0x160);
    if (r0 != 0x0) goto loc_1009dea00;

loc_1009de9dc:
    if ([r24 isKindOfClass:[MCPromoWaitForNestedTriggersBaseTrigger class]] == 0x0) goto loc_1009dea10;

loc_1009de9fc:
    r24 = *(r19 + 0x160);
    goto loc_1009dea00;

loc_1009dea00:
    [r24 setCurrentTimestamp:r2];
    goto loc_1009dea10;

loc_1009dea10:
    r8 = *(int32_t *)(r19 + 0x180);
    goto loc_1009dea14;

loc_1009dea14:
    if (r8 > 0x3) goto loc_1009deb94;

loc_1009dea1c:
    (0x1009dea30 + *(int8_t *)(0x100bfa1a6 + r8) * 0x4)();
    return;

.l1:
    return;

loc_1009deb94:
    r8 = *(int32_t *)(r19 + 0x180);
    COND = r28 != r8;
    r28 = r8;
    if (COND) goto loc_1009de890;
}

-(void)startTriggerActivated {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *(r0 + 0xb0);
    if (r20 == 0x0) goto .l1;

loc_1009dec0c:
    r19 = r0;
    if (*(int8_t *)(r0 + 0x185) != 0x0 || *(int32_t *)(r19 + 0x180) != 0x1) goto .l1;

loc_1009dec24:
    d0 = *(r19 + 0x50);
    if (d0 <= 0x0 || *(r19 + 0x178) < d0) goto loc_1009dec3c;

loc_1009decd4:
    [r19 kill];
    return;

.l1:
    return;

loc_1009dec3c:
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    r20 = *(r19 + 0xb0);
    if (r0 == 0x0) goto loc_1009dec98;

loc_1009dec74:
    r0 = r20;
    goto loc_1009decc8;

loc_1009decc8:
    [r0 lastActivationTimestamp];
    v8 = v0;
    goto loc_1009decf8;

loc_1009decf8:
    [*(r19 + 0xb0) softReset];
    [*(r19 + 0xb0) setEnabled:0x0];
    [r19 setOfferState:0x2 timestamp:r3];
    return;

loc_1009dec98:
    r22 = @selector(isKindOfClass:);
    [MCPromoWaitForNestedTriggersBaseTrigger class];
    if (objc_msgSend(r20, r22) == 0x0) goto loc_1009decf8;

loc_1009decbc:
    r0 = *(r19 + 0xb0);
    goto loc_1009decc8;
}

-(void)popUpTriggerActivated {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *(r0 + 0x128);
    if (r20 == 0x0) goto .l1;

loc_1009ded5c:
    r19 = r0;
    if (*(int8_t *)(r19 + 0x184) != 0x0 || *(int8_t *)(r0 + 0x185) != 0x0 || *(int32_t *)(r19 + 0x180) != 0x2) goto .l1;

loc_1009ded8c:
    *(int8_t *)(r19 + 0x184) = 0x1;
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    r20 = *(r19 + 0x128);
    if (r0 == 0x0) goto loc_1009deddc;

loc_1009dedcc:
    r0 = r20;
    goto loc_1009dee0c;

loc_1009dee0c:
    [r0 lastActivationTimestamp];
    goto loc_1009dee10;

loc_1009dee10:
    [*(r19 + 0x128) softReset];
    [*(r19 + 0x128) setEnabled:r2];
    objc_msgSend(*(r19 + 0x130), r20);
    r0 = *(r19 + 0x168);
    if (r0 != 0x0) {
            [r0 showOfferPopUp:r19 prioritize:0x0];
    }
    return;

.l1:
    return;

loc_1009deddc:
    r22 = @selector(isKindOfClass:);
    [MCPromoWaitForNestedTriggersBaseTrigger class];
    if (objc_msgSend(r20, r22) == 0x0) goto loc_1009dee10;

loc_1009dee00:
    r0 = *(r19 + 0x128);
    goto loc_1009dee0c;
}

-(void)popUpDismissedTriggerActivated {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x130);
    if (*(int8_t *)(r19 + 0x184) == 0x0 || *(int8_t *)(r19 + 0x185) != 0x0 || r0 == 0x0 || *(int32_t *)(r19 + 0x180) != 0x2) goto .l1;

loc_1009deec0:
    *(int8_t *)(r19 + 0x184) = 0x0;
    r8 = *(r19 + 0x168);
    if (r8 != 0x0) {
            [r8 hideOfferPopUp:r19];
            r0 = *(r19 + 0x130);
    }
    [r0 reset];
    [*(r19 + 0x130) setEnabled:r2];
    r0 = *(r19 + 0x128);
    if (r0 == 0x0) goto .l1;

loc_1009def14:
    r22 = r19 + 0x128;
    if (*(r19 + 0xe8) != 0x0) goto loc_1009defa8;

loc_1009def20:
    if (([r0 reachedMaxActivations] & 0x1) == 0x0) goto loc_1009defa4;

loc_1009def30:
    if (*(r19 + 0x168) != 0x0) {
            r0 = *(r19 + 0xc0);
            if (r0 != 0x0) {
                    if ([r0 count] != 0x0) {
                            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                    }
            }
            [*(r19 + 0x168) offerDeactivated:r19];
    }
    [r19 setOfferState:0x3 timestamp:r3];
    return;

.l1:
    return;

loc_1009defa4:
    r0 = *r22;
    goto loc_1009defa8;

loc_1009defa8:
    [r0 setEnabled:r2];
    r21 = *r22;
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r21 isKindOfClass:r2];
    r21 = *r22;
    if (r0 == 0x0) goto loc_1009df000;

loc_1009deff0:
    r0 = r21;
    goto loc_1009df030;

loc_1009df030:
    [r0 setCurrentTimestamp:r2];
    return;

loc_1009df000:
    r20 = @selector(isKindOfClass:);
    [MCPromoWaitForNestedTriggersBaseTrigger class];
    if (objc_msgSend(r21, r20) == 0x0) goto .l1;

loc_1009df024:
    r0 = *r22;
    goto loc_1009df030;
}

-(void)dealloc {
    r31 = r31 - 0x150;
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
    r19 = self;
    [*(self + 0xb0) setDelegateParameter:r2];
    r0 = *(r19 + 0xb0);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xb0) = 0x0;
    }
    [*(r19 + 0xb8) setDelegateParameter:r2];
    r0 = *(r19 + 0xb8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xb8) = 0x0;
    }
    [*(r19 + 0x150) setDelegateParameter:r2];
    r0 = *(r19 + 0x150);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x150) = 0x0;
    }
    [*(r19 + 0x148) setDelegateParameter:r2];
    r0 = *(r19 + 0x148);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x148) = 0x0;
    }
    [*(r19 + 0x158) setDelegateParameter:r2];
    r0 = *(r19 + 0x158);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x158) = 0x0;
    }
    [*(r19 + 0x160) setDelegateParameter:r2];
    r0 = *(r19 + 0x160);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x160) = 0x0;
    }
    [*(r19 + 0xe8) setDelegateParameter:r2];
    r0 = *(r19 + 0xe8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xe8) = 0x0;
    }
    [*(r19 + 0x128) setDelegateParameter:r2];
    r0 = *(r19 + 0x128);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x128) = 0x0;
    }
    [*(r19 + 0x130) setDelegateParameter:r2];
    r0 = *(r19 + 0x130);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x130) = 0x0;
    }
    r0 = *(r19 + 0xd0);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xd0) = 0x0;
    }
    r0 = *(r19 + 0xd8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xd8) = 0x0;
    }
    r0 = *(r19 + 0xf0);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xf0) = 0x0;
    }
    r0 = *(r19 + 0xf8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xf8) = 0x0;
    }
    r0 = *(r19 + 0x118);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x118) = 0x0;
    }
    r0 = *(r19 + 0xe0);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xe0) = 0x0;
    }
    r0 = *(r19 + 0x120);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x120) = 0x0;
    }
    r0 = *(r19 + 0x88);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x88) = 0x0;
    }
    r0 = *(r19 + 0x90);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x90) = 0x0;
    }
    r0 = *(r19 + 0x98);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x98) = 0x0;
    }
    r0 = *(r19 + 0xa0);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xa0) = 0x0;
    }
    r0 = *(r19 + 0xa8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xa8) = 0x0;
    }
    var_110 = q0;
    var_138 = r19;
    r0 = *(r19 + 0x138);
    r0 = [r0 allValues];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r26 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_118 + r19 * 0x8) setSuccessDelegateParameter:r2];
                            objc_msgSend(r25, r24);
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    r19 = var_138;
    r0 = *(r19 + 0x138);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x138) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0xc0);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0xc0) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x100);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x100) = 0x0;
    }
    r0 = *(r19 + 0x108);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x108) = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [[&var_130 super] dealloc];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)badgeEndTriggerActivated {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *(r0 + 0xe8);
    if (r20 == 0x0) goto .l1;

loc_1009df064:
    r19 = r0;
    if (*(int8_t *)(r0 + 0x185) != 0x0 || *(int32_t *)(r19 + 0x180) != 0x2) goto .l1;

loc_1009df07c:
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    r20 = *(r19 + 0xe8);
    if (r0 == 0x0) goto loc_1009df0d8;

loc_1009df0b4:
    r0 = r20;
    goto loc_1009df108;

loc_1009df108:
    [r0 lastActivationTimestamp];
    v8 = v0;
    goto loc_1009df118;

loc_1009df118:
    if (*(r19 + 0x168) != 0x0) {
            r0 = *(r19 + 0xc0);
            if (r0 != 0x0) {
                    if ([r0 count] != 0x0) {
                            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                    }
            }
            if (*(int8_t *)(r19 + 0x184) != 0x0) {
                    [*(r19 + 0x168) hideOfferPopUp:r19];
            }
            [*(r19 + 0x168) offerDeactivated:r19];
    }
    [*(r19 + 0xe8) softReset];
    [*(r19 + 0xe8) setEnabled:0x0];
    r0 = *(r19 + 0x128);
    if (r0 != 0x0) {
            [r0 reset];
            [*(r19 + 0x128) setEnabled:0x0];
    }
    [*(r19 + 0x130) reset];
    [*(r19 + 0x130) setEnabled:0x0];
    if (*(int8_t *)(r19 + 0x184) != 0x0) {
            *(int8_t *)(r19 + 0x184) = 0x0;
    }
    if (*(r19 + 0x158) != 0x0 && *(r19 + 0x160) == 0x0) {
            *(int8_t *)(r19 + 0x186) = 0x0;
    }
    [r19 setOfferState:0x3 timestamp:r3];
    return;

.l1:
    return;

loc_1009df0d8:
    r22 = @selector(isKindOfClass:);
    [MCPromoWaitForNestedTriggersBaseTrigger class];
    if (objc_msgSend(r20, r22) == 0x0) goto loc_1009df118;

loc_1009df0fc:
    r0 = *(r19 + 0xe8);
    goto loc_1009df108;
}

-(void)wakeUpTriggerActivated {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *(r0 + 0xb8);
    if (r20 == 0x0) goto .l1;

loc_1009df250:
    r19 = r0;
    if (*(int8_t *)(r0 + 0x185) != 0x0 || *(int32_t *)(r19 + 0x180) != 0x3) goto .l1;

loc_1009df268:
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    r20 = *(r19 + 0xb8);
    if (r0 == 0x0) goto loc_1009df2c4;

loc_1009df2a0:
    r0 = r20;
    goto loc_1009df2f4;

loc_1009df2f4:
    [r0 lastActivationTimestamp];
    v8 = v0;
    goto loc_1009df304;

loc_1009df304:
    [*(r19 + 0xb8) softReset];
    [*(r19 + 0xb8) setEnabled:0x0];
    [r19 setOfferState:0x1 timestamp:r3];
    return;

.l1:
    return;

loc_1009df2c4:
    r22 = @selector(isKindOfClass:);
    [MCPromoWaitForNestedTriggersBaseTrigger class];
    if (objc_msgSend(r20, r22) == 0x0) goto loc_1009df304;

loc_1009df2e8:
    r0 = *(r19 + 0xb8);
    goto loc_1009df2f4;
}

-(void)interruptTriggerActivated {
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x158) != 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + 0x186) = 0x1;
            r0 = *(r0 + 0x168);
            if (r0 != 0x0) {
                    [r0 offerDeactivated:r19];
                    r0 = *(r19 + 0xc0);
                    if (r0 != 0x0 && [r0 count] != 0x0) {
                            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                    }
            }
            r0 = *(r19 + 0x160);
            if (r0 != 0x0) {
                    [r0 setEnabled:0x1];
                    r23 = *(r19 + 0x160);
                    [MCPromoWaitForTimeBaseTrigger class];
                    if ([r23 isKindOfClass:r2] != 0x0) {
                            r22 = @selector(isKindOfClass:);
                            r23 = *(r19 + 0x158);
                            r2 = [MCPromoWaitForTimeBaseTrigger class];
                            if (objc_msgSend(r23, r22) != 0x0) {
                                    [*(r19 + 0x158) lastActivationTimestamp];
                                    [*(r19 + 0x160) setCurrentTimestamp:r2];
                            }
                    }
                    [*(r19 + 0x158) setEnabled:0x0];
            }
    }
    return;
}

-(void)resetTriggerActivated {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x148) == 0x0) goto .l6;

loc_1009df518:
    r19 = r0;
    if (*(int8_t *)(r0 + 0x185) != 0x0 || (*(int32_t *)(r19 + 0x180) | 0x4) == 0x4) goto .l6;

loc_1009df548:
    r22 = *(r19 + 0x150);
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r22 isKindOfClass:r2];
    r22 = *(r19 + 0x150);
    if (r0 == 0x0) goto loc_1009df594;

loc_1009df584:
    r0 = r22;
    goto loc_1009df5c4;

loc_1009df5c4:
    [r0 lastActivationTimestamp];
    v8 = v0;
    goto loc_1009df5d4;

loc_1009df5d4:
    r0 = *(r19 + 0x168);
    if (r0 != 0x0) {
            if (*(int32_t *)(r19 + 0x180) == 0x2) {
                    r0 = *(r19 + 0xc0);
                    if (r0 != 0x0) {
                            if ([r0 count] != 0x0) {
                                    [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                            }
                    }
                    [*(r19 + 0x168) offerDeactivated:r19];
                    if (*(int8_t *)(r19 + 0x184) != 0x0) {
                            [*(r19 + 0x168) hideOfferPopUp:r19];
                    }
                    *(int8_t *)(r19 + 0x184) = 0x0;
                    r0 = *(r19 + 0x168);
            }
            if ([r0 respondsToSelector:@selector(offerReset:)] != 0x0) {
                    r3 = r19;
                    [*(r19 + 0x168) performSelector:@selector(offerReset:) withObject:r3];
            }
    }
    [r19 setOfferState:0x0 timestamp:r3];
    return;

.l6:
    return;

loc_1009df594:
    r21 = @selector(isKindOfClass:);
    [MCPromoWaitForNestedTriggersBaseTrigger class];
    if (objc_msgSend(r22, r21) == 0x0) goto loc_1009df5d4;

loc_1009df5b8:
    r0 = *(r19 + 0x150);
    goto loc_1009df5c4;
}

-(void)killTriggerActivated {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *(r0 + 0x150);
    if (r20 == 0x0) goto .l1;

loc_1009df36c:
    r19 = r0;
    if (*(int8_t *)(r0 + 0x185) != 0x0 || (*(int32_t *)(r19 + 0x180) | 0x4) == 0x4) goto .l1;

loc_1009df39c:
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    r20 = *(r19 + 0x150);
    if (r0 == 0x0) goto loc_1009df3e4;

loc_1009df3d4:
    r0 = r20;
    goto loc_1009df414;

loc_1009df414:
    [r0 lastActivationTimestamp];
    v8 = v0;
    goto loc_1009df424;

loc_1009df424:
    r0 = *(r19 + 0x168);
    if (r0 != 0x0) {
            if (*(int32_t *)(r19 + 0x180) == 0x2) {
                    r0 = *(r19 + 0xc0);
                    if (r0 != 0x0) {
                            if ([r0 count] != 0x0) {
                                    [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                            }
                    }
                    [*(r19 + 0x168) offerDeactivated:r19];
                    if (*(int8_t *)(r19 + 0x184) != 0x0) {
                            [*(r19 + 0x168) hideOfferPopUp:r19];
                    }
                    *(int8_t *)(r19 + 0x184) = 0x0;
                    r0 = *(r19 + 0x168);
            }
            if ([r0 respondsToSelector:@selector(offerKilled:)] != 0x0) {
                    r3 = r19;
                    [*(r19 + 0x168) performSelector:@selector(offerKilled:) withObject:r3];
            }
    }
    [r19 setOfferState:0x4 timestamp:r3];
    return;

.l1:
    return;

loc_1009df3e4:
    r22 = @selector(isKindOfClass:);
    [MCPromoWaitForNestedTriggersBaseTrigger class];
    if (objc_msgSend(r20, r22) == 0x0) goto loc_1009df424;

loc_1009df408:
    r0 = *(r19 + 0x150);
    goto loc_1009df414;
}

-(void)resumeTriggerActivated {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x160) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(r0 + 0x186) != 0x0) {
                    *(int8_t *)(r19 + 0x186) = 0x0;
                    r0 = *(r19 + 0x168);
                    if (*(int32_t *)(r19 + 0x180) == 0x2 && r0 != 0x0 && *(int8_t *)(r19 + 0x185) == 0x0) {
                            [r0 offerActivated:r19];
                            r0 = *(r19 + 0xc0);
                            if (r0 != 0x0) {
                                    if ([r0 count] != 0x0) {
                                            [*(r19 + 0x168) activateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                                    }
                            }
                    }
                    [*(r19 + 0x158) setEnabled:r2];
            }
    }
    return;
}

-(void)actionFailure:(void *)arg2 {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            [[MCPromoEventDispatcher sharedMCPromoEventDispatcher] postEvent:[NSArray arrayWithObjects:[@"PROMO_OFFER_ACTION_FAILURE" stringByAppendingString:*(r0 + 0x18)]]];
    }
    return;
}

-(int)getCurrentOfferState {
    r0 = *(int32_t *)(self + 0x180);
    return r0;
}

-(void)setCurrentTimestamp:(double)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *(int32_t *)(r0 + 0x180);
    if (r8 != 0x4) {
            r19 = r0;
            if (d0 >= 0x0) {
                    asm { ccmp       w9, #0x0, #0x0, pl };
            }
            if (!CPU_FLAGS & NE) {
                    d1 = *(r19 + 0x178);
                    if (d1 < 0x0) {
                            *(r19 + 0x178) = d0;
                            d1 = *(int128_t *)(r19 + 0x48);
                            d2 = *(int128_t *)(r19 + 0x50);
                            if (d1 <= d0 && d1 >= 0x0) {
                                    *(r19 + 0x178) = d1;
                                    r0 = *(r19 + 0x168);
                                    if (r0 != 0x0) {
                                            if (r8 == 0x2) {
                                                    r0 = *(r19 + 0xc0);
                                                    if (r0 != 0x0) {
                                                            if ([r0 count] != 0x0) {
                                                                    [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                                                            }
                                                    }
                                                    [*(r19 + 0x168) offerDeactivated:r19];
                                                    if (*(int8_t *)(r19 + 0x184) != 0x0) {
                                                            [*(r19 + 0x168) hideOfferPopUp:r19];
                                                    }
                                                    *(int8_t *)(r19 + 0x184) = 0x0;
                                                    r0 = *(r19 + 0x168);
                                            }
                                            if ([r0 respondsToSelector:@selector(offerKilled:)] != 0x0) {
                                                    r3 = r19;
                                                    [*(r19 + 0x168) performSelector:@selector(offerKilled:) withObject:r3];
                                            }
                                    }
                                    [r19 setOfferState:0x4 timestamp:r3];
                            }
                            else {
                                    if (d2 > 0x0 && (r8 | 0x2) == 0x3 && d2 <= d0) {
                                            *(r19 + 0x178) = d1;
                                            r0 = *(r19 + 0x168);
                                            if (r0 != 0x0) {
                                                    if (r8 == 0x2) {
                                                            r0 = *(r19 + 0xc0);
                                                            if (r0 != 0x0) {
                                                                    if ([r0 count] != 0x0) {
                                                                            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                                                                    }
                                                            }
                                                            [*(r19 + 0x168) offerDeactivated:r19];
                                                            if (*(int8_t *)(r19 + 0x184) != 0x0) {
                                                                    [*(r19 + 0x168) hideOfferPopUp:r19];
                                                            }
                                                            *(int8_t *)(r19 + 0x184) = 0x0;
                                                            r0 = *(r19 + 0x168);
                                                    }
                                                    if ([r0 respondsToSelector:@selector(offerKilled:)] != 0x0) {
                                                            r3 = r19;
                                                            [*(r19 + 0x168) performSelector:@selector(offerKilled:) withObject:r3];
                                                    }
                                            }
                                            [r19 setOfferState:0x4 timestamp:r3];
                                    }
                                    else {
                                            *(r19 + 0x178) = d0;
                                            [r19 processTime:r2];
                                    }
                            }
                    }
                    else {
                            if (d1 < d0) {
                                    d1 = *(int128_t *)(r19 + 0x48);
                                    d2 = *(int128_t *)(r19 + 0x50);
                                    if (d1 <= d0 && d1 >= 0x0) {
                                            *(r19 + 0x178) = d1;
                                            r0 = *(r19 + 0x168);
                                            if (r0 != 0x0) {
                                                    if (r8 == 0x2) {
                                                            r0 = *(r19 + 0xc0);
                                                            if (r0 != 0x0) {
                                                                    if ([r0 count] != 0x0) {
                                                                            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                                                                    }
                                                            }
                                                            [*(r19 + 0x168) offerDeactivated:r19];
                                                            if (*(int8_t *)(r19 + 0x184) != 0x0) {
                                                                    [*(r19 + 0x168) hideOfferPopUp:r19];
                                                            }
                                                            *(int8_t *)(r19 + 0x184) = 0x0;
                                                            r0 = *(r19 + 0x168);
                                                    }
                                                    if ([r0 respondsToSelector:@selector(offerKilled:)] != 0x0) {
                                                            r3 = r19;
                                                            [*(r19 + 0x168) performSelector:@selector(offerKilled:) withObject:r3];
                                                    }
                                            }
                                            [r19 setOfferState:0x4 timestamp:r3];
                                    }
                                    else {
                                            if (d2 > 0x0 && (r8 | 0x2) == 0x3 && d2 <= d0) {
                                                    *(r19 + 0x178) = d1;
                                                    r0 = *(r19 + 0x168);
                                                    if (r0 != 0x0) {
                                                            if (r8 == 0x2) {
                                                                    r0 = *(r19 + 0xc0);
                                                                    if (r0 != 0x0) {
                                                                            if ([r0 count] != 0x0) {
                                                                                    [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
                                                                            }
                                                                    }
                                                                    [*(r19 + 0x168) offerDeactivated:r19];
                                                                    if (*(int8_t *)(r19 + 0x184) != 0x0) {
                                                                            [*(r19 + 0x168) hideOfferPopUp:r19];
                                                                    }
                                                                    *(int8_t *)(r19 + 0x184) = 0x0;
                                                                    r0 = *(r19 + 0x168);
                                                            }
                                                            if ([r0 respondsToSelector:@selector(offerKilled:)] != 0x0) {
                                                                    r3 = r19;
                                                                    [*(r19 + 0x168) performSelector:@selector(offerKilled:) withObject:r3];
                                                            }
                                                    }
                                                    [r19 setOfferState:0x4 timestamp:r3];
                                            }
                                            else {
                                                    *(r19 + 0x178) = d0;
                                                    [r19 processTime:r2];
                                            }
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)actionSuccess:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
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
    if (*(int32_t *)(r0 + 0x180) != 0x2) goto .l1;

loc_1009df8bc:
    r19 = r0;
    if (*(int8_t *)(r0 + 0x185) == 0x0) goto loc_1009df8e8;

.l1:
    return;

loc_1009df8e8:
    r22 = r2;
    if (*(int8_t *)(r19 + 0x142) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = [r22 popUpActionKillsOffer];
    }
    if (*(int8_t *)(r19 + 0x141) != 0x0) {
            r21 = 0x1;
    }
    else {
            r21 = [r22 popUpActionDeactivatesOffer];
    }
    if (*(int8_t *)(r19 + 0x140) != 0x0 || (r20 | r21 | [r22 popUpActionDismissesPopUp]) == 0x1) goto loc_1009df95c;

loc_1009dfaac:
    r20 = [MCPromoEventDispatcher sharedMCPromoEventDispatcher];
    [NSArray arrayWithObjects:[@"PROMO_OFFER_ACTION_SUCCESS" stringByAppendingString:*(r19 + 0x18)]];
    r1 = @selector(postEvent:);
    goto loc_1009dfba0;

loc_1009dfba0:
    objc_msgSend(r20, r1);
    return;

loc_1009df95c:
    if (((r20 | r21) & 0x1) == 0x0) goto loc_1009df9f8;

loc_1009df970:
    r0 = *(r19 + 0x168);
    if (r0 != 0x0 && *(int8_t *)(r19 + 0x184) != 0x0) {
            [r0 hideOfferPopUp:r19];
    }
    if (*(int8_t *)(r19 + 0x184) != 0x0) {
            [r19 setPopUpActiveState:0x0];
    }
    if (*(r19 + 0x168) == 0x0) goto loc_1009dfa38;

loc_1009df9b4:
    r0 = *(r19 + 0xc0);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            [*(r19 + 0x168) deactivateStoreChanges:*(r19 + 0xc0) forOffer:r19];
    }
    r0 = *(r19 + 0x168);
    r1 = @selector(offerDeactivated:);
    goto loc_1009dfa34;

loc_1009dfa34:
    objc_msgSend(r0, r1);
    goto loc_1009dfa38;

loc_1009dfa38:
    if (r21 == 0x0) goto loc_1009dfa94;

loc_1009dfa40:
    r0 = *(r19 + 0xe8);
    if (r0 != 0x0) {
            [r0 reset];
            [*(r19 + 0xe8) setEnabled:r2];
    }
    r0 = *(r19 + 0x128);
    if (r0 != 0x0) {
            [r0 reset];
            [*(r19 + 0x128) setEnabled:r2];
    }
    [*(r19 + 0x130) reset];
    objc_msgSend(*(r19 + 0x130), r21);
    if (*(int32_t *)(r19 + 0x180) != 0x2) goto loc_1009dfb50;

loc_1009dfb38:
    r0 = r19;
    goto loc_1009dfb48;

loc_1009dfb48:
    [r0 setOfferState:r2 timestamp:r3];
    goto loc_1009dfb50;

loc_1009dfb50:
    r20 = [MCPromoEventDispatcher sharedMCPromoEventDispatcher];
    [@"PROMO_OFFER_ACTION_SUCCESS" stringByAppendingString:*(r19 + 0x18)];
    [NSArray arrayWithObjects:r2];
    r1 = @selector(postEvent:);
    goto loc_1009dfba0;

loc_1009dfa94:
    if (r20 == 0x0) goto loc_1009dfb50;

loc_1009dfa98:
    r0 = r19;
    goto loc_1009dfb48;

loc_1009df9f8:
    r0 = [r19 getPopUpDismissedEvent];
    if (r0 == 0x0) goto loc_1009dfa38;

loc_1009dfa0c:
    r22 = r0;
    if ([r0 count] == 0x0) goto loc_1009dfa38;

loc_1009dfa20:
    r0 = [MCPromoEventDispatcher sharedMCPromoEventDispatcher];
    r1 = @selector(postEvent:);
    goto loc_1009dfa34;
}

-(void)setState:(void *)arg2 {
    [self setState:arg2 withError:&var_8];
    return;
}

-(bool)isOfferActive {
    r0 = self;
    if (*(int8_t *)(r0 + 0x185) == 0x0 && *(int8_t *)(r0 + 0x186) == 0x0) {
            if (*(int32_t *)(r0 + 0x180) == 0x2) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isOfferCloseToBegin {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) != 0x0) goto loc_1009e0898;

loc_1009e088c:
    r19 = r0;
    if (*(r0 + 0x158) == 0x0) goto loc_1009e08b0;

loc_1009e0898:
    r0 = 0x0;
    return r0;

.l7:
    return r0;

loc_1009e08b0:
    r8 = *(int32_t *)(r19 + 0x180);
    if (r8 == 0x3) goto loc_1009e0924;

loc_1009e08bc:
    if (r8 == 0x1) goto loc_1009e0978;

loc_1009e08c4:
    if (r8 != 0x0) goto loc_1009e0898;

loc_1009e08c8:
    r22 = *(r19 + 0xb0);
    if (r22 == 0x0) goto loc_1009e09d0;

loc_1009e08d0:
    [MCPromoWaitForMultiDateTrigger class];
    r0 = [r22 isKindOfClass:r2];
    r22 = *(r19 + 0xb0);
    if (r0 == 0x0) goto loc_1009e09d8;

loc_1009e0908:
    r0 = [r22 getClosestDateToActivation];
    d0 = *(r19 + 0x40);
    r0 = sub_1009eea04(r0);
    goto loc_1009e0a14;

loc_1009e0a14:
    if (d0 - *(r19 + 0x178) < *(r19 + 0x60)) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;

loc_1009e09d8:
    r21 = @selector(isKindOfClass:);
    [MCPromoWaitForDeltaTimeTrigger class];
    r0 = objc_msgSend(r22, r21);
    if (r0 == 0x0) goto .l7;

loc_1009e09fc:
    d8 = *(r19 + 0x40);
    r0 = *(r19 + 0xb0);
    r0 = [r0 deltaTime];
    d0 = d8 + d0;
    goto loc_1009e0a14;

loc_1009e09d0:
    d0 = *(r19 + 0x40);
    goto loc_1009e0a14;

loc_1009e0978:
    r20 = *(r19 + 0xb0);
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    if (r0 != 0x0) {
            r0 = *(r19 + 0xb0);
            r0 = [r0 timeToNextActivation];
            d1 = *(r19 + 0x50);
            if (d1 > 0x0 && d0 >= d1) {
                    r0 = 0x0;
            }
            else {
                    if (d0 - *(r19 + 0x178) < *(r19 + 0x60)) {
                            if (CPU_FLAGS & BE) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;

loc_1009e0924:
    r20 = *(r19 + 0xb8);
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    if (r0 != 0x0) {
            r0 = *(r19 + 0xb8);
            r0 = [r0 timeToNextActivation];
            if (*(r19 + 0x50) > 0x0) {
                    asm { fccmp      d0, d1, #0x8, gt };
            }
            if (!CPU_FLAGS & GE) {
                    if (d0 - *(r19 + 0x178) < *(r19 + 0x60)) {
                            if (CPU_FLAGS & BE) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(bool)isOfferCloseToEnd {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            r19 = r0;
            if (*(r0 + 0x158) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r8 = *(int32_t *)(r19 + 0x180);
                    if (r8 < 0x5 && (0x1b >> r8 & 0x1) != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            [r19 badgeRemainingTime];
                            if (d0 != 0xbff0000000000000) {
                                    d0 = *(r19 + 0x70);
                                    if (d0 != 0xbff0000000000000) {
                                            r0 = [r19 badgeRemainingTime];
                                            if (d0 < *(r19 + 0x70)) {
                                                    if (CPU_FLAGS & BE) {
                                                            r0 = 0x1;
                                                    }
                                            }
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)updateDisableOffer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 execute];
    if (r0 != 0x0) {
            r0 = [r0 boolValue];
    }
    *(int8_t *)(r19 + 0x10) = r0;
    return;
}

-(double)getDeltaToDisplayCloseToBeginNotification {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) != 0x0) goto .l7;

loc_1009e0b1c:
    r19 = r0;
    r8 = *(int32_t *)(r0 + 0x180);
    if (r8 != 0x2) {
            asm { ccmp       w8, #0x4, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto .l7;

loc_1009e0b30:
    d0 = *(r19 + 0x60);
    if (d0 != 0xbff0000000000000) goto loc_1009e0b58;

.l7:
    return r0;

loc_1009e0b58:
    if (r8 == 0x3) goto loc_1009e0bc8;

loc_1009e0b60:
    if (r8 == 0x1) goto loc_1009e0c00;

loc_1009e0b68:
    if (r8 != 0x0) goto .l7;

loc_1009e0b6c:
    r22 = *(r19 + 0xb0);
    if (r22 == 0x0) goto loc_1009e0c58;

loc_1009e0b74:
    [MCPromoWaitForMultiDateTrigger class];
    r0 = [r22 isKindOfClass:r2];
    r22 = *(r19 + 0xb0);
    if (r0 == 0x0) goto loc_1009e0c80;

loc_1009e0bac:
    r0 = [r22 getClosestDateToActivation];
    d0 = *(r19 + 0x40);
    r0 = sub_1009eea04(r0);
    goto loc_1009e0cbc;

loc_1009e0cbc:
    if (d0 - *(r19 + 0x178) > *(r19 + 0x60)) {
            asm { fcsel      d8, d2, d0, gt };
    }
    return r0;

loc_1009e0c80:
    r21 = @selector(isKindOfClass:);
    [MCPromoWaitForDeltaTimeTrigger class];
    r0 = objc_msgSend(r22, r21);
    if (r0 == 0x0) goto .l7;

loc_1009e0ca4:
    d8 = *(r19 + 0x40);
    r0 = *(r19 + 0xb0);
    r0 = [r0 deltaTime];
    d0 = d8 + d0;
    goto loc_1009e0cbc;

loc_1009e0c58:
    d1 = *(r19 + 0x40);
    d1 = d1 - *(r19 + 0x178);
    asm { fcvt       s1, d1 };
    asm { fcvt       d1, s1 };
    if (d0 < d1) {
            asm { fcsel      d8, d2, d0, mi };
    }
    return r0;

loc_1009e0c00:
    r20 = *(r19 + 0xb0);
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    if (r0 == 0x0) goto .l7;

loc_1009e0c30:
    r0 = *(r19 + 0xb0);
    goto loc_1009e0c34;

loc_1009e0c34:
    r0 = [r0 timeToNextActivation];
    d1 = *(r19 + 0x50);
    if (d1 <= 0x0 || d0 < d1) {
            if (d0 - *(r19 + 0x178) > *(r19 + 0x60)) {
                    asm { fcsel      d8, d2, d0, gt };
            }
    }
    return r0;

loc_1009e0bc8:
    r20 = *(r19 + 0xb8);
    [MCPromoWaitForTimeBaseTrigger class];
    r0 = [r20 isKindOfClass:r2];
    if (r0 == 0x0) goto .l7;

loc_1009e0bf8:
    r0 = *(r19 + 0xb8);
    goto loc_1009e0c34;
}

-(double)getDeltaToDisplayActiveNotification {
    r0 = self;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            r19 = r0;
            r8 = *(int32_t *)(r0 + 0x180);
            if (r8 != 0x4 && *(r19 + 0x68) != 0xbff0000000000000) {
                    if (r8 <= 0x3) {
                            r0 = (0x1009e0d60 + *(int8_t *)(0x100bfa1aa + r8) * 0x4)();
                    }
            }
    }
    return r0;
}

-(void *)getState {
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
    r19 = self;
    r0 = *(self + 0xb0);
    if (r0 != 0x0) {
            r25 = [r0 getState];
    }
    else {
            r25 = 0x0;
    }
    r0 = *(r19 + 0xb8);
    if (r0 != 0x0) {
            r26 = [r0 getState];
    }
    else {
            r26 = 0x0;
    }
    r0 = *(r19 + 0xe8);
    if (r0 != 0x0) {
            r28 = [r0 getState];
    }
    else {
            r28 = 0x0;
    }
    r0 = *(r19 + 0x128);
    if (r0 != 0x0) {
            r0 = [r0 getState];
    }
    var_130 = r0;
    r0 = *(r19 + 0x130);
    if (r0 != 0x0) {
            r0 = [r0 getState];
    }
    var_138 = r0;
    r0 = *(r19 + 0x150);
    if (r0 != 0x0) {
            r0 = [r0 getState];
    }
    var_140 = r0;
    r0 = *(r19 + 0x148);
    if (r0 != 0x0) {
            r0 = [r0 getState];
    }
    var_148 = r0;
    r0 = *(r19 + 0x158);
    if (r0 != 0x0) {
            r0 = [r0 getState];
    }
    var_150 = r0;
    r0 = *(r19 + 0x160);
    if (r0 != 0x0) {
            r0 = [r0 getState];
    }
    var_158 = r0;
    if (*(r19 + 0x138) != 0x0) {
            r22 = [NSMutableDictionary dictionary];
            var_110 = q0;
            r0 = *(r19 + 0x138);
            r0 = [r0 allKeys];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r2 = &var_120;
            var_128 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    var_170 = r28;
                    var_168 = r26;
                    var_160 = r25;
                    r20 = *var_110;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != r20) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r26 = @selector(setObject:forKey:);
                                    [[*(r19 + 0x138) objectForKey:*(var_118 + r27 * 0x8)] getState];
                                    objc_msgSend(r22, r26);
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r2 = &var_120;
                            r0 = objc_msgSend(r21, var_128);
                            r23 = r0;
                    } while (r0 != 0x0);
                    r26 = var_168;
                    r25 = var_160;
                    r28 = var_170;
            }
    }
    else {
            r22 = 0x0;
    }
    r0 = @class(NSMutableArray);
    r21 = @selector(array);
    r27 = objc_msgSend(r0, r21);
    r21 = objc_msgSend(@class(NSMutableArray), r21);
    if (r25 != 0x0) {
            [r27 addObject:r2];
            r2 = @"startTriggerState";
            objc_msgSend(r21, r23);
    }
    if (r26 != 0x0) {
            [r27 addObject:r2];
            r2 = @"wakeupTriggerState";
            objc_msgSend(r21, r23);
    }
    if (r28 != 0x0) {
            [r27 addObject:r2];
            r2 = @"badgeEndTriggerState";
            objc_msgSend(r21, r23);
    }
    if (var_130 != 0x0) {
            [r27 addObject:r2];
            r2 = @"popUpTriggerState";
            objc_msgSend(r21, r23);
    }
    if (var_138 != 0x0) {
            [r27 addObject:r2];
            r2 = @"popUpDismissedTriggerState";
            objc_msgSend(r21, r23);
    }
    if (var_140 != 0x0) {
            [r27 addObject:r2];
            r2 = @"killTriggerState";
            objc_msgSend(r21, r23);
    }
    if (var_148 != 0x0) {
            [r27 addObject:r2];
            r2 = @"resetTriggerState";
            objc_msgSend(r21, r23);
    }
    if (var_150 != 0x0) {
            [r27 addObject:r2];
            r2 = @"interruptTriggerState";
            objc_msgSend(r21, r23);
    }
    if (var_158 != 0x0) {
            [r27 addObject:r2];
            r2 = @"resumeTriggerState";
            objc_msgSend(r21, r23);
    }
    if (r22 != 0x0) {
            [r27 addObject:r2];
            r2 = @"promotionActionsState";
            objc_msgSend(r21, r20);
    }
    var_60 = **___stack_chk_guard;
    [NSNumber numberWithDouble:r2];
    [r27 addObject:r2];
    objc_msgSend(r21, r20);
    [NSNumber numberWithDouble:@"currentTimestampState"];
    objc_msgSend(r27, r20);
    objc_msgSend(r21, r20);
    [NSNumber numberWithInt:*(int32_t *)(r19 + 0x180)];
    objc_msgSend(r27, r20);
    objc_msgSend(r21, r20);
    [NSNumber numberWithBool:*(int8_t *)(r19 + 0x184)];
    objc_msgSend(r27, r20);
    objc_msgSend(r21, r20);
    [NSNumber numberWithBool:*(int8_t *)(r19 + 0x186)];
    objc_msgSend(r27, r20);
    objc_msgSend(r21, r20);
    r0 = [NSDictionary dictionaryWithObjects:r27 forKeys:r21];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r31 = r31 - 0x150;
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
    r22 = arg3;
    var_128 = self;
    if (r2 != 0x0) {
            r19 = r2;
            r21 = @selector(objectForKey:);
            r27 = objc_msgSend(r19, r21);
            r26 = objc_msgSend(r19, r21);
            r25 = objc_msgSend(r19, r21);
            r24 = objc_msgSend(r19, r21);
            r28 = objc_msgSend(r19, r21);
            var_138 = objc_msgSend(r19, r21);
            r20 = objc_msgSend(r19, r21);
            var_130 = objc_msgSend(r19, r21);
            var_140 = objc_msgSend(r19, r21);
            r23 = objc_msgSend(r19, r21);
            if (r27 != 0x0) {
                    r0 = *(var_128 + 0xb0);
                    if (r0 != 0x0) {
                            [r0 setState:r27 withError:r22];
                    }
            }
            if (r26 != 0x0) {
                    r0 = *(var_128 + 0xb8);
                    if (r0 != 0x0) {
                            [r0 setState:r26 withError:r22];
                    }
            }
            if (r25 != 0x0) {
                    r0 = *(var_128 + 0xe8);
                    if (r0 != 0x0) {
                            [r0 setState:r25 withError:r22];
                    }
            }
            if (r24 != 0x0) {
                    r0 = *(var_128 + 0x128);
                    if (r0 != 0x0) {
                            [r0 setState:r24 withError:r22];
                    }
            }
            if (r28 != 0x0) {
                    r0 = *(var_128 + 0x130);
                    if (r0 != 0x0) {
                            [r0 setState:r28 withError:r22];
                    }
            }
            if (var_138 != 0x0) {
                    r0 = *(var_128 + 0x150);
                    if (r0 != 0x0) {
                            [r0 setState:@"promotionActionsState" withError:r22];
                    }
            }
            if (r20 != 0x0) {
                    r0 = *(var_128 + 0x148);
                    if (r0 != 0x0) {
                            [r0 setState:r20 withError:r22];
                    }
            }
            var_138 = r19;
            if (var_130 != 0x0) {
                    r0 = *(var_128 + 0x158);
                    if (r0 != 0x0) {
                            [r0 setState:@"promotionActionsState" withError:r22];
                    }
            }
            if (var_140 != 0x0) {
                    r0 = *(var_128 + 0x160);
                    if (r0 != 0x0) {
                            [r0 setState:@"promotionActionsState" withError:r22];
                    }
            }
            if (r23 != 0x0) {
                    r0 = *(var_128 + 0x138);
                    if (r0 != 0x0) {
                            var_110 = q0;
                            r0 = [r0 allKeys];
                            r24 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_130 = r1;
                            r0 = objc_msgSend(r0, r1);
                            if (r0 != 0x0) {
                                    r26 = r0;
                                    r25 = *var_110;
                                    do {
                                            r19 = 0x0;
                                            do {
                                                    if (*var_110 != r25) {
                                                            objc_enumerationMutation(r24);
                                                    }
                                                    r21 = @selector(objectForKey:);
                                                    objc_msgSend(*(var_128 + 0x138), r21);
                                                    objc_msgSend(r23, r21);
                                                    objc_msgSend(r20, r27);
                                                    r19 = r19 + 0x1;
                                            } while (r19 < r26);
                                            r0 = objc_msgSend(r24, var_130);
                                            r26 = r0;
                                    } while (r0 != 0x0);
                            }
                    }
            }
            r21 = @selector(objectForKey:);
            r20 = objc_msgSend(var_138, r21);
            r22 = objc_msgSend(var_138, r21);
            r23 = objc_msgSend(var_138, r21);
            r24 = objc_msgSend(var_138, r21);
            r21 = objc_msgSend(var_138, r21);
            [r20 doubleValue];
            *(var_128 + 0x178) = d0;
            [r22 doubleValue];
            *(var_128 + 0x58) = d0;
            *(int32_t *)(var_128 + 0x180) = [r21 intValue];
            *(int8_t *)(var_128 + 0x184) = [r23 boolValue];
            *(int8_t *)(var_128 + 0x186) = [r24 boolValue];
    }
    else {
            if (r22 != 0x0) {
                    *r22 = [NSError errorWithDomain:@"NoStateDefined" code:0x0 userInfo:0x0];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(double)getDeltaToDisplayCloseToEndNotification {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            r19 = r0;
            d1 = *(r0 + 0x70);
            if (d1 != 0xbff0000000000000) {
                    r8 = *(int32_t *)(r19 + 0x180);
                    if (r8 >= 0x5 || (0x1b >> r8 & 0x1) == 0x0) {
                            r0 = [r19 badgeRemainingTime];
                    }
            }
    }
    return r0;
}

-(double)getDeltaToDisplayAfterStartDateNotification {
    r0 = self;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            d1 = *(r0 + 0x78);
            if (d1 != 0xbff0000000000000) {
                    r8 = *(int32_t *)(r0 + 0x180);
                    if (r8 >= 0x5 && *(r0 + 0x58) == 0xbff0000000000000) {
                            d2 = *(r0 + 0x178);
                            d3 = *(r0 + 0x48);
                            if (d2 < d3) {
                                    d1 = d1 + *(r0 + 0x40);
                                    if (r8 > 0x1 || d1 < d3) {
                                            if (d1 >= *(r0 + 0x50)) {
                                                    asm { fccmp      d3, d4, #0x4, ge };
                                            }
                                            if (CPU_FLAGS & LE) {
                                                    asm { fcsel      d0, d1, d0, le };
                                            }
                                    }
                            }
                    }
            }
    }
    return r0;
}

-(double)getDeltaToDisplayBeforeEndDateNotification {
    r0 = self;
    if (*(int8_t *)(r0 + 0x185) == 0x0) {
            d1 = *(r0 + 0x80);
            if (d1 != 0xbff0000000000000) {
                    r8 = *(int32_t *)(r0 + 0x180);
                    if (r8 != 0x4) {
                            d2 = *(r0 + 0x178);
                            d3 = *(r0 + 0x48);
                            if (d2 < d3) {
                                    d1 = d3 - d1;
                                    if (d1 >= *(r0 + 0x40)) {
                                            if (*(r0 + 0x50) > 0x0) {
                                                    asm { ccmp       w8, #0x3, #0x0, gt };
                                            }
                                            if (CPU_FLAGS & E) {
                                                    asm { fccmp      d0, d1, #0x8, eq };
                                            }
                                            if (CPU_FLAGS & L) {
                                                    asm { fcsel      d0, d0, d1, lt };
                                            }
                                    }
                            }
                    }
            }
    }
    return r0;
}

-(void *)getClientCustomData {
    if (*(self + 0x120) != 0x0) {
            r0 = [MCPromoDataAccess clearAllDataAccessFromConfig:r2];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getValueFromClientCustomData:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(self + 0x120);
    if (r0 != 0x0) {
            r0 = [MCPromoDataAccess executeDataAccessFromConfig:[r0 objectForKey:r2]];
    }
    return r0;
}

-(double)startTimestamp {
    r0 = self;
    return r0;
}

-(double)endTimestamp {
    r0 = self;
    return r0;
}

-(bool)disableOffer {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(void *)name {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)uniqueId {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)groupId {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)campaignId {
    r0 = *(self + 0x30);
    return r0;
}

-(int)offerType {
    r0 = *(int32_t *)(self + 0x38);
    return r0;
}

-(void *)storeChanges {
    r0 = *(self + 0xc0);
    return r0;
}

-(double)beforeBeginNotificationDeltaTime {
    r0 = self;
    return r0;
}

-(double)activeNotificationDeltaTime {
    r0 = self;
    return r0;
}

-(double)beforeEndNotificationDeltaTime {
    r0 = self;
    return r0;
}

-(double)afterStartDateNotificationDeltaTime {
    r0 = self;
    return r0;
}

-(double)beforeEndDateNotificationDeltaTime {
    r0 = self;
    return r0;
}

-(void *)beforeBeginNotificationText {
    r0 = *(self + 0x88);
    return r0;
}

-(void *)activeNotificationText {
    r0 = *(self + 0x90);
    return r0;
}

-(void *)beforeEndNotificationText {
    r0 = *(self + 0x98);
    return r0;
}

-(void *)afterStartDateNotificationText {
    r0 = *(self + 0xa0);
    return r0;
}

-(void *)beforeEndDateNotificationText {
    r0 = *(self + 0xa8);
    return r0;
}

-(int)offerState {
    r0 = *(int32_t *)(self + 0x180);
    return r0;
}

-(unsigned int)badgePriority {
    r0 = *(int32_t *)(self + 0xc8);
    return r0;
}

-(void *)badgeText {
    r0 = *(self + 0xd0);
    return r0;
}

-(void *)badgeImage {
    r0 = *(self + 0xd8);
    return r0;
}

-(void *)badgeConfiguration {
    r0 = *(self + 0xe0);
    return r0;
}

-(double)badgeCycleCooldown {
    r0 = self;
    return r0;
}

-(void *)clientCustomData {
    r0 = *(self + 0x120);
    return r0;
}

-(void *)popUpImage {
    r0 = *(self + 0xf0);
    return r0;
}

-(void *)popUpButtonText {
    r0 = *(self + 0xf8);
    return r0;
}

-(void *)popUpCustomData {
    r0 = *(self + 0x118);
    return r0;
}

-(void *)popUpActions {
    r0 = *(self + 0x138);
    return r0;
}

-(double)currentTimestamp {
    r0 = self;
    return r0;
}

-(double)lastActivationTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastActivationTimestamp:(double)arg2 {
    *(self + 0x58) = d0;
    return;
}

-(void)setDelegate:(void *)arg2 {
    *(self + 0x168) = arg2;
    return;
}

-(void *)delegate {
    r0 = *(self + 0x168);
    return r0;
}

-(bool)popUpActionDeactivatesOffer {
    r0 = *(int8_t *)(self + 0x141);
    return r0;
}

-(bool)popUpActionDismissesPopUp {
    r0 = *(int8_t *)(self + 0x140);
    return r0;
}

-(bool)popUpActionKillsOffer {
    r0 = *(int8_t *)(self + 0x142);
    return r0;
}

-(bool)interruptPromotion {
    r0 = *(int8_t *)(self + 0x186);
    return r0;
}

-(bool)hidePromotion {
    r0 = *(int8_t *)(self + 0x185);
    return r0;
}

-(void *)promoToken {
    r0 = *(self + 0x100);
    return r0;
}

-(void *)promoTokenParameter {
    r0 = *(self + 0x108);
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
    var_80 = d13;
    stack[-136] = d12;
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff70 - 0x3c0;
    r19 = arg3;
    if (r2 == 0x0) goto loc_1009dafe4;

loc_1009dae04:
    r25 = r2;
    r20 = r0;
    r28 = @selector(count);
    if (objc_msgSend(r2, r28) == 0x0) goto loc_1009dafe4;

loc_1009dae24:
    [r25 objectForKey:@"shouldInstanceOffer"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0 || [r0 boolValue] != 0x0) goto loc_1009dae74;

loc_1009dd1e8:
    r27 = 0x0;
    goto loc_1009dd1ec;

loc_1009dd1ec:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009dae74:
    [r25 objectForKey:@"requiredTransactions"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009daed8;

loc_1009daea0:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0 || [[MCPromoDataAccessManager sharedMCPromoDataAccessManager] areTransactionsPresentInTheConfiguration:r23] != 0x0) goto loc_1009daed8;
    goto loc_1009dd1e8;

loc_1009daed8:
    [r25 objectForKey:@"requiredProducts"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009daf3c;

loc_1009daf04:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0 || [[MCPromoDataAccessManager sharedMCPromoDataAccessManager] areProductsPresentInTheConfiguration:r23] != 0x0) goto loc_1009daf3c;
    goto loc_1009dd1e8;

loc_1009daf3c:
    var_2E8 = r20;
    r20 = [MCPromoDataAccess getDataAccessFromConfiguration:[r25 objectForKey:@"disableOffer"]];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"offerName"];
    r0 = [r23 executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009dafbc;

loc_1009daf9c:
    r27 = r0;
    r26 = @selector(isEqualToString:);
    if (objc_msgSend(r0, r26) == 0x0) goto loc_1009db068;

loc_1009dafbc:
    if (r19 != 0x0) {
            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
            r27 = 0x0;
            *r19 = r0;
    }
    else {
            r27 = 0x0;
    }
    goto loc_1009dd1ec;

loc_1009db068:
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"uniqueId"];
    var_2F8 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"groupId"];
    var_300 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"campaignId"];
    var_308 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"startTrigger"];
    r0 = [r23 executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009db17c;

loc_1009db118:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009db17c;

loc_1009db128:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    if (*r19 == 0x0) goto loc_1009db670;

loc_1009db14c:
    [var_2E8 class];
    goto loc_1009db3c8;

loc_1009db3c8:
    [[objc_alloc() initWithObjectsAndKeys:[NSString stringWithFormat:r2]] autorelease];
    goto loc_1009db058;

loc_1009db058:
    r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    r27 = 0x0;
    *r19 = r0;
    goto loc_1009dd1ec;

loc_1009db670:
    var_310 = r0;
    goto loc_1009db180;

loc_1009db180:
    [r25 objectForKey:@"wakeUpTrigger"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009db210;

loc_1009db1ac:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009db210;

loc_1009db1bc:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    if (*r19 == 0x0) goto loc_1009db79c;

loc_1009db1e0:
    [var_2E8 class];
    goto loc_1009db3c8;

loc_1009db79c:
    var_320 = r0;
    goto loc_1009db214;

loc_1009db214:
    [r25 objectForKey:@"killTrigger"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009db2a4;

loc_1009db240:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009db2a4;

loc_1009db250:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    if (*r19 == 0x0) goto loc_1009db7a4;

loc_1009db274:
    [var_2E8 class];
    goto loc_1009db3c8;

loc_1009db7a4:
    var_338 = r0;
    goto loc_1009db2a8;

loc_1009db2a8:
    [r25 objectForKey:@"resetTrigger"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009db338;

loc_1009db2d4:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009db338;

loc_1009db2e4:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    if (*r19 == 0x0) goto loc_1009db7ac;

loc_1009db308:
    [var_2E8 class];
    goto loc_1009db3c8;

loc_1009db7ac:
    var_348 = r0;
    goto loc_1009db33c;

loc_1009db33c:
    [r25 objectForKey:@"interruptTrigger"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009db420;

loc_1009db368:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009db420;

loc_1009db378:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    if (*r19 == 0x0) goto loc_1009db85c;

loc_1009db39c:
    [var_2E8 class];
    goto loc_1009db3c8;

loc_1009db85c:
    var_340 = r0;
    goto loc_1009db424;

loc_1009db424:
    [r25 objectForKey:@"resumeTrigger"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009db510;

loc_1009db450:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009db510;

loc_1009db460:
    if (var_340 == 0x0) goto loc_1009db8f0;

loc_1009db468:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    if (*r19 == 0x0) goto loc_1009db978;

loc_1009db48c:
    [var_2E8 class];
    [[objc_alloc() initWithObjectsAndKeys:[NSString stringWithFormat:@"Resume trigger requires an interrupt trigger to be defined '%@' promo (%@)"]] autorelease];
    goto loc_1009db058;

loc_1009db978:
    var_350 = r0;
    goto loc_1009db514;

loc_1009db514:
    [r25 objectForKey:@"storeChanges"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    var_330 = r27;
    if (r0 == 0x0) goto loc_1009db678;

loc_1009db544:
    r28 = @selector(count);
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009db678;

loc_1009db554:
    v0 = 0x0;
    var_240 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_318 = r23;
    var_358 = r1;
    r0 = objc_msgSend(r23, r1);
    if (r0 == 0x0) goto loc_1009db678;

loc_1009db588:
    r28 = @selector(count);
    r26 = @selector(isEqualToString:);
    r23 = r0;
    var_2F0 = 0x0;
    r27 = *var_240;
    var_398 = r28;
    var_388 = r26;
    var_370 = r20;
    goto loc_1009db5b0;

loc_1009db5b0:
    r20 = 0x0;
    goto loc_1009db5c4;

loc_1009db5c4:
    if (*var_240 != r27) {
            objc_enumerationMutation(var_318);
    }
    r0 = [MCPromoStoreChange getStoreChangeFromConfiguration:r2];
    if (r0 == 0x0) goto loc_1009db864;

loc_1009db5f8:
    r26 = r0;
    r0 = var_2F0;
    if (r0 == 0x0) {
            r0 = [NSMutableArray array];
    }
    var_2F0 = r0;
    [r0 addObject:r2];
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_1009db5c4;

loc_1009db630:
    r0 = objc_msgSend(var_318, var_358);
    r23 = r0;
    r28 = var_398;
    r26 = var_388;
    r20 = var_370;
    if (r0 != 0x0) goto loc_1009db5b0;

loc_1009db67c:
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"badgeText"];
    r27 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"badgeImage"];
    var_318 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"badgeConfiguration"];
    r0 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    var_368 = r0;
    [r0 objectForKey:@"badgeCycleCooldown"];
    r0 = r23;
    r23 = r27;
    r27 = [r0 executeDataAccessFromConfig:r2];
    if (r23 == 0x0 || (objc_msgSend(r23, r26) & 0x1) == 0x0) goto loc_1009db748;

loc_1009db768:
    [var_2E8 class];
    r2 = @"Cannot continue without badge text or image defined in '%@' promo (%@)";
    goto loc_1009db894;

loc_1009db894:
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009dd1e8;

loc_1009db8a0:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009db058;

loc_1009db748:
    if (var_318 == 0x0 || objc_msgSend(var_318, r26) == 0x0) goto loc_1009db7b4;
    goto loc_1009db768;

loc_1009db7b4:
    var_390 = r23;
    [r25 objectForKey:@"badgeEndTrigger"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009dba0c;

loc_1009db7e4:
    r23 = r0;
    r0 = objc_msgSend(r0, r28);
    if (r0 == 0x0) goto loc_1009dba0c;

loc_1009db7f4:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    r8 = *r19;
    if (var_390 == 0x0 || var_318 == 0x0) goto loc_1009db980;

loc_1009db824:
    if (r8 == 0x0) goto loc_1009dba0c;

loc_1009db828:
    [var_2E8 class];
    r2 = @"Cannot continue without badge end gtrigger defined in '%@' promo (%@)";
    goto loc_1009db9b4;

loc_1009db9b4:
    [[objc_alloc() initWithObjectsAndKeys:[NSString stringWithFormat:r2]] autorelease];
    goto loc_1009db058;

loc_1009dba0c:
    var_358 = r0;
    var_3A8 = r27;
    [MCPromoWaitForMultiDateTrigger class];
    r1 = @selector(isKindOfClass:);
    r27 = var_310;
    var_328 = r1;
    if (objc_msgSend(r27, r1) != 0x0) {
            var_378 = [r27 activationDates];
    }
    else {
            var_378 = 0x0;
    }
    [MCPromoWaitForMultiDateTrigger class];
    r27 = var_320;
    if (objc_msgSend(r27, var_328) != 0x0) {
            var_3A0 = [r27 activationDates];
    }
    else {
            var_3A0 = 0x0;
    }
    [MCPromoWaitForMultiDateTrigger class];
    r23 = var_358;
    if (objc_msgSend(r23, var_328) != 0x0) {
            var_380 = [r23 activationDates];
    }
    else {
            var_380 = 0x0;
    }
    r8 = var_310;
    r1 = @selector(class);
    r9 = var_358;
    var_370 = r20;
    if (r9 == 0x0 || r8 == 0x0 || r27 == 0x0) goto loc_1009dbbd4;

loc_1009dbb0c:
    objc_msgSend(@class(MCPromoWaitForMultiDateTrigger), r1);
    if (objc_msgSend(r8, var_328) == 0x0) goto loc_1009dbdc0;

loc_1009dbb2c:
    [MCPromoWaitForMultiDateTrigger class];
    if (objc_msgSend(r27, var_328) == 0x0) goto loc_1009dbdc0;

loc_1009dbb4c:
    [MCPromoWaitForMultiDateTrigger class];
    if ([MCPromoTriggerUtils dateList:r2 containsAtLeastOneEqualDateTo:r3] == 0x0 || objc_msgSend(var_358, var_328) == 0x0 || [MCPromoTriggerUtils dateList:r2 containsAtLeastOneEqualDateTo:r3] == 0x0) goto loc_1009dbdc0;

loc_1009dbba4:
    [var_2E8 class];
    r2 = @"Start, badge end and wake up trigger should not have equal values in '%@' promo (%@)";
    goto loc_1009dbc68;

loc_1009dbc68:
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009dd1e8;

loc_1009dbc74:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009db058;

loc_1009dbdc0:
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"popUpImage"];
    r20 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"popUpButtonText"];
    r27 = [r23 executeDataAccessFromConfig:r2];
    if (r20 == 0x0 || (objc_msgSend(r20, r26) & 0x1) == 0x0) goto loc_1009dbe34;

loc_1009dbe50:
    [var_2E8 class];
    r0 = [NSString stringWithFormat:@"Cannot continue with empty popup text or image in '%@' promo (%@)"];
    if (r19 == 0x0) goto loc_1009dd1e8;

loc_1009dbe88:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009db058;

loc_1009dbe34:
    if (r27 == 0x0 || objc_msgSend(r27, r26) == 0x0) goto loc_1009dbed8;
    goto loc_1009dbe50;

loc_1009dbed8:
    [r25 objectForKey:@"popUpTrigger"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009dbfbc;

loc_1009dbf04:
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009dbfbc;

loc_1009dbf14:
    r0 = [MCPromoTrigger getTriggerFromConfiguration:r23 withError:r19];
    if (*r19 == 0x0) goto loc_1009dc92c;

loc_1009dbf38:
    [var_2E8 class];
    [[objc_alloc() initWithObjectsAndKeys:[NSString stringWithFormat:@"Cannot continue without popup trigger defined in '%@' promo (%@)"]] autorelease];
    goto loc_1009db058;

loc_1009dc92c:
    var_3D0 = r0;
    var_3C8 = r27;
    var_3C0 = r20;
    var_388 = r26;
    goto loc_1009dbfc8;

loc_1009dbfc8:
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    [r0 setName:@"PROMO_OFFER_POP_UP_TRIGGER"];
    [r0 setMaxActivations:0x1];
    [r0 addToActivationEvent:[NSArray arrayWithObjects:[@"PROMO_OFFER_POP_UP_DISMISS" stringByAppendingString:var_330]]];
    r2 = [@"PROMO_OFFER_POP_UP_DISMISSED" stringByAppendingString:var_330];
    r2 = [NSArray arrayWithObjects:r2];
    var_3B8 = r0;
    [r0 addOnActivateEvent:r2];
    [r25 objectForKey:@"popUpAction"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009dc16c;

loc_1009dc0e4:
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009dc16c;

loc_1009dc0f4:
    r26 = [NSMutableDictionary dictionary];
    r27 = var_330;
    r0 = [MCPromoAction getActionFromConfiguration:r23 withActionName:0x0 andOfferName:r27 withError:r19];
    if (r0 == 0x0) goto loc_1009dd164;

loc_1009dc138:
    [NSString string];
    [r26 setObject:r2 forKey:r3];
    goto loc_1009dc170;

loc_1009dc170:
    [r25 objectForKey:@"popUpActions"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    r20 = var_2E8;
    if (r0 == 0x0) goto loc_1009dc2f0;

loc_1009dc1a0:
    r23 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009dc2f0;

loc_1009dc1b0:
    if (r26 == 0x0) {
            r26 = [NSMutableDictionary dictionary];
    }
    v0 = 0x0;
    var_280 = q0;
    var_378 = r23;
    r0 = [r23 allKeys];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_3A0 = r0;
    var_3D8 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1009dc2f0;

loc_1009dc210:
    r27 = r0;
    var_328 = r26;
    var_398 = r28;
    var_380 = *var_280;
    goto loc_1009dc230;

loc_1009dc230:
    r20 = 0x0;
    goto loc_1009dc23c;

loc_1009dc23c:
    if (*var_280 != var_380) {
            objc_enumerationMutation(var_3A0);
    }
    r26 = *(var_288 + r20 * 0x8);
    [var_378 objectForKey:r26];
    r0 = [MCPromoAction getActionFromConfiguration:r2 withActionName:r3 andOfferName:r4 withError:r5];
    if (r0 == 0x0) goto loc_1009dc8f8;

loc_1009dc298:
    [var_328 setObject:r2 forKey:r3];
    r20 = r20 + 0x1;
    if (r20 < r27) goto loc_1009dc23c;

loc_1009dc2b8:
    r0 = objc_msgSend(var_3A0, var_3D8);
    r27 = r0;
    if (r0 != 0x0) goto loc_1009dc230;

loc_1009dc2e0:
    r28 = var_398;
    r20 = var_2E8;
    r26 = var_328;
    goto loc_1009dc2f0;

loc_1009dc2f0:
    [r25 objectForKey:@"activeNotification"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 != 0x0) {
            r19 = r0;
            if (objc_msgSend(r0, r28) != 0x0) {
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"activeNotificationTime"];
                    [r20 loadDeltaTimeFromConfig:[r23 executeDataAccessFromConfig:r2]];
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"activeNotificationText"];
                    var_2E8 = [r23 executeDataAccessFromConfig:r2];
            }
            else {
                    var_2E8 = 0x0;
                    d9 = 0x0;
            }
    }
    else {
            var_2E8 = 0x0;
            d9 = 0x0;
    }
    [r25 objectForKey:@"beforeBeginNotification"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 != 0x0) {
            r19 = r0;
            if (objc_msgSend(r0, r28) != 0x0) {
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"beforeBeginNotificationTime"];
                    [r20 loadDeltaTimeFromConfig:[r23 executeDataAccessFromConfig:r2]];
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"beforeBeginNotificationText"];
                    var_360 = [r23 executeDataAccessFromConfig:r2];
            }
            else {
                    var_360 = 0x0;
            }
    }
    else {
            var_360 = 0x0;
    }
    [r25 objectForKey:@"beforeEndNotification"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 != 0x0) {
            r19 = r0;
            if (objc_msgSend(r0, r28) != 0x0) {
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"beforeEndNotificationTime"];
                    [r20 loadDeltaTimeFromConfig:[r23 executeDataAccessFromConfig:r2]];
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"beforeEndNotificationText"];
                    var_378 = [r23 executeDataAccessFromConfig:r2];
            }
            else {
                    var_378 = 0x0;
                    d11 = 0x0;
            }
    }
    else {
            var_378 = 0x0;
            d11 = 0x0;
    }
    [r25 objectForKey:@"afterStartDateNotification"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 != 0x0) {
            r19 = r0;
            if (objc_msgSend(r0, r28) != 0x0) {
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"afterStartDateNotificationTime"];
                    [r20 loadDeltaTimeFromConfig:[r23 executeDataAccessFromConfig:r2]];
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"afterStartDateNotificationText"];
                    var_380 = [r23 executeDataAccessFromConfig:r2];
            }
            else {
                    var_380 = 0x0;
            }
    }
    else {
            var_380 = 0x0;
    }
    [r25 objectForKey:@"beforeEndDateNotification"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    var_328 = r26;
    if (r0 != 0x0) {
            r19 = r0;
            if (objc_msgSend(r0, r28) != 0x0) {
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"beforeEndDateNotificationTime"];
                    [r20 loadDeltaTimeFromConfig:[r23 executeDataAccessFromConfig:r2]];
                    r23 = @class(MCPromoDataAccess);
                    [r19 objectForKey:@"beforeEndDateNotificationText"];
                    var_3A0 = [r23 executeDataAccessFromConfig:r2];
            }
            else {
                    var_3A0 = 0x0;
            }
    }
    else {
            var_3A0 = 0x0;
    }
    r19 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"popUpCustomData"];
    r23 = [r19 executeDataAccessFromConfig:r2];
    r19 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"clientCustomData"];
    r19 = [r19 executeDataAccessFromConfig:r2];
    r0 = [[&var_2A0 super] init];
    r27 = r0;
    if (r0 == 0x0) goto loc_1009dd1ec;

loc_1009dc6f0:
    var_3D8 = r19;
    var_3B0 = r23;
    *(r27 + 0x178) = 0xbff0000000000000;
    r19 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"startDate"];
    r19 = [r19 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"endDate"];
    r26 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"endOfActivationDate"];
    var_428 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"promoToken"];
    var_418 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"promoTokenParameters"];
    var_420 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"badgePriority"];
    var_410 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"popUpActionKillsOffer"];
    var_3E0 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"popUpActionDeactivatesOffer"];
    var_3F0 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"popUpActionDismissesPopUp"];
    var_400 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"activatePopUpOnOfferActivation"];
    var_3E8 = [r23 executeDataAccessFromConfig:r2];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"hidePromotion"];
    r0 = [r23 executeDataAccessFromConfig:r2];
    if (r0 != 0x0) {
            var_3F4 = [r0 boolValue];
    }
    else {
            var_3F4 = 0x0;
    }
    [r25 objectForKey:@"hidePromotionMobile"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 != 0x0) {
            var_404 = [r0 boolValue];
    }
    else {
            var_404 = 0x0;
    }
    *(r27 + 0x18) = [var_330 retain];
    *(r27 + 0x20) = [var_2F8 retain];
    *(r27 + 0x28) = [var_300 retain];
    *(r27 + 0x30) = [var_308 retain];
    r23 = @class(MCPromoDataAccess);
    [r25 objectForKey:@"offerType"];
    *(int32_t *)(r27 + 0x38) = [r27 getPromoTypeFromStringId:[r23 executeDataAccessFromConfig:r2]];
    if (r19 != 0x0) {
            [r19 timeIntervalSinceReferenceDate];
    }
    *(r27 + 0x40) = d0;
    v0 = v13;
    r23 = var_390;
    if (r26 != 0x0) {
            [r26 timeIntervalSinceReferenceDate];
    }
    *(r27 + 0x48) = d0;
    r0 = var_428;
    if (r0 != 0x0) {
            [r0 timeIntervalSinceReferenceDate];
            d0 = *(r27 + 0x48);
    }
    *(r27 + 0x50) = 0xbff0000000000000;
    r26 = var_388;
    if (0xbff0000000000000 < d0) {
            d0 = *(r27 + 0x40);
            if (0xbff0000000000000 <= d0) {
                    *(r27 + 0x50) = 0xbff0000000000000;
            }
    }
    else {
            *(r27 + 0x50) = 0xbff0000000000000;
    }
    *(r27 + 0x178) = 0xbff0000000000000;
    *(r27 + 0x58) = 0xbff0000000000000;
    *(r27 + 0x8) = [var_370 retain];
    [r27 updateDisableOffer];
    *(r27 + 0xb0) = [var_310 retain];
    *(r27 + 0xb8) = [var_320 retain];
    *(r27 + 0x148) = [var_348 retain];
    *(r27 + 0x150) = [var_338 retain];
    *(r27 + 0x158) = [var_340 retain];
    *(r27 + 0x160) = [var_350 retain];
    *(r27 + 0xc0) = [var_2F0 retain];
    *(r27 + 0x90) = [var_2E8 retain];
    if (d9 != 0x0) {
            asm { fcsel      d0, d9, d13, ne };
    }
    *(r27 + 0x68) = d0;
    *(r27 + 0x88) = [var_360 retain];
    if (0x0 != 0x0) {
            asm { fcsel      d0, d8, d13, ne };
    }
    *(r27 + 0x60) = d0;
    *(r27 + 0x98) = [var_378 retain];
    if (d11 != 0x0) {
            asm { fcsel      d0, d11, d13, ne };
    }
    *(r27 + 0x70) = d0;
    *(r27 + 0xa0) = [var_380 retain];
    if (0x0 != 0x0) {
            asm { fcsel      d0, d10, d13, ne };
    }
    *(r27 + 0x78) = d0;
    *(r27 + 0xa8) = [var_3A0 retain];
    if (0x0 != 0x0) {
            asm { fcsel      d0, d12, d13, ne };
    }
    *(r27 + 0x80) = d0;
    *(r27 + 0x100) = [var_418 retain];
    *(r27 + 0x108) = [var_420 retain];
    r20 = var_368;
    if (r23 == 0x0) goto loc_1009dcba0;

loc_1009dcb84:
    r0 = objc_msgSend(r23, r26);
    r19 = r23;
    if (r0 == 0x0) goto loc_1009dcc60;

loc_1009dcba0:
    if (r20 == 0x0 || objc_msgSend(r20, r28) == 0x0) goto loc_1009dcc58;

loc_1009dcbb4:
    [r20 objectForKey:@"buttonTextLabel"];
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009dcc58;

loc_1009dcbe0:
    r19 = r0;
    if (objc_msgSend(r0, r28) == 0x0) goto loc_1009dcc58;

loc_1009dcbf0:
    [r19 objectForKey:@"tag"];
    r23 = var_390;
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (r0 == 0x0) goto loc_1009dcc58;

loc_1009dcc20:
    r19 = r0;
    r0 = objc_msgSend(r0, r26);
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r19 = r19;
            }
            else {
                    r19 = r23;
            }
    }
    if (r0 == 0x0) goto loc_1009dd234;

loc_1009dcc44:
    r20 = var_368;
    if (var_390 == 0x0) {
            r19 = 0x0;
            if (r20 != 0x0 && objc_msgSend(r20, r28) != 0x0) {
                    [r20 objectForKey:@"buttonIconImage"];
                    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r20 = r28;
                            if (objc_msgSend(r0, r28) != 0x0) {
                                    r24 = *(&@class(MPVASTModel) + 0xfe8);
                                    [r23 objectForKey:@"imageData"];
                                    r0 = [r24 executeDataAccessFromConfig:r2];
                                    if (r0 != 0x0) {
                                            r23 = r0;
                                            if (objc_msgSend(r0, r20) != 0x0) {
                                                    r20 = *(&@class(MPVASTModel) + 0xfe8);
                                                    [r23 objectForKey:@"spriteFilename"];
                                                    r0 = [r20 executeDataAccessFromConfig:r2];
                                                    if (r0 != 0x0) {
                                                            r23 = r0;
                                                            if (objc_msgSend(r0, r26) != 0x0) {
                                                                    r23 = var_318;
                                                            }
                                                    }
                                                    else {
                                                            r23 = var_318;
                                                    }
                                            }
                                            else {
                                                    r23 = var_318;
                                            }
                                    }
                                    else {
                                            r23 = var_318;
                                    }
                            }
                            else {
                                    r23 = var_318;
                            }
                    }
                    else {
                            r23 = var_318;
                    }
                    r20 = var_368;
            }
            else {
                    r23 = var_318;
            }
    }
    else {
            r0 = objc_msgSend(r19, r26);
            r23 = var_318;
            if (r0 != 0x0) {
                    if (r20 != 0x0 && objc_msgSend(r20, r28) != 0x0) {
                            [r20 objectForKey:@"buttonIconImage"];
                            r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
                            if (r0 != 0x0) {
                                    r23 = r0;
                                    r20 = r28;
                                    if (objc_msgSend(r0, r28) != 0x0) {
                                            r24 = *(&@class(MPVASTModel) + 0xfe8);
                                            [r23 objectForKey:@"imageData"];
                                            r0 = [r24 executeDataAccessFromConfig:r2];
                                            if (r0 != 0x0) {
                                                    r23 = r0;
                                                    if (objc_msgSend(r0, r20) != 0x0) {
                                                            r20 = *(&@class(MPVASTModel) + 0xfe8);
                                                            [r23 objectForKey:@"spriteFilename"];
                                                            r0 = [r20 executeDataAccessFromConfig:r2];
                                                            if (r0 != 0x0) {
                                                                    r23 = r0;
                                                                    if (objc_msgSend(r0, r26) != 0x0) {
                                                                            r23 = var_318;
                                                                    }
                                                            }
                                                            else {
                                                                    r23 = var_318;
                                                            }
                                                    }
                                                    else {
                                                            r23 = var_318;
                                                    }
                                            }
                                            else {
                                                    r23 = var_318;
                                            }
                                    }
                                    else {
                                            r23 = var_318;
                                    }
                            }
                            else {
                                    r23 = var_318;
                            }
                            r20 = var_368;
                    }
                    else {
                            r23 = var_318;
                    }
            }
    }
    goto loc_1009dcd64;

loc_1009dcd64:
    *(r27 + 0xd0) = [r19 retain];
    *(r27 + 0xd8) = [r23 retain];
    *(r27 + 0xe0) = [r20 retain];
    r0 = var_410;
    if (r0 != 0x0) {
            r0 = [r0 unsignedIntValue];
    }
    r19 = var_3C0;
    *(int32_t *)(r27 + 0xc8) = r0;
    r20 = var_3B0;
    r0 = var_3A8;
    if (r0 != 0x0) {
            [r0 floatValue];
    }
    asm { fcvt       d0, s0 };
    *(r27 + 0x110) = d0;
    *(r27 + 0xe8) = [var_358 retain];
    *(r27 + 0xf0) = [r19 retain];
    *(r27 + 0xf8) = [var_3C8 retain];
    *(r27 + 0x118) = [r20 retain];
    *(r27 + 0x120) = [var_3D8 retain];
    *(r27 + 0x128) = [var_3D0 retain];
    *(r27 + 0x130) = [var_3B8 retain];
    *(r27 + 0x138) = [var_328 retain];
    r0 = var_400;
    if (r0 != 0x0) {
            r0 = [r0 boolValue];
    }
    *(int8_t *)(r27 + 0x140) = r0;
    r0 = var_3F0;
    if (r0 != 0x0) {
            r0 = [r0 boolValue];
    }
    *(int8_t *)(r27 + 0x141) = r0;
    r0 = var_3E0;
    if (r0 != 0x0) {
            r0 = [r0 boolValue];
    }
    r19 = var_3F4 | var_404;
    *(int8_t *)(r27 + 0x142) = r0;
    r0 = var_3E8;
    if (r0 != 0x0) {
            r0 = [r0 boolValue];
    }
    else {
            r0 = 0x1;
    }
    *(int8_t *)(r27 + 0x170) = r0;
    *(int8_t *)(r27 + 0x185) = r19;
    r0 = *(r27 + 0xb0);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0xb0) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0xb8);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0xb8) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0xe8);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0xe8) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0x128);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0x128) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0x130);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0x130) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0x150);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0x150) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0x148);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0x148) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0x158);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0x158) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0x160);
    if (r0 != 0x0) {
            [r0 setDelegateTarget:r27];
            [*(r27 + 0x160) setDelegateSelector:r2];
    }
    r0 = *(r27 + 0x138);
    if (r0 != 0x0) {
            var_2D0 = q0;
            r0 = [r0 allValues];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_308 = r1;
            var_300 = r0;
            r0 = objc_msgSend(r0, r1);
            var_2E8 = r0;
            if (r0 != 0x0) {
                    var_2F8 = *var_2D0;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_2D0 != var_2F8) {
                                            objc_enumerationMutation(var_300);
                                    }
                                    r21 = *(var_2D8 + r22 * 0x8);
                                    [r21 setSuccessDelegateTarget:r27];
                                    [r21 setSuccessDelegateSelector:@selector(actionSuccess:)];
                                    [r21 setSuccessDelegateParameter:r21];
                                    [r21 setFailureDelegateTarget:r27];
                                    [r21 setFailureDelegateSelector:@selector(actionFailure:)];
                                    [r21 setFailureDelegateParameter:r2];
                                    r22 = r22 + 0x1;
                            } while (r22 < var_2E8);
                            r0 = objc_msgSend(var_300, var_308);
                            var_2E8 = r0;
                    } while (r0 != 0x0);
            }
    }
    *(int32_t *)(r27 + 0x180) = 0x0;
    *(int8_t *)(r27 + 0x186) = 0x0;
    goto loc_1009dd1ec;

loc_1009dd234:
    r20 = var_368;
    goto loc_1009dcc60;

loc_1009dcc60:
    r0 = objc_msgSend(r19, r26);
    r23 = var_318;
    if (r0 != 0x0) {
            if (r20 != 0x0 && objc_msgSend(r20, r28) != 0x0) {
                    [r20 objectForKey:@"buttonIconImage"];
                    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r20 = r28;
                            if (objc_msgSend(r0, r28) != 0x0) {
                                    r24 = *(&@class(MPVASTModel) + 0xfe8);
                                    [r23 objectForKey:@"imageData"];
                                    r0 = [r24 executeDataAccessFromConfig:r2];
                                    if (r0 != 0x0) {
                                            r23 = r0;
                                            if (objc_msgSend(r0, r20) != 0x0) {
                                                    r20 = *(&@class(MPVASTModel) + 0xfe8);
                                                    [r23 objectForKey:@"spriteFilename"];
                                                    r0 = [r20 executeDataAccessFromConfig:r2];
                                                    if (r0 != 0x0) {
                                                            r23 = r0;
                                                            if (objc_msgSend(r0, r26) != 0x0) {
                                                                    r23 = var_318;
                                                            }
                                                    }
                                                    else {
                                                            r23 = var_318;
                                                    }
                                            }
                                            else {
                                                    r23 = var_318;
                                            }
                                    }
                                    else {
                                            r23 = var_318;
                                    }
                            }
                            else {
                                    r23 = var_318;
                            }
                    }
                    else {
                            r23 = var_318;
                    }
                    r20 = var_368;
            }
            else {
                    r23 = var_318;
            }
    }
    goto loc_1009dcd64;

loc_1009dcc58:
    r19 = r23;
    if (r23 != 0x0) {
            r0 = objc_msgSend(r19, r26);
            r23 = var_318;
            if (r0 != 0x0) {
                    if (r20 != 0x0 && objc_msgSend(r20, r28) != 0x0) {
                            [r20 objectForKey:@"buttonIconImage"];
                            r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
                            if (r0 != 0x0) {
                                    r23 = r0;
                                    r20 = r28;
                                    if (objc_msgSend(r0, r28) != 0x0) {
                                            r24 = *(&@class(MPVASTModel) + 0xfe8);
                                            [r23 objectForKey:@"imageData"];
                                            r0 = [r24 executeDataAccessFromConfig:r2];
                                            if (r0 != 0x0) {
                                                    r23 = r0;
                                                    if (objc_msgSend(r0, r20) != 0x0) {
                                                            r20 = *(&@class(MPVASTModel) + 0xfe8);
                                                            [r23 objectForKey:@"spriteFilename"];
                                                            r0 = [r20 executeDataAccessFromConfig:r2];
                                                            if (r0 != 0x0) {
                                                                    r23 = r0;
                                                                    if (objc_msgSend(r0, r26) != 0x0) {
                                                                            r23 = var_318;
                                                                    }
                                                            }
                                                            else {
                                                                    r23 = var_318;
                                                            }
                                                    }
                                                    else {
                                                            r23 = var_318;
                                                    }
                                            }
                                            else {
                                                    r23 = var_318;
                                            }
                                    }
                                    else {
                                            r23 = var_318;
                                    }
                            }
                            else {
                                    r23 = var_318;
                            }
                            r20 = var_368;
                    }
                    else {
                            r23 = var_318;
                    }
            }
    }
    else {
            if (r20 != 0x0 && objc_msgSend(r20, r28) != 0x0) {
                    [r20 objectForKey:@"buttonIconImage"];
                    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r20 = r28;
                            if (objc_msgSend(r0, r28) != 0x0) {
                                    r24 = *(&@class(MPVASTModel) + 0xfe8);
                                    [r23 objectForKey:@"imageData"];
                                    r0 = [r24 executeDataAccessFromConfig:r2];
                                    if (r0 != 0x0) {
                                            r23 = r0;
                                            if (objc_msgSend(r0, r20) != 0x0) {
                                                    r20 = *(&@class(MPVASTModel) + 0xfe8);
                                                    [r23 objectForKey:@"spriteFilename"];
                                                    r0 = [r20 executeDataAccessFromConfig:r2];
                                                    if (r0 != 0x0) {
                                                            r23 = r0;
                                                            if (objc_msgSend(r0, r26) != 0x0) {
                                                                    r23 = var_318;
                                                            }
                                                    }
                                                    else {
                                                            r23 = var_318;
                                                    }
                                            }
                                            else {
                                                    r23 = var_318;
                                            }
                                    }
                                    else {
                                            r23 = var_318;
                                    }
                            }
                            else {
                                    r23 = var_318;
                            }
                    }
                    else {
                            r23 = var_318;
                    }
                    r20 = var_368;
            }
            else {
                    r23 = var_318;
            }
    }
    goto loc_1009dcd64;

loc_1009dc8f8:
    [var_2E8 class];
    r1 = @selector(stringWithFormat:);
    goto loc_1009dd18c;

loc_1009dd18c:
    r0 = objc_msgSend(@class(NSString), r1);
    if (r19 == 0x0) goto loc_1009dd1e8;

loc_1009dd198:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009db058;

loc_1009dd164:
    [var_2E8 class];
    r1 = @selector(stringWithFormat:);
    goto loc_1009dd18c;

loc_1009dc16c:
    r26 = 0x0;
    goto loc_1009dc170;

loc_1009dbfbc:
    var_3C8 = r27;
    var_3C0 = r20;
    var_388 = r26;
    var_3D0 = 0x0;
    goto loc_1009dbfc8;

loc_1009dbbd4:
    if (r9 == 0x0 || r8 == 0x0 || r27 != 0x0) goto loc_1009dbcc4;

loc_1009dbbe0:
    objc_msgSend(@class(MCPromoWaitForMultiDateTrigger), r1);
    if (objc_msgSend(r8, var_328) == 0x0) goto loc_1009dbdc0;

loc_1009dbc00:
    [MCPromoWaitForMultiDateTrigger class];
    if (objc_msgSend(var_358, var_328) == 0x0 || [MCPromoTriggerUtils dateList:var_378 containsAtLeastOneEqualDateTo:var_380] == 0x0) goto loc_1009dbdc0;

loc_1009dbc3c:
    [var_2E8 class];
    r2 = @"Start and badge end trigger should not have equal values, if wake up trigger isn't defined in '%@' promo (%@)";
    goto loc_1009dbc68;

loc_1009dbcc4:
    if (var_358 == 0x0 || r8 != 0x0 || r27 == 0x0) goto loc_1009dbdc0;

loc_1009dbcd4:
    [MCPromoWaitForTimeTrigger class];
    if (objc_msgSend(r27, var_328) == 0x0) goto loc_1009dbdc0;

loc_1009dbcf8:
    [MCPromoWaitForTimeTrigger class];
    if (objc_msgSend(var_358, var_328) == 0x0 || [MCPromoTriggerUtils dateList:var_3A0 containsAtLeastOneEqualDateTo:var_380] == 0x0) goto loc_1009dbdc0;

loc_1009dbd38:
    [var_2E8 class];
    r0 = [NSString stringWithFormat:@"Wake up and badge end trigger should not have equal values, if start trigger isn't defined in '%@' promo (%@)"];
    if (r19 == 0x0) goto loc_1009dd1e8;

loc_1009dbd70:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009db058;

loc_1009db980:
    if (r8 == 0x0) goto loc_1009dba0c;

loc_1009db984:
    [var_2E8 class];
    r2 = @"Cannot continue without badgeEndTrigger defined in '%@' promo (%@)";
    goto loc_1009db9b4;

loc_1009db864:
    [var_2E8 class];
    r2 = @"Cannot continue without store changes defined in '%@' promo (%@)";
    goto loc_1009db894;

loc_1009db678:
    var_2F0 = 0x0;
    goto loc_1009db67c;

loc_1009db8f0:
    [var_2E8 class];
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009dd1e8;

loc_1009db928:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009db058;

loc_1009db510:
    var_350 = 0x0;
    goto loc_1009db514;

loc_1009db420:
    var_340 = 0x0;
    goto loc_1009db424;

loc_1009db338:
    var_348 = 0x0;
    goto loc_1009db33c;

loc_1009db2a4:
    var_338 = 0x0;
    goto loc_1009db2a8;

loc_1009db210:
    var_320 = 0x0;
    goto loc_1009db214;

loc_1009db17c:
    var_310 = 0x0;
    goto loc_1009db180;

loc_1009dafe4:
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009dd1e8;

loc_1009db004:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009db058;
}

@end
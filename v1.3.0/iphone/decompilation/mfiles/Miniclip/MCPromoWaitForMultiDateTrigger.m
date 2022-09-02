@implementation MCPromoWaitForMultiDateTrigger

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void *)createActivationDateComponents:(void *)arg2 mustBeAbsolute:(bool)arg3 withError:(void * *)arg4 {
    r0 = sub_1009ece68(arg2, arg3, arg4);
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mActivationDates));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
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
    r19 = arg3;
    r22 = arg2;
    r25 = self;
    [[&var_F0 super] setup:r2 withError:r3];
    r0 = [NSMutableArray array];
    if (r22 != 0x0) {
            r21 = r0;
            r1 = @selector(count);
            var_148 = r1;
            if (objc_msgSend(r22, r1) != 0x0) {
                    r0 = [r22 objectForKey:r2];
                    if (r0 != 0x0) {
                            r24 = r0;
                            r27 = objc_msgSend(r0, var_148);
                            var_120 = q0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            r3 = &stack[-240];
                            var_168 = r1;
                            r0 = objc_msgSend(r24, r1);
                            if (r0 != 0x0) {
                                    r26 = r0;
                                    var_138 = *var_120;
                                    do {
                                            r20 = 0x0;
                                            do {
                                                    if (*var_120 != var_138) {
                                                            objc_enumerationMutation(r24);
                                                    }
                                                    if (r27 > 0x1) {
                                                            if (CPU_FLAGS & A) {
                                                                    r3 = 0x1;
                                                            }
                                                    }
                                                    r0 = [r25 createActivationDateComponents:*(var_128 + r20 * 0x8) mustBeAbsolute:r3 withError:r19];
                                                    if (r0 != 0x0) {
                                                            r22 = r0;
                                                            if (objc_msgSend(r21, var_148) != 0x0) {
                                                                    r23 = r19;
                                                                    r3 = [NSArray arrayWithObject:r22];
                                                                    r25 = r25;
                                                                    r24 = r24;
                                                                    r19 = r23;
                                                                    r0 = [MCPromoTriggerUtils dateList:r21 containsAtLeastOneEqualDateTo:r3];
                                                                    if (r23 != 0x0 && r0 != 0x0) {
                                                                            *r19 = [NSError errorWithDomain:@"DatesDuplicated" code:0x0 userInfo:0x0];
                                                                    }
                                                            }
                                                            [r21 addObject:r2];
                                                    }
                                                    r20 = r20 + 0x1;
                                            } while (r20 < r26);
                                            r3 = &stack[-240];
                                            r0 = objc_msgSend(r24, var_168);
                                            r26 = r0;
                                    } while (r0 != 0x0);
                            }
                            if (objc_msgSend(r21, var_148) != 0x0) {
                                    r25->mActivationDates = [[NSArray arrayWithArray:r21] retain];
                            }
                            else {
                                    if (r19 != 0x0) {
                                            *r19 = [NSError errorWithDomain:@"NoDatesDefined" code:0x0 userInfo:0x0];
                                    }
                            }
                    }
                    else {
                            if (r19 != 0x0) {
                                    *r19 = [NSError errorWithDomain:@"NoDatesDefined" code:0x0 userInfo:0x0];
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(double)timeToNextActivation {
    r0 = [self timeToNextActivationFromTimestamp:r2];
    return r0;
}

-(void)setCurrentTimestamp:(double)arg2 {
    r0 = self;
    r31 = r31 - 0x150;
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
    if (d0 >= 0x0) {
            asm { ccmp       w8, #0x0, #0x4, pl };
    }
    if (CPU_FLAGS & E) goto loc_1009ed388;

loc_1009ed260:
    v8 = v0;
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTimestamp));
    d9 = *(r0 + r8);
    if (d9 >= 0x0) goto loc_1009ed288;

loc_1009ed27c:
    *(r19 + r8) = d8;
    v9 = v8;
    goto loc_1009ed290;

loc_1009ed290:
    *(r19 + r8) = d8;
    r20 = r19->mActivationDates;
    if (r20 == 0x0) goto loc_1009ed388;

loc_1009ed2a4:
    var_130 = q0;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1009ed388;

loc_1009ed2d4:
    r22 = r0;
    r25 = *var_130;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mLastActivationTimestamp));
    goto loc_1009ed2ec;

loc_1009ed2ec:
    r27 = 0x0;
    goto loc_1009ed2f4;

loc_1009ed2f4:
    if (*var_130 != r25) {
            objc_enumerationMutation(r20);
    }
    sub_1009eea04(*(var_138 + r27 * 0x8));
    if (d10 >= d9) {
            asm { fccmp      d10, d8, #0x2, ge };
    }
    if (CPU_FLAGS & B) {
            asm { fccmp      d10, d0, #0x4, ls };
    }
    if (CPU_FLAGS & LE || [r19 canActivate] == 0x0) goto loc_1009ed344;

loc_1009ed374:
    *(r19 + r24) = d10;
    [r19 activate];
    goto loc_1009ed388;

loc_1009ed388:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1009ed344:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1009ed2f4;

loc_1009ed350:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1009ed2ec;
    goto loc_1009ed388;

loc_1009ed288:
    if (d9 >= d8) goto loc_1009ed388;
}

-(double)timeToNextActivationFromTimestamp:(double)arg2 {
    r0 = self;
    r31 = r31 - 0x130;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (d0 >= 0x0) {
            r19 = r0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(mActivationDates));
            r0 = *(r0 + r20);
            if (r0 != 0x0) {
                    v8 = v0;
                    r0 = [r0 count];
                    if (r0 != 0x0) {
                            var_110 = q0;
                            r19 = *(r19 + r20);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    r22 = *var_110;
                                    do {
                                            r23 = 0x0;
                                            do {
                                                    if (*var_110 != r22) {
                                                            objc_enumerationMutation(r19);
                                                    }
                                                    sub_1009eea04(*(var_118 + r23 * 0x8));
                                                    if (d0 < d10) {
                                                            asm { fccmp      d10, d11, #0x4, lt };
                                                    }
                                                    if (CPU_FLAGS & E) {
                                                            asm { fcsel      d1, d0, d10, eq };
                                                    }
                                                    if (d0 < d8) {
                                                            asm { fcsel      d10, d10, d1, lt };
                                                    }
                                                    r23 = r23 + 0x1;
                                            } while (r23 < r21);
                                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r21 = r0;
                                    } while (r0 != 0x0);
                            }
                            if (d10 >= d8) {
                                    asm { fcsel      d9, d10, d9, ge };
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)activate {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int32_t *)(int64_t *)&self->mMaxActivations == 0x0 && [r19->mActivationDates count] >= 0x2) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mNumActivations));
            *(int32_t *)(r19 + r8) = *(int32_t *)(r19 + r8) + 0x1;
    }
    [[&var_20 super] activate];
    return;
}

-(bool)reachedMaxActivations {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->mActivationDates;
    r0 = [r0 count];
    if (r0 == 0x1) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mMaxActivations));
            r8 = *(int32_t *)(r19 + r8);
            if (r8 != 0x0) {
                    if (*(int32_t *)(int64_t *)&r19->mNumActivations >= r8) {
                            if (CPU_FLAGS & NB) {
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
    return r0;
}

-(void *)activationDates {
    r0 = self->mActivationDates;
    return r0;
}

-(void *)getClosestDateToActivation {
    r31 = r31 - 0x140;
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
    r19 = self;
    var_120 = q0;
    r20 = self->mActivationDates;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r22 = 0x0;
            r25 = *var_120;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTimestamp));
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            r8 = var_128;
                            r24 = *(r8 + r27 * 0x8);
                            d0 = *(r19 + r26);
                            sub_1009eea04(r24);
                            if (d0 >= *(r19 + r26)) {
                                    if (d0 >= d9) {
                                            if (CPU_FLAGS & GE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    if (d9 == 0xbff0000000000000) {
                                            if (CPU_FLAGS & E) {
                                                    r9 = 0x1;
                                            }
                                    }
                                    if ((r9 | r8) != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r22 = r22;
                                            }
                                            else {
                                                    r22 = r24;
                                            }
                                    }
                                    if (CPU_FLAGS & NE) {
                                            asm { fcsel      d9, d0, d9, ne };
                                    }
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    else {
            r22 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setActivationDates:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
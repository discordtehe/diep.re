@implementation MCPromoWaitForDeltaTimeTrigger

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)reset {
    [[&var_20 super] reset];
    self->mStartTimestamp = 0xbff0000000000000;
    return;
}

-(void)softReset {
    [[&var_20 super] softReset];
    self->mStartTimestamp = 0xbff0000000000000;
    return;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
    r31 = r31 - 0x90;
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
    r20 = arg2;
    r19 = self;
    [[&var_70 super] setup:r2 withError:arg3];
    r19->mStartTimestamp = 0xbff0000000000000;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mDeltaTime));
    *(r19 + r22) = 0x0;
    if (r20 != 0x0) {
            r0 = [r20 count];
            if (r0 != 0x0) {
                    r21 = @selector(objectForKey:);
                    r28 = objc_msgSend(r20, r21);
                    r27 = objc_msgSend(r20, r21);
                    r26 = objc_msgSend(r20, r21);
                    r25 = objc_msgSend(r20, r21);
                    r24 = objc_msgSend(r20, r21);
                    var_80 = objc_msgSend(r20, r21);
                    var_78 = objc_msgSend(r20, r21);
                    if (r28 != 0x0) {
                            [r28 doubleValue];
                            d0 = *(r19 + r22) + d0 * *0x100bfa1b0 * 0x0;
                            *(r19 + r22) = d0;
                    }
                    if (r27 != 0x0) {
                            [r27 doubleValue];
                            d0 = *(r19 + r22) + d0 * 0x0;
                            *(r19 + r22) = d0;
                    }
                    if (r26 != 0x0) {
                            [r26 doubleValue];
                            d0 = *(r19 + r22) + d0 * 0x0;
                            *(r19 + r22) = d0;
                    }
                    if (r25 != 0x0) {
                            [r25 doubleValue];
                            d0 = *(r19 + r22) + d0 * 0x0;
                            *(r19 + r22) = d0;
                    }
                    if (r24 != 0x0) {
                            [r24 doubleValue];
                            d0 = *(r19 + r22) + d0 * 0x0;
                            *(r19 + r22) = d0;
                    }
                    r0 = var_80;
                    if (r0 != 0x0) {
                            [r0 doubleValue];
                            d0 = *(r19 + r22) + d0 * 0x404e000000000000;
                            *(r19 + r22) = d0;
                    }
                    r0 = var_78;
                    if (r0 != 0x0) {
                            [r0 doubleValue];
                            *(r19 + r22) = d0 + *(r19 + r22);
                    }
                    r0 = [r20 objectForKey:r2];
                    if (r0 != 0x0) {
                            r0 = [r0 boolValue];
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    *(int8_t *)(int64_t *)&r19->mAllowTriggerMoreThanOnceOnUpdate = r0;
    return;
}

-(double)timeToNextActivation {
    r0 = [self timeToNextActivationFromTimestamp:r2];
    return r0;
}

-(double)timeToNextActivationFromTimestamp:(double)arg2 {
    r0 = self;
    if (d0 >= 0x0) {
            if ((r0->mDeltaTime - d0) + r0->mStartTimestamp < 0x0) {
                    asm { fcsel      d0, d1, d0, mi };
            }
    }
    return r0;
}

-(void *)getState {
    [[&var_30 super] getState];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithDouble:r2]];
    return r0;
}

-(void)setCurrentTimestamp:(double)arg2 {
    r0 = self;
    r31 = r31 - 0x80;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mEnabled));
    if (d0 >= 0x0) {
            asm { ccmp       w8, #0x0, #0x4, pl };
    }
    if (CPU_FLAGS & E) goto .l7;

loc_1009edee4:
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTimestamp));
    d1 = *(r0 + r8);
    if (d1 >= 0x0) goto loc_1009edf10;

loc_1009edefc:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mStartTimestamp));
    *(r19 + r23) = d0;
    *(r19 + r8) = d0;
    goto loc_1009edf20;

loc_1009edf20:
    *(r19 + r8) = d0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mDeltaTime));
    if (*(r19 + r24) > 0x0) {
            asm { fccmp      d8, d0, #0x8, gt };
    }
    if (!CPU_FLAGS & L) {
            r1 = @selector(canActivate);
            if (objc_msgSend(r19, r1) != 0x0) {
                    asm { fdiv       d0, d8, d0 };
                    modf(&var_68, r1);
                    asm { fcvtzu     w25, d0 };
                    if (r25 >= 0x2 && *(int8_t *)(int64_t *)&r19->mAllowTriggerMoreThanOnceOnUpdate != 0x0) {
                            r26 = 0x1;
                            do {
                                    if ([r19 canActivate] != 0x0) {
                                            d0 = *(r19 + r23);
                                            d1 = *(r19 + r24);
                                            r19->mLastActivationTimestamp = d0 + d1;
                                            *(r19 + r23) = d0 + d1;
                                            [r19 activate];
                                    }
                                    if (*(int8_t *)(r19 + r22) == 0x0) {
                                        break;
                                    }
                                    if (*(r19 + r23) >= 0x0) {
                                            asm { ccmp       w26, w25, #0x2, pl };
                                    }
                                    r26 = r26 + 0x1;
                            } while (CPU_FLAGS & B);
                    }
                    else {
                            d0 = *(r19 + r23);
                            d1 = *(r19 + r24);
                            r19->mLastActivationTimestamp = d0 + d1;
                            *(r19 + r23) = d0 + d1;
                            [r19 activate];
                    }
            }
    }
    return;

.l7:
    return;

loc_1009edf10:
    if (d1 >= d0) goto .l7;

loc_1009edf18:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mStartTimestamp));
    goto loc_1009edf20;
}

-(double)deltaTime {
    r0 = self;
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    if (r2 != 0x0) {
            r23 = [r2 objectForKey:@"startTimestampState"];
            r21 = [r2 objectForKey:@"superClassState"];
            [r23 doubleValue];
            r0->mStartTimestamp = d0;
            [[&var_40 super] setState:r21 withError:r19];
    }
    else {
            if (r19 != 0x0) {
                    *r19 = [NSError errorWithDomain:@"NoStateDefined" code:0x0 userInfo:0x0];
            }
    }
    return;
}

-(void)setAllowTriggerMoreThanOnceOnUpdate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mAllowTriggerMoreThanOnceOnUpdate = arg2;
    return;
}

-(void)setDeltaTime:(double)arg2 {
    self->mDeltaTime = d0;
    return;
}

-(bool)allowTriggerMoreThanOnceOnUpdate {
    r0 = *(int8_t *)(int64_t *)&self->mAllowTriggerMoreThanOnceOnUpdate;
    return r0;
}

@end
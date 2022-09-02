@implementation MCPromoWaitForNestedTriggersTrigger

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [[&var_20 super] setup:r2 withError:arg3];
    if (r20 != 0x0) {
            r0 = [r20 count];
            if (r0 != 0x0) {
                    r0 = [r20 objectForKey:r2];
                    if (r0 != 0x0) {
                            r0 = [r0 boolValue];
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    *(int8_t *)(int64_t *)&r19->mActivateOnFirstTrigger = r0;
    return;
}

-(void *)getState {
    [[&var_30 super] getState];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:*(int8_t *)(int64_t *)&self->mActivateOnFirstTrigger]];
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    if (r2 != 0x0) {
            *(int8_t *)(int64_t *)&r0->mActivateOnFirstTrigger = [[r2 objectForKey:@"activateOnFirstTriggerState"] boolValue];
            [[&var_30 super] setState:[r2 objectForKey:@"superClassState"] withError:r19];
    }
    else {
            if (r19 != 0x0) {
                    *r19 = [NSError errorWithDomain:@"NoStateDefined" code:0x0 userInfo:0x0];
            }
    }
    return;
}

-(bool)canActivate {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [self->mActivationTriggers count];
    if (*(int8_t *)(int64_t *)&r19->mActivateOnFirstTrigger == 0x0) goto loc_1009ebf60;

loc_1009ebf0c:
    if (r20 < 0x1) goto loc_1009ebf58;

loc_1009ebf14:
    r21 = 0x0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
    goto loc_1009ebf30;

loc_1009ebf30:
    if ([[*(r19 + r24) objectAtIndex:r21] boolValue] != 0x0) goto loc_1009ebfac;

loc_1009ebf4c:
    r21 = r21 + 0x1;
    if (r20 != r21) goto loc_1009ebf30;

loc_1009ebf58:
    r0 = 0x0;
    return r0;

loc_1009ebfac:
    r0 = [[&var_40 super] canActivate];
    return r0;

loc_1009ebf60:
    if (r20 < 0x1) goto loc_1009ebfac;

loc_1009ebf68:
    r21 = 0x0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
    goto loc_1009ebf84;

loc_1009ebf84:
    if (([[*(r19 + r24) objectAtIndex:r21] boolValue] & 0x1) == 0x0) goto loc_1009ebf58;

loc_1009ebfa0:
    r21 = r21 + 0x1;
    if (r20 != r21) goto loc_1009ebf84;
}

-(void)updateState {
    r31 = r31 - 0x90;
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
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r20 = [*(self + r27) count];
    if (*(int8_t *)(int64_t *)&r19->mEnabled != 0x0) {
            if (r20 >= 0x1) {
                    r21 = 0x0;
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
                    do {
                            r28 = [*(r19 + r27) objectAtIndex:r21];
                            if (([[*(r19 + r25) objectAtIndex:r21] boolValue] & 0x1) != 0x0) {
                                    [r28 setEnabled:0x0];
                            }
                            else {
                                    [r28 setEnabled:0x1];
                                    if ([r28 isKindOfClass:[MCPromoWaitForTimeBaseTrigger class]] != 0x0 || [r28 isKindOfClass:[MCPromoWaitForNestedTriggersBaseTrigger class]] != 0x0) {
                                            [r28 setCurrentTimestamp:r2];
                                    }
                            }
                            r21 = r21 + 0x1;
                    } while (r20 != r21);
            }
    }
    else {
            if (r20 >= 0x1) {
                    r21 = 0x0;
                    do {
                            [[*(r19 + r27) objectAtIndex:r2] setEnabled:r2];
                            r21 = r21 + 0x1;
                    } while (r20 != r21);
            }
    }
    [[&var_60 super] updateState];
    return;
}

-(void)setCurrentTimestamp:(double)arg2 {
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
    v8 = v0;
    r19 = self;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r0 = *(self + r28);
    r0 = [r0 count];
    if (r0 >= 0x1) {
            r20 = r0;
            r21 = 0x0;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
            do {
                    if (([[*(r19 + r26) objectAtIndex:r21] boolValue] & 0x1) == 0x0) {
                            r27 = [*(r19 + r28) objectAtIndex:r21];
                            if ([r27 isKindOfClass:[MCPromoWaitForTimeBaseTrigger class]] != 0x0 || [r27 isKindOfClass:[MCPromoWaitForNestedTriggersBaseTrigger class]] != 0x0) {
                                    [r27 setCurrentTimestamp:r2];
                            }
                    }
                    r21 = r21 + 0x1;
            } while (r20 != r21);
    }
    r19->mCurrentTimestamp = d8;
    return;
}

-(void)activatedTrigger:(void *)arg2 {
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
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r20 = [*(self + r24) count];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
    r23 = [*(r19 + r25) count];
    r0 = [arg2 integerValue];
    if (r20 == r23) {
            asm { ccmp       x0, x20, #0x0, eq };
    }
    if (CPU_FLAGS & GE) goto .l3;

loc_1009ebb2c:
    [*(r19 + r25) replaceObjectAtIndex:r0 withObject:@(YES)];
    r22 = [*(r19 + r24) objectAtIndex:r0];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTimestamp));
    d8 = *(r19 + r26);
    [MCPromoWaitForTimeBaseTrigger class];
    if ([r22 isKindOfClass:r2] == 0x0) {
            r24 = @selector(isKindOfClass:);
            [MCPromoWaitForNestedTriggersBaseTrigger class];
            if (objc_msgSend(r22, r24) != 0x0) {
                    [r22 lastActivationTimestamp];
            }
    }
    else {
            [r22 lastActivationTimestamp];
    }
    *(r19 + r26) = d8;
    [r22 setEnabled:0x0];
    r0 = [r19 activateOnFirstTrigger];
    r22 = 0x1;
    if (r20 < 0x1) goto loc_1009ebc70;

loc_1009ebc2c:
    r22 = 0x1;
    if (r0 != 0x0) goto loc_1009ebc70;

loc_1009ebc30:
    r22 = 0x0;
    goto loc_1009ebc3c;

loc_1009ebc3c:
    if (([[*(r19 + r25) objectAtIndex:r22] boolValue] & 0x1) == 0x0) goto loc_1009ebc6c;

loc_1009ebc58:
    r22 = r22 + 0x1;
    if (r20 != r22) goto loc_1009ebc3c;

loc_1009ebc64:
    r22 = 0x1;
    goto loc_1009ebc70;

loc_1009ebc70:
    if ((r22 & [r19 canActivate]) != 0x0) {
            r19->mLastActivationTimestamp = d8;
            [r19 activate];
    }
    return;

.l3:
    return;

loc_1009ebc6c:
    r22 = 0x0;
    goto loc_1009ebc70;
}

-(bool)activateOnFirstTrigger {
    r0 = *(int8_t *)(int64_t *)&self->mActivateOnFirstTrigger;
    return r0;
}

-(void)setActivateOnFirstTrigger:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mActivateOnFirstTrigger = arg2;
    return;
}

@end
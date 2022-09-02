@implementation MCPromoWaitForNestedTriggersBaseTrigger

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)setCurrentTimestamp:(double)arg2 {
    return;
}

-(void)dealloc {
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
    r19 = self;
    var_110 = q0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r20 = *(self + r24);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_118 + r27 * 0x8) setDelegateParameter:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    r0 = *(r19 + r24);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r24) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [[&var_130 super] dealloc];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
    r31 = r31 - 0xc0;
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
    r20 = arg3;
    r19 = arg2;
    var_68 = self;
    [[&stack[-112] super] setup:r2 withError:r3];
    var_78 = [NSMutableArray array];
    var_70 = [NSMutableArray array];
    if (r19 != 0x0 && [r19 count] != 0x0) {
            r23 = [r19 objectForKey:r2];
    }
    else {
            r23 = 0x0;
    }
    r0 = [r23 count];
    if (r0 != 0x0) {
            r24 = r0;
            r25 = 0x0;
            do {
                    r0 = [MCPromoTrigger getTriggerFromConfiguration:[r23 objectAtIndex:r25] withError:r20];
                    if (*r20 == 0x0) {
                            [r0 setDelegateTarget:r2];
                            [r19 setDelegateSelector:@selector(activatedTrigger:)];
                            [r19 setDelegateParameter:[NSNumber numberWithInt:r25]];
                            [var_78 addObject:r19];
                            [var_70 addObject:[NSNumber numberWithBool:r2]];
                    }
                    r25 = r25 + 0x1;
            } while (r24 != r25);
    }
    var_68->mActivationTriggers = [var_78 retain];
    var_68->mActivationTriggersWasActivated = [var_70 retain];
    [var_68 updateState];
    return;
}

-(void)activatedTrigger:(void *)arg2 {
    return;
}

-(void)reset {
    r31 = r31 - 0x70;
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
    [[&var_60 super] reset];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r0 = *(r19 + r27);
    r0 = [r0 count];
    if (r0 >= 0x1) {
            r21 = r0;
            r22 = 0x0;
            r28 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
            do {
                    [[*(r19 + r27) objectAtIndex:r22] reset];
                    [*(r19 + r28) replaceObjectAtIndex:r22 withObject:@(NO)];
                    r22 = r22 + 0x1;
            } while (r21 != r22);
    }
    if (*(int8_t *)(int64_t *)&r19->mEnabled != 0x0) {
            [r19 updateState];
    }
    return;
}

-(void)softReset {
    r31 = r31 - 0x70;
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
    [[&var_60 super] softReset];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r0 = *(r19 + r27);
    r0 = [r0 count];
    if (r0 >= 0x1) {
            r21 = r0;
            r22 = 0x0;
            r28 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
            do {
                    [[*(r19 + r27) objectAtIndex:r22] softReset];
                    [*(r19 + r28) replaceObjectAtIndex:r22 withObject:@(NO)];
                    r22 = r22 + 0x1;
            } while (r21 != r22);
    }
    if (*(int8_t *)(int64_t *)&r19->mEnabled != 0x0) {
            [r19 updateState];
    }
    return;
}

-(void *)getActivationTriggersActivated {
    r0 = [NSArray arrayWithArray:self->mActivationTriggersWasActivated];
    return r0;
}

-(void *)getActivationTriggers {
    r0 = [NSArray arrayWithArray:self->mActivationTriggers];
    return r0;
}

-(void *)getState {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x20;
    r20 = self;
    var_68 = self;
    r19 = [[r29 - 0x68 super] getState];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r0 = *(r20 + r27);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r22 = @selector(count);
            r0 = *(r20 + r27);
            r0 = objc_msgSend(r0, r22);
            r22 = r0;
            r26 = &var_70;
            r23 = &var_70 - ((r0 << 0x3) + 0xf & 0xfffffffffffffff0);
            if (r0 != 0x0) {
                    r24 = 0x0;
                    do {
                            *(r23 + r24 * 0x8) = [[*(r20 + r27) objectAtIndex:r2] getState];
                            r24 = r24 + 0x1;
                    } while (r22 != r24);
            }
            r21 = [NSArray arrayWithObjects:r23 count:r22];
            r0 = @class(NSArray);
            r0 = [r0 arrayWithArray:r20->mActivationTriggersWasActivated];
            r31 = r26;
    }
    else {
            r0 = @class(NSArray);
            r20 = @selector(array);
            r21 = objc_msgSend(r0, r20);
            r0 = @class(NSArray);
            r0 = objc_msgSend(r0, r20);
    }
    var_58 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:r21];
    if (**___stack_chk_guard != var_58) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)activate {
    r31 = r31 - 0x70;
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
    [[&var_60 super] activate];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
    r0 = *(r19 + r27);
    r0 = [r0 count];
    if (r0 != 0x0) {
            r20 = r0;
            r21 = 0x0;
            r28 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
            do {
                    [[*(r19 + r28) objectAtIndex:r21] softReset];
                    r26 = *(r19 + r27);
@(NO);
                    [r26 replaceObjectAtIndex:r2 withObject:r3];
                    r21 = r21 + 0x1;
            } while (r20 != r21);
    }
    [r19 updateState];
    return;
}

-(double)currentTimestamp {
    r0 = self;
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
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
    r21 = arg3;
    if (r2 != 0x0) {
            r23 = r2;
            r20 = r0;
            r26 = [r23 objectForKey:@"activationTriggersState"];
            r19 = [r23 objectForKey:@"activatedTriggersState"];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
            r0 = *(r20 + r27);
            r22 = @selector(count);
            r25 = objc_msgSend(r0, r22);
            if (r25 == objc_msgSend(r26, r22) && r25 == [r19 count]) {
                    if (r25 != 0x0) {
                            stack[-136] = r23;
                            var_70 = r27;
                            var_68 = r19;
                            r27 = 0x0;
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
                            r23 = r21;
                            do {
                                    [[*(r20 + var_70) objectAtIndex:r27] setState:[r26 objectAtIndex:r27] withError:r23];
                                    [*(r20 + r24) replaceObjectAtIndex:r27 withObject:[var_68 objectAtIndex:r27]];
                                    r27 = r27 + 0x1;
                            } while (r25 != r27);
                            r21 = r23;
                            r24 = @selector(objectForKey:);
                            r23 = stack[-136];
                    }
                    else {
                            r24 = @selector(objectForKey:);
                    }
                    objc_msgSend(r23, r24);
                    [[&var_60 super] setState:r2 withError:r3];
            }
            else {
                    if (r21 != 0x0) {
                            *r21 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                    }
            }
    }
    else {
            if (r21 != 0x0) {
                    *r21 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
            }
    }
    return;
}

-(void *)description {
    r0 = self;
    r31 = r31 - 0xb0;
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
    r20 = r0;
    var_58 = r0->mName;
    if (*(int8_t *)(int64_t *)&r0->mEnabled == 0x0) {
            if (!CPU_FLAGS & E) {
                    r27 = @"Yes";
            }
            else {
                    r27 = @"No";
            }
    }
    if (*(int8_t *)(int64_t *)&r0->mResetOnDisable == 0x0) {
            if (!CPU_FLAGS & E) {
                    r28 = @"Yes";
            }
            else {
                    r28 = @"No";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMaxActivations));
    r0 = r0->mResetEvent;
    [r0 description];
    [r20->mEnableEvent description];
    [r20->mDisableEvent description];
    [r20->mActivationTriggers description];
    r0 = r20->mOnActivateEvents;
    [r0 description];
    r0 = [NSString stringWithFormat:@"{ Name: %@ | Enabled: %@ | ResetOnDisable: %@ | MaxActivations: %u | ResetEvent: %@ | EnableEvent: %@ | DisableEvent: %@ | ActivationTriggers: %@ | OnActivateEvents: %@ }"];
    return r0;
}

-(double)lastActivationTimestamp {
    r0 = self;
    return r0;
}

@end
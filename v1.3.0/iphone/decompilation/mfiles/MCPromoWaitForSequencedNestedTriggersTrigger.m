@implementation MCPromoWaitForSequencedNestedTriggersTrigger

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
    [[&var_10 super] setup:arg2 withError:arg3];
    return;
}

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)updateState {
    r31 = r31 - 0x80;
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
    if (*(int8_t *)(int64_t *)&r19->mEnabled == 0x0) goto loc_1009ec554;

loc_1009ec41c:
    if (r20 < 0x1) goto loc_1009ec598;

loc_1009ec424:
    r21 = 0x0;
    r25 = 0x0;
    goto loc_1009ec464;

loc_1009ec464:
    r28 = [*(r19 + r27) objectAtIndex:r21];
    if ((r25 & 0x1) == 0x0) goto loc_1009ec490;

loc_1009ec47c:
    [r28 setEnabled:0x0];
    goto loc_1009ec540;

loc_1009ec540:
    r25 = 0x1;
    goto loc_1009ec544;

loc_1009ec544:
    r21 = r21 + 0x1;
    if (r20 != r21) goto loc_1009ec464;

loc_1009ec598:
    [[&var_60 super] updateState];
    return;

loc_1009ec490:
    if (([[r19->mActivationTriggersWasActivated objectAtIndex:r21] boolValue] & 0x1) == 0x0) goto loc_1009ec4cc;

loc_1009ec4b4:
    [r28 setEnabled:0x0];
    r25 = 0x0;
    goto loc_1009ec544;

loc_1009ec4cc:
    [r28 setEnabled:0x1];
    r25 = @selector(class);
    if ([r28 isKindOfClass:objc_msgSend(@class(MCPromoWaitForTimeBaseTrigger), r25)] != 0x0 || [r28 isKindOfClass:objc_msgSend(@class(MCPromoWaitForNestedTriggersBaseTrigger), r25)] != 0x0) {
            [r28 setCurrentTimestamp:r2];
    }
    goto loc_1009ec540;

loc_1009ec554:
    if (r20 >= 0x1) {
            r21 = 0x0;
            do {
                    [[*(r19 + r27) objectAtIndex:r2] setEnabled:r2];
                    r21 = r21 + 0x1;
            } while (r20 != r21);
    }
    goto loc_1009ec598;
}

-(void)activatedTrigger:(void *)arg2 {
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
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggers));
    r20 = [*(self + r26) count];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
    r22 = [*(r19 + r23) count];
    r0 = [arg2 integerValue];
    if (r20 == r22) {
            asm { ccmp       x0, x20, #0x0, eq };
    }
    if (!CPU_FLAGS & GE) {
            r21 = r0;
            [*(r19 + r23) replaceObjectAtIndex:r21 withObject:@(YES)];
            r23 = [*(r19 + r26) objectAtIndex:r21];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTimestamp));
            d8 = *(r19 + r27);
            [MCPromoWaitForTimeBaseTrigger class];
            if ([r23 isKindOfClass:r2] == 0x0) {
                    r25 = @selector(isKindOfClass:);
                    [MCPromoWaitForNestedTriggersBaseTrigger class];
                    if (objc_msgSend(r23, r25) != 0x0) {
                            [r23 lastActivationTimestamp];
                            v8 = v0;
                    }
            }
            else {
                    [r23 lastActivationTimestamp];
                    v8 = v0;
            }
            *(r19 + r27) = d8;
            [r23 setEnabled:0x0];
            if (r21 == r20 - 0x1) {
                    r20 = 0x1;
            }
            else {
                    [[*(r19 + r26) objectAtIndex:r21 + 0x1] setEnabled:0x1];
                    r20 = 0x0;
            }
            [r19 setCurrentTimestamp:0x0];
            if ((r20 & [r19 canActivate]) != 0x0) {
                    r19->mLastActivationTimestamp = d8;
                    [r19 activate];
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
    r0 = self->mActivationTriggers;
    r0 = [r0 count];
    if (r0 < 0x1) goto loc_1009ec658;

loc_1009ec610:
    r20 = r0;
    r21 = 0x0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mActivationTriggersWasActivated));
    goto loc_1009ec630;

loc_1009ec630:
    if (([[*(r19 + r24) objectAtIndex:r21] boolValue] & 0x1) == 0x0) goto loc_1009ec678;

loc_1009ec64c:
    r21 = r21 + 0x1;
    if (r20 != r21) goto loc_1009ec630;

loc_1009ec658:
    r0 = [[&var_40 super] canActivate];
    return r0;

loc_1009ec678:
    r0 = 0x0;
    return r0;
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

@end
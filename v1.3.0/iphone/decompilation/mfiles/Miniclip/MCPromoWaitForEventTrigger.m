@implementation MCPromoWaitForEventTrigger

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mActivationEvent));
    [*(self + r20) setDelegateParameter:0x0];
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)updateState {
    [self->mActivationEvent setEnabled:*(int8_t *)(int64_t *)&self->mEnabled];
    [[&var_20 super] updateState];
    return;
}

-(void)reset {
    [[&var_20 super] reset];
    [self->mActivationEvent reset];
    *(int32_t *)(int64_t *)&self->mCount = 0x0;
    return;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r19 = self;
    [[&var_40 super] setup:r2 withError:r3];
    if (r20 == 0x0) goto loc_1009ea380;

loc_1009ea2f0:
    if ([r20 count] == 0x0) goto loc_1009ea37c;

loc_1009ea308:
    r24 = @selector(objectForKey:);
    r22 = objc_msgSend(r20, r24);
    r20 = objc_msgSend(r20, r24);
    if (r22 != 0x0) {
            r23 = @selector(count);
            r23 = objc_msgSend(r22, r23);
            r0 = objc_alloc();
            if (r23 != 0x0) {
                    r0 = [r0 initWithConfiguration:r22 withError:r21];
            }
            else {
                    r0 = [r0 init];
            }
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 init];
    }
    goto loc_1009ea398;

loc_1009ea398:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mActivationEvent));
    *(r19 + r21) = r0;
    [r0 setDelegateTarget:r19];
    [*(r19 + r21) setDelegateSelector:@selector(activationEvent)];
    if (r20 != 0x0) {
            r2 = [r20 unsignedIntValue];
    }
    else {
            r2 = 0x1;
    }
    [r19 setMaxCount:r2];
    return;

loc_1009ea37c:
    r20 = 0x0;
    goto loc_1009ea380;

loc_1009ea380:
    r0 = objc_alloc();
    r0 = [r0 init];
    goto loc_1009ea398;
}

-(void)softReset {
    [[&var_20 super] softReset];
    *(int32_t *)(int64_t *)&self->mCount = 0x0;
    return;
}

-(bool)canActivate {
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(int64_t *)&r0->mCount < *(int32_t *)(int64_t *)&r0->mMaxCount) {
            r0 = 0x0;
    }
    else {
            r0 = [[&var_10 super] canActivate];
    }
    return r0;
}

-(void)setMaxCount:(unsigned int)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMaxCount));
    if (arg2 != 0x0) {
            asm { csinc      w9, w2, wzr, ne };
    }
    *(int32_t *)(r0 + r8) = r9;
    if ([r0 canActivate] != 0x0) {
            [r19 activate];
    }
    return;
}

-(void)activate {
    *(int32_t *)(int64_t *)&self->mCount = 0x0;
    [[&var_10 super] activate];
    return;
}

-(void)activationEvent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCount));
    *(int32_t *)(self + r8) = *(int32_t *)(self + r8) + 0x1;
    if ([self canActivate] != 0x0) {
            [r19 activate];
    }
    return;
}

-(void *)getActivationEvents:(bool *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mActivationEvent));
    if (r2 != 0x0) {
            *(int8_t *)r2 = [*(r19 + r21) activateOnFirstEvent];
    }
    r0 = *(r19 + r21);
    r0 = [r0 events];
    return r0;
}

-(void)addToActivationEvent:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if ([r2 count] != 0x0) {
                    [r20->mActivationEvent addEvent:r19 withError:&var_18];
            }
    }
    return;
}

-(void *)getState {
    [[&var_30 super] getState];
    [self->mActivationEvent getState];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithUnsignedInt:*(int32_t *)(int64_t *)&self->mCount]];
    return r0;
}

-(unsigned int)maxCount {
    r0 = *(int32_t *)(int64_t *)&self->mMaxCount;
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    if (r2 != 0x0) {
            r24 = @selector(objectForKey:);
            r22 = objc_msgSend(r2, r24);
            r21 = objc_msgSend(r2, r24);
            r0 = objc_msgSend(r2, r24);
            if (r0 != 0x0) {
                    [r20->mActivationEvent setState:r2 withError:r3];
            }
            *(int32_t *)(int64_t *)&r20->mCount = [r22 unsignedIntValue];
            [[&var_40 super] setState:r2 withError:r3];
    }
    else {
            [r20 class];
            r0 = [NSString stringWithFormat:r2];
            if (r19 != 0x0) {
                    *r19 = [NSError errorWithDomain:@"NoStateDefined" code:0x0 userInfo:[[objc_alloc() initWithObjectsAndKeys:r0] autorelease]];
            }
    }
    return;
}

-(void *)description {
    r0 = self;
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
    r20 = r0;
    var_60 = r0->mName;
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
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mNumActivations));
    r0 = r0->mResetEvent;
    [r0 description];
    [r20->mEnableEvent description];
    [r20->mDisableEvent description];
    [r20->mActivationEvent description];
    r0 = r20->mOnActivateEvents;
    [r0 description];
    r0 = [NSString stringWithFormat:@"{ Name: %@ | Enabled: %@ | ResetOnDisable: %@ | MaxActivations: %u | NumActivations: %u | ResetEvent: %@ | EnableEvent: %@ | DisableEvent: %@ | ActivationEvent: %@ | OnActivateEvents: %@ }"];
    return r0;
}

-(void *)getEventsByType:(void *)arg2 :(bool *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if ([r20 isEqualToString:r2] != 0x0) {
            r0 = [r21 getActivationEvents:r19];
    }
    else {
            r0 = [[&var_30 super] getEventsByType:r20 :r19];
    }
    return r0;
}

@end
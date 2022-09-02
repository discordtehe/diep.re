@implementation MCPromoTrigger

+(void *)getTriggerFromConfiguration:(void *)arg2 {
    r0 = [self getTriggerFromConfiguration:arg2 withError:&var_8];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setup:0x0 withError:&var_28];
            [r19 updateState];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r0 = [self initWithConfiguration:arg2 withError:&var_8];
    return r0;
}

+(void *)getTriggerFromConfiguration:(void *)arg2 withError:(void * *)arg3 {
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
    if (r2 == 0x0) goto loc_1009e8d14;

loc_1009e8c18:
    r21 = r2;
    if ([r2 count] == 0x0) goto loc_1009e8d14;

loc_1009e8c30:
    r0 = [MCPromoDataAccess getDataAccessFromConfiguration:r21];
    r0 = [r0 execute];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009e8c8c;

loc_1009e8c70:
    r22 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1009e8dc4;

loc_1009e8c8c:
    [r20 class];
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009e8da8;

loc_1009e8cc4:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009e8d98;

loc_1009e8d98:
    *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    goto loc_1009e8da8;

loc_1009e8da8:
    r0 = 0x0;
    return r0;

loc_1009e8dc4:
    r0 = NSClassFromString(r22);
    if (r0 == 0x0) goto loc_1009e8e38;

loc_1009e8dd0:
    r23 = r0;
    if (([r23 isSubclassOfClass:[MCPromoTrigger class]] & 0x1) == 0x0) goto loc_1009e8ec0;

loc_1009e8e04:
    r0 = objc_alloc();
    r0 = [r0 initWithConfiguration:r21 withError:r19];
    r0 = [r0 autorelease];
    return r0;

loc_1009e8ec0:
    [r23 class];
    [MCPromoTrigger class];
    [r20 class];
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009e8da8;

loc_1009e8f18:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009e8d98;

loc_1009e8e38:
    [r20 class];
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009e8da8;

loc_1009e8e70:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009e8d98;

loc_1009e8d14:
    [r20 class];
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009e8da8;

loc_1009e8d4c:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009e8d98;
}

-(void *)initWithConfiguration:(void *)arg2 withError:(void * *)arg3 {
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
            r20 = r2;
            r22 = r0;
            if ([r2 count] != 0x0) {
                    r0 = [r20 objectForKey:r2];
                    if (r0 != 0x0) {
                            r23 = r0;
                            if ([r0 isEqualToString:r2] != 0x0) {
                                    if (r19 != 0x0) {
                                            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                            r22 = 0x0;
                                            *r19 = r0;
                                    }
                                    else {
                                            r22 = 0x0;
                                    }
                            }
                            else {
                                    [r22 setName:r23];
                                    r0 = [[&var_40 super] init];
                                    r22 = r0;
                                    if (r0 != 0x0) {
                                            [r22 setup:[r20 objectForKey:r2] withError:r19];
                                            [r22 updateState];
                                    }
                            }
                    }
                    else {
                            if (r19 != 0x0) {
                                    r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                    r22 = 0x0;
                                    *r19 = r0;
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
            }
            else {
                    if (r19 != 0x0) {
                            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                            r22 = 0x0;
                            *r19 = r0;
                    }
                    else {
                            r22 = 0x0;
                    }
            }
    }
    else {
            if (r19 != 0x0) {
                    r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                    r22 = 0x0;
                    *r19 = r0;
            }
            else {
                    r22 = 0x0;
            }
    }
    r0 = r22;
    return r0;
}

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setName:0x0];
    [*(r19 + 0x30) setDelegateParameter:r2];
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    [*(r19 + 0x38) setDelegateParameter:r2];
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    [*(r19 + 0x40) setDelegateParameter:r2];
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    [r19 setDelegateParameter:r2];
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)reset {
    [*(self + 0x30) reset];
    [*(self + 0x38) reset];
    [*(self + 0x40) reset];
    *(int32_t *)(self + 0x54) = 0x0;
    return;
}

-(void)updateState {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x10) != 0x0) {
            [*(r19 + 0x30) setEnabled:r2];
            objc_msgSend(*(r19 + 0x38), r20);
            objc_msgSend(*(r19 + 0x40), r20);
    }
    else {
            if (*(int8_t *)(r19 + 0x11) == 0x0) {
                    if (CPU_FLAGS & E) {
                            r2 = 0x1;
                    }
            }
            [*(r19 + 0x30) setEnabled:r2];
            [*(r19 + 0x38) setEnabled:0x1];
            [*(r19 + 0x40) setEnabled:0x0];
            if (*(int8_t *)(r19 + 0x11) != 0x0) {
                    [r19 reset];
            }
    }
    return;
}

-(void)softReset {
    return;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x10) != r2) {
            *(int8_t *)(r0 + 0x10) = r2;
            [r0 updateState];
    }
    return;
}

-(void)setEnabledWrapper:(void *)arg2 {
    [arg2 boolValue];
    [self setEnabled:r2];
    return;
}

-(void)resetEvent {
    [self reset];
    return;
}

-(void)setResetOnDisable:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x11) != r2) {
            *(int8_t *)(r0 + 0x11) = r2;
            if (*(int8_t *)(r0 + 0x10) != 0x0) {
                    [r0 reset];
            }
    }
    return;
}

-(void)disabledEvent:(void *)arg2 {
    [self setEnabledWrapper:arg2];
    return;
}

-(void)enabledEvent:(void *)arg2 {
    [self setEnabledWrapper:arg2];
    return;
}

-(bool)reachedMaxActivations {
    r0 = self;
    r8 = *(int32_t *)(r0 + 0x50);
    if (r8 != 0x0) {
            if (*(int32_t *)(r0 + 0x54) >= r8) {
                    if (CPU_FLAGS & NB) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
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
    r20 = arg3;
    r22 = arg2;
    r19 = self;
    if (arg2 == 0x0) goto loc_1009e93a4;

loc_1009e92b8:
    if ([r22 count] == 0x0) goto loc_1009e93a0;

loc_1009e92cc:
    r28 = @selector(objectForKey:);
    r26 = objc_msgSend(r22, r28);
    r25 = objc_msgSend(r22, r28);
    var_130 = objc_msgSend(r22, r28);
    r21 = objc_msgSend(r22, r28);
    var_128 = objc_msgSend(r22, r28);
    r22 = objc_msgSend(r22, r28);
    if (r26 != 0x0) {
            r27 = @selector(count);
            r27 = objc_msgSend(r26, r27);
            r0 = objc_alloc();
            if (r27 != 0x0) {
                    r0 = [r0 initWithConfiguration:r26 withError:r20];
            }
            else {
                    r0 = [r0 init];
            }
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 init];
    }
    goto loc_1009e93c4;

loc_1009e93c4:
    *(r19 + 0x30) = r0;
    [r0 setDelegateTarget:r19];
    [*(r19 + 0x30) setDelegateSelector:r2];
    if (r25 != 0x0) {
            r28 = [r25 count];
            r0 = objc_alloc();
            if (r28 != 0x0) {
                    r0 = [r0 initWithConfiguration:r25 withError:r20];
            }
            else {
                    r0 = [r0 init];
            }
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 init];
    }
    *(r19 + 0x38) = r0;
    [r0 setDelegateTarget:r19];
    [*(r19 + 0x38) setDelegateSelector:@selector(enabledEvent:)];
    [*(r19 + 0x38) setDelegateParameter:@(YES)];
    r8 = var_130;
    if (r8 != 0x0) {
            r24 = r8;
            r23 = [r8 count];
            r0 = objc_alloc();
            if (r23 != 0x0) {
                    r0 = [r0 initWithConfiguration:r24 withError:r20];
            }
            else {
                    r0 = [r0 init];
            }
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 init];
    }
    *(r19 + 0x40) = r0;
    [r0 setDelegateTarget:r19];
    [*(r19 + 0x40) setDelegateSelector:@selector(disabledEvent:)];
    [*(r19 + 0x40) setDelegateParameter:@(NO)];
    *(r19 + 0x48) = [[NSMutableArray array] retain];
    if (r21 != 0x0 && [r21 count] != 0x0) {
            var_110 = q0;
            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r24 = r0;
                    r20 = *var_110;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != r20) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [r19 addOnActivateEvent:r2];
                                    r27 = r27 + 0x1;
                            } while (r27 < r24);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r24 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (r22 != 0x0) {
            r0 = [r22 boolValue];
    }
    else {
            r0 = 0x0;
    }
    *(int8_t *)(r19 + 0x11) = r0;
    r0 = var_128;
    if (r0 != 0x0) {
            r0 = [r0 unsignedIntValue];
    }
    var_60 = **___stack_chk_guard;
    *(int32_t *)(r19 + 0x50) = r0;
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_1009e93a0:
    r22 = 0x0;
    goto loc_1009e93a4;

loc_1009e93a4:
    var_130 = 0x0;
    var_128 = 0x0;
    r21 = 0x0;
    r25 = 0x0;
    r0 = objc_alloc();
    r0 = [r0 init];
    goto loc_1009e93c4;
}

-(bool)canActivate {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(r0 + 0x10) != 0x0) {
            r0 = [r0 reachedMaxActivations];
            r0 = r0 ^ 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)addToEnableEvent:(void *)arg2 {
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
                    [*(r20 + 0x38) addEvent:r19 withError:&var_18];
            }
    }
    return;
}

-(void)addToResetEvent:(void *)arg2 {
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
                    [*(r20 + 0x30) addEvent:r19 withError:&var_18];
            }
    }
    return;
}

-(void)activate {
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
    r19 = self;
    if (*(int32_t *)(self + 0x50) != 0x0) {
            *(int32_t *)(r19 + 0x54) = *(int32_t *)(r19 + 0x54) + 0x1;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0 && *(r19 + 0x20) != 0x0) {
            if (*(r19 + 0x28) != 0x0) {
                    [r0 performSelector:r2 withObject:r3];
            }
            else {
                    [r0 performSelector:r2];
            }
    }
    var_110 = q0;
    r19 = *(r19 + 0x48);
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r25 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            [[MCPromoEventDispatcher sharedMCPromoEventDispatcher] postEvent:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)addToDisableEvent:(void *)arg2 {
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
                    [*(r20 + 0x40) addEvent:r19 withError:&var_18];
            }
    }
    return;
}

-(void)addOnActivateEvent:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if ([r2 count] != 0x0) {
                    [*(r20 + 0x48) addObject:r2];
            }
    }
    return;
}

-(void *)getResetEvents:(bool *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            *(int8_t *)r2 = [*(r19 + 0x30) activateOnFirstEvent];
    }
    r0 = *(r19 + 0x30);
    r0 = [r0 events];
    return r0;
}

-(void *)getEnableEvents:(bool *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            *(int8_t *)r2 = [*(r19 + 0x38) activateOnFirstEvent];
    }
    r0 = *(r19 + 0x38);
    r0 = [r0 events];
    return r0;
}

-(void *)getOnActivationEvent {
    r0 = *(self + 0x48);
    return r0;
}

-(void *)getDisableEvents:(bool *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            *(int8_t *)r2 = [*(r19 + 0x40) activateOnFirstEvent];
    }
    r0 = *(r19 + 0x40);
    r0 = [r0 events];
    return r0;
}

-(void *)getEventsByType:(void *)arg2 :(bool *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    if ([r21 isEqualToString:r2] == 0x0) goto loc_1009e9c98;

loc_1009e9c8c:
    r1 = @selector(getResetEvents:);
    goto loc_1009e9cdc;

loc_1009e9cdc:
    r0 = objc_msgSend(r19, r1);
    return r0;

loc_1009e9c98:
    if ([r21 isEqualToString:r2] == 0x0) goto loc_1009e9cbc;

loc_1009e9cb0:
    r1 = @selector(getEnableEvents:);
    goto loc_1009e9cdc;

loc_1009e9cbc:
    if ([r21 isEqualToString:r2] == 0x0) goto loc_1009e9cf4;

loc_1009e9cd4:
    r1 = @selector(getDisableEvents:);
    goto loc_1009e9cdc;

loc_1009e9cf4:
    if ([r21 isEqualToString:r2] != 0x0) {
            r0 = [r19 getOnActivationEvent];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getState {
    [*(self + 0x30) getState];
    [*(self + 0x38) getState];
    [*(self + 0x40) getState];
    r25 = [NSNumber numberWithBool:*(int8_t *)(self + 0x10)];
    [NSNumber numberWithBool:*(int8_t *)(self + 0x11)];
    r0 = @class(NSNumber);
    [r0 numberWithInt:*(int32_t *)(self + 0x54)];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:r25];
    return r0;
}

-(void *)getEventStateByType:(void *)arg2 {
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
    r19 = arg2;
    r22 = [self getState];
    do {
            r20 = @selector(objectForKey:);
            [r19 stringByAppendingString:@"State"];
            r0 = objc_msgSend(r22, r20);
            r25 = r0;
            if (r0 != 0x0) {
                break;
            }
            r0 = [r22 objectForKey:r2];
            r22 = r0;
    } while (r0 != 0x0);
    r0 = [r25 objectForKey:r2];
    return r0;
}

-(void)setState:(void *)arg2 {
    [self setState:arg2 withError:&var_8];
    return;
}

-(void *)name {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
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
    r21 = arg3;
    if (r2 != 0x0) {
            [*(r0 + 0x30) setState:[r2 objectForKey:@"resetEventState"] withError:r21];
            [*(r0 + 0x38) setState:[r2 objectForKey:@"enableEventState"] withError:r21];
            [*(r0 + 0x40) setState:[r2 objectForKey:@"disableEventState"] withError:r21];
            r21 = [r2 objectForKey:@"enabledState"];
            r23 = [r2 objectForKey:@"resetOnDisableState"];
            r20 = [r2 objectForKey:@"numActivationsState"];
            *(int8_t *)(r0 + 0x10) = [r21 boolValue];
            *(int8_t *)(r0 + 0x11) = [r23 boolValue];
            *(int32_t *)(r0 + 0x54) = [r20 intValue];
    }
    else {
            if (r21 != 0x0) {
                    *r21 = [NSError errorWithDomain:@"NoStateDefined" code:0x0 userInfo:0x0];
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
    r19 = r0;
    r25 = *(r0 + 0x8);
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r26 = @"Yes";
            }
            else {
                    r26 = @"No";
            }
    }
    if (*(int8_t *)(r0 + 0x11) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r27 = @"Yes";
            }
            else {
                    r27 = @"No";
            }
    }
    r0 = *(r0 + 0x30);
    [r0 description];
    [*(r19 + 0x38) description];
    [*(r19 + 0x40) description];
    r0 = *(r19 + 0x48);
    [r0 description];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(void)setMaxActivations:(unsigned int)arg2 {
    *(int32_t *)(self + 0x50) = arg2;
    return;
}

-(unsigned int)maxActivations {
    r0 = *(int32_t *)(self + 0x50);
    return r0;
}

-(bool)resetOnDisable {
    r0 = *(int8_t *)(self + 0x11);
    return r0;
}

-(unsigned int)numActivations {
    r0 = *(int32_t *)(self + 0x54);
    return r0;
}

-(void *)delegateTarget {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setDelegateTarget:(void *)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void *)delegateSelector {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setDelegateSelector:(void *)arg2 {
    *(self + 0x20) = arg2;
    return;
}

-(void *)delegateParameter {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setDelegateParameter:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
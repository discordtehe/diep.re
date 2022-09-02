@implementation MCPromoAction

+(void *)getActionFromConfiguration:(void *)arg2 withActionName:(void *)arg3 andOfferName:(void *)arg4 withError:(void * *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r5;
            r20 = r4;
            r21 = r3;
            r22 = r2;
            if ([r2 count] != 0x0) {
                    r0 = objc_alloc();
                    r0 = [r0 initWithConfiguration:r22 withActionName:r21 andOfferName:r20 withError:r19];
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

+(void *)getActionFromConfiguration:(void *)arg2 {
    r0 = [self getActionFromConfiguration:arg2 withActionName:0x0 andOfferName:0x0 withError:&var_8];
    return r0;
}

-(void *)init {
    return 0x0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    [*(r19 + 0x18) setDelegateParameter:r2];
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    [*(r19 + 0x20) setDelegateParameter:r2];
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    [r19 setSuccessDelegateParameter:0x0];
    [r19 setFailureDelegateParameter:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)reset {
    [*(self + 0x18) reset];
    [*(self + 0x18) setEnabled:r2];
    [*(self + 0x20) reset];
    objc_msgSend(*(self + 0x20), r21);
    return;
}

-(void)failure {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x40);
    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
            if (*(r19 + 0x50) != 0x0) {
                    [r0 performSelector:r2 withObject:r3];
            }
            else {
                    [r0 performSelector:r2];
            }
    }
    [r19 reset];
    return;
}

-(void)success {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x28);
    if (r0 != 0x0 && *(r19 + 0x30) != 0x0) {
            if (*(r19 + 0x38) != 0x0) {
                    [r0 performSelector:r2 withObject:r3];
            }
            else {
                    [r0 performSelector:r2];
            }
    }
    [r19 reset];
    return;
}

-(void)failureCallback {
    [self reset];
    [self failure];
    return;
}

-(void)successCallback {
    [self reset];
    [self success];
    return;
}

-(void)getData:(void *)arg2 {
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
    if (r2 != 0x0) {
            r19 = r2;
            r21 = r0;
            if ([r2 respondsToSelector:@selector(getActionType:withParameters:successEvents:successOnFirstEvent:failureEvents:failureOnFirstEvent:), r3, r4, r5, r6, r7] != 0x0) {
                    [r19 getActionType:*(int128_t *)(r21 + 0x8) withParameters:*(int128_t *)(r21 + 0x10) successEvents:[*(r21 + 0x18) getActivationEvents:&var_31] successOnFirstEvent:var_31 failureEvents:[*(r21 + 0x20) getActivationEvents:&var_32] failureOnFirstEvent:var_32];
            }
    }
    return;
}

-(void)run:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 == 0x0) goto .l1;

loc_1009d8500:
    r31 = r31 - 0x40;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = r0;
    [*(r0 + 0x18) reset];
    [*(r19 + 0x18) setEnabled:0x1];
    [*(r19 + 0x20) reset];
    [*(r19 + 0x20) setEnabled:0x1];
    r0 = [r2 executeAction:*(int128_t *)(r19 + 0x8) withParameters:*(int128_t *)(r19 + 0x10) successEvents:[*(r19 + 0x18) getActivationEvents:&var_31] successOnFirstEvent:var_31 failureEvents:[*(r19 + 0x20) getActivationEvents:&var_32] failureOnFirstEvent:var_32];
    if (r0 == 0x0) goto loc_1009d85cc;

loc_1009d85b8:
    if (r0 != 0x1) goto .l1;

loc_1009d85c0:
    r8 = &@selector(failure);
    goto loc_1009d85d4;

loc_1009d85d4:
    objc_msgSend(r19, *r8);
    return;

.l1:
    return;

loc_1009d85cc:
    r8 = &@selector(success);
    goto loc_1009d85d4;
}

-(void *)getState {
    r21 = [*(self + 0x18) getState];
    r0 = *(self + 0x20);
    [r0 getState];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:r21];
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 withActionName:(void *)arg3 andOfferName:(void *)arg4 withError:(void * *)arg5 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xa0;
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
    r19 = arg5;
    if (r2 == 0x0) goto loc_1009d7c24;

loc_1009d7b50:
    r25 = r4;
    r26 = r3;
    r22 = r2;
    r20 = r0;
    if ([r2 count] == 0x0) goto loc_1009d7c24;

loc_1009d7b78:
    r0 = [r22 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009d7bb4;

loc_1009d7b98:
    r21 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1009d7cd0;

loc_1009d7bb4:
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009d7ca8;

loc_1009d7bd4:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009d7c90;

loc_1009d7c90:
    r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    r20 = 0x0;
    *r19 = r0;
    goto loc_1009d7cac;

loc_1009d7cac:
    r0 = r20;
    return r0;

loc_1009d7ca8:
    r20 = 0x0;
    goto loc_1009d7cac;

loc_1009d7cd0:
    r23 = @selector(objectForKey:);
    var_80 = r21;
    r24 = objc_msgSend(r22, r23);
    r21 = objc_msgSend(r22, r23);
    var_78 = r20;
    if (r24 != 0x0 && [r24 count] != 0x0) {
            var_68 = [MCPromoTrigger getTriggerFromConfiguration:r24 withError:r19];
            if (r21 == 0x0) {
                    r21 = [[objc_alloc() init] autorelease];
                    [r21 setName:[NSString stringWithFormat:@"%@_%@_FailureTrigger"]];
                    [r21 addToActivationEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureEvent"]]];
                    [r21 addOnActivateEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureOnActivationEvent"]]];
            }
            else {
                    if ([r21 count] != 0x0) {
                            r21 = [MCPromoTrigger getTriggerFromConfiguration:r21 withError:r19];
                    }
                    else {
                            r21 = [[objc_alloc() init] autorelease];
                            [r21 setName:[NSString stringWithFormat:@"%@_%@_FailureTrigger"]];
                            [r21 addToActivationEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureEvent"]]];
                            [r21 addOnActivateEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureOnActivationEvent"]]];
                    }
            }
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 init];
            r0 = [r0 autorelease];
            r24 = @selector(stringWithFormat:);
            [r0 setName:objc_msgSend(@class(NSString), r24)];
            [r0 addToActivationEvent:[NSArray arrayWithObjects:objc_msgSend(@class(NSString), r24)]];
            r2 = objc_msgSend(@class(NSString), r24);
            r2 = [NSArray arrayWithObjects:r2];
            var_68 = r0;
            r21 = r21;
            [r0 addOnActivateEvent:r2];
            if (r21 != 0x0) {
                    if ([r21 count] != 0x0) {
                            r21 = [MCPromoTrigger getTriggerFromConfiguration:r21 withError:r19];
                    }
                    else {
                            r21 = [[objc_alloc() init] autorelease];
                            [r21 setName:[NSString stringWithFormat:@"%@_%@_FailureTrigger"]];
                            [r21 addToActivationEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureEvent"]]];
                            [r21 addOnActivateEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureOnActivationEvent"]]];
                    }
            }
            else {
                    r21 = [[objc_alloc() init] autorelease];
                    [r21 setName:[NSString stringWithFormat:@"%@_%@_FailureTrigger"]];
                    [r21 addToActivationEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureEvent"]]];
                    [r21 addOnActivateEvent:[NSArray arrayWithObjects:[NSString stringWithFormat:@"%@_%@_FailureOnActivationEvent"]]];
            }
    }
    if (*r19 == 0x0) goto loc_1009d7fe8;

loc_1009d7f7c:
    [[objc_alloc() initWithObjectsAndKeys:[NSString stringWithFormat:@"Cannot continue with undefined success trigger or failure triggers"]] autorelease];
    goto loc_1009d7c90;

loc_1009d7fe8:
    [MCPromoWaitForEventTrigger class];
    if ([var_68 isKindOfClass:r2] == 0x0) goto loc_1009d818c;

loc_1009d801c:
    r28 = @selector(isKindOfClass:);
    [MCPromoWaitForEventTrigger class];
    if ((objc_msgSend(r21, r28) & 0x1) == 0x0) goto loc_1009d818c;

loc_1009d803c:
    r0 = [r22 objectForKey:r2];
    r26 = r0;
    if (r0 == 0x0) goto loc_1009d807c;

loc_1009d8058:
    r28 = @selector(isKindOfClass:);
    [NSDictionary class];
    if ((objc_msgSend(r26, r28) & 0x1) == 0x0) goto loc_1009d81f8;

loc_1009d807c:
    r23 = @selector(objectForKey:);
    r19 = objc_msgSend(r22, r23);
    r25 = objc_msgSend(r22, r23);
    r22 = objc_msgSend(r22, r23);
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0x8) = [var_80 retain];
            *(r20 + 0x10) = [r26 retain];
            *(r20 + 0x18) = [var_68 retain];
            *(r20 + 0x20) = [r21 retain];
            [*(r20 + 0x18) setDelegateTarget:r20];
            [*(r20 + 0x18) setDelegateSelector:@selector(successCallback)];
            [*(r20 + 0x20) setDelegateTarget:r20];
            [*(r20 + 0x20) setDelegateSelector:@selector(failureCallback)];
            if (r22 != 0x0) {
                    r0 = [r22 boolValue];
            }
            else {
                    r0 = 0x0;
            }
            *(int8_t *)(r20 + 0x58) = r0;
            if (r25 != 0x0) {
                    r0 = [r25 boolValue];
            }
            else {
                    r0 = 0x0;
            }
            *(int8_t *)(r20 + 0x59) = r0;
            if (r19 != 0x0) {
                    r0 = [r19 boolValue];
            }
            else {
                    r0 = 0x0;
            }
            *(int8_t *)(r20 + 0x5a) = r0;
    }
    goto loc_1009d7cac;

loc_1009d81f8:
    [[objc_alloc() initWithObjectsAndKeys:[NSString stringWithFormat:@"Cannot continue with wrong type of parameters defined or without a definition"]] autorelease];
    goto loc_1009d7c90;

loc_1009d818c:
    [[objc_alloc() initWithObjectsAndKeys:[NSString stringWithFormat:@"Cannot continue with wrong type of success or failure triggers defined"]] autorelease];
    goto loc_1009d7c90;

loc_1009d7c24:
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto loc_1009d7ca8;

loc_1009d7c44:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009d7c90;
}

-(void)setState:(void *)arg2 {
    [self setState:arg2 withError:&var_8];
    return;
}

-(void *)type {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)parameters {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
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
    r20 = self;
    if (r2 != 0x0) {
            [*(r20 + 0x18) setState:[r2 objectForKey:@"successTriggerState"] withError:r19];
            [*(r20 + 0x20) setState:[r2 objectForKey:@"failureTriggerState"] withError:r19];
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

-(void *)successDelegateTarget {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setSuccessDelegateTarget:(void *)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(void *)successDelegateSelector {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setSuccessDelegateSelector:(void *)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(void *)successDelegateParameter {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setSuccessDelegateParameter:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)failureDelegateTarget {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setFailureDelegateTarget:(void *)arg2 {
    *(self + 0x40) = arg2;
    return;
}

-(void *)failureDelegateSelector {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setFailureDelegateSelector:(void *)arg2 {
    *(self + 0x48) = arg2;
    return;
}

-(void *)failureDelegateParameter {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setFailureDelegateParameter:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(bool)popUpActionDismissesPopUp {
    r0 = *(int8_t *)(self + 0x58);
    return r0;
}

-(bool)popUpActionDeactivatesOffer {
    r0 = *(int8_t *)(self + 0x59);
    return r0;
}

-(bool)popUpActionKillsOffer {
    r0 = *(int8_t *)(self + 0x5a);
    return r0;
}

@end
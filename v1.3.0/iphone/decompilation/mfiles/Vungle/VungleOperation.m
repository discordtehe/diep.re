@implementation VungleOperation

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_state = 0x0;
            *(int8_t *)(int64_t *)&r19->_hasFinishedAlready = 0x0;
            r0 = [NSMutableSet new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_internalErrors));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

+(void *)keyPathsForValuesAffectingIsReady {
    r0 = [NSSet setWithObject:@"state"];
    return r0;
}

+(void *)keyPathsForValuesAffectingIsExecuting {
    r0 = [NSSet setWithObject:@"state"];
    return r0;
}

+(void *)keyPathsForValuesAffectingIsFinished {
    r0 = [NSSet setWithObject:@"state"];
    return r0;
}

-(bool)isExecuting {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self state];
    if (r0 == 0x4) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isFinished {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self state];
    if (r0 == 0x6) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isReady {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(self + r20);
    if (r8 != 0x3) {
            if (r8 == 0x1) {
                    r0 = [[&var_20 super] isReady];
                    if (r0 != 0x0) {
                            r0 = [r19 evaluateConditions];
                            if (*(r19 + r20) == 0x3) {
                                    if (CPU_FLAGS & E) {
                                            r0 = 0x1;
                                    }
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = [[&var_30 super] isReady];
    }
    return r0;
}

-(void)start {
    [self setState:0x4];
    [self execute];
    return;
}

-(void)execute {
    return;
}

-(bool)canTransitionToState:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r20 = [self retain];
    objc_sync_enter(r19);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(r19 + r8);
    if (r21 == 0x1 && r8 == 0x0) {
            r21 = 0x1;
    }
    else {
            if (r21 == 0x2 && r8 == 0x1) {
                    r21 = 0x1;
            }
            else {
                    if (r21 == 0x3 && r8 == 0x2) {
                            r21 = 0x1;
                    }
                    else {
                            if (r21 == 0x4 && r8 == 0x3) {
                                    r21 = 0x1;
                            }
                            else {
                                    if (r21 == 0x5) {
                                            r9 = r8 - 0x3;
                                            if (r9 < 0x2) {
                                                    r21 = 0x1;
                                            }
                                            else {
                                                    if (r8 == 0x5) {
                                                            if (CPU_FLAGS & E) {
                                                                    r8 = 0x1;
                                                            }
                                                    }
                                                    if (r21 == 0x6) {
                                                            if (CPU_FLAGS & E) {
                                                                    r9 = 0x1;
                                                            }
                                                    }
                                                    r21 = r9 & r8;
                                            }
                                    }
                                    else {
                                            if (r8 == 0x5) {
                                                    if (CPU_FLAGS & E) {
                                                            r8 = 0x1;
                                                    }
                                            }
                                            if (r21 == 0x6) {
                                                    if (CPU_FLAGS & E) {
                                                            r9 = 0x1;
                                                    }
                                            }
                                            r21 = r9 & r8;
                                    }
                            }
                    }
            }
    }
    objc_sync_exit(r19);
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)finish {
    r20 = [NSSet new];
    [self finishWithErrors:r20];
    [r20 release];
    return;
}

-(void)finishedWithErrors:(void *)arg2 {
    return;
}

-(void)finishWithErrors:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hasFinishedAlready));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            [r19 setState:0x5];
            r0 = r19->_internalErrors;
            if (r20 != 0x0) {
                    r0 = [r0 setByAddingObjectsFromSet:r20];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            else {
                    r0 = [r0 copy];
            }
            r21 = r0;
            r0 = r19->_finishHandler;
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
            }
            [r19 setState:0x6];
            r0 = [r19 operationDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(operation:didFinishWithErrors:), r3];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = [r19 operationDelegate];
                    r0 = [r0 retain];
                    [r0 operation:r19 didFinishWithErrors:r21];
                    [r0 release];
            }
            [r21 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)appendFinishHandler:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_finishHandler));
    if (*(r20 + r23) != 0x0) {
            objc_initWeak(&stack[-72], r20);
            objc_copyWeak(&var_68 + 0x28, &stack[-72]);
            var_48 = [r19 retain];
            r0 = objc_retainBlock(&var_68);
            r22 = r0;
            r0 = objc_retainBlock(r0);
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
            [r22 release];
            [var_48 release];
            objc_destroyWeak(&var_68 + 0x28);
            objc_destroyWeak(&stack[-72]);
    }
    else {
            r0 = objc_retainBlock(r19);
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
    }
    [r19 release];
    return;
}

-(void)appendError:(void *)arg2 {
    [self->_internalErrors addObject:r2];
    return;
}

-(long long)state {
    [self retain];
    objc_sync_enter(self);
    objc_sync_exit(self);
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)setState:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r19 + r21) != 0x6) {
            [r19 willChangeValueForKey:@"state"];
            *(r19 + r21) = r20;
            [r19 didChangeValueForKey:@"state"];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)evaluateConditions {
    [self setState:0x2];
    [self setState:0x3];
    return;
}

-(void)willEnqueue {
    [self setState:0x1];
    return;
}

-(void *)operationDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_operationDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOperationDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_operationDelegate, arg2);
    return;
}

-(bool)hasFinishedAlready {
    r0 = *(int8_t *)(int64_t *)&self->_hasFinishedAlready;
    return r0;
}

-(void)setHasFinishedAlready:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasFinishedAlready = arg2;
    return;
}

-(void *)internalErrors {
    r0 = self->_internalErrors;
    return r0;
}

-(void)setInternalErrors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalErrors, arg2);
    return;
}

-(void *)finishHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_finishHandler)), 0x0);
    return r0;
}

-(void)setFinishHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_finishHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_internalErrors, 0x0);
    objc_destroyWeak((int64_t *)&self->_operationDelegate);
    return;
}

@end
@implementation MenuReconnecting

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    [[&var_20 super] setupWithStateId:arg2 parameters:arg3];
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuReconnect.ccbi" owner:self];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    *(self + r20) = r0;
    [self->mBaseNode addChild:r0];
    [*(self + r20) setupLayout];
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && [r20 isEqualToString:r2] != 0x0) {
                    if ([r19 isBackButtonEnabled] != 0x0) {
                            [r19 backButtonCallback];
                    }
            }
    }
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->_view;
            r0 = [r0 onEnterWithPreviousState:r2 fromStack:r3];
    }
    return r0;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->_view disableInput];
    return;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->_view;
            r0 = [r0 onLeaveWithNewState:r2 toStack:r3];
    }
    return r0;
}

-(void)enableInput {
    [[&var_20 super] enableInput];
    [self->_view enableInput];
    return;
}

-(void)actionButtonCallback {
    return;
}

-(void)backButtonCallback {
    return;
}

@end
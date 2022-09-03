@implementation MenuBackground

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    [[&var_30 super] setupWithStateId:arg2 parameters:r3];
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuBackground.ccbi" owner:self];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    *(self + r21) = r0;
    self->_nextState = sub_1005d8470([arg3 objectForKey:@"nextState"], 0x4);
    [self->mBaseNode addChild:*(self + r21)];
    [*(self + r21) setupLayout];
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

-(bool)occupiesFullScreen {
    return 0x1;
}

-(bool)isRootState {
    return 0x1;
}

-(bool)hasLowerZOrder {
    return 0x1;
}

-(void)finishEnter:(bool)arg2 {
    r0 = self;
    if ((arg2 & 0x1) == 0x0) {
            [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    }
    return;
}

-(void)backButtonCallback {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

@end
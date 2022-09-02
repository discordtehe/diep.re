@implementation MenuSoftUpdate

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->_view;
            r0 = [r0 onLeaveWithNewState:r2 toStack:r3];
    }
    return r0;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->_view;
            r0 = [r0 onEnterWithPreviousState:r2 fromStack:r3];
    }
    return r0;
}

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    [[&var_30 super] setupWithStateId:arg2 parameters:r3];
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuSoftUpdate.ccbi" owner:self];
    *(self + sign_extend_64(*(int32_t *)ivar_offset(_view))) = r0;
    [r0 setupLayout:sub_1005d85d8([arg3 objectForKey:@"softUpdateRewardId"], 0x0) isReward:0x0];
    [self->mBaseNode addChild:r2];
    return;
}

-(void)enableInput {
    [[&var_20 super] enableInput];
    [self->_view enableInput];
    return;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->_view disableInput];
    return;
}

-(void)backButtonCallback {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

-(void)actionButtonCallback {
    r19 = [UIApplication sharedApplication];
    [NSURL URLWithString:*0x1011a8860];
    [r19 openURL:r2];
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

+(void)showSoftUpdatePopUp {
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

@end
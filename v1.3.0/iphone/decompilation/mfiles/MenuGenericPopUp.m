@implementation MenuGenericPopUp

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    [[&var_10 super] setupWithStateId:r2 parameters:r3];
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

-(bool)occupiesFullScreen {
    return 0x0;
}

-(void)setupLargeLayout:(void *)arg2 title:(void *)arg3 {
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuGenericPopUpLarge.ccbi" owner:self];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    *(self + r22) = r0;
    [self->mBaseNode addChild:r0];
    [*(self + r22) setupLargeLayout:arg2 title:arg3];
    return;
}

-(void)setupSmallLayout:(void *)arg2 title:(void *)arg3 yesLabel:(void *)arg4 noLabel:(void *)arg5 {
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuGenericPopUpSmallDouble.ccbi" owner:self];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    *(self + r24) = r0;
    [self->mBaseNode addChild:r0];
    [*(self + r24) setupSmallLayout:arg2 title:arg3 yesLabel:arg4 noLabel:arg5];
    return;
}

-(void)setupSmallLayout:(void *)arg2 title:(void *)arg3 actionLabel:(void *)arg4 {
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuGenericPopUpSmall.ccbi" owner:self];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    *(self + r23) = r0;
    [self->mBaseNode addChild:r0];
    [*(self + r23) setupSmallLayout:r2 title:r3 actionLabel:r4];
    return;
}

-(void)setupSmallLayout:(void *)arg2 {
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuGenericPopUpSmallNoTitle.ccbi" owner:self];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    *(self + r21) = r0;
    [self->mBaseNode addChild:r0];
    [*(self + r21) setupSmallLayout:r2];
    return;
}

-(void)backButtonCallback {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

-(void)noButtonCallback {
    return;
}

-(void)actionButtonCallback {
    return;
}

-(void)yesButtonCallback {
    return;
}

@end
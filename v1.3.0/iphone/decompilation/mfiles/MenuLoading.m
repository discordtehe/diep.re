@implementation MenuLoading

+(void)dismiss {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

+(void)showWithLoadingWidget:(void *)arg2 centeredAndFramed:(bool)arg3 {
    [[[Application sharedApplication] stateMachine] setParameterForState:0x23 param:@"Widget" withKey:@"LoadingType"];
    [[[Application sharedApplication] stateMachine] setParameterForState:0x23 param:arg2 withKey:@"description"];
    [[[Application sharedApplication] stateMachine] setParameterForState:0x23 param:[NSNumber numberWithBool:arg3] withKey:@"isFramed"];
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

+(void)showWithNSAlert:(void *)arg2 {
    [[[Application sharedApplication] stateMachine] setParameterForState:0x23 param:@"NSAlert" withKey:@"LoadingType"];
    [[[Application sharedApplication] stateMachine] setParameterForState:0x23 param:arg2 withKey:@"description"];
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

-(void)setupAsAlert:(void *)arg2 {
    *(int32_t *)(int64_t *)&self->_displayedAsType = 0x1;
    self->_simpleAlertMessage = arg2;
    return;
}

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    [[&var_40 super] setupWithStateId:arg2 parameters:r3];
    if ([sub_1005d85d8([r20 objectForKey:@"LoadingType"], 0x0) isEqual:r2] != 0x0) {
            [r19 setupAsWidget:[r20 objectForKey:@"description"] isFramed:[[r20 objectForKey:@"isFramed"] boolValue]];
    }
    if ([sub_1005d85d8([r20 objectForKey:@"LoadingType"], 0x0) isEqual:r2] != 0x0) {
            [r19 setupAsAlert:[r20 objectForKey:@"description"]];
    }
    return;
}

-(void)setupAsWidget:(void *)arg2 isFramed:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    *(int32_t *)(int64_t *)&self->_displayedAsType = 0x0;
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"DiepMenuLoading.ccbi" owner:r21];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    *(r21 + r22) = r0;
    r8 = &@selector(setupFramedLayoutWithMessage:);
    if (arg3 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(setupLayoutWithMessage:);
            }
            else {
                    r8 = &@selector(setupFramedLayoutWithMessage:);
            }
    }
    objc_msgSend(r0, *r8);
    [r21->mBaseNode addChild:r2];
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ((arg3 & 0x1) == 0x0) {
            r19 = r0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayedAsType));
            r8 = *(int32_t *)(r0 + r20);
            if (r8 == 0x0) {
                    r0 = r19->_view;
                    r0 = [r0 onEnterWithPreviousState:r2 fromStack:0x0];
                    v8 = v0;
                    r8 = *(int32_t *)(r19 + r20);
            }
            if (r8 == 0x1) {
                    r0 = [SimpleAlert sharedSimpleAlert];
                    r0 = [r0 showWithMessage:r19->_simpleAlertMessage];
            }
    }
    return r0;
}

-(void)disableInput {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] disableInput];
    if (*(int32_t *)(int64_t *)&r19->_displayedAsType == 0x0) {
            [r19->_view disableInput];
    }
    return;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ((arg3 & 0x1) == 0x0) {
            r19 = r0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayedAsType));
            r8 = *(int32_t *)(r0 + r20);
            if (r8 == 0x0) {
                    r0 = r19->_view;
                    r0 = [r0 onLeaveWithNewState:r2 toStack:0x0];
                    v8 = v0;
                    r8 = *(int32_t *)(r19 + r20);
            }
            if (r8 == 0x1) {
                    r0 = [SimpleAlert sharedSimpleAlert];
                    r0 = [r0 dismiss];
            }
    }
    return r0;
}

-(void)enableInput {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] enableInput];
    if (*(int32_t *)(int64_t *)&r19->_displayedAsType == 0x0) {
            [r19->_view enableInput];
    }
    return;
}

@end
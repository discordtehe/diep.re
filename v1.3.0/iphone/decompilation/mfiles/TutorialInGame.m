@implementation TutorialInGame

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [[[Application sharedApplication] userData] settings];
            *(int8_t *)(int64_t *)&r19->_isActive = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)didLoadFromCCB {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [Application sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 settings];
    [r0 stopOnRelease];
    if (([r0 shootJoystickOnRight] & 0x1) == 0x0) {
            [r19 switchPanelPositions];
    }
    return;
}

-(void)fadeOut {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isActive));
    if (*(int8_t *)(r0 + r21) != 0x0) {
            [r0->_leftPanel setCascadeOpacityEnabled:0x1];
            [r0->_rightPanel setCascadeOpacityEnabled:0x1];
            [CCFadeTo actionWithDuration:0x0 opacity:r3];
            [CCCallFuncN actionWithTarget:r0 selector:@selector(removeFromParentAndCleanup:)];
            [CCSequence actions:r2];
            [r19 runAction:r2];
            *(int8_t *)(r19 + r21) = 0x0;
    }
    return;
}

-(void)switchPanelPositions {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_rightText));
    [*(self + r21) position];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_leftText));
    [*(self + r22) position];
    [*(self + r21) setPosition:r2];
    [*(self + r22) setPosition:r2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_rightPanel));
    [*(self + r22) position];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_leftPanel));
    [*(self + r23) position];
    [*(self + r22) setPosition:r2];
    [*(self + r23) setPosition:r2];
    return;
}

-(bool)isActive {
    r0 = *(int8_t *)(int64_t *)&self->_isActive;
    return r0;
}

-(void)setIsActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isActive = arg2;
    return;
}

@end
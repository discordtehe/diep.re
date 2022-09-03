@implementation HUDLevelBar

-(void)enterLevelBar {
    [[self userObject] runAnimationsForSequenceNamed:r2];
    return;
}

-(void)leaveLevelBar {
    [[self userObject] runAnimationsForSequenceNamed:r2];
    return;
}

-(void)setXPWithValue:(float)arg2 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_progressBarFrame));
    [*(self + r22) contentSize];
    asm { fcvt       d8, s8 };
    asm { fcvt       s0, d0 };
    asm { fcvt       d9, s0 };
    objc_msgSend(*(r19 + r22), r20);
    d0 = d0 * *0x100b9af00;
    if (d0 < d9) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_progressBar));
            r21 = *(r19 + r23);
            [*(r19 + r22) contentSize];
            [*(r19 + r23) contentSize];
            [r21 setContentSize:r2];
    }
    return;
}

-(void)setXPBarWithText:(void *)arg2 {
    [self->_infoText setString:r2];
    return;
}

@end
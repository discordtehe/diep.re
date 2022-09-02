@implementation CCTransitionFlipAngular

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)onEnter {
    r31 = r31 - 0xc0;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    [[&var_80 super] onEnter];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inScene));
    var_88 = r8;
    [*(r19 + r8) setVisible:0x0];
    if (*(int32_t *)(int64_t *)&r19->orientation == 0x1) {
            asm { fcsel      s8, s1, s0, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      s9, s0, s1, eq };
    }
    r22 = @class(CCSequence);
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r20 = @selector(actionWithDuration:);
    objc_msgSend(@class(CCDelayTime), r20);
    r21 = @selector(action);
    objc_msgSend(@class(CCShow), r21);
    r0 = @class(CCOrbitCamera);
    asm { fcvt       s0, d0 };
    r25 = @selector(actionWithDuration:radius:deltaRadius:angleZ:deltaAngleZ:angleX:deltaAngleX:);
    objc_msgSend(r0, r25);
    [CCCallFunc actionWithTarget:r19 selector:@selector(finish)];
    [r22 actions:r2];
    r0 = @class(CCOrbitCamera);
    asm { fcvt       s0, d0 };
    objc_msgSend(r0, r25);
    objc_msgSend(@class(CCHide), r21);
    objc_msgSend(@class(CCDelayTime), r20);
    r20 = objc_msgSend(r23, r27);
    [*(r19 + var_88) runAction:r22];
    [r19->_outScene runAction:r20];
    return;
}

@end
@implementation CCTransitionZoomFlipY

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)onEnter {
    r31 = r31 - 0xd0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_A0 super] onEnter];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inScene));
    var_A8 = r8;
    [*(r19 + r8) setVisible:0x0];
    if (*(int32_t *)(int64_t *)&r19->orientation == 0x0) {
            asm { fcsel      s9, s8, s0, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      s11, s0, s8, eq };
    }
    var_B8 = @class(CCSequence);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    var_B0 = @selector(actionWithDuration:);
    [CCDelayTime actionWithDuration:0x0];
    r27 = @class(CCSpawn);
    r0 = @class(CCOrbitCamera);
    asm { fcvt       s0, d0 };
    r23 = @selector(actionWithDuration:radius:deltaRadius:angleZ:deltaAngleZ:angleX:deltaAngleX:);
    objc_msgSend(r0, r23);
    r26 = @selector(actionWithDuration:scale:);
    objc_msgSend(@class(CCScaleTo), r26);
    [CCShow action];
    [r27 actions:r2];
    [CCCallFunc actionWithTarget:r19 selector:@selector(finish)];
    [var_B8 actions:r2];
    r0 = @class(CCOrbitCamera);
    asm { fcvt       s0, d0 };
    objc_msgSend(r0, r23);
    objc_msgSend(@class(CCScaleTo), r26);
    objc_msgSend(r27, r21);
    objc_msgSend(@class(CCHide), r24);
    objc_msgSend(@class(CCDelayTime), var_B0);
    r20 = objc_msgSend(r25, r21);
    [*(r19 + var_A8) setScale:r23];
    [*(r19 + var_A8) runAction:r22];
    [r19->_outScene runAction:r20];
    return;
}

@end
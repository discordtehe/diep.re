@implementation CCTransitionPageTurn

+(void *)transitionWithDuration:(double)arg2 scene:(void *)arg3 backwards:(bool)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 scene:arg3 backwards:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 scene:(void *)arg3 backwards:(bool)arg4 {
    *(int8_t *)(int64_t *)&self->_back = arg3;
    r0 = [[&var_10 super] initWithDuration:arg2 scene:r3];
    return r0;
}

-(void)sceneOrder {
    *(int8_t *)(int64_t *)&self->_inSceneOnTop = *(int8_t *)(int64_t *)&self->_back;
    return;
}

-(void *)actionWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_back != 0x0) {
            [CCPageTurn3D actionWithDuration:r2 size:r3];
            r0 = [CCReverseTime actionWithAction:r2];
    }
    else {
            r0 = [CCPageTurn3D actionWithDuration:r2 size:r3];
    }
    return r0;
}

-(void)onEnter {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    [[&var_40 super] onEnter];
    [[CCDirector sharedDirector] winSize];
    if (d0 > d1) {
            asm { fcsel      d1, d2, d0, gt };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      d0, d0, d2, gt };
    }
    r20 = [r21 actionWithSize:r2];
    if (*(int8_t *)(int64_t *)&r21->_back != 0x0) {
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_inScene));
            [*(r21 + r19) setVisible:0x0];
            r19 = *(r21 + r19);
            [CCShow action];
            [CCCallFunc actionWithTarget:r21 selector:@selector(finish)];
            [CCStopGrid action];
    }
    else {
            r19 = r21->_outScene;
            [CCCallFunc actionWithTarget:r21 selector:@selector(finish)];
            [CCStopGrid action];
    }
    [CCSequence actions:r2];
    [r19 runAction:r2];
    return;
}

@end
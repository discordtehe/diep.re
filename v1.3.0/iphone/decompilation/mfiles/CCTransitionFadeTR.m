@implementation CCTransitionFadeTR

-(void)sceneOrder {
    *(int8_t *)(int64_t *)&self->_inSceneOnTop = 0x0;
    return;
}

-(void *)actionWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [CCFadeOutTRTiles actionWithDuration:r2 size:r3];
    return r0;
}

-(void)onEnter {
    r19 = self;
    [[&var_30 super] onEnter];
    [[CCDirector sharedDirector] winSize];
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       s0, d0 };
    asm { fcvtzs     w8, s0 };
    asm { scvtf      d0, w8 };
    r2 = [r19 actionWithSize:r2];
    r20 = r19->_outScene;
    r22 = [r19 easeActionWithAction:r2];
    [CCCallFunc actionWithTarget:r19 selector:@selector(finish)];
    [CCStopGrid action];
    [CCSequence actions:r22];
    [r20 runAction:r2];
    return;
}

-(void *)easeActionWithAction:(void *)arg2 {
    r0 = arg2;
    return r0;
}

@end
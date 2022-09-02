@implementation CCTransitionTurnOffTiles

-(void)sceneOrder {
    *(int8_t *)(int64_t *)&self->_inSceneOnTop = 0x0;
    return;
}

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void *)easeActionWithAction:(void *)arg2 {
    r0 = arg2;
    return r0;
}

-(void)onEnter {
    r19 = self;
    [[&var_30 super] onEnter];
    [[CCDirector sharedDirector] winSize];
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       s0, d0 };
    asm { fcvtzs     w8, s0 };
    r0 = @class(CCTurnOffTiles);
    asm { scvtf      d1, w8 };
    r20 = [r19 easeActionWithAction:[r0 actionWithDuration:r2 size:r3]];
    r21 = r19->_outScene;
    [CCCallFunc actionWithTarget:r19 selector:@selector(finish)];
    [CCStopGrid action];
    [CCSequence actions:r20];
    [r21 runAction:r2];
    return;
}

@end
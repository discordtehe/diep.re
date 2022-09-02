@implementation CCTransitionJumpZoom

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)onEnter {
    [[&var_80 super] onEnter];
    [[CCDirector sharedDirector] winSize];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_inScene));
    [*(self + r25) setScale:r2];
    [*(self + r25) setPosition:r2];
    [*(self + r25) setAnchorPoint:r2];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_outScene));
    [*(self + r24) setAnchorPoint:r2];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r21 = [CCJumpBy actionWithDuration:0x2 position:r3 height:r4 jumps:r5];
    r0 = @class(CCScaleTo);
    [r0 actionWithDuration:0x2 scale:r3];
    r0 = @class(CCScaleTo);
    r23 = [CCSequence actions:[r0 actionWithDuration:0x2 scale:r3]];
    r2 = r21;
    [CCSequence actions:r2];
    r22 = [CCDelayTime actionWithDuration:r2];
    [*(self + r24) runAction:r23];
    r23 = *(self + r25);
    r25 = @class(CCSequence);
    [CCCallFunc actionWithTarget:self selector:@selector(finish)];
    [r23 runAction:[r25 actions:r22]];
    return;
}

@end
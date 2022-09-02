@implementation CCTransitionRotoZoom

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)onEnter {
    [[&var_70 super] onEnter];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_inScene));
    [*(self + r24) setScale:r2];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_outScene));
    [*(self + r25) setScale:r2];
    [*(self + r24) setAnchorPoint:r2];
    [*(self + r25) setAnchorPoint:r2];
    r21 = @class(CCSequence);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r23 = [CCScaleBy actionWithDuration:r2 scale:r3];
    [CCRotateBy actionWithDuration:r2 angle:r3];
    r22 = [CCSpawn actions:r23];
    [CCDelayTime actionWithDuration:r23];
    r21 = [r21 actions:r22];
    [*(self + r25) runAction:r21];
    r23 = *(self + r24);
    r24 = @class(CCSequence);
    r21 = [r21 reverse];
    [CCCallFunc actionWithTarget:self selector:@selector(finish)];
    [r23 runAction:[r24 actions:r21]];
    return;
}

@end
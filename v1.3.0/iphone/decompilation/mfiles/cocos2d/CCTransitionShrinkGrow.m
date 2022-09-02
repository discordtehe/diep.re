@implementation CCTransitionShrinkGrow

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void *)easeActionWithAction:(void *)arg2 {
    r0 = [CCEaseOut actionWithAction:r2 rate:r3];
    return r0;
}

-(void)onEnter {
    [[&var_60 super] onEnter];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_inScene));
    [*(self + r22) setScale:r2];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_outScene));
    [*(self + r24) setScale:r2];
    [*(self + r22) setAnchorPoint:r2];
    [*(self + r24) setAnchorPoint:r2];
    r0 = @class(CCScaleTo);
    r21 = [r0 actionWithDuration:r2 scale:r3];
    [*(self + r22) runAction:[self easeActionWithAction:[CCScaleTo actionWithDuration:r2 scale:r3]]];
    r20 = *(self + r24);
    [self easeActionWithAction:r21];
    [CCCallFunc actionWithTarget:self selector:@selector(finish)];
    [r20 runAction:[CCSequence actions:r2]];
    return;
}

@end
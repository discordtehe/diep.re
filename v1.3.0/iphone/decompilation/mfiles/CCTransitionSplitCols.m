@implementation CCTransitionSplitCols

-(void)onEnter {
    [[&var_60 super] onEnter];
    [self->_inScene setVisible:0x0];
    r21 = [self action];
    r22 = @class(CCSequence);
    [CCCallFunc actionWithTarget:self selector:@selector(hideOutShowIn)];
    [r21 reverse];
    r2 = [r22 actions:r21];
    r21 = @class(CCSequence);
    r22 = [self easeActionWithAction:r2];
    [CCCallFunc actionWithTarget:self selector:@selector(finish)];
    [CCStopGrid action];
    [r21 actions:r22];
    [self runAction:r2];
    return;
}

-(void *)action {
    r0 = [CCSplitCols actionWithDuration:0x3 cols:r3];
    return r0;
}

-(void *)easeActionWithAction:(void *)arg2 {
    r0 = [CCEaseInOut actionWithAction:r2 rate:r3];
    return r0;
}

@end
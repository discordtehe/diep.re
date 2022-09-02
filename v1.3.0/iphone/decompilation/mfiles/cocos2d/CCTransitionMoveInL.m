@implementation CCTransitionMoveInL

-(void)onEnter {
    [[&var_30 super] onEnter];
    [self initScenes];
    r2 = [self action];
    r20 = self->_inScene;
    r22 = [self easeActionWithAction:r2];
    [CCCallFunc actionWithTarget:self selector:@selector(finish)];
    [CCSequence actions:r22];
    [r20 runAction:r2];
    return;
}

-(void *)action {
    r0 = [CCMoveTo actionWithDuration:r2 position:r3];
    return r0;
}

-(void *)easeActionWithAction:(void *)arg2 {
    r0 = [CCEaseOut actionWithAction:r2 rate:r3];
    return r0;
}

-(void)initScenes {
    [[CCDirector sharedDirector] winSize];
    [self->_inScene setPosition:r2];
    return;
}

@end
@implementation CCTransitionSlideInL

-(void)onEnter {
    [[&var_40 super] onEnter];
    [self initScenes];
    r21 = [self action];
    r20 = [self action];
    r21 = [self easeActionWithAction:r21];
    r20 = [self easeActionWithAction:r20];
    [CCCallFunc actionWithTarget:self selector:@selector(finish)];
    r20 = [CCSequence actions:r20];
    [self->_inScene runAction:r21];
    [self->_outScene runAction:r20];
    return;
}

-(void)sceneOrder {
    *(int8_t *)(int64_t *)&self->_inSceneOnTop = 0x0;
    return;
}

-(void)initScenes {
    [[CCDirector sharedDirector] winSize];
    [self->_inScene setPosition:r2];
    return;
}

-(void *)easeActionWithAction:(void *)arg2 {
    r0 = [CCEaseOut actionWithAction:r2 rate:r3];
    return r0;
}

-(void *)action {
    [[CCDirector sharedDirector] winSize];
    r0 = [CCMoveBy actionWithDuration:r2 position:r3];
    return r0;
}

@end
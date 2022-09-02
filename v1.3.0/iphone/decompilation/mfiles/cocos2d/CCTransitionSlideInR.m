@implementation CCTransitionSlideInR

-(void)sceneOrder {
    *(int8_t *)(int64_t *)&self->_inSceneOnTop = 0x1;
    return;
}

-(void *)action {
    [[CCDirector sharedDirector] winSize];
    r0 = [CCMoveBy actionWithDuration:r2 position:r3];
    return r0;
}

-(void)initScenes {
    [[CCDirector sharedDirector] winSize];
    [self->_inScene setPosition:r2];
    return;
}

@end
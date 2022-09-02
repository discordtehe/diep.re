@implementation CCTransitionMoveInB

-(void)initScenes {
    [[CCDirector sharedDirector] winSize];
    [self->_inScene setPosition:r2];
    return;
}

@end
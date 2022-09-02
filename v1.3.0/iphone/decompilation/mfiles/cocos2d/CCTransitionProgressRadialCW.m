@implementation CCTransitionProgressRadialCW

-(void *)progressTimerNodeWithRenderTexture:(void *)arg2 {
    [[CCDirector sharedDirector] winSize];
    r0 = [CCProgressTimer progressWithSprite:[arg2 sprite]];
    [[r0 sprite] setFlipY:0x1];
    [r0 setType:0x0];
    [r0 setReverseDirection:0x1];
    [r0 setPercentage:0x1];
    [r0 setPosition:0x1];
    [r0 setAnchorPoint:r2];
    r0 = r19;
    return r0;
}

@end
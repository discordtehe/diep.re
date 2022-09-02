@implementation MCAnimVSZFireAndForgetDelegate

+(void *)delegate {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void)vszAnimationEnded:(void *)arg2 {
    [arg2 stop];
    [arg2 retain];
    [MCAnimVSZRemoveFromParentAction action];
    [arg2 runAction:r2];
    [arg2 autorelease];
    [self autorelease];
    return;
}

-(void)setToNode:(void *)arg2 {
    [self retain];
    return;
}

@end
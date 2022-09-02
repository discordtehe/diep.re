@implementation FireAndForgetNode

-(void)removeFromParent {
    [self removeFromParentAndCleanup:r2];
    return;
}

@end
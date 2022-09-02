@implementation CCEnable

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_target setIsEnabled:r2];
    return;
}

-(void *)reverse {
    r0 = [CCDisable action];
    return r0;
}

@end
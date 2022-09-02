@implementation CCEaseBackIn

-(void)update:(double)arg2 {
    [self->_inner update:r2];
    return;
}

-(void *)reverse {
    [self->_inner reverse];
    r0 = [CCEaseBackOut actionWithAction:r2];
    return r0;
}

@end
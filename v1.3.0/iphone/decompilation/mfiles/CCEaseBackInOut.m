@implementation CCEaseBackInOut

-(void)update:(double)arg2 {
    r0 = self;
    d1 = d0 + d0;
    if (d1 < 0x3ff0000000000000) {
            r0 = r0->_inner;
    }
    else {
            r0 = r0->_inner;
    }
    [r0 update:r2];
    return;
}

@end
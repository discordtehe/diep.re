@implementation CCFadeOut

-(void)update:(double)arg2 {
    r0 = self->_target;
    asm { fcvtzs     w2, d0 };
    [r0 setOpacity:r2];
    return;
}

-(void *)reverse {
    r0 = [CCFadeIn actionWithDuration:r2];
    return r0;
}

@end
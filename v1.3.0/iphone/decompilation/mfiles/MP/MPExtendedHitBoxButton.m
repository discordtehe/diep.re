@implementation MPExtendedHitBoxButton

-(bool)pointInside:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [self touchAreaInsets];
    r0 = [self bounds];
    r0 = CGRectContainsPoint(r0, @selector(bounds));
    return r0;
}

-(struct UIEdgeInsets)touchAreaInsets {
    r0 = self;
    return r0;
}

-(void)setTouchAreaInsets:(struct UIEdgeInsets)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_touchAreaInsets));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

@end
@implementation CCMoveToFollow

-(struct CGPoint)getEndPosition {
    r0 = self;
    return r0;
}

-(void)setEndPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int128_t *)(int64_t *)&self->_endPosition = d0;
    *(int128_t *)((int64_t *)&self->_endPosition + 0x8) = d1;
    *(int128_t *)(int64_t *)&self->_positionDelta = q0;
    return;
}

@end
@implementation CCMenuItemDraggable

-(struct CGPoint)realPosition {
    r0 = self;
    return r0;
}

-(void)setRealPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(realPosition_));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

@end
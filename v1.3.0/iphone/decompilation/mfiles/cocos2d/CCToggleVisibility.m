@implementation CCToggleVisibility

-(void)update:(double)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r0 = *(self + r20);
    [r0 visible];
    [*(self + r20) setVisible:r2];
    return;
}

@end
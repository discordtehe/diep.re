@implementation CCJumpTo

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_delta));
    *(int128_t *)(self + r8) = *(int128_t *)(self + r8);
    return;
}

@end
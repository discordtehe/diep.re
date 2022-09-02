@implementation CCToggleEnable

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    [*(self + r20) isEnabled] ^ 0x1;
    [*(self + r20) setIsEnabled:r2];
    return;
}

@end
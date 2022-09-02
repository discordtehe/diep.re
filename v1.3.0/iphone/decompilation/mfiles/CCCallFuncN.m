@implementation CCCallFuncN

-(void)execute {
    r0 = self;
    if (r0->_selector != 0x0) {
            [*(r0 + sign_extend_64(*(int32_t *)ivar_offset(_targetCallback))) performSelector:r2 withObject:r3];
    }
    return;
}

@end
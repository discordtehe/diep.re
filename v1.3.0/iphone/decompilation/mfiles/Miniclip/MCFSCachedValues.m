@implementation MCFSCachedValues

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0x8) = 0x0;
    }
    return r0;
}

-(bool)lockHorizontalSize {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setLockHorizontalSize:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)lockVerticalSize {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(bool)useHorizontalTiling {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setLockVerticalSize:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void)setUseHorizontalTiling:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(bool)useVerticalTiling {
    r0 = *(int8_t *)(self + 0xb);
    return r0;
}

-(void)setUseVerticalTiling:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

@end
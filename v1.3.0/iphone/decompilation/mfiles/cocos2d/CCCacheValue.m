@implementation CCCacheValue

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithFullPath:(void *)arg2 resolutionType:(int)arg3 andResourcePack:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r22 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setFullpath:r22];
            [r21 setResolutionType:r20];
            [r21 setResourcePack:r19];
    }
    r0 = r21;
    return r0;
}

-(void *)fullpath {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setFullpath:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(int)resolutionType {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

-(void)setResolutionType:(int)arg2 {
    *(int32_t *)(self + 0x10) = arg2;
    return;
}

-(void *)resourcePack {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setResourcePack:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
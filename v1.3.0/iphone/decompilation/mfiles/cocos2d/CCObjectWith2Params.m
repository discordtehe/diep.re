@implementation CCObjectWith2Params

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)block {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void)setBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)param {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setParam:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
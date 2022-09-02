@implementation CCBSequenceProperty

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0x18) = [[NSMutableArray alloc] init];
    }
    r0 = r20;
    return r0;
}

-(void *)name {
    r0 = *(self + 0x8);
    return r0;
}

-(void)dealloc {
    [*(self + 0x18) release];
    [self setName:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(int)type {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

-(void *)keyframes {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setType:(int)arg2 {
    *(int32_t *)(self + 0x10) = arg2;
    return;
}

@end
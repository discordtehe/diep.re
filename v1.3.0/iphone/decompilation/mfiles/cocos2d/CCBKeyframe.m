@implementation CCBKeyframe

-(void)dealloc {
    [self setValue:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)value {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setValue:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(float)time {
    r0 = self;
    return r0;
}

-(void)setTime:(float)arg2 {
    *(int32_t *)(self + 0x10) = s0;
    return;
}

-(int)easingType {
    r0 = *(int32_t *)(self + 0x14);
    return r0;
}

-(void)setEasingType:(int)arg2 {
    *(int32_t *)(self + 0x14) = arg2;
    return;
}

-(float)easingOpt {
    r0 = self;
    return r0;
}

-(void)setEasingOpt:(float)arg2 {
    *(int32_t *)(self + 0x18) = s0;
    return;
}

@end
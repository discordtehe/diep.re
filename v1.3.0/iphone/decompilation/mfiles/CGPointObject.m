@implementation CGPointObject

+(void *)pointWithCGPoint:(struct CGPoint)arg2 offset:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithCGPoint:r2 offset:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithCGPoint:(struct CGPoint)arg2 offset:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = d11;
    stack[-40] = d10;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = d11;
            *(r0 + 0x10) = d10;
            *(r0 + 0x18) = d9;
            *(r0 + 0x20) = d8;
    }
    return r0;
}

-(struct CGPoint)ratio {
    r0 = self;
    return r0;
}

-(void)setRatio:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x8) = d0;
    *(self + 0x10) = d1;
    return;
}

-(struct CGPoint)offset {
    r0 = self;
    return r0;
}

-(void *)child {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x18) = d0;
    *(self + 0x20) = d1;
    return;
}

-(void)setChild:(void *)arg2 {
    *(self + 0x28) = arg2;
    return;
}

@end
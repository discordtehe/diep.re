@implementation MPAdPositioning

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(unsigned long long)repeatingInterval {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r21 = [[[self class] allocWithZone:arg2] init];
    r0 = [self fixedPositions];
    r0 = [r0 retain];
    r20 = [r0 copyWithZone:arg2];
    [r21 setFixedPositions:r20];
    [r20 release];
    [r0 release];
    [r21 setRepeatingInterval:[self repeatingInterval]];
    r0 = r21;
    return r0;
}

-(void)setRepeatingInterval:(unsigned long long)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void *)fixedPositions {
    r0 = *(self + 0x10);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void)setFixedPositions:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

@end
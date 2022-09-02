@implementation MCEvent

-(void)buildEvent:(int)arg2 location:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [NSDate timeIntervalSinceReferenceDate];
    *(self + 0x8) = d0;
    return;
}

-(void *)allTouches {
    r0 = *(self + 0x10);
    return r0;
}

-(double)timestamp {
    r0 = self;
    return r0;
}

-(void *)touches {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setTouches:(void *)arg2 {
    *(self + 0x10) = arg2;
    return;
}

@end
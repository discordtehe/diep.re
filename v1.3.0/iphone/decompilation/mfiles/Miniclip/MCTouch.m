@implementation MCTouch

-(struct CGPoint)locationInView:(void *)arg2 {
    r0 = self;
    return r0;
}

-(struct CGPoint)previousLocationInView:(void *)arg2 {
    r0 = self;
    return r0;
}

-(struct CGPoint)firstLocationInView:(void *)arg2 {
    r0 = self;
    return r0;
}

-(void)setPhase:(long long)arg2 {
    *(self + 0x30) = arg2;
    [NSDate timeIntervalSinceReferenceDate];
    *(self + 0x20) = d0;
    return;
}

-(void)setLocationInWindow:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int128_t *)(self + 0x38) = *(int128_t *)(self + 0x10);
    *(int128_t *)(self + 0x10) = d0;
    *(int128_t *)(self + 0x18) = d1;
    [NSDate timeIntervalSinceReferenceDate];
    *(self + 0x20) = d0;
    return;
}

-(void)buildTouch:(int)arg2 location:(struct CGPoint)arg3 tapCount:(int)arg4 view:(void *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r0 = self;
    r19 = r0;
    asm { sxtw       x8, w3 };
    *(r0 + 0x48) = r8;
    *(int128_t *)(r0 + 0x38) = *(int128_t *)(r0 + 0x10);
    *(int128_t *)(r0 + 0x10) = d9;
    *(int128_t *)(r0 + 0x18) = d1;
    *(r0 + 0x8) = r4;
    *(r0 + 0x30) = 0x0;
    *(int8_t *)(r0 + 0x60) = *(int8_t *)(r0 + 0x60) | 0x3;
    [NSDate timeIntervalSinceReferenceDate];
    *(int128_t *)(r19 + 0x20) = d0;
    *(int128_t *)(r19 + 0x28) = d0;
    *(int128_t *)(r19 + 0x50) = d9;
    *(int128_t *)(r19 + 0x58) = d8;
    return;
}

-(void *)view {
    r0 = *(self + 0x8);
    return r0;
}

-(double)timestamp {
    r0 = self;
    return r0;
}

-(double)startTimeStamp {
    r0 = self;
    return r0;
}

-(long long)phase {
    r0 = *(self + 0x30);
    return r0;
}

-(unsigned long long)tapCount {
    r0 = *(self + 0x48);
    return r0;
}

@end
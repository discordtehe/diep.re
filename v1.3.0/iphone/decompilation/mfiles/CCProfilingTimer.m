@implementation CCProfilingTimer

-(void *)initWithName:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [r20 copy];
            *(r19 + 0x20) = 0x0;
            *(int128_t *)(r19 + 0x38) = 0x0;
            *(int128_t *)(r19 + 0x40) = 0x0;
            *(int128_t *)(r19 + 0x28) = *(int128_t *)0x100bc1fe0;
            gettimeofday(r19 + 0x10, 0x0);
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)reset {
    *(self + 0x20) = 0x0;
    *(int128_t *)(self + 0x38) = 0x0;
    *(int128_t *)(self + 0x40) = 0x0;
    *(int128_t *)(self + 0x28) = *(int128_t *)0x100bc1fe0;
    gettimeofday(self + 0x10, 0x0);
    return;
}

-(void *)description {
    r8 = @class(NSString);
    r1 = @selector(stringWithFormat:);
    asm { fdiv       d2, d2, d3 };
    r0 = objc_msgSend(r8, r1);
    return r0;
}

@end
@implementation CCAction

+(void *)action {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int128_t *)(r0 + 0x8) = 0x0;
            *(int128_t *)(r0 + 0x10) = 0x0;
            *(r0 + 0x18) = 0xffffffffffffffff;
    }
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 init];
    [r0 setTag:r2];
    r0 = r19;
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    *(int128_t *)(self + 0x8) = arg2;
    *(int128_t *)(self + 0x10) = arg2;
    return;
}

-(void)stop {
    *(self + 0x10) = 0x0;
    return;
}

-(bool)isDone {
    return 0x1;
}

-(void)step:(double)arg2 {
    return;
}

-(void)update:(double)arg2 {
    return;
}

-(void)setTag:(long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(long long)tag {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)target {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)originalTarget {
    r0 = *(self + 0x8);
    return r0;
}

@end
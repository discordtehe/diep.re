@implementation CCActionInstant

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            r0->_duration = 0x0;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 init];
    return r0;
}

-(bool)isDone {
    return 0x1;
}

-(void)step:(double)arg2 {
    [self update:r2];
    return;
}

-(void)update:(double)arg2 {
    return;
}

-(void *)reverse {
    r0 = [self copy];
    r0 = [r0 autorelease];
    return r0;
}

@end
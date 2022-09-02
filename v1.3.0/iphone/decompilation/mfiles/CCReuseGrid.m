@implementation CCReuseGrid

+(void *)actionWithTimes:(int)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTimes:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTimes:(int)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_times = r19;
    }
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] startWithTarget:arg2];
    r0 = [r19 target];
    r20 = r0;
    if ([r0 grid] != 0x0 && [[r20 grid] active] != 0x0) {
            r0 = [r20 grid];
            [r0 setReuseGrid:*(int32_t *)(int64_t *)&r19->_times + [r0 reuseGrid]];
    }
    return;
}

@end
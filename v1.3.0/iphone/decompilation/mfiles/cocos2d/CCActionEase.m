@implementation CCActionEase

+(void *)actionWithAction:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAction:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 duration];
    r0 = [[&var_20 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_inner = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAction:[[self->_inner copy] autorelease]];
    return r0;
}

-(void)dealloc {
    [self->_inner release];
    [[&var_20 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_inner startWithTarget:self->_target];
    return;
}

-(void)stop {
    [self->_inner stop];
    [[&var_20 super] stop];
    return;
}

-(void)update:(double)arg2 {
    [self->_inner update:r2];
    return;
}

-(void *)reverse {
    r20 = [self class];
    [self->_inner reverse];
    r0 = [r20 actionWithAction:r2];
    return r0;
}

-(void *)inner {
    r0 = self->_inner;
    return r0;
}

@end
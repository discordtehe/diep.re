@implementation CCForceDuration

+(void *)actionWithDuration:(double)arg2 action:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 action:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:[[self->inner_ copy] autorelease] action:r3];
    return r0;
}

-(void *)initWithDuration:(double)arg2 action:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 duration];
            r1 = @selector(setTimeScale:);
            asm { fdiv       d0, d0, d8 };
            objc_msgSend(r20, r1);
            [r20 setInner:[r19 retain]];
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->inner_ release];
    [[&var_20 super] dealloc];
    return;
}

-(void)update:(double)arg2 {
    [self->inner_ update:r2];
    return;
}

-(void)stop {
    [self->inner_ stop];
    [[&var_20 super] stop];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->inner_ startWithTarget:self->_target];
    return;
}

-(double)timeScale {
    r0 = self;
    return r0;
}

-(void)setTimeScale:(double)arg2 {
    self->timeScale_ = d0;
    return;
}

-(void *)inner {
    r0 = self->inner_;
    return r0;
}

-(void)setInner:(void *)arg2 {
    self->inner_ = arg2;
    return;
}

@end
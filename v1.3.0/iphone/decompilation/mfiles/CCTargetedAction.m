@implementation CCTargetedAction

+(void *)actionWithTarget:(void *)arg2 action:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 action:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 action:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    [arg3 duration];
    r0 = [[&var_30 super] initWithDuration:r2];
    r21 = r0;
    if (r0 != 0x0) {
            r21->_forcedTarget = [r20 retain];
            r21->_action = [r19 retain];
    }
    r0 = r21;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithTarget:self->_forcedTarget action:[[self->_action copy] autorelease]];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_action startWithTarget:self->_forcedTarget];
    return;
}

-(void)dealloc {
    [self->_forcedTarget release];
    [self->_action release];
    [[&var_20 super] dealloc];
    return;
}

-(void)stop {
    [self->_action stop];
    return;
}

-(void)update:(double)arg2 {
    [self->_action update:r2];
    return;
}

-(void *)forcedTarget {
    r0 = self->_forcedTarget;
    return r0;
}

-(void)setForcedTarget:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
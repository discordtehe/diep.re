@implementation CCSpeed

-(void *)initWithAction:(void *)arg2 speed:(double)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setInnerAction:r19];
            r20->_speed = d8;
    }
    r0 = r20;
    return r0;
}

+(void *)actionWithAction:(void *)arg2 speed:(double)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 speed:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAction:[[self->_innerAction copy] autorelease] speed:r3];
    return r0;
}

-(void)dealloc {
    [self->_innerAction release];
    [[&var_20 super] dealloc];
    return;
}

-(void)stop {
    [self->_innerAction stop];
    [[&var_20 super] stop];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_innerAction startWithTarget:*(self + 0x10)];
    return;
}

-(void)step:(double)arg2 {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_innerAction))) step:arg2];
    return;
}

-(bool)isDone {
    r0 = self->_innerAction;
    r0 = [r0 isDone];
    return r0;
}

-(void *)reverse {
    r0 = [CCSpeed actionWithAction:[self->_innerAction reverse] speed:r3];
    return r0;
}

-(double)speed {
    r0 = self;
    return r0;
}

-(void)setSpeed:(double)arg2 {
    self->_speed = d0;
    return;
}

-(void *)innerAction {
    r0 = self->_innerAction;
    return r0;
}

-(void)setInnerAction:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
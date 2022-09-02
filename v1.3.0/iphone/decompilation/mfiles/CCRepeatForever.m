@implementation CCRepeatForever

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
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setInnerAction:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAction:[[self->_innerAction copy] autorelease]];
    return r0;
}

-(void)dealloc {
    [self->_innerAction release];
    [[&var_20 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_innerAction startWithTarget:*(self + 0x10)];
    return;
}

-(bool)isDone {
    return 0x0;
}

-(void *)reverse {
    [self->_innerAction reverse];
    r0 = [CCRepeatForever actionWithAction:r2];
    return r0;
}

-(void)step:(double)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_innerAction));
    [*(self + r21) step:arg2];
    if ([*(r19 + r21) isDone] != 0x0) {
            [*(r19 + r21) elapsed];
            [*(r19 + r21) duration];
            r0 = *(r19 + r21);
            r2 = *(r19 + 0x10);
            [r0 startWithTarget:r2];
            [*(r19 + r21) step:r2];
            [*(r19 + r21) step:r2];
    }
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
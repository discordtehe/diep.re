@implementation CCCallBlockO

+(void *)actionWithBlock:(void *)arg2 object:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithBlock:arg2 object:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithBlock:(void *)arg2 object:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_block = [r21 copy];
            r20->_object = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithBlock:self->_block object:self->_object];
    return r0;
}

-(void)update:(double)arg2 {
    [self execute];
    return;
}

-(void)execute {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_block));
    r8 = *(self + r8);
    r1 = self->_object;
    r2 = *(r8 + 0x10);
    (r2)(r8, r1, r2);
    return;
}

-(void *)object {
    r0 = self->_object;
    return r0;
}

-(void)dealloc {
    [self->_object release];
    [self->_block release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setObject:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
@implementation CCCallBlock

+(void *)actionWithBlock:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithBlock:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithBlock:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_block = [r19 copy];
    }
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithBlock:self->_block];
    return r0;
}

-(void)update:(double)arg2 {
    [self execute];
    return;
}

-(void)dealloc {
    [self->_block release];
    [[&var_20 super] dealloc];
    return;
}

-(void)execute {
    r0 = self->_block;
    r1 = *(r0 + 0x10);
    (r1)(r0, r1);
    return;
}

@end
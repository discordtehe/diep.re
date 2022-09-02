@implementation CCPlace

+(void *)actionWithPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithPosition:r2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
            *(int128_t *)(r0 + r8) = d9;
            *(int128_t *)(0x8 + r0 + r8) = d8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithPosition:arg2];
    return r0;
}

-(void)update:(double)arg2 {
    [self->_target setPosition:r2];
    return;
}

@end
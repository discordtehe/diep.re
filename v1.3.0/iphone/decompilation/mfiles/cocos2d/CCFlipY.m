@implementation CCFlipY

+(void *)actionWithFlipY:(bool)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithFlipY:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)update:(double)arg2 {
    [self->_target setFlipY:*(int8_t *)(int64_t *)&self->_flipY];
    return;
}

-(void *)initWithFlipY:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_flipY = r19;
    }
    return r0;
}

-(void *)reverse {
    if (*(int8_t *)(int64_t *)&self->_flipY == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    r0 = [CCFlipY actionWithFlipY:r2];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithFlipY:*(int8_t *)(int64_t *)&self->_flipY];
    return r0;
}

@end
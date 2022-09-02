@implementation TJBackoff

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void *)initWithBackoff:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [self init];
    *(int32_t *)(int64_t *)&r20->_first = [arg2 first];
    *(int32_t *)(int64_t *)&r20->_min = [arg2 min];
    *(int32_t *)(int64_t *)&r20->_max = [arg2 max];
    [arg2 multiplier];
    [r22 release];
    *(int32_t *)(int64_t *)&r20->_multiplier = s8;
    r0 = r20;
    return r0;
}

-(void)updateWithArray:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r19 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:r2];
            [r0 release];
            if (r25 != 0x0) {
                    r23 = @selector(intValue);
                    r0 = [r19 objectAtIndexedSubscript:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int32_t *)(int64_t *)&r20->_first = objc_msgSend(r0, r23);
                    [r0 release];
            }
    }
    if ([r19 count] >= 0x2) {
            r0 = [r19 objectAtIndexedSubscript:0x1];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:r2];
            [r0 release];
            if (r25 != 0x0) {
                    r23 = @selector(intValue);
                    r0 = [r19 objectAtIndexedSubscript:0x1];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int32_t *)(int64_t *)&r20->_min = objc_msgSend(r0, r23);
                    [r0 release];
            }
    }
    if ([r19 count] >= 0x3) {
            r0 = [r19 objectAtIndexedSubscript:0x2];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:r2];
            [r0 release];
            if (r25 != 0x0) {
                    r23 = @selector(intValue);
                    r0 = [r19 objectAtIndexedSubscript:0x2];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int32_t *)(int64_t *)&r20->_max = objc_msgSend(r0, r23);
                    [r0 release];
            }
    }
    if ([r19 count] >= 0x4) {
            r0 = [r19 objectAtIndexedSubscript:0x3];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:r2];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r19 objectAtIndexedSubscript:0x3];
                    r0 = [r0 retain];
                    [r0 floatValue];
                    *(int32_t *)(int64_t *)&r20->_multiplier = s0;
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)updateWithFirst:(void *)arg2 min:(void *)arg3 max:(void *)arg4 multiplier:(void *)arg5 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [arg5 retain];
    if ([r19 respondsToSelector:r2] != 0x0) {
            *(int32_t *)(int64_t *)&r21->_first = [r19 intValue];
    }
    if ([r20 respondsToSelector:r2] != 0x0) {
            *(int32_t *)(int64_t *)&r21->_min = [r20 intValue];
    }
    if ([r22 respondsToSelector:r2] != 0x0) {
            *(int32_t *)(int64_t *)&r21->_max = [r22 intValue];
    }
    if ([r23 respondsToSelector:r2] != 0x0) {
            [r23 floatValue];
            *(int32_t *)(int64_t *)&r21->_multiplier = s0;
    }
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)reset {
    *(int32_t *)(int64_t *)&self->_backoff = [self first];
    return;
}

-(bool)isEqual:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 max] == [r19 max] && [r20 first] == [r19 first] && [r20 min] == [r19 min]) {
            [r20 multiplier];
            [r19 multiplier];
            if (s8 == s0) {
                    r20 = [r20 backoff];
                    if (r20 == [r19 backoff]) {
                            if (CPU_FLAGS & E) {
                                    r20 = 0x1;
                            }
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(int)getAndNext {
    r20 = [self backoff];
    [self next];
    r0 = r20;
    return r0;
}

-(int)next {
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
    [self backoff];
    asm { scvtf      s8, w0 };
    [r19 multiplier];
    asm { fcvtzs     w20, s0 };
    r21 = @selector(min);
    if (objc_msgSend(r19, r21) <= r20) {
            r21 = @selector(max);
            if (objc_msgSend(r19, r21) < r20) {
                    r20 = objc_msgSend(r19, r21);
            }
    }
    else {
            r20 = objc_msgSend(r19, r21);
    }
    *(int32_t *)(int64_t *)&r19->_backoff = r20;
    r0 = r20;
    return r0;
}

-(int)backoff {
    r0 = *(int32_t *)(int64_t *)&self->_backoff;
    return r0;
}

-(int)first {
    r0 = *(int32_t *)(int64_t *)&self->_first;
    return r0;
}

-(int)min {
    r0 = *(int32_t *)(int64_t *)&self->_min;
    return r0;
}

-(int)max {
    r0 = *(int32_t *)(int64_t *)&self->_max;
    return r0;
}

-(float)multiplier {
    r0 = self;
    return r0;
}

@end
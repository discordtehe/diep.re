@implementation GADShingleHashTuple

-(unsigned long long)hashValue {
    r0 = self->_hashValue;
    return r0;
}

-(void *)initWithShingle:(void *)arg2 hashValue:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r21 = [self init];
    if (r21 != 0x0) {
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_shingle));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r21->_hashValue = r19;
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)shingle {
    r0 = self->_shingle;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_shingle, 0x0);
    return;
}

@end
@implementation FABIcon

-(void *)initWithData:(void *)arg2 dataHash:(void *)arg3 size:(struct CGSize)arg4 prerendered:(bool)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r4;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_data));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dataHash));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
            *(int128_t *)(r22 + r8) = d9;
            *(int128_t *)(0x8 + r22 + r8) = d8;
            *(int8_t *)(int64_t *)&r22->_prerendered = r19;
    }
    [r21 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)initWithData:(void *)arg2 size:(struct CGSize)arg3 prerendered:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r22 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    [r0 bytes];
    [r0 length];
    r20 = [sub_1000968a8() retain];
    r19 = [self initWithData:r22 dataHash:r20 size:r3 prerendered:r5];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithData:(void *)arg2 size:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithData:arg2 size:0x1 prerendered:r4];
    return r0;
}

-(double)surfaceArea {
    [self size];
    r0 = objc_msgSend(self, r20);
    return r0;
}

-(bool)isWithinMaxSurfaceArea {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self surfaceArea];
    if (d0 < *0x100b9fc00) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)initWithPNGImageAtPath:(void *)arg2 size:(struct CGSize)arg3 prerendered:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = r3;
    v8 = v1;
    v9 = v0;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[NSData alloc] initWithContentsOfFile:r2];
    if (r21 != 0x0) {
            r0 = objc_retainAutorelease(r21);
            [r0 bytes];
            [r0 length];
            r0 = sub_1000968a8();
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r24 = [[UIImage alloc] initWithContentsOfFile:r2];
                    if (r24 != 0x0) {
                            r25 = [UIImagePNGRepresentation() retain];
                            if (r25 != 0x0) {
                                    r20 = [[r20 initWithData:r25 dataHash:r22 size:r23 prerendered:r5] retain];
                                    [r25 release];
                                    r23 = r20;
                            }
                            else {
                                    r23 = 0x0;
                            }
                    }
                    else {
                            r23 = 0x0;
                    }
            }
            else {
                    r23 = 0x0;
                    r24 = 0x0;
            }
    }
    else {
            r22 = 0x0;
            r23 = 0x0;
            r24 = 0x0;
    }
    [r21 release];
    [r24 release];
    if (r23 == 0x0) {
            [r20 release];
            r20 = 0x0;
    }
    [r22 release];
    [r19 release];
    [r20 release];
    r0 = r23;
    return r0;
}

+(bool)isWithinMaxSurfaceAreaWithImage:(void *)arg2 {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    [arg2 size];
    [arg2 scale];
    [arg2 size];
    [arg2 scale];
    r0 = [r21 release];
    if (d8 * d0 * d8 * d9 < *0x100b9fc00) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)data {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_data)), 0x0);
    return r0;
}

-(bool)largerThanSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self surfaceArea];
    if (d0 > d9 * d8) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dataHash {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataHash)), 0x0);
    return r0;
}

-(void)setDataHash:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(struct CGSize)size {
    r0 = self;
    return r0;
}

-(void)setSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(bool)prerendered {
    r0 = *(int8_t *)(int64_t *)&self->_prerendered;
    return r0;
}

-(void)setPrerendered:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_prerendered = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dataHash, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    return;
}

@end
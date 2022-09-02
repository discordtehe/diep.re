@implementation CCShuffleTiles

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 seed:(unsigned int)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 seed:r4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 seed:(unsigned int)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] initWithDuration:r2 size:r3];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_seed = r19;
            r0->_tilesOrder = 0x0;
            r0->_tiles = 0x0;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:*(int32_t *)(int64_t *)&self->_seed size:r3 seed:r4];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_tilesOrder;
    if (r0 != 0x0) {
            free(r0);
    }
    r0 = r19->_tiles;
    if (r0 != 0x0) {
            free(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(struct CGSize)getDelta:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    r8 = r0 + r8;
    asm { fcvtzu     x8, d3 };
    asm { fcvtzu     x9, d2 };
    asm { udiv       x10, x8, x9 };
    asm { ucvtf      d2, x10 };
    asm { ucvtf      d3, x8 };
    return r0;
}

-(void)shuffle:(unsigned long long *)arg2 count:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 >= 0x1) {
            r19 = r3;
            r20 = r2;
            r21 = r2 - 0x8;
            do {
                    rand();
                    asm { sxtw       x8, w0 };
                    r8 = r8 - r8 / r19 * r19;
                    r9 = *(r21 + r19 * 0x8);
                    *(r21 + r19 * 0x8) = *(r20 + r8 * 0x8);
                    *(r20 + r8 * 0x8) = r9;
                    r19 = r19 - 0x1;
            } while (r19 > 0x0);
    }
    return;
}

-(void)placeTile:(struct CGPoint)arg2 tile:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    v8 = v1;
    v9 = v0;
    r19 = self;
    if (self != 0x0) {
            v1 = v8;
            [r19 originalTile:r2];
    }
    else {
            var_40 = q0;
            stack[-64] = q0;
            var_50 = q0;
    }
    [[r19->_target grid] step];
    asm { fcvtzs     v0.2d, v0.2d };
    asm { xtn        v0.2s, v0.2d };
    asm { scvtf      v0.2s, v0.2s };
    [r19 setTile:&var_80 coords:r3];
    return;
}

-(void)startWithTarget:(void *)arg2 {
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
    r19 = self;
    [[&var_50 super] startWithTarget:arg2];
    r0 = *(int32_t *)(int64_t *)&r19->_seed;
    if (r0 != -0x1) {
            srand(r0);
    }
    r22 = (int64_t *)&r19->_gridSize;
    asm { fcvtzu     x20, d0 };
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_tilesCount));
    *(r19 + r21) = r20;
    r0 = malloc(r20 << 0x3);
    r2 = r0;
    r19->_tilesOrder = r0;
    if (r20 != 0x0) {
            r8 = 0x0;
            do {
                    *(r2 + r8 * 0x8) = r8;
                    r8 = r8 + 0x1;
            } while (r8 < r20);
    }
    [r19 shuffle:r2 count:r20];
    r8 = *(r19 + r21);
    r0 = malloc(r8 + r8 * 0x2 << 0x4);
    r19->_tiles = r0;
    d1 = *r22;
    if (d1 > 0x0) {
            r20 = r0;
            r23 = 0x0;
            d0 = *(r22 + 0x8);
            do {
                    if (d0 > 0x0) {
                            r24 = 0x1;
                            do {
                                    *r20 = 0x0;
                                    *(r20 + 0x8) = 0x0;
                                    *(r20 + 0x10) = 0x0;
                                    *(r20 + 0x18) = 0x0;
                                    [r19 getDelta:r2];
                                    *(r20 + 0x20) = d0;
                                    *(r20 + 0x28) = d1;
                                    r20 = r20 + 0x30;
                                    asm { scvtf      d1, w24 };
                                    d0 = *(r22 + 0x8);
                                    r24 = r24 + 0x1;
                            } while (d0 > d1);
                            d1 = *r22;
                    }
                    d8 = 0x0;
                    r23 = r23 + 0x1;
                    asm { scvtf      d8, w23 };
            } while (d1 > d8);
    }
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    r31 = r31 - 0xa0;
    var_50 = d9;
    stack[-88] = d8;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    d1 = *(r0 + r21);
    if (d1 > 0x0) {
            r19 = r0;
            r22 = 0x0;
            r23 = r0->_tiles;
            r24 = r0 + 0x8;
            d2 = *(r24 + r21);
            asm { dup        v3.2d, v0.d[0] };
            var_90 = q3;
            do {
                    if (d2 > 0x0) {
                            r25 = 0x1;
                            do {
                                    v2 = v2 * v3;
                                    *(int128_t *)r23 = *(int128_t *)(r23 + 0x20);
                                    [r19 placeTile:r2 tile:r3];
                                    r23 = r23 + 0x30;
                                    asm { scvtf      d1, w25 };
                                    d2 = *(r24 + r21);
                                    r25 = r25 + 0x1;
                            } while (d2 > d1);
                            d1 = *(r19 + r21);
                    }
                    d8 = 0x0;
                    r22 = r22 + 0x1;
                    asm { scvtf      d8, w22 };
            } while (d1 > d8);
    }
    return;
}

+(void *)actionWithSeed:(int)arg2 grid:(struct CGSize)arg3 duration:(double)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self actionWithDuration:arg2 size:r3 seed:r4];
    return r0;
}

-(void *)initWithSeed:(int)arg2 grid:(struct CGSize)arg3 duration:(double)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithDuration:arg2 size:r3 seed:r4];
    return r0;
}

@end
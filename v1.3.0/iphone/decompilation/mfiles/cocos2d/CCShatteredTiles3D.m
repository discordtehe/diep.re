@implementation CCShatteredTiles3D

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 range:(int)arg4 shatterZ:(bool)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 range:r4 shatterZ:r5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 range:(int)arg4 shatterZ:(bool)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    r20 = arg2;
    r0 = [[&var_20 super] initWithDuration:r2 size:r3];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_once = 0x0;
            *(int32_t *)(int64_t *)&r0->_randrange = r20;
            *(int8_t *)(int64_t *)&r0->_shatterZ = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:*(int32_t *)(int64_t *)&self->_randrange size:*(int8_t *)(int64_t *)&self->_shatterZ range:r4 shatterZ:r5];
    return r0;
}

-(void)update:(double)arg2 {
    r0 = self;
    r31 = r31 - 0xe0;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_once));
    if (*(int8_t *)(r0 + r9) == 0x0) {
            r19 = r0;
            var_C8 = r9;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
            d0 = *(r0 + r23);
            if (d0 > 0x0) {
                    r24 = 0x0;
                    r25 = r19 + 0x8;
                    d1 = *(r25 + r23);
                    do {
                            if (d1 > 0x0) {
                                    r26 = 0x1;
                                    do {
                                            [r19 originalTile:r2];
                                            rand();
                                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_randrange));
                                            asm { scvtf      s0, w8 };
                                            s0 = var_90 + s0;
                                            var_90 = s0;
                                            rand();
                                            asm { scvtf      s0, w8 };
                                            s0 = var_84 + s0;
                                            var_84 = s0;
                                            rand();
                                            asm { scvtf      s0, w8 };
                                            s0 = var_78 + s0;
                                            var_78 = s0;
                                            rand();
                                            asm { scvtf      s0, w8 };
                                            s0 = var_6C + s0;
                                            var_6C = s0;
                                            rand();
                                            asm { scvtf      s0, w8 };
                                            s0 = var_8C + s0;
                                            var_8C = s0;
                                            rand();
                                            asm { scvtf      s0, w8 };
                                            s0 = var_80 + s0;
                                            var_80 = s0;
                                            rand();
                                            asm { scvtf      s0, w8 };
                                            s0 = var_74 + s0;
                                            var_74 = s0;
                                            rand();
                                            asm { scvtf      s0, w8 };
                                            s0 = var_68 + s0;
                                            var_68 = s0;
                                            if (*(int8_t *)(r19 + sign_extend_64(*(int32_t *)(r28 + 0x14c))) != 0x0) {
                                                    rand();
                                                    asm { scvtf      s0, w8 };
                                                    s0 = var_88 + s0;
                                                    var_88 = s0;
                                                    rand();
                                                    asm { scvtf      s0, w8 };
                                                    s0 = var_7C + s0;
                                                    var_7C = s0;
                                                    rand();
                                                    asm { scvtf      s0, w8 };
                                                    s0 = var_70 + s0;
                                                    var_70 = s0;
                                                    rand();
                                                    asm { scvtf      s0, w8 };
                                                    s0 = var_64 + s0;
                                                    var_64 = s0;
                                            }
                                            [r19 setTile:r2 coords:r3];
                                            asm { scvtf      d9, w26 };
                                            d1 = *(r25 + r23);
                                            r26 = r26 + 0x1;
                                    } while (d1 > d9);
                                    d0 = *(r19 + r23);
                            }
                            d8 = 0x0;
                            r24 = r24 + 0x1;
                            asm { scvtf      d8, w24 };
                    } while (d0 > d8);
            }
            *(int8_t *)(r19 + var_C8) = 0x1;
    }
    return;
}

+(void *)actionWithRange:(int)arg2 shatterZ:(bool)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self actionWithDuration:arg2 size:arg3 range:r4 shatterZ:r5];
    return r0;
}

-(void *)initWithRange:(int)arg2 shatterZ:(bool)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self initWithDuration:arg2 size:arg3 range:r4 shatterZ:r5];
    return r0;
}

@end
@implementation CCTurnOffTiles

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
    [[&var_20 super] dealloc];
    return;
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

-(void)turnOnTile:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    if (self != 0x0) {
            [r19 originalTile:r2];
    }
    [r19 setTile:&var_50 coords:r3];
    return;
}

-(void)turnOffTile:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    bzero(&stack[-96], 0x30);
    [self setTile:&stack[-96] coords:r3];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] startWithTarget:arg2];
    r0 = *(int32_t *)(int64_t *)&r19->_seed;
    if (r0 != -0x1) {
            srand(r0);
    }
    asm { fcvtzu     x20, d0 };
    r19->_tilesCount = r20;
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
    return;
}

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_tilesCount));
    if (*(r0 + r20) != 0x0) {
            r19 = r0;
            r21 = 0x0;
            asm { ucvtf      s1, x8 };
            asm { fcvt       d1, s1 };
            asm { fcvtzu     x22, d0 };
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_tilesOrder));
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
            r25 = r0 + 0x8;
            do {
                    r8 = *(r19 + r23);
                    asm { ucvtf      d0, x8 };
                    asm { fdiv       d0, d0, d1 };
                    asm { fcvtzu     x9, d0 };
                    asm { ucvtf      d0, x9 };
                    asm { fcvtzu     x9, d1 };
                    asm { udiv       x10, x8, x9 };
                    asm { ucvtf      d1, x8 };
                    if (r21 < r22) {
                            if (!CPU_FLAGS & B) {
                                    r1 = @selector(turnOnTile:);
                            }
                            else {
                                    r1 = @selector(turnOffTile:);
                            }
                    }
                    objc_msgSend(r19, r1);
                    r21 = r21 + 0x1;
            } while (r21 < *(r19 + r20));
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
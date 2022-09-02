@implementation CCGridAction

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
            *(int128_t *)(r0 + r8) = d9;
            *(int128_t *)(0x8 + r0 + r8) = d8;
    }
    return r0;
}

-(void *)grid {
    [NSException raise:@"GridBase" format:@"Abstract class needs implementation"];
    return 0x0;
}

-(void)startWithTarget:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r22 = self;
    [[&var_40 super] startWithTarget:r2];
    r20 = [r22 grid];
    r0 = [r21 grid];
    if (r0 == 0x0) goto loc_100303a6c;

loc_10030397c:
    r19 = r0;
    r24 = [r0 reuseGrid];
    r0 = [r19 active];
    if (r24 < 0x1) goto loc_100303a54;

loc_1003039a8:
    if (r0 != 0x0) {
            [r19 gridSize];
            r22 = (int64_t *)&r22->_gridSize;
            d1 = *r22;
            if (d0 == d1) {
                    [r19 gridSize];
                    if (d1 == *(r22 + 0x8)) {
                            [r20 class];
                            if ([r19 isKindOfClass:r2] != 0x0) {
                                    [r19 reuse];
                            }
                            else {
                                    [NSException raise:@"GridBase" format:@"Cannot reuse grid"];
                            }
                    }
                    else {
                            [NSException raise:@"GridBase" format:@"Cannot reuse grid"];
                    }
            }
            else {
                    [NSException raise:@"GridBase" format:@"Cannot reuse grid"];
            }
    }
    else {
            [NSException raise:@"GridBase" format:@"Cannot reuse grid"];
    }
    return;

loc_100303a54:
    if (r0 != 0x0) {
            [r19 setActive:0x0];
    }
    goto loc_100303a6c;

loc_100303a6c:
    [r21 setGrid:r20];
    [[r21 grid] setActive:0x1];
    return;
}

-(void *)reverse {
    r0 = [CCReverseTime actionWithAction:r2];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:arg2 size:r3];
    return r0;
}

-(struct CGSize)gridSize {
    r0 = self;
    return r0;
}

-(void)setGridSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

+(void *)actionWithSize:(struct CGSize)arg2 duration:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self actionWithDuration:r2 size:r3];
    return r0;
}

-(void *)initWithSize:(struct CGSize)arg2 duration:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithDuration:r2 size:r3];
    return r0;
}

@end
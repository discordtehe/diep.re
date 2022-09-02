@implementation CCSplitCols

+(void *)actionWithDuration:(double)arg2 cols:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 cols:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 cols:(unsigned long long)arg3 {
    r3 = arg3;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    asm { ucvtf      d1, x2 };
    r0 = [[&var_20 super] initWithDuration:r2 size:r3];
    if (r0 != 0x0) {
            r0->_cols = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:self->_cols cols:r3];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [[CCDirector sharedDirector] winSizeInPixels];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSize));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xc0;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    if (*(r0 + r22) > 0x0) {
            r19 = r0;
            r23 = r0 + 0x8;
            r24 = 0x1;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_winSize));
            do {
                    [r19 originalTile:r2];
                    d0 = *(r23 + r25);
                    d1 = -d0;
                    if ((r24 - 0x1 & 0x1) == 0x0) {
                            asm { fcsel      d0, d1, d0, eq };
                    }
                    r21 = @selector(setTile:coords:);
                    d0 = d0 * d8;
                    s1 = var_7C;
                    asm { fcvt       d1, s1 };
                    d1 = d0 + d1;
                    asm { fcvt       s1, d1 };
                    var_7C = s1;
                    asm { fcvt       d1, s2 };
                    d1 = d0 + d1;
                    asm { fcvt       s1, d1 };
                    var_70 = s1;
                    s1 = var_64;
                    asm { fcvt       d1, s1 };
                    asm { fcvt       s1, d1 };
                    var_64 = s1;
                    asm { fcvt       d1, s2 };
                    asm { fcvt       s0, d0 };
                    var_58 = s0;
                    r2 = &var_B0;
                    objc_msgSend(r19, r21);
                    asm { ucvtf      d9, x24 };
                    r24 = r24 + 0x1;
            } while (*(r19 + r22) > d9);
    }
    return;
}

+(void *)actionWithCols:(int)arg2 duration:(double)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 actionWithDuration:r2 cols:r3];
    return r0;
}

-(void *)initWithCols:(int)arg2 duration:(double)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 initWithDuration:r2 cols:r3];
    return r0;
}

@end
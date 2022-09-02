@implementation CCFadeOutTRTiles

-(float)testFunc:(struct CGSize)arg2 time:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    if (*(int128_t *)(r0 + r8) * d2 + *(int128_t *)(0x8 + r0 + r8) * d2 != 0x0) {
            asm { fdiv       d0, d0, d2 };
            asm { fcvt       s0, d0 };
            r0 = powf(r0, r1);
    }
    return r0;
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

-(void)transformTile:(struct CGPoint)arg2 distance:(float)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = d11;
    stack[-56] = d10;
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
            v1 = v8;
            [r19 originalTile:r2];
    }
    else {
            var_50 = q0;
            stack[-80] = q0;
            var_60 = q0;
    }
    [[r19->_target grid] step];
    asm { fcvt       d2, s2 };
    v0 = v1;
    v1 = 0x3fe0000000000000;
    v0 = v2 * v0 * v1;
    d1 = var_60;
    asm { fcvtl      v1.2d, v1.2s };
    asm { fcvtn      v1.2s, v1.2d };
    s1 = var_54;
    asm { fcvt       d1, s1 };
    d1 = d1 - d0;
    asm { fcvt       s1, d1 };
    asm { fcvt       d1, s2 };
    d1 = v0 + d1;
    asm { fcvt       s1, d1 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s1, d1 };
    asm { fcvt       d1, s3 };
    asm { fcvt       s1, d1 };
    asm { fcvtl      v1.2d, v1.2s };
    asm { fcvtn      v0.2s, v0.2d };
    [r19 setTile:&var_90 coords:r3];
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    v8 = v0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    d0 = *(r0 + r24);
    if (d0 <= 0x0) goto .l1;

loc_100300178:
    r19 = r0;
    r25 = 0x0;
    r26 = r0 + 0x8;
    d1 = *(r26 + r24);
    goto loc_10030019c;

loc_10030019c:
    if (d1 <= 0x0) goto loc_100300238;

loc_1003001a4:
    r28 = 0x1;
    goto loc_1003001c0;

loc_1003001c0:
    v0 = v9;
    [r19 testFunc:r2 time:r3];
    if (s0 != 0x0) goto loc_1003001ec;

loc_1003001e0:
    r0 = r19;
    r1 = @selector(turnOffTile:);
    goto loc_100300214;

loc_100300214:
    objc_msgSend(r0, r1);
    goto loc_100300220;

loc_100300220:
    d10 = 0x0;
    asm { scvtf      d10, w28 };
    d1 = *(r26 + r24);
    r28 = r28 + 0x1;
    if (d1 > d10) goto loc_1003001c0;

loc_100300234:
    d0 = *(r19 + r24);
    goto loc_100300238;

loc_100300238:
    d9 = 0x0;
    r25 = r25 + 0x1;
    asm { scvtf      d9, w25 };
    if (d0 > d9) goto loc_10030019c;

.l1:
    return;

loc_1003001ec:
    r0 = r19;
    if (s0 >= 0x3ff0000000000000) goto loc_100300210;

loc_1003001fc:
    [r0 transformTile:r2 distance:r3];
    goto loc_100300220;

loc_100300210:
    r1 = @selector(turnOnTile:);
    goto loc_100300214;
}

@end
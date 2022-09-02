@implementation CCParallaxNode

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_parallaxArray));
    if (*(self + r20) != 0x0) {
            sub_10033a2bc();
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_parallaxArray = sub_10033a278();
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastPosition));
            asm { dup        v0.2d, x9 };
            *(int128_t *)(r19 + r8) = q0;
    }
    r0 = r19;
    return r0;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 parallaxRatio:(struct CGPoint)arg4 positionOffset:(struct CGPoint)arg5 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r0 = [CGPointObject pointWithCGPoint:r2 offset:r3];
    [r0 setChild:arg2];
    sub_10033a504(self->_parallaxArray, r0);
    [self position];
    [arg2 setPosition:arg2];
    [[&var_50 super] addChild:arg2 z:arg3 tag:[arg2 tag]];
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    sub_10033a31c(self->_parallaxArray);
    [[&var_20 super] removeAllChildrenWithCleanup:arg2];
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    r31 = r31 - 0x60;
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_parallaxArray));
    r8 = *(self + r25);
    if (*r8 == 0x0) goto loc_1002de500;

loc_1002de4a0:
    r22 = 0x0;
    r26 = 0x1;
    goto loc_1002de4b8;

loc_1002de4b8:
    if ([[*(*(r8 + 0x10) + r22 * 0x8) child] isEqual:r2] != 0x0) goto loc_1002de4f4;

loc_1002de4d8:
    r22 = r26;
    r8 = *(r21 + r25);
    COND = *r8 > zero_extend_64(r26);
    r26 = r26 + 0x1;
    if (COND) goto loc_1002de4b8;

loc_1002de500:
    [[&var_50 super] removeChild:r20 cleanup:r19];
    return;

loc_1002de4f4:
    sub_10033a68c(*(r21 + r25), r22);
    goto loc_1002de500;
}

-(struct CGPoint)absolutePosition_ {
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
    d8 = *(int128_t *)(self + r8);
    d9 = *(int128_t *)(0x8 + self + r8);
    r0 = [self parent];
    if (r0 != 0x0) {
            do {
                    r21 = @selector(position);
                    r0 = [r19 parent];
                    r19 = r0;
                    objc_msgSend(r0, r21);
                    d8 = d8 + d0;
                    d9 = d9 + d1;
                    r0 = objc_msgSend(r19, r20);
            } while (r0 != 0x0);
    }
    return r0;
}

-(struct ccArray *)parallaxArray {
    r0 = self->_parallaxArray;
    return r0;
}

-(void)visit {
    r31 = r31 - 0x90;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = self;
    [self absolutePosition_];
    r25 = (int64_t *)&r19->_lastPosition;
    d0 = *(int128_t *)r25;
    d1 = *(int128_t *)(r25 + 0x8);
    if (d8 == d0) {
            asm { fccmp      d9, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_parallaxArray));
            r8 = *(r19 + r26);
            if (*r8 != 0x0) {
                    r9 = 0x0;
                    r27 = 0x1;
                    do {
                            [*(*(r8 + 0x10) + r9 * 0x8) ratio];
                            objc_msgSend(r24, r21);
                            asm { fcvt       s10, d0 };
                            objc_msgSend(r24, r20);
                            objc_msgSend(r24, r21);
                            d0 = d1 + (d9 * d1 - d9);
                            asm { fcvt       s0, d0 };
                            asm { fcvt       d10, s10 };
                            asm { fcvt       d11, s0 };
                            objc_msgSend(objc_msgSend(r24, r22), r23);
                            r9 = r27;
                            r8 = *(r19 + r26);
                            COND = *r8 > zero_extend_64(r27);
                            r27 = r27 + 0x1;
                    } while (COND);
            }
            *(int128_t *)r25 = d8;
            *(int128_t *)(r25 + 0x8) = d9;
    }
    [[&var_80 super] visit];
    return;
}

-(void)setParallaxArray:(struct ccArray *)arg2 {
    self->_parallaxArray = arg2;
    return;
}

@end
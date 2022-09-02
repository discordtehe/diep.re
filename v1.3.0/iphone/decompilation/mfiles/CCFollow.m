@implementation CCFollow

+(void *)actionWithTarget:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)actionWithTarget:(void *)arg2 worldBoundary:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 worldBoundary:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_followedNode = [r20 retain];
            *(int8_t *)(int64_t *)&r19->_boundarySet = 0x0;
            *(int8_t *)(int64_t *)&r19->_boundaryFullyCovered = 0x0;
            [[CCDirector sharedDirector] winSize];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_fullScreenSize));
            *(r19 + r8) = d0;
            *(0x8 + r19 + r8) = d1;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_halfScreenSize));
            *(r19 + r8) = d0 * 0x3fe0000000000000;
            *(0x8 + r19 + r8) = d1 * 0x3fe0000000000000;
    }
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 init];
    [r0 setTag:r2];
    r0 = r19;
    return r0;
}

-(void *)initWithTarget:(void *)arg2 worldBoundary:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_followedNode = [r20 retain];
            *(int8_t *)(int64_t *)&r19->_boundarySet = 0x1;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_boundaryFullyCovered));
            *(int8_t *)(r19 + r20) = 0x0;
            [[CCDirector sharedDirector] winSize];
            *(int128_t *)(int64_t *)&r19->_fullScreenSize = d0;
            *(int128_t *)((int64_t *)&r19->_fullScreenSize + 0x8) = d1;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_halfScreenSize));
            *(int128_t *)(r19 + r8) = d0 * 0x3fe0000000000000;
            *(int128_t *)(0x8 + r19 + r8) = d1 * 0x3fe0000000000000;
            asm { fcvt       s0, d0 };
            s0 = -s0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_leftBoundary));
            *(int32_t *)(r19 + r8) = s0;
            asm { fcvt       s0, d10 };
            s0 = -s0;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rightBoundary));
            *(int32_t *)(r19 + r9) = s0;
            asm { fcvt       s0, d9 };
            s0 = -s0;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_topBoundary));
            *(int32_t *)(r19 + r10) = s0;
            asm { fcvt       s0, d0 };
            s0 = -s0;
            r11 = sign_extend_64(*(int32_t *)ivar_offset(_bottomBoundary));
            *(int32_t *)(r19 + r11) = s0;
            s2 = *(int32_t *)(r19 + r9);
            s3 = *(int32_t *)(r19 + r8);
            if (s2 < s3) {
                    *(int32_t *)(r19 + r8) = (s2 + s3) * 0x3fe0000000000000;
                    *(int32_t *)(r19 + r9) = (s2 + s3) * 0x3fe0000000000000;
                    s0 = *(int32_t *)(r19 + r11);
            }
            s2 = *(int32_t *)(r19 + r10);
            if (s2 < s0) {
                    s2 = (s2 + s0) * 0x3fe0000000000000;
                    *(int32_t *)(r19 + r11) = s2;
                    *(int32_t *)(r19 + r10) = s2;
                    s0 = *(int32_t *)(r19 + r11);
            }
            if (s2 == s0 && *(int32_t *)(r19 + r8) == *(int32_t *)(r19 + r9)) {
                    *(int8_t *)(r19 + r20) = 0x1;
            }
    }
    r0 = r19;
    return r0;
}

-(void)step:(double)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    if (*(int8_t *)(int64_t *)&self->_boundarySet == 0x0) goto loc_1002f396c;

loc_1002f394c:
    if (*(int8_t *)(int64_t *)&r20->_boundaryFullyCovered == 0x0) goto loc_1002f39a4;

.l1:
    return;

loc_1002f39a4:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_halfScreenSize));
    [r20->_followedNode position];
    r19 = *(r20 + 0x10);
    asm { fcvt       s0, d0 };
    sub_10031169c();
    asm { fcvt       d8, s0 };
    asm { fcvt       s0, d9 };
    sub_10031169c();
    asm { fcvt       d1, s0 };
    goto loc_1002f3a20;

loc_1002f3a20:
    [r19 setPosition:r2];
    return;

loc_1002f396c:
    r19 = *(r20 + 0x10);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_halfScreenSize));
    [r20->_followedNode position];
    goto loc_1002f3a20;
}

-(bool)isDone {
    r0 = self->_followedNode;
    r0 = [r0 isRunning];
    r0 = r0 ^ 0x1;
    return r0;
}

-(void)stop {
    *(self + 0x10) = 0x0;
    [[&var_10 super] stop];
    return;
}

-(void)dealloc {
    [self->_followedNode release];
    [[&var_20 super] dealloc];
    return;
}

-(bool)boundarySet {
    r0 = *(int8_t *)(int64_t *)&self->_boundarySet;
    return r0;
}

-(void)setBoundarySet:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_boundarySet = arg2;
    return;
}

@end
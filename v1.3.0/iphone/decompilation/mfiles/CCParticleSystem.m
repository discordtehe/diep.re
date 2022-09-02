@implementation CCParticleSystem

+(void *)particleWithFile:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)particleWithTotalParticles:(unsigned long long)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTotalParticles:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithTotalParticles:0x96];
    return r0;
}

-(void *)initWithFile:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r20 != 0x0) {
                    r1 = [r20 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1002d4bc4(&var_60, r1);
            r0 = sub_10042ccfc(&var_60);
            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_60);
            }
            if ([[CCConfiguration sharedConfiguration] useNewPlistSerialization] != 0x0) {
                    sub_1003167cc(&var_48, 0x0);
                    r0 = sub_10098f750(&var_48);
                    r21 = [r19 initWithValue:&stack[-128] path:&var_60];
                    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_60);
                    }
                    sub_1009ca77c(&stack[-128]);
                    r22 = 0x0;
                    r23 = 0x0;
            }
            else {
                    r21 = @selector(sharedConfiguration);
                    r0 = sub_100316658(&var_48, 0x0);
                    r22 = r0;
                    r23 = 0x1;
            }
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
            if ((r23 & 0x1) != 0x0) {
                    r21 = [r19 initWithDictionary:r22 path:[r20 stringByDeletingLastPathComponent]];
            }
    }
    else {
            r22 = [NSDictionary dictionaryWithContentsOfFile:[[CCFileUtils sharedFileUtils] fullPathForFilename:r20]];
            r21 = [r19 initWithDictionary:r22 path:[r20 stringByDeletingLastPathComponent]];
    }
    r0 = r21;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r0 = [self initWithDictionary:arg2 path:@""];
    return r0;
}

-(void)dealloc {
    free(self->_particles);
    [self->_texture release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithTotalParticles:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
            *(r19 + r21) = r20;
            r0 = calloc(r20, 0x78);
            r19->_particles = r0;
            if (r0 != 0x0) {
                    r19->_allocatedParticles = r20;
                    if (r19->_batchNode != 0x0 && *(r19 + r21) != 0x0) {
                            r8 = 0x0;
                            r9 = r0 + 0x58;
                            do {
                                    *r9 = r8;
                                    r9 = r9 + 0x78;
                                    r8 = r8 + 0x1;
                            } while (*(r19 + r21) > r8);
                    }
                    *(int8_t *)(int64_t *)&r19->_active = 0x1;
                    r19->_blendFunc = *0x100ba3650;
                    *(int32_t *)(int64_t *)&r19->_positionType = 0x0;
                    r19->_emitterMode = 0x0;
                    *(int8_t *)(int64_t *)&r19->_autoRemoveOnFinish = 0x0;
                    r19->_updateParticleSel = @selector(updateQuadWithParticle:newPosition:);
                    r19->_updateParticleImp = [r19 methodForSelector:@selector(updateQuadWithParticle:newPosition:), r3];
                    *(int8_t *)(int64_t *)&r19->_transformSystemDirty = 0x0;
                    [r19 scheduleUpdateWithPriority:r2];
            }
            else {
                    [r19 release];
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(bool)addParticle {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isFull] & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_particleCount));
            asm { madd       x2, x9, x10, x8 };
            [r19 initParticle:r2];
            *(r19 + r20) = *(r19 + r20) + 0x1;
            r0 = 0x1;
    }
    return r0;
}

-(void)stopSystem {
    *(int8_t *)(int64_t *)&self->_active = 0x0;
    *(int32_t *)(int64_t *)&self->_elapsed = *(int32_t *)(int64_t *)&self->_duration;
    *(int32_t *)(int64_t *)&self->_emitCounter = 0x0;
    return;
}

-(void)resetSystem {
    r0 = self;
    *(int8_t *)(int64_t *)&r0->_active = 0x1;
    *(int32_t *)(int64_t *)&r0->_elapsed = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_particleIdx));
    *(r0 + r8) = 0x0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_particleCount));
    if (*(r0 + r9) != 0x0) {
            r10 = 0x0;
            r11 = sign_extend_64(*(int32_t *)ivar_offset(_particles));
            r11 = *(r0 + r11);
            r11 = r11 + 0x50;
            do {
                    *r11 = 0x0;
                    r11 = r11 + 0x78;
                    r10 = r10 + 0x1;
                    *(r0 + r8) = r10;
            } while (r10 < *(r0 + r9));
    }
    return;
}

-(bool)isFull {
    r0 = self;
    if (r0->_particleCount == r0->_totalParticles) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)checkAutoRemoveOnFinish {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_autoRemoveOnFinish != 0x0) {
            [r0 unscheduleUpdate];
            r20 = 0x1;
            [r0->_parent removeChild:r0 cleanup:0x1];
    }
    else {
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void)initParticle:(struct sCCParticle *)arg2 {
    r31 = r31 - 0x80;
    var_60 = d15;
    stack[-104] = d14;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    random();
    asm { scvtf      s0, x0 };
    v11 = v1;
    s0 = s9 + s10 * (s0 * 0x30800000 + 0xbff0000000000000);
    if (s0 < 0x0) {
            asm { fcsel      s0, s1, s0, ls };
    }
    asm { fcvt       d0, s0 };
    *(r19 + 0x50) = d0;
    random();
    asm { scvtf      s0, x0 };
    asm { fcvt       d0, s0 };
    *r19 = d9 + d10 * d0;
    d9 = *(r21 + 0x8);
    random();
    asm { scvtf      s0, x0 };
    asm { fcvt       d0, s0 };
    d0 = d9 + d10 * d0;
    *(r19 + 0x8) = d0;
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    var_64 = s0;
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    var_68 = s0;
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    var_6C = s0;
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    var_70 = s0;
    s13 = *(int32_t *)(int64_t *)&r20->_endColor;
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    random();
    asm { scvtf      s0, x0 };
    sub_10031169c();
    s3 = var_68;
    *(int32_t *)(r19 + 0x20) = var_64;
    *(int32_t *)(r19 + 0x24) = s3;
    s5 = var_70;
    s4 = var_6C;
    *(int32_t *)(r19 + 0x28) = s4;
    *(int32_t *)(r19 + 0x2c) = s5;
    s1 = s13 - var_64;
    asm { fcvt       d1, s1 };
    asm { fdiv       d1, d1, d2 };
    asm { fcvt       s1, d1 };
    *(int32_t *)(r19 + 0x30) = s1;
    s1 = s14 - s3;
    asm { fcvt       d1, s1 };
    asm { fdiv       d1, d1, d2 };
    asm { fcvt       s1, d1 };
    *(int32_t *)(r19 + 0x34) = s1;
    s1 = s15 - s4;
    asm { fcvt       d1, s1 };
    asm { fdiv       d1, d1, d2 };
    asm { fcvt       s1, d1 };
    *(int32_t *)(r19 + 0x38) = s1;
    s0 = s0 - s5;
    asm { fcvt       d0, s0 };
    asm { fdiv       d0, d0, d2 };
    asm { fcvt       s0, d0 };
    *(int32_t *)(r19 + 0x3c) = s0;
    random();
    asm { scvtf      s0, x0 };
    asm { fmax       s8, s0, s1 };
    s0 = 0x0;
    *(int32_t *)(r19 + 0x40) = s8;
    s9 = *(int32_t *)(int64_t *)&r20->_endSize;
    if (s9 != s12) {
            random();
            asm { scvtf      s0, x0 };
            s0 = s9 + s10 * (s0 * 0x30800000 + s13);
            asm { fmax       s0, s0, s1 };
            s0 = s0 - s8;
            asm { fcvt       d0, s0 };
            asm { fdiv       d0, d0, d1 };
            asm { fcvt       s0, d0 };
    }
    *(int32_t *)(r19 + 0x44) = s0;
    random();
    asm { scvtf      s0, x0 };
    random();
    asm { scvtf      s0, x0 };
    s0 = s9 + s11 * (s0 * s10 + s13) - s8;
    asm { fcvt       d0, s0 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       s0, d0 };
    *(int128_t *)(r19 + 0x48) = s8;
    *(int128_t *)(r19 + 0x4c) = s0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_positionType));
    r8 = *(int32_t *)(r20 + r8);
    if (r8 != 0x1) {
            if (r8 == 0x0) {
                    r8 = *_CGPointZero;
                    d0 = *(int128_t *)r8;
                    [r20 convertToWorldSpace:r2];
                    *(r19 + 0x10) = d0;
                    *(r19 + 0x18) = d1;
            }
    }
    else {
            *(int128_t *)(r19 + 0x10) = *(int128_t *)(int64_t *)&r20->_position;
    }
    s8 = *(int32_t *)(int64_t *)&r20->_angle;
    s9 = *(int32_t *)(int64_t *)&r20->_angleVar;
    r0 = random();
    asm { scvtf      s0, x0 };
    s0 = s8 + s9 * (s0 * 0x30800000 + s13);
    s8 = s0 * *(int32_t *)0x100ba3694;
    if (r20->_emitterMode != 0x0) {
            r20 = (int64_t *)&r20->_mode;
            random();
            asm { scvtf      s0, x0 };
            s10 = s10 + s11 * (s0 * 0x30800000 + s13);
            s11 = *(int128_t *)(r20 + 0x8);
            s12 = *(int128_t *)(r20 + 0xc);
            random();
            *(int32_t *)(r19 + 0x68) = s10;
            s0 = 0x0;
            if (*(int32_t *)(r20 + 0x8) != s13) {
                    s0 = 0x0;
                    asm { scvtf      s0, x0 };
                    s0 = s11 + s12 * (s0 * 0x30800000 + s13) - s10;
                    asm { fcvt       d0, s0 };
                    asm { fdiv       d0, d0, d1 };
                    asm { fcvt       s0, d0 };
            }
            *(int32_t *)(r19 + 0x6c) = s0;
            *(int32_t *)(r19 + 0x60) = s8;
            random();
            asm { scvtf      s0, x0 };
            *(int32_t *)(r19 + 0x64) = (s8 + s10 * (s0 * 0x30800000 + s13)) * s9;
    }
    else {
            r0 = cosf(r0);
            asm { fcvt       d9, s0 };
            sinf(r0);
            asm { fcvt       d8, s0 };
            random();
            asm { scvtf      s0, x0 };
            asm { fcvt       d0, s0 };
            *(int128_t *)(r19 + 0x60) = d9 * d0;
            *(int128_t *)(r19 + 0x68) = d8 * d0;
            random();
            asm { scvtf      s0, x0 };
            *(int32_t *)(r19 + 0x70) = s8 + s9 * (s0 * s12 + s13);
            random();
            asm { scvtf      s0, x0 };
            *(int32_t *)(r19 + 0x74) = s8 + s9 * (s0 * s12 + s13);
    }
    return;
}

-(void)updateWithNoTime {
    [self update:r2];
    return;
}

-(void)updateQuadWithParticle:(struct sCCParticle *)arg2 newPosition:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    return;
}

-(void)postStep {
    return;
}

-(void)setTexture:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    r0 = *(self + r21);
    if (r0 != r2) {
            [r0 release];
            *(r19 + r21) = [r2 retain];
            [r19 updateBlendFunc];
    }
    return;
}

-(void *)texture {
    r0 = self->_texture;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 path:(void *)arg3 {
    r31 = r31 - 0x80;
    var_60 = d11;
    stack[-104] = d10;
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
    r22 = arg3;
    r20 = arg2;
    r0 = [self initWithTotalParticles:[[r20 valueForKey:@"maxParticles"] integerValue]];
    r19 = r0;
    if (r0 == 0x0) goto loc_1002d6c5c;

loc_1002d62dc:
    [[r20 valueForKey:r2] floatValue];
    *(int32_t *)(int64_t *)&r19->_angle = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_angleVar = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_duration = s0;
    *(int32_t *)(int64_t *)&r19->_blendFunc = [objc_msgSend(r20, r21) intValue];
    *(int32_t *)((int64_t *)&r19->_blendFunc + 0x4) = [objc_msgSend(r20, r21) intValue];
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColor));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColorVar));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColor));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColorVar));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_startSize = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_startSizeVar = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_endSize = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_endSizeVar = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    objc_msgSend(objc_msgSend(r20, r21), r23);
    asm { fcvt       d2, s8 };
    asm { fcvt       d1, s0 };
    v0 = v2;
    [r19 setPosition:r2];
    objc_msgSend(objc_msgSend(r20, r21), r23);
    asm { fcvt       d0, s0 };
    r19->_posVar = d0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    asm { fcvt       d0, s0 };
    *(r25 + 0x8) = d0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_startSpin = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_startSpinVar = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(int64_t *)&r19->_endSpin = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endSpinVar));
    *(int32_t *)(r19 + r8) = s0;
    r0 = objc_msgSend(r20, r21);
    r0 = objc_msgSend(r0, r24);
    asm { sxtw       x8, w0 };
    r19->_emitterMode = r8;
    if (r0 == 0x1) goto loc_1002d6954;

loc_1002d6810:
    if (r0 != 0x0) goto loc_1002d6a10;

loc_1002d6814:
    [[r20 valueForKey:r2] floatValue];
    asm { fcvt       d0, s0 };
    r24 = (int64_t *)&r19->_mode;
    *r24 = d0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    asm { fcvt       d0, s0 };
    *(r24 + 0x8) = d0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(r24 + 0x10) = s0;
    objc_msgSend(objc_msgSend(r20, r21), r23);
    *(int32_t *)(r24 + 0x14) = s0;
    r0 = objc_msgSend(r20, r21);
    if (r0 != 0x0) {
            [r0 floatValue];
    }
    *(int32_t *)(r24 + 0x20) = 0x0;
    r0 = [r20 valueForKey:@"radialAccelVariance"];
    if (r0 != 0x0) {
            [r0 floatValue];
    }
    *(int32_t *)(r24 + 0x24) = 0x0;
    r0 = [r20 valueForKey:@"tangentialAcceleration"];
    s8 = 0x0;
    if (r0 != 0x0) {
            [r0 floatValue];
    }
    s0 = 0x0;
    *(int32_t *)(r24 + 0x18) = s0;
    r0 = [r20 valueForKey:@"tangentialAccelVariance"];
    if (r0 != 0x0) {
            [r0 floatValue];
    }
    r8 = r24 + 0x1c;
    goto loc_1002d6a0c;

loc_1002d6a0c:
    *(int32_t *)r8 = s8;
    goto loc_1002d6a10;

loc_1002d6a10:
    [[r20 valueForKey:@"particleLifespan"] floatValue];
    *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_life))) = s0;
    [[r20 valueForKey:@"particleLifespanVariance"] floatValue];
    *(int32_t *)(int64_t *)&r19->_lifeVar = s0;
    asm { ucvtf      s0, x8 };
    asm { fdiv       s0, s0, s1 };
    *(int32_t *)(int64_t *)&r19->_emissionRate = s0;
    if (r19->_batchNode == 0x0) {
            *(int8_t *)(int64_t *)&r19->_opacityModifyRGB = 0x0;
            r0 = [r20 valueForKey:@"textureFileName"];
            r23 = r0;
            if (([[r0 stringByDeletingLastPathComponent] isEqualToString:r2] & 0x1) == 0x0) {
                    r23 = [r22 stringByAppendingPathComponent:r23];
            }
            r0 = [CCTextureCache sharedTextureCache];
            r0 = [r0 addImage:r23];
            if (r0 != 0x0) {
                    [r19 setTexture:r2];
            }
            else {
                    r0 = [r20 valueForKey:@"textureImageData"];
                    r21 = [r0 UTF8String];
                    r0 = [r0 length];
                    r0 = sub_100316af0(r21, r0, &var_68);
                    sub_100318dc4(var_68, r0, &var_70);
                    asm { sxtw       x20, w0 };
                    free(var_68);
                    [[UIImage alloc] initWithData:[[NSData alloc] initWithBytes:var_70 length:r20]];
                    free(var_70);
                    [r19 setTexture:[objc_msgSend(*(r24 + 0x80), r22) addEncodedImage:r20 resolutionType:0x0 textureScale:r23 name:r5]];
                    [r20 release];
                    [r21 release];
            }
    }
    goto loc_1002d6c5c;

loc_1002d6c5c:
    r0 = r19;
    return r0;

loc_1002d6954:
    [[r20 valueForKey:@"maxRadius"] floatValue];
    [[r20 valueForKey:@"maxRadiusVariance"] floatValue];
    [[r20 valueForKey:@"minRadius"] floatValue];
    *(int128_t *)(int64_t *)&r19->_mode = s8;
    *(int128_t *)((int64_t *)&r19->_mode + 0x4) = s9;
    *(int32_t *)((int64_t *)&r19->_mode + 0x8) = s0;
    *(int32_t *)((int64_t *)&r19->_mode + 0xc) = 0x0;
    [[r20 valueForKey:@"rotatePerSecond"] floatValue];
    *(int32_t *)((int64_t *)&r19->_mode + 0x10) = s0;
    [[r20 valueForKey:@"rotatePerSecondVariance"] floatValue];
    r8 = (int64_t *)&r19->_mode + 0x14;
    goto loc_1002d6a0c;
}

-(void)setBlendAdditive:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (arg2 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
            r8 = r19 + r8;
            d0 = *0x100ba61a8;
    }
    else {
            r0 = r19->_texture;
            if (r0 != 0x0 && ([r0 hasPremultipliedAlpha] & 0x1) == 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
                    r8 = r19 + r8;
                    d0 = *0x100ba36a8;
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
                    r8 = r19 + r8;
                    d0 = *0x100ba3650;
            }
    }
    *r8 = d0;
    return;
}

-(bool)blendAdditive {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    r8 = r0 + r8;
    if (*(int32_t *)r8 == 0x302) {
            if (*(int32_t *)(r8 + 0x4) == 0x1) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setTotalParticles:(unsigned long long)arg2 {
    self->_totalParticles = arg2;
    return;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = r2 >> 0x20;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    r9 = r0 + r9;
    if (*(int32_t *)r9 != r2 || *(int32_t *)(r9 + 0x4) != r8) {
            *(int128_t *)r9 = r2;
            *(int128_t *)(r9 + 0x4) = r8;
            [r0 updateBlendFunc];
    }
    return;
}

-(unsigned long long)_totalParticles {
    r0 = self->_totalParticles;
    return r0;
}

-(void)setTangentialAccel:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x18) = s0;
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    r31 = r31 - 0xd0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = r0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
    var_A0 = q7;
    if (*(r0 + r21) != 0x0) goto loc_1002d76a8;

loc_1002d7690:
    r0 = [r19 checkAutoRemoveOnFinish];
    if ((r0 & 0x1) != 0x0) goto .l3;

loc_1002d76a8:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_active));
    if (*(int8_t *)(r19 + r25) != 0x0 && *(int32_t *)(int64_t *)&r19->_emissionRate != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_particleCount));
            if (*(r19 + r23) < *(r19 + r21)) {
                    asm { fdiv       s8, s1, s0 };
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_emitCounter));
                    s0 = *(int32_t *)(r19 + r24);
                    asm { fcvt       d0, s0 };
                    d0 = d0 + d1;
                    asm { fcvt       s0, d0 };
                    *(int32_t *)(r19 + r24) = s0;
                    do {
                            if (s0 <= s8) {
                                break;
                            }
                            r0 = [r19 addParticle];
                            s0 = *(int32_t *)(r19 + r24);
                            s0 = s0 - s8;
                            *(int32_t *)(r19 + r24) = s0;
                    } while (*(r19 + r23) < *(r19 + r21));
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_elapsed));
            s0 = *(int32_t *)(r19 + r8);
            asm { fcvt       d0, s0 };
            asm { fcvt       s0, d0 };
            *(int32_t *)(r19 + r8) = s0;
            if (*(int32_t *)(int64_t *)&r19->_duration != 0xbff0000000000000) {
                    asm { fccmp      s1, s0, #0x0, ne };
            }
            if (!CPU_FLAGS & NS) {
                    r0 = [r19 stopSystem];
            }
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_particleIdx));
    *(r19 + r24) = 0x0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_positionType));
    r8 = *(int32_t *)(r19 + r26);
    if (r8 != 0x1) {
            r9 = *_CGPointZero;
            d8 = *(int128_t *)r9;
            d9 = *(int128_t *)(r9 + 0x8);
            if (r8 == 0x0) {
                    v0 = v8;
                    v1 = v9;
                    r0 = [r19 convertToWorldSpace:r2];
            }
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
            d8 = *(int128_t *)(r19 + r8);
            d9 = *(int128_t *)(0x8 + r19 + r8);
    }
    if (*(int8_t *)(int64_t *)&r19->_visible == 0x0) goto loc_1002d7ba8;

loc_1002d7814:
    r21 = *(r19 + r24);
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_particleCount));
    r8 = *(r19 + r28);
    var_C8 = r25;
    if (r21 >= r8) goto loc_1002d7b78;

loc_1002d782c:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_particles));
    r9 = @selector(checkAutoRemoveOnFinish);
    var_C0 = r9;
    asm { dup        v0.2d, v7.d[0] };
    var_B0 = q0;
    goto loc_1002d785c;

loc_1002d785c:
    r22 = 0x10116b000;
    asm { madd       x22, x21, x23, x20 };
    d0 = *(r22 + 0x50);
    d0 = d0 - d7;
    *(r22 + 0x50) = d0;
    if (d0 <= 0x0) goto loc_1002d78fc;

loc_1002d7878:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_emitterMode));
    r8 = *(r19 + r8);
    if (r8 != 0x0) {
            r22 = 0x10116b000;
            asm { madd       x27, x21, x23, x20 };
            asm { fcvt       d1, s1 };
            d1 = d1 * d7;
            asm { fcvt       d0, s0 };
            d0 = d1 + d0;
            asm { fcvt       s11, d0 };
            *(int32_t *)(r27 + 0x60) = s11;
            s0 = *(int128_t *)(r27 + 0x68);
            asm { fcvt       d1, s1 };
            d1 = d1 * d7;
            asm { fcvt       d0, s0 };
            d0 = d1 + d0;
            asm { fcvt       s13, d0 };
            *(int32_t *)(r27 + 0x68) = s13;
            r0 = cosf(r0);
            asm { fcvt       d10, s0 };
            *r22 = d10;
            v0 = v11;
            sinf(r0);
            asm { fcvt       d1, s0 };
            *(r27 + 0x8) = d1;
    }
    else {
            d0 = *ivar_offset(_temporaryPath);
            asm { madd       x8, x21, x23, x20 };
            if (d0 != 0x0) {
                    asm { madd       x27, x21, x23, x20 };
                    sub_1003115e8();
                    v3 = v0;
                    v2 = v1;
                    d0 = *r22;
                    d1 = *(r27 + 0x8);
            }
            else {
                    d1 = *(r8 + 0x8);
                    if (d1 != 0x0) {
                            asm { madd       x27, x21, x23, x20 };
                            sub_1003115e8();
                            v3 = v0;
                            v2 = v1;
                            d0 = *r22;
                            d1 = *(r27 + 0x8);
                    }
                    else {
                            r8 = *_CGPointZero;
                            d3 = *(int128_t *)r8;
                            d2 = *(int128_t *)(r8 + 0x8);
                    }
            }
            r22 = 0x10116b000;
            asm { madd       x8, x21, x23, x20 };
            asm { fcvt       d4, s4 };
            d6 = d3 * d4;
            d4 = d2 * d4;
            asm { fcvt       s3, d3 };
            asm { fcvt       d3, s3 };
            asm { fcvt       d5, s5 };
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mode));
            d2 = (*(int128_t *)(r19 + r9) + (d6 - d2 * d5)) * d7;
            d3 = (*(int128_t *)(0x8 + r19 + r9) + d4 + d3 * d5) * d7;
            d4 = *(int128_t *)(r8 + 0x60);
            d5 = *(int128_t *)(r8 + 0x68);
            *(int128_t *)(r8 + 0x60) = d4 + d2;
            *(int128_t *)(r8 + 0x68) = d5 + d3;
            d2 = (d4 + d2) * d7;
            d3 = (d5 + d3) * d7;
            d10 = d2 + d0;
            d1 = d3 + d1;
            *r22 = d10;
            *(r8 + 0x8) = d1;
    }
    asm { madd       x8, x21, x23, x20 };
    q2 = *(int128_t *)(r8 + 0x30);
    asm { fcvtl2     v3.2d, v2.4s };
    asm { fcvtl      v2.2d, v2.2s };
    v2 = v4 * v2;
    v3 = v4 * v3;
    asm { fcvtl      v4.2d, v0.2s };
    asm { fcvtl2     v0.2d, v0.4s };
    v2 = v2 + v4;
    asm { fcvtn      v2.2s, v2.2d };
    asm { fcvtn2     v2.4s, v0.2d };
    *(int128_t *)(r8 + 0x20) = q2;
    s0 = *(int128_t *)(r8 + 0x40);
    asm { fcvt       d2, s2 };
    d2 = d2 * d7;
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    asm { fmax       s0, s0, s12 };
    *(int32_t *)(r8 + 0x40) = s0;
    s0 = *(int128_t *)(r8 + 0x48);
    asm { fcvt       d2, s2 };
    d2 = d2 * d7;
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    *(int32_t *)(r8 + 0x48) = s0;
    r8 = *(int32_t *)(r19 + r26);
    if (r8 <= 0x1) {
            asm { madd       x8, x21, x23, x20 };
            d0 = *(int128_t *)(r8 + 0x10);
            d2 = *(int128_t *)(r8 + 0x18);
            d2 = d9 - d2;
            d10 = (d10 - d8) + d0;
            d1 = d1 - d2;
    }
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
            d0 = *(int128_t *)(r19 + r8);
            d2 = *(int128_t *)(0x8 + r19 + r8);
            d10 = d10 + d0;
            d1 = d1 + d2;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_updateParticleImp));
    r8 = *(r19 + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_updateParticleSel));
    v0 = v10;
    r0 = (r8)(r19, *(r19 + r9), 0x10116b000);
    *(r19 + r24) = *(r19 + r24) + 0x1;
    goto loc_1002d7b54;

loc_1002d7b54:
    r21 = *(r19 + r24);
    r8 = *(r19 + r28);
    if (r21 < r8) goto loc_1002d785c;

loc_1002d7b78:
    if (([r19 checkAutoRemoveOnFinish] & 0x1) == 0x0 || r8 != 0x0 || *(int8_t *)(r19 + var_C8) != 0x0) goto loc_1002d7b9c;

.l3:
    return;

loc_1002d7b9c:
    *(int8_t *)(int64_t *)&r19->_transformSystemDirty = 0x0;
    goto loc_1002d7ba8;

loc_1002d7ba8:
    if (r19->_batchNode == 0x0) {
            [r19 postStep];
    }
    return;

loc_1002d78fc:
    asm { madd       x9, x21, x23, x20 };
    r27 = *(r9 + 0x58);
    r8 = r8 - 0x1;
    if (r21 != r8) {
            r22 = 0x10116b000;
            asm { madd       x8, x8, x23, x20 };
            q0 = *(int128_t *)r8;
            q1 = *(int128_t *)(r8 + 0x10);
            q2 = *(int128_t *)(r8 + 0x20);
            q3 = *(int128_t *)(r8 + 0x30);
            *(int128_t *)(r22 + 0x20) = q2;
            *(int128_t *)(r22 + 0x30) = q3;
            *(int128_t *)r22 = q0;
            *(int128_t *)(r22 + 0x10) = q1;
            q0 = *(int128_t *)(r8 + 0x40);
            q1 = *(int128_t *)(r8 + 0x50);
            q2 = *(int128_t *)(r8 + 0x60);
            *(r22 + 0x70) = *(r8 + 0x70);
            *(int128_t *)(r22 + 0x50) = q1;
            *(int128_t *)(r22 + 0x60) = q2;
            *(int128_t *)(r22 + 0x40) = q0;
    }
    r0 = r19->_batchNode;
    if (r0 != 0x0) {
            r0 = [r0 disableParticle:r19->_atlasIndex + r27];
            r8 = *(r19 + r25);
            r9 = *(r19 + r28);
            asm { madd       x8, x9, x23, x8 };
            *(r8 + 0xffffffffffffffe0) = r27;
    }
    r8 = *(r19 + r28);
    r8 = r8 - 0x1;
    *(r19 + r28) = r8;
    if (r8 != 0x0) goto loc_1002d7b54;

loc_1002d7988:
    r0 = objc_msgSend(r19, var_C0);
    if ((r0 & 0x1) == 0x0) goto loc_1002d7b54;
}

-(void)setTangentialAccelVar:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x1c) = s0;
    return;
}

-(float)tangentialAccel {
    r0 = self;
    return r0;
}

-(float)tangentialAccelVar {
    r0 = self;
    return r0;
}

-(void)setRadialAccel:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x20) = s0;
    return;
}

-(float)radialAccel {
    r0 = self;
    return r0;
}

-(void)setRadialAccelVar:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x24) = s0;
    return;
}

-(float)radialAccelVar {
    r0 = self;
    return r0;
}

-(void)setGravity:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mode));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(float)speed {
    r0 = self;
    return r0;
}

-(struct CGPoint)gravity {
    r0 = self;
    return r0;
}

-(void)setSpeed:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x10) = s0;
    return;
}

-(float)speedVar {
    r0 = self;
    return r0;
}

-(void)setSpeedVar:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x14) = s0;
    return;
}

-(void)setStartRadius:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_mode = s0;
    return;
}

-(float)startRadius {
    r0 = self;
    return r0;
}

-(void)setStartRadiusVar:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x4) = s0;
    return;
}

-(float)startRadiusVar {
    r0 = self;
    return r0;
}

-(void)setEndRadius:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x8) = s0;
    return;
}

-(float)endRadius {
    r0 = self;
    return r0;
}

-(void)setEndRadiusVar:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0xc) = s0;
    return;
}

-(float)endRadiusVar {
    r0 = self;
    return r0;
}

-(void)setRotatePerSecond:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x10) = s0;
    return;
}

-(float)rotatePerSecond {
    r0 = self;
    return r0;
}

-(void)setRotatePerSecondVar:(float)arg2 {
    *(int32_t *)((int64_t *)&self->_mode + 0x14) = s0;
    return;
}

-(float)rotatePerSecondVar {
    r0 = self;
    return r0;
}

-(void *)batchNode {
    r0 = self->_batchNode;
    return r0;
}

-(void)setScale:(float)arg2 {
    *(int8_t *)(int64_t *)&self->_transformSystemDirty = 0x1;
    [[&var_10 super] setScale:r2];
    return;
}

-(void)setBatchNode:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    if (*(r0 + r8) != r2) {
            *(r0 + r8) = r2;
            if (r2 != 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
                    if (*(r0 + r8) != 0x0) {
                            r9 = 0x0;
                            r10 = sign_extend_64(*(int32_t *)ivar_offset(_particles));
                            r10 = *(r0 + r10);
                            r10 = r10 + 0x58;
                            do {
                                    *r10 = r9;
                                    r10 = r10 + 0x78;
                                    r9 = r9 + 0x1;
                            } while (*(r0 + r8) > r9);
                    }
            }
    }
    return;
}

-(void)setRotation:(float)arg2 {
    *(int8_t *)(int64_t *)&self->_transformSystemDirty = 0x1;
    [[&var_10 super] setRotation:r2];
    return;
}

-(void)setScaleY:(float)arg2 {
    *(int8_t *)(int64_t *)&self->_transformSystemDirty = 0x1;
    [[&var_10 super] setScaleY:arg2];
    return;
}

-(void)setScaleX:(float)arg2 {
    *(int8_t *)(int64_t *)&self->_transformSystemDirty = 0x1;
    [[&var_10 super] setScaleX:arg2];
    return;
}

-(void)updateBlendFunc {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    r0 = *(self + r20);
    r0 = [r0 hasPremultipliedAlpha];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_opacityModifyRGB));
    *(int8_t *)(r19 + r8) = 0x0;
    if (*(r19 + r20) != 0x0) {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
            r9 = r19 + r9;
            if (*(int32_t *)r9 == 0x1 && *(int32_t *)(r9 + 0x4) == 0x303) {
                    if (r0 != 0x0) {
                            *(int8_t *)(r19 + r8) = 0x1;
                    }
                    else {
                            *r9 = *0x100ba36a8;
                    }
            }
    }
    return;
}

-(float)duration {
    r0 = self;
    return r0;
}

-(bool)active {
    r0 = *(int8_t *)(int64_t *)&self->_active;
    return r0;
}

-(void)setDuration:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_duration = s0;
    return;
}

-(struct CGPoint)sourcePosition {
    r0 = self;
    return r0;
}

-(void)setSourcePosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_sourcePosition));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGPoint)posVar {
    r0 = self;
    return r0;
}

-(void)setPosVar:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_posVar));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(unsigned long long)particleCount {
    r0 = self->_particleCount;
    return r0;
}

-(float)life {
    r0 = self;
    return r0;
}

-(void)setLife:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_life = s0;
    return;
}

-(void)setLifeVar:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_lifeVar = s0;
    return;
}

-(float)angle {
    r0 = self;
    return r0;
}

-(float)lifeVar {
    r0 = self;
    return r0;
}

-(void)setAngleVar:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_angleVar = s0;
    return;
}

-(void)setAngle:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_angle = s0;
    return;
}

-(float)angleVar {
    r0 = self;
    return r0;
}

-(struct _ccColor4F)startColor {
    r0 = self;
    return r0;
}

-(void)setStartColor:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColor));
    *(int128_t *)(self + r8) = s0;
    *(int128_t *)(0x4 + self + r8) = s1;
    *(int128_t *)(0x8 + self + r8) = s2;
    *(int128_t *)(0xc + self + r8) = s3;
    return;
}

-(struct _ccColor4F)startColorVar {
    r0 = self;
    return r0;
}

-(void)setStartColorVar:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColorVar));
    *(int128_t *)(self + r8) = s0;
    *(int128_t *)(0x4 + self + r8) = s1;
    *(int128_t *)(0x8 + self + r8) = s2;
    *(int128_t *)(0xc + self + r8) = s3;
    return;
}

-(struct _ccColor4F)endColor {
    r0 = self;
    return r0;
}

-(void)setEndColor:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColor));
    *(int128_t *)(self + r8) = s0;
    *(int128_t *)(0x4 + self + r8) = s1;
    *(int128_t *)(0x8 + self + r8) = s2;
    *(int128_t *)(0xc + self + r8) = s3;
    return;
}

-(struct _ccColor4F)endColorVar {
    r0 = self;
    return r0;
}

-(void)setEndColorVar:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColorVar));
    *(int128_t *)(self + r8) = s0;
    *(int128_t *)(0x4 + self + r8) = s1;
    *(int128_t *)(0x8 + self + r8) = s2;
    *(int128_t *)(0xc + self + r8) = s3;
    return;
}

-(float)startSpin {
    r0 = self;
    return r0;
}

-(void)setStartSpin:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_startSpin = s0;
    return;
}

-(float)startSpinVar {
    r0 = self;
    return r0;
}

-(void)setStartSpinVar:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_startSpinVar = s0;
    return;
}

-(float)endSpin {
    r0 = self;
    return r0;
}

-(float)endSpinVar {
    r0 = self;
    return r0;
}

-(void)setEndSpin:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_endSpin = s0;
    return;
}

-(void)setEndSpinVar:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_endSpinVar = s0;
    return;
}

-(float)emissionRate {
    r0 = self;
    return r0;
}

-(void)setEmissionRate:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_emissionRate = s0;
    return;
}

-(float)startSize {
    r0 = self;
    return r0;
}

-(float)startSizeVar {
    r0 = self;
    return r0;
}

-(void)setStartSize:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_startSize = s0;
    return;
}

-(void)setStartSizeVar:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_startSizeVar = s0;
    return;
}

-(float)endSize {
    r0 = self;
    return r0;
}

-(void)setEndSize:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_endSize = s0;
    return;
}

-(float)endSizeVar {
    r0 = self;
    return r0;
}

-(void)setEndSizeVar:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_endSizeVar = s0;
    return;
}

-(bool)doesOpacityModifyRGB {
    r0 = *(int8_t *)(int64_t *)&self->_opacityModifyRGB;
    return r0;
}

-(void)setOpacityModifyRGB:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_opacityModifyRGB = arg2;
    return;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(int)positionType {
    r0 = *(int32_t *)(int64_t *)&self->_positionType;
    return r0;
}

-(void)setPositionType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_positionType = arg2;
    return;
}

-(bool)autoRemoveOnFinish {
    r0 = *(int8_t *)(int64_t *)&self->_autoRemoveOnFinish;
    return r0;
}

-(void)setAutoRemoveOnFinish:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autoRemoveOnFinish = arg2;
    return;
}

-(long long)emitterMode {
    r0 = self->_emitterMode;
    return r0;
}

-(void)setEmitterMode:(long long)arg2 {
    self->_emitterMode = arg2;
    return;
}

-(unsigned long long)atlasIndex {
    r0 = self->_atlasIndex;
    return r0;
}

-(void)setAtlasIndex:(unsigned long long)arg2 {
    self->_atlasIndex = arg2;
    return;
}

-(unsigned long long)totalParticles {
    r0 = self->_totalParticles;
    return r0;
}

-(void *)initWithValue:(struct Value *)arg2 path:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xf0;
    var_50 = d11;
    stack[-88] = d10;
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
    if (*(int32_t *)(r2 + 0x8) != 0x6) goto loc_1002d5804;

loc_1002d4c8c:
    r21 = r3;
    r19 = r0;
    r20 = *r2;
    sub_1002d4bc4(&var_C0, "maxParticles");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) goto loc_1002d4cc8;

loc_1002d4cc0:
    if (r22 != 0x0) goto loc_1002d4cd4;

loc_1002d57f4:
    [r19 release];
    goto loc_1002d5804;

loc_1002d5804:
    r19 = 0x0;
    goto loc_1002d5808;

loc_1002d5808:
    r0 = r19;
    return r0;

loc_1002d4cd4:
    r0 = sub_1009caf88(r22 + 0x28, 0x0);
    if (r0 == 0x0) goto loc_1002d57f4;

loc_1002d4ce4:
    r2 = r0;
    r0 = [r19 initWithTotalParticles:r2];
    r19 = r0;
    if (r0 == 0x0) goto loc_1002d5808;

loc_1002d4d00:
    sub_1002d4bc4(&var_C0, "angle");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_angle = 0x0;
    sub_1002d4bc4(&var_C0, "angleVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_angleVar = 0x0;
    sub_1002d4bc4(&var_C0, "duration");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_duration = 0x0;
    sub_1002d4bc4(&var_C0, "blendFuncSource");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            r0 = sub_1009caf88(r22 + 0x28, 0x0);
    }
    else {
            r0 = 0x0;
    }
    r23 = (int64_t *)&r19->_blendFunc;
    *(int32_t *)r23 = r0;
    sub_1002d4bc4(&var_C0, "blendFuncDestination");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            r0 = sub_1009caf88(r22 + 0x28, 0x0);
    }
    else {
            r0 = 0x0;
    }
    *(int32_t *)(r23 + 0x4) = r0;
    sub_1002d4bc4(&var_C0, "startColorRed");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s8 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "startColorGreen");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s9 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "startColorBlue");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s10 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "startColorAlpha");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColor));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = 0x0;
    sub_1002d4bc4(&var_C0, "startColorVarianceRed");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s8 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "startColorVarianceGreen");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s9 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "startColorVarianceBlue");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s10 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "startColorVarianceAlpha");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColorVar));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = 0x0;
    sub_1002d4bc4(&var_C0, "finishColorRed");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s8 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "finishColorGreen");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s9 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "finishColorBlue");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s10 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "finishColorAlpha");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColor));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = 0x0;
    sub_1002d4bc4(&var_C0, "finishColorVarianceRed");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s8 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "finishColorVarianceGreen");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s9 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "finishColorVarianceBlue");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    else {
            s10 = 0x0;
    }
    sub_1002d4bc4(&var_C0, "finishColorVarianceAlpha");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColorVar));
    *(int128_t *)(r19 + r8) = s8;
    *(int128_t *)(0x4 + r19 + r8) = s9;
    *(int128_t *)(0x8 + r19 + r8) = s10;
    *(int128_t *)(0xc + r19 + r8) = 0x0;
    sub_1002d4bc4(&var_C0, "startParticleSize");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_startSize = 0x0;
    sub_1002d4bc4(&var_C0, "startParticleSizeVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_startSizeVar = 0x0;
    sub_1002d4bc4(&var_C0, "finishParticleSize");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_endSize = 0x0;
    sub_1002d4bc4(&var_C0, "finishParticleSizeVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_endSizeVar = 0x0;
    sub_1002d4bc4(&var_C0, "sourcePositionx");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    sub_1002d4bc4(&var_C0, "sourcePositiony");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    asm { fcvt       d2, s8 };
    asm { fcvt       d1, s0 };
    [r19 setPosition:r2];
    sub_1002d4bc4(&var_C0, "sourcePositionVariancex");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    asm { fcvt       d0, s0 };
    r23 = (int64_t *)&r19->_posVar;
    *r23 = d0;
    sub_1002d4bc4(&var_C0, "sourcePositionVariancey");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    asm { fcvt       d0, s0 };
    *(r23 + 0x8) = d0;
    sub_1002d4bc4(&var_C0, "rotationStart");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_startSpin = 0x0;
    sub_1002d4bc4(&var_C0, "rotationStartVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_startSpinVar = 0x0;
    sub_1002d4bc4(&var_C0, "rotationEnd");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_endSpin = 0x0;
    sub_1002d4bc4(&var_C0, "rotationEndVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(int64_t *)&r19->_endSpinVar = 0x0;
    sub_1002d4bc4(&var_C0, "emitterType");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 == 0x0) goto loc_1002d582c;

loc_1002d57d0:
    r0 = loc_1009caf40(r22 + 0x28);
    r19->_emitterMode = r0;
    if (r0 == 0x1) goto loc_1002d5ab0;

loc_1002d57f0:
    if (r0 == 0x0) goto loc_1002d5838;
    goto loc_1002d57f4;

loc_1002d5838:
    sub_1002d4bc4(&var_C0, "gravityx");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    asm { fcvt       d0, s0 };
    r23 = (int64_t *)&r19->_mode;
    *r23 = d0;
    sub_1002d4bc4(&var_C0, "gravityy");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    asm { fcvt       d0, s0 };
    *(r23 + 0x8) = d0;
    sub_1002d4bc4(&var_C0, "speed");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x10) = 0x0;
    sub_1002d4bc4(&var_C0, "speedVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x14) = 0x0;
    sub_1002d4bc4(&var_C0, "radialAcceleration");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x20) = 0x0;
    sub_1002d4bc4(&var_C0, "radialAccelVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x24) = 0x0;
    sub_1002d4bc4(&var_C0, "tangentialAcceleration");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x18) = 0x0;
    sub_1002d4bc4(&var_C0, "tangentialAccelVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r8 = r23 + 0x1c;
    goto loc_1002d5c3c;

loc_1002d5c3c:
    *(int32_t *)r8 = 0x0;
    sub_1002d4bc4(&var_C0, "particleLifespan");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_life));
    *(int32_t *)(r19 + r23) = 0x0;
    sub_1002d4bc4(&var_C0, "particleLifespanVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    s0 = 0x0;
    *(int32_t *)(int64_t *)&r19->_lifeVar = s0;
    asm { ucvtf      s0, x8 };
    asm { fdiv       s0, s0, s1 };
    *(int32_t *)(int64_t *)&r19->_emissionRate = s0;
    if (r19->_batchNode != 0x0) goto loc_1002d5808;

loc_1002d5d1c:
    *(int8_t *)(int64_t *)&r19->_opacityModifyRGB = 0x0;
    sub_1002d4bc4(&var_C0, "textureFileName");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0 && *(int32_t *)(r22 + 0x30) == 0x4) {
            r1 = *(r22 + 0x28);
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    }
    else {
            r1 = "";
            sub_1002d4bc4(&var_70, r1);
    }
    r22 = &var_88;
    r0 = sub_10098f750(&var_70);
    r8 = var_71;
    r10 = var_80;
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r10;
            }
    }
    r9 = *(int8_t *)(r21 + 0x17);
    r10 = sign_extend_64(r9);
    r11 = *(r21 + 0x8);
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r9 = r9;
            }
            else {
                    r9 = r11;
            }
    }
    if (r2 != r9) goto loc_1002d5e30;

loc_1002d5dc8:
    r11 = sign_extend_64(r8);
    r9 = var_88;
    if (r11 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r0 = r22;
            }
            else {
                    r0 = r9;
            }
    }
    r12 = *r21;
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r1 = r21;
            }
            else {
                    r1 = r12;
            }
    }
    if ((r11 & 0xffffffff80000000) != 0x0) goto loc_1002d5e24;

loc_1002d5de8:
    if (r2 == 0x0) goto loc_1002d5e60;

loc_1002d5dec:
    if (*(int8_t *)r1 != zero_extend_64(r9)) goto loc_1002d5e30;

loc_1002d5df8:
    r8 = r8 - 0x1;
    r9 = &var_88 | 0x1;
    r10 = r1 + 0x1;
    goto loc_1002d5e08;

loc_1002d5e08:
    if (r8 == 0x0) goto loc_1002d5e60;

loc_1002d5e0c:
    r11 = *(int8_t *)r9;
    r9 = r9 + 0x1;
    r12 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r8 = r8 - 0x1;
    if (r11 == r12) goto loc_1002d5e08;

loc_1002d5e30:
    r0 = sub_10098f860(r21, &var_70);
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    var_70 = var_C0;
    goto loc_1002d5e60;

loc_1002d5e60:
    r21 = [CCTextureCache sharedTextureCache];
    r9 = var_70;
    r8 = &var_70;
    if (sign_extend_64(var_59) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r22 = [NSString stringWithUTF8String:r2];
    r2 = r22;
    r0 = [r21 textureForKey:r2];
    r23 = r0;
    if (r0 == 0x0) goto loc_1002d5edc;

loc_1002d5ec0:
    [r19 setTexture:r2];
    r20 = 0x0;
    goto loc_1002d60a8;

loc_1002d60a8:
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    if (r20 != 0x0) {
            r19 = 0x0;
    }
    goto loc_1002d5808;

loc_1002d5edc:
    sub_1002d4bc4(&var_C0, "textureImageData");
    r0 = sub_1002c1520(r20, &var_C0);
    r20 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r20 != 0x0 && *(int32_t *)(r20 + 0x30) == 0x4) {
            r1 = *(r20 + 0x28);
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    }
    else {
            r1 = "";
            r0 = sub_1002d4bc4(&var_A0, r1);
    }
    r9 = var_89;
    r8 = sign_extend_64(r9);
    r10 = var_98;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r9;
            }
            else {
                    r2 = r10;
            }
    }
    if (r2 == 0x0) goto loc_1002d6044;

loc_1002d5f54:
    r9 = var_A0;
    COND = r8 < 0x0;
    r8 = &var_A0;
    if (COND) {
            if (!CPU_FLAGS & L) {
                    r1 = r8;
            }
            else {
                    r1 = r9;
            }
    }
    sub_1009d0a30(&var_E0, r1, r2);
    sub_1009759c4(&var_E0, 0x0);
    sub_1009d0b44(&var_E0);
    r0 = var_B8;
    if (r0 == 0x0) goto loc_1002d6030;

loc_1002d5f90:
    r1 = var_B0;
    if (r1 == 0x0) goto loc_1002d6030;

loc_1002d5f98:
    r0 = sub_100318dc4(r0, r1, &var_E0);
    sub_1009d0968(&var_C0, 0x0, 0x0);
    if (r20 == 0x0 || var_E0 == 0x0) goto loc_1002d6060;

loc_1002d5fc8:
    r3 = 0x2;
    r0 = [NSData alloc];
    asm { sxtw       x3, w20 };
    r20 = [r0 initWithBytesNoCopy:var_E0 length:r3];
    r23 = [r21 addEncodedImage:r20 resolutionType:0x0 textureScale:r22 name:r5];
    [r20 release];
    r20 = 0x0;
    goto loc_1002d6078;

loc_1002d6078:
    sub_1009d0b44(&var_C0);
    if (r20 != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    goto loc_1002d6090;

loc_1002d6090:
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if (r20 == 0x0) goto loc_1002d60d0;

loc_1002d60a4:
    r20 = 0x1;
    goto loc_1002d60a8;

loc_1002d60d0:
    if (r23 != 0x0) goto loc_1002d5ec0;

loc_1002d60d4:
    [r19 release];
    goto loc_1002d60a4;

loc_1002d6060:
    [r19 release];
    goto loc_1002d6070;

loc_1002d6070:
    r23 = 0x0;
    r20 = 0x1;
    goto loc_1002d6078;

loc_1002d6030:
    [r19 release];
    goto loc_1002d6070;

loc_1002d6044:
    r23 = [r21 addImage:r22];
    r20 = 0x0;
    goto loc_1002d6090;

loc_1002d5e24:
    if (r2 != 0x0 && memcmp(r0, r1, r2) != 0x0) {
            r0 = sub_10098f860(r21, &var_70);
            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_70);
            }
            var_70 = var_C0;
    }
    goto loc_1002d5e60;

loc_1002d5ab0:
    sub_1002d4bc4(&var_C0, "maxRadius");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r23 = (int64_t *)&r19->_mode;
    *(int32_t *)r23 = 0x0;
    sub_1002d4bc4(&var_C0, "maxRadiusVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x4) = 0x0;
    sub_1002d4bc4(&var_C0, "minRadius");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x8) = 0x0;
    *(int32_t *)(r23 + 0xc) = 0x0;
    sub_1002d4bc4(&var_C0, "rotatePerSecond");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    *(int32_t *)(r23 + 0x10) = 0x0;
    sub_1002d4bc4(&var_C0, "rotatePerSecondVariance");
    r0 = sub_1002c1520(r20, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
    }
    r8 = r23 + 0x14;
    goto loc_1002d5c3c;

loc_1002d582c:
    r19->_emitterMode = 0x0;
    goto loc_1002d5838;

loc_1002d4cc8:
    operator delete(var_C0);
    if (r22 == 0x0) goto loc_1002d57f4;
}

@end
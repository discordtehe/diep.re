@implementation SkeletonRenderer

+(void *)skeletonWithData:(struct spSkeletonData *)arg2 ownsSkeletonData:(bool)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithData:arg2 ownsSkeletonData:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)skeletonWithFile:(void *)arg2 atlas:(struct spAtlas *)arg3 scale:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 atlas:arg3 scale:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)skeletonWithFile:(void *)arg2 atlasFile:(void *)arg3 scale:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 atlasFile:arg3 scale:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)initialize:(struct spSkeletonData *)arg2 ownsSkeletonData:(bool)arg3 {
    *(int8_t *)(int64_t *)&self->_ownsSkeletonData = arg3;
    self->worldVertices = sub_10036ad1c();
    self->batch = [[spPolygonBatch createWithCapacity:0x7d0] retain];
    r0 = sub_10036dae8(arg2);
    self->_skeleton = r0;
    self->_rootBone = **(r0 + 0x10);
    self->_blendFunc = *0x100ba3650;
    [self setOpacityModifyRGB:0x1];
    [self setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
    return;
}

-(void *)initWithData:(struct spSkeletonData *)arg2 ownsSkeletonData:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 initialize:r20 ownsSkeletonData:r19];
    }
    r0 = r21;
    return r0;
}

-(void *)initWithFile:(void *)arg2 atlas:(struct spAtlas *)arg3 scale:(float)arg4 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = sub_1003785dc(r21);
            *(int32_t *)r0 = s8;
            r20 = sub_100378744(r0, [r20 UTF8String]);
            sub_100378628(r0);
            if (r20 != 0x0) {
                    [r19 initialize:r20 ownsSkeletonData:0x1];
            }
            else {
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFile:(void *)arg2 atlasFile:(void *)arg3 scale:(float)arg4 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r22 UTF8String];
            r0 = sub_100367614(r0, 0x0);
            r19->_atlas = r0;
            if (r0 != 0x0) {
                    r0 = sub_1003785dc(r0);
                    *(int32_t *)r0 = s8;
                    r20 = sub_100378744(r0, [r20 UTF8String]);
                    sub_100378628(r0);
                    if (r20 != 0x0) {
                            [r19 initialize:r20 ownsSkeletonData:0x1];
                    }
                    else {
                            r19 = 0x0;
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_ownsSkeletonData != 0x0) {
            sub_100378178(*(int64_t *)r19->_skeleton);
    }
    r0 = r19->_atlas;
    if (r0 != 0x0) {
            sub_1003676ec(r0);
    }
    sub_10036def8(r19->_skeleton);
    [r19->batch release];
    loc_10036ad9c(r19->worldVertices);
    [[&var_20 super] dealloc];
    return;
}

-(void *)getTextureForMesh:(struct spMeshAttachment *)arg2 {
    r0 = *(*(*(arg2 + 0x68) + 0x58) + 0x28);
    return r0;
}

-(void *)getTextureForRegion:(struct spRegionAttachment *)arg2 {
    r0 = *(*(*(arg2 + 0x50) + 0x58) + 0x28);
    return r0;
}

-(void *)getTextureForWeightedMesh:(struct spWeightedMeshAttachment *)arg2 {
    r0 = *(*(*(arg2 + 0x80) + 0x58) + 0x28);
    return r0;
}

-(void)updateWorldTransform {
    sub_10036e000(self->_skeleton);
    return;
}

-(void)setToSetupPose {
    sub_10036e084(self->_skeleton);
    return;
}

-(void)setBonesToSetupPose {
    sub_10036e0a8(self->_skeleton);
    return;
}

-(struct CGRect)boundingBox {
    var_80 = d15;
    stack[-136] = d14;
    r31 = r31 + 0xffffffffffffff70;
    var_70 = d13;
    stack[-120] = d12;
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
    r19 = self;
    [self scaleX];
    [r19 scaleY];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_skeleton));
    r8 = *(r19 + r21);
    if (*(int32_t *)(r8 + 0x20) < 0x1) goto loc_10035fb34;

loc_10035fa0c:
    r22 = 0x0;
    s8 = 0x800000;
    v11 = v13;
    v9 = v8;
    goto loc_10035fa34;

loc_10035fa34:
    r1 = *(*(r8 + 0x28) + r22 * 0x8);
    r20 = *(r1 + 0x20);
    if (r20 == 0x0) goto loc_10035fb1c;

loc_10035fa44:
    r8 = *(int32_t *)(r20 + 0x8);
    if (r8 == 0x3) goto loc_10035fa78;

loc_10035fa50:
    if (r8 == 0x2) goto loc_10035fa90;

loc_10035fa58:
    if (r8 == 0x0) {
            r1 = *(r1 + 0x8);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(worldVertices));
            sub_10036c85c(r20, r1, *(r19 + r26));
            r20 = 0x8;
            r25 = 0x0;
            asm { sxtw       x26, w26 };
            do {
                    sub_10035d724();
                    v13 = v13;
                    sub_10035d724();
                    v11 = v11;
                    sub_10035d730();
                    v8 = v8;
                    sub_10035d730();
                    v9 = v9;
                    r25 = r25 + 0x2;
            } while (r20 > r25);
    }
    goto loc_10035fb1c;

loc_10035fb1c:
    r22 = r22 + 0x1;
    r8 = *(r19 + r21);
    if (r22 < sign_extend_64(*(int32_t *)(r8 + 0x20))) goto loc_10035fa34;

loc_10035fb4c:
    [r19 position];
    asm { fcvt       d1, s13 };
    asm { fcvt       s10, d0 };
    objc_msgSend(r19, r20);
    asm { fcvt       d0, s11 };
    asm { fcvt       s11, d0 };
    objc_msgSend(r19, r20);
    asm { fcvt       d1, s8 };
    asm { fcvt       s8, d0 };
    r0 = objc_msgSend(r19, r20);
    asm { fcvt       d0, s9 };
    asm { fcvt       s3, d0 };
    asm { fcvt       d0, s10 };
    asm { fcvt       d1, s11 };
    asm { fcvt       d2, s2 };
    asm { fcvt       d3, s3 };
    return r0;

loc_10035fa90:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(worldVertices));
    sub_10036c28c(r20, r1, *(r19 + r26));
    r8 = 0x1;
    goto loc_10035faa4;

loc_10035faa4:
    asm { madd       x8, x8, x24, x20 };
    r20 = *(int32_t *)(r8 + 0x8);
    if (r20 >= 0x1) {
            r25 = 0x0;
            asm { sxtw       x26, w26 };
            do {
                    sub_10035d724();
                    v13 = v13;
                    sub_10035d724();
                    v11 = v11;
                    sub_10035d730();
                    v8 = v8;
                    sub_10035d730();
                    v9 = v9;
                    r25 = r25 + 0x2;
            } while (r20 > r25);
    }
    goto loc_10035fb1c;

loc_10035fa78:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(worldVertices));
    sub_10037dd14(r20, r1, *(r19 + r26));
    r8 = 0x3;
    goto loc_10035faa4;

loc_10035fb34:
    s11 = 0x7f7fffff;
    goto loc_10035fb4c;
}

-(void)setSlotsToSetupPose {
    sub_10036e158(self->_skeleton);
    return;
}

-(struct spBone *)findBone:(void *)arg2 {
    r0 = sub_10036e1b0(self->_skeleton, [arg2 UTF8String]);
    return r0;
}

-(bool)setSkin:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_skeleton;
    if (r2 != 0x0) {
            [r2 UTF8String];
    }
    r0 = sub_10036e2a0(r19);
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(struct spSlot *)findSlot:(void *)arg2 {
    r0 = sub_10036e228(self->_skeleton, [arg2 UTF8String]);
    return r0;
}

-(struct spAttachment *)getAttachment:(void *)arg2 attachmentName:(void *)arg3 {
    r20 = self->_skeleton;
    r21 = @selector(UTF8String);
    r0 = sub_10036e37c(r20, objc_msgSend(arg2, r21), objc_msgSend(arg3, r21));
    return r0;
}

-(void)draw {
    r31 = r31 - 0x120;
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
    sub_10031a6c4();
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r19 + r20) use];
    [*(r19 + r20) setUniformsForBuiltins];
    sub_10031a660(0x0);
    r0 = objc_msgSend(r19, *(&@selector(holderForWebView:) + 0xf90));
    asm { ubfx       x8, x0, #0x8, #0x18 };
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_skeleton));
    r9 = *(r19 + r23);
    asm { ubfx       w10, w0, #0x10, #0x8 };
    s0 = r0;
    asm { scvtf      v0.2s, v0.2s };
    asm { dup        v1.2s, w8 };
    asm { fdiv       v0.2s, v0.2s, v1.2s };
    asm { scvtf      s1, w10 };
    *(r9 + 0x60) = d0;
    asm { fdiv       s0, s1, s8 };
    *(int32_t *)(r9 + 0x68) = s0;
    [r19 opacity];
    asm { ucvtf      s0, w0 };
    asm { fdiv       s0, s0, s8 };
    r8 = *(r19 + r23);
    *(int32_t *)(r8 + 0x6c) = s0;
    r9 = *(int32_t *)(r8 + 0x20);
    if (r9 <= 0x0) goto loc_10035f738;

loc_10035f408:
    r20 = 0x0;
    r9 = (r9 << 0x3) - 0x8;
    var_D4 = 0xffffffffffffffff;
    var_D0 = r9;
    goto loc_10035f458;

loc_10035f458:
    r25 = *(*(r8 + 0x30) + r20);
    r22 = *(r25 + 0x20);
    if (r22 == 0x0) goto loc_10035f71c;

loc_10035f468:
    r8 = *(int32_t *)(r22 + 0x8);
    if (r8 == 0x3) goto loc_10035f52c;

loc_10035f474:
    if (r8 == 0x2) goto loc_10035f4d8;

loc_10035f47c:
    if (r8 != 0x0) goto loc_10035f71c;

loc_10035f480:
    r1 = *(r25 + 0x8);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(worldVertices));
    sub_10036c85c(r22, r1, *(r19 + r24));
    r1 = @selector(getTextureForRegion:);
    r26 = objc_msgSend(r19, r1);
    r27 = r22 + 0x90;
    r8 = r22 + 0x3c;
    r9 = r22 + 0x40;
    r10 = r22 + 0x44;
    r11 = r22 + 0x48;
    r28 = 0x8;
    r22 = 0x6;
    r21 = 0x100bd1810;
    if (r26 != 0x0) goto loc_10035f57c;

loc_10035f718:
    r9 = var_D0;
    goto loc_10035f71c;

loc_10035f71c:
    if (r9 == r20) goto loc_10035f730;

loc_10035f724:
    r8 = *(r19 + r23);
    r20 = r20 + 0x8;
    goto loc_10035f458;

loc_10035f730:
    r1 = @selector(flush);
    goto loc_10035f73c;

loc_10035f73c:
    r0 = r19->batch;
    r0 = objc_msgSend(r0, r1);
    if (*(int8_t *)(int64_t *)&r19->_debugSlots != 0x0) {
            r0 = sub_1002a2a34(0x0, 0x0, 0xff, 0xff);
            r0 = glLineWidth(r0);
            r8 = *(r19 + r23);
            r9 = *(int32_t *)(r8 + 0x20);
            if (r9 >= 0x1) {
                    r20 = 0x0;
                    r21 = (r9 << 0x3) - 0x8;
                    do {
                            r8 = *(r8 + 0x30);
                            r8 = *(r8 + r20);
                            r0 = *(r8 + 0x20);
                            if (r0 != 0x0 && *(int32_t *)(r0 + 0x8) == 0x0) {
                                    sub_10036c85c(r0, *(r8 + 0x8), *(r19 + sign_extend_64(*(int32_t *)ivar_offset(worldVertices))));
                                    asm { fcvtl      v0.2d, v0.2s };
                                    asm { fcvtl      v0.2d, v0.2s };
                                    asm { fcvtl      v0.2d, v0.2s };
                                    asm { fcvtl      v0.2d, v0.2s };
                                    r0 = sub_1002a263c(&var_C0, 0x4, 0x1);
                            }
                            if (r21 == r20) {
                                break;
                            }
                            r8 = *(r19 + r23);
                            r20 = r20 + 0x8;
                    } while (true);
            }
    }
    if (*(int8_t *)(int64_t *)&r19->_debugBones != 0x0) {
            glLineWidth(r0);
            sub_1002a2a34(0xff, 0x0, 0x0, 0xff);
            r8 = *(r19 + r23);
            r9 = *(int32_t *)(r8 + 0x8);
            if (r9 >= 0x1) {
                    r20 = 0x0;
                    r21 = (r9 << 0x3) - 0x8;
                    do {
                            r8 = *(r8 + 0x10);
                            r8 = *(r8 + r20);
                            asm { fcvt       d0, s2 };
                            asm { fcvt       d1, s1 };
                            asm { fcvt       d2, s4 };
                            asm { fcvt       d3, s3 };
                            sub_1002a1e0c();
                            if (r21 == r20) {
                                break;
                            }
                            r8 = *(r19 + r23);
                            r20 = r20 + 0x8;
                    } while (true);
            }
            sub_1002a2a18();
            sub_1002a2a34(0x0, 0x0, 0xff, 0xff);
            r8 = *(r19 + r23);
            r9 = *(int32_t *)(r8 + 0x8);
            if (r9 >= 0x1) {
                    r20 = 0x0;
                    r21 = (r9 << 0x3) - 0x8;
                    do {
                            r8 = *(r8 + 0x10);
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d1, s1 };
                            sub_1002a1ae8();
                            if (r20 == 0x0) {
                                    sub_1002a2a34(0x0, 0xff, 0x0, 0xff);
                            }
                            if (r21 == r20) {
                                break;
                            }
                            r8 = *(r19 + r23);
                            r20 = r20 + 0x8;
                    } while (true);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10035f57c:
    s10 = *(int32_t *)r8;
    s9 = *(int32_t *)r9;
    s8 = *(int32_t *)r10;
    s11 = *(int32_t *)r11;
    if (*(int32_t *)(*r25 + 0x28) == var_D4) goto loc_10035f64c;

loc_10035f5a0:
    r0 = r19->batch;
    r0 = [r0 flush];
    r8 = *r25;
    r8 = *(int32_t *)(r8 + 0x28);
    if (r8 == 0x3) goto loc_10035f5fc;

loc_10035f5c4:
    if (r8 == 0x2) goto loc_10035f610;

loc_10035f5cc:
    if (r8 == 0x1) {
            if (*(int8_t *)(int64_t *)&r19->_premultipliedAlpha == 0x0) {
                    asm { csinc      w0, w8, wzr, eq };
            }
            var_D4 = 0x1;
            r1 = 0x1;
    }
    else {
            var_D4 = r8;
            if (*(int8_t *)(int64_t *)&r19->_premultipliedAlpha == 0x0) {
                    asm { csinc      w0, w8, wzr, eq };
            }
            r1 = 0x303;
    }
    sub_10031a4a8(r0, r1);
    goto loc_10035f64c;

loc_10035f64c:
    r8 = *(r19 + r23);
    s0 = *(int32_t *)(r8 + 0x6c);
    s0 = 0x437f0000 * s11 * s0 * *(int32_t *)(r25 + 0x1c);
    asm { fcvtzs     w9, s0 };
    if (*(int8_t *)(int64_t *)&r19->_premultipliedAlpha != 0x0) {
            asm { csinv      w9, w9, wzr, ne };
    }
    var_E0 = @selector(add:vertices:uvs:verticesCount:triangles:trianglesCount:color:);
    asm { ucvtf      s0, w9 };
    asm { fcvtzs     w9, s1 };
    asm { fcvtzs     w9, s1 };
    asm { fcvtzs     w8, s0 };
    objc_msgSend(r19->batch, var_E0);
    goto loc_10035f718;

loc_10035f610:
    r1 = 0x303;
    sub_10031a4a8(0x306, r1);
    r8 = 0x2;
    goto loc_10035f620;

loc_10035f620:
    var_D4 = r8;
    goto loc_10035f64c;

loc_10035f5fc:
    r1 = 0x301;
    sub_10031a4a8(0x1, r1);
    r8 = 0x3;
    goto loc_10035f620;

loc_10035f4d8:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(worldVertices));
    sub_10036c28c(r22, r25, *(r19 + r24));
    r1 = @selector(getTextureForMesh:);
    r26 = objc_msgSend(r19, r1);
    r27 = *(r22 + 0x40);
    r28 = *(int32_t *)(r22 + 0x20);
    r8 = r22 + 0x58;
    r21 = *(r22 + 0x50);
    r9 = r22 + 0x5c;
    r10 = r22 + 0x60;
    r11 = r22 + 0x64;
    r22 = *(int32_t *)(r22 + 0x48);
    if (r26 != 0x0) goto loc_10035f57c;
    goto loc_10035f718;

loc_10035f52c:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(worldVertices));
    sub_10037dd14(r22, r25, *(r19 + r24));
    r1 = @selector(getTextureForWeightedMesh:);
    r26 = objc_msgSend(r19, r1);
    r27 = *(r22 + 0x60);
    r28 = *(int32_t *)(r22 + 0x50);
    r8 = r22 + 0x6c;
    r21 = *(r22 + 0x48);
    r9 = r22 + 0x70;
    r10 = r22 + 0x74;
    r11 = r22 + 0x78;
    r22 = *(int32_t *)(r22 + 0x40);
    if (r26 == 0x0) goto loc_10035f718;
    goto loc_10035f57c;

loc_10035f738:
    r1 = @selector(flush);
    goto loc_10035f73c;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setBlendFunc:r2];
    return;
}

-(bool)setAttachment:(void *)arg2 attachmentName:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self->_skeleton;
    r21 = @selector(UTF8String);
    r22 = objc_msgSend(arg2, r21);
    r0 = objc_msgSend(arg3, r21);
    r0 = sub_10036e41c(r20, r22, r0);
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(void)setOpacityModifyRGB:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_premultipliedAlpha = arg2;
    return;
}

-(bool)doesOpacityModifyRGB {
    r0 = *(int8_t *)(int64_t *)&self->_premultipliedAlpha;
    return r0;
}

-(void)onEnter {
    [self scheduleUpdate];
    return;
}

-(void)onExit {
    [self unscheduleUpdate];
    return;
}

-(struct spSkeleton *)skeleton {
    r0 = self->_skeleton;
    return r0;
}

-(struct spBone *)rootBone {
    r0 = self->_rootBone;
    return r0;
}

-(void)setRootBone:(struct spBone *)arg2 {
    self->_rootBone = arg2;
    return;
}

-(bool)debugSlots {
    r0 = *(int8_t *)(int64_t *)&self->_debugSlots;
    return r0;
}

-(void)setDebugSlots:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debugSlots = arg2;
    return;
}

-(bool)debugBones {
    r0 = *(int8_t *)(int64_t *)&self->_debugBones;
    return r0;
}

-(void)setDebugBones:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debugBones = arg2;
    return;
}

@end
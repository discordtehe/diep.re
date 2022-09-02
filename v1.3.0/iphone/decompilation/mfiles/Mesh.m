@implementation Mesh

-(void)initVBOandVAO {
    glGenVertexArraysOES();
    sub_10031a660(*(int32_t *)(self + 0x40));
    glGenBuffers(0x2, self + 0x44);
    glBindBuffer(0x8892, *(int32_t *)(self + 0x44));
    r8 = *(int32_t *)(self + 0x24);
    glBufferData(0x8892, r8 + r8 * 0x2 << 0x3, *(self + 0x8), 0x88e8);
    glEnableVertexAttribArray(0x0);
    glVertexAttribPointer(0x0, 0x3, 0x1406, 0x0, 0x18, 0x0);
    glEnableVertexAttribArray(0x1);
    glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x18, 0xc);
    glEnableVertexAttribArray(0x2);
    glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x18, 0x10);
    glBindBuffer(0x8893, *(int32_t *)(self + 0x48));
    glBufferData(0x8893, *(int32_t *)(self + 0x28) << 0x1, *(self + 0x18), 0x88e4);
    sub_10031a660(0x0);
    glBindBuffer(0x8893, 0x0);
    glBindBuffer(0x8892, 0x0);
    return;
}

-(void *)init:(unsigned int)arg2 numVertexes:(unsigned int)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            *(int32_t *)(r19 + 0x38) = 0x0;
            *(int128_t *)(r19 + 0x20) = r21;
            *(int128_t *)(r19 + 0x24) = r20;
            *(r19 + 0x8) = operator new[]();
            *(r19 + 0x10) = operator new[]();
            r8 = *(int32_t *)(r19 + 0x20);
            *(int32_t *)(r19 + 0x28) = r8 + r8 * 0x2;
            *(r19 + 0x18) = operator new[]();
            [r19 initVBOandVAO];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithData:(struct _ccV3F_C4B_T2F *)arg2 triangleData:(union ? *)arg3 renderIndexesData:(unsigned short *)arg4 numTriangles:(unsigned int)arg5 numVertexes:(unsigned int)arg6 numRenderIndexes:(unsigned int)arg7 {
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
    r24 = arg7;
    r23 = arg6;
    r25 = arg5;
    r19 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int128_t *)(r20 + 0x20) = r25;
            *(int128_t *)(r20 + 0x24) = r23;
            *(int32_t *)(r20 + 0x28) = r24;
            r0 = operator new[]();
            *(r20 + 0x8) = r0;
            r8 = *(int32_t *)(r20 + 0x24);
            memcpy(r0, r22, r8 + r8 * 0x2 << 0x3);
            r0 = operator new[]();
            *(r20 + 0x10) = r0;
            r8 = *(int32_t *)(r20 + 0x20);
            memcpy(r0, r21, r8 + r8 * 0x2 << 0x1);
            r0 = operator new[]();
            *(r20 + 0x18) = r0;
            memcpy(r0, r19, *(int32_t *)(r20 + 0x28) << 0x1);
            [r20 initVBOandVAO];
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    glDeleteBuffers(0x2, self + 0x44);
    glDeleteVertexArraysOES();
    sub_10031a660(0x0);
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            operator delete[](r0);
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            operator delete[](r0);
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            operator delete[](r0);
            *(r19 + 0x18) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)updateRenderIndexes {
    r0 = self;
    r8 = *(int32_t *)(r0 + 0x20);
    if (r8 != 0x0) {
            r9 = 0x0;
            r13 = 0x0;
            r10 = *(int128_t *)(r0 + 0x10);
            r11 = *(int128_t *)(r0 + 0x18);
            do {
                    r12 = 0x0;
                    r13 = r13;
                    do {
                            *(int16_t *)(r11 + (r13 + r12) * 0x2) = *(int16_t *)(r10 + r12 * 0x2);
                            r12 = r12 + 0x1;
                    } while (r12 != 0x3);
                    r9 = r9 + 0x1;
                    r10 = r10 + 0x6;
                    r13 = r13 + r12;
            } while (r9 < r8);
    }
    return;
}

-(void)replaceVertexData:(struct _ccV3F_C4B_T2F *)arg2 {
    r0 = *(self + 0x8);
    r8 = *(int32_t *)(self + 0x24);
    memcpy(r0, arg2, r8 + r8 * 0x2 << 0x3);
    *(int8_t *)(self + 0x3c) = 0x0;
    return;
}

-(void)forceVertexDataUpdate {
    *(int8_t *)(self + 0x3c) = 0x0;
    return;
}

-(struct _ccV3F_C4B_T2F *)vertexData {
    r0 = *(self + 0x8);
    return r0;
}

-(union ? *)triangleData {
    r0 = *(self + 0x10);
    return r0;
}

-(void)renderWithTexture:(void *)arg2 transform:(struct Matrix *)arg3 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    sub_1003575dc();
    r0 = sub_10035ad90(&stack[-112], arg3);
    sub_100357694(r0);
    sub_10031a6c4();
    [*(r19 + 0x30) use];
    [*(r19 + 0x30) setUniformsForBuiltins];
    r0 = [r21 hasPremultipliedAlpha];
    if (r0 == 0x0) {
            asm { csinc      w0, w8, wzr, eq };
    }
    sub_10031a4a8(r0, 0x303);
    [r21 bind];
    r20 = glIsEnabled(0xb44);
    r0 = glGetIntegerv(0xb45, &var_64);
    if (r20 != 0x1) {
            glEnable(0xb44);
    }
    if (var_64 != 0x405) {
            glCullFace(0x405);
    }
    glBindBuffer(0x8892, *(int32_t *)(r19 + 0x44));
    glBindBuffer(0x8893, *(int32_t *)(r19 + 0x48));
    if (*(int8_t *)(r19 + 0x3c) == 0x0) {
            r8 = *(int32_t *)(r19 + 0x24);
            glBufferSubData(0x8892, 0x0, r8 + r8 * 0x2 << 0x3, *(r19 + 0x8));
            glBufferSubData(0x8893, 0x0, *(int32_t *)(r19 + 0x28) << 0x1, *(r19 + 0x18));
            *(int8_t *)(r19 + 0x3c) = 0x1;
    }
    sub_10031a660(*(int32_t *)(r19 + 0x40));
    glDrawElements(0x4, *(int32_t *)(r19 + 0x28), 0x1403, 0x0);
    sub_10031a660(0x0);
    glBindBuffer(0x8892, 0x0);
    glBindBuffer(0x8893, 0x0);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    if (r20 != 0x1) {
            glDisable(0xb44);
    }
    r0 = var_64;
    if (r0 != 0x405) {
            r0 = glCullFace(r0);
    }
    loc_100357620(r0, 0x0);
    return;
}

-(unsigned short *)renderIndexesData {
    r0 = *(self + 0x18);
    return r0;
}

-(unsigned int)numTriangles {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(unsigned int)numVertexes {
    r0 = *(int32_t *)(self + 0x24);
    return r0;
}

-(unsigned int)numRenderIndexes {
    r0 = *(int32_t *)(self + 0x28);
    return r0;
}

-(void *)shaderProgram {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setShaderProgram:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
@implementation CCGLViewMC

+(void *)layerClass {
    r0 = [CAEAGLLayer class];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2 pixelFormat:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 depthFormat:(unsigned int)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2 pixelFormat:r3 depthFormat:0x0 preserveBackbuffer:0x0 sharegroup:0x0 multiSampling:0x0 numberOfSamples:var_30];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:**_kEAGLColorFormatRGB565 pixelFormat:0x0 depthFormat:0x0 preserveBackbuffer:0x0 sharegroup:0x0 multiSampling:0x0 numberOfSamples:stack[0]];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 depthFormat:(unsigned int)arg4 preserveBackbuffer:(bool)arg5 sharegroup:(void *)arg6 multiSampling:(bool)arg7 numberOfSamples:(unsigned int)arg8 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2 pixelFormat:r3 depthFormat:r4 preserveBackbuffer:r5 sharegroup:r6 multiSampling:r7 numberOfSamples:var_50];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:r2 pixelFormat:0x0 depthFormat:0x0 preserveBackbuffer:0x0 sharegroup:0x0 multiSampling:0x0 numberOfSamples:stack[0]];
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)swapBuffers {
    sub_100434f3c();
    [var_20 swapBuffers];
    return;
}

-(void *)context {
    sub_100434f3c();
    r0 = var_8;
    return r0;
}

-(struct CGRect)bounds {
    r0 = self;
    asm { fcvt       d2, s0 };
    asm { fcvt       d3, s1 };
    return r0;
}

-(struct CGRect)frame {
    r0 = [self bounds];
    return r0;
}

-(double)contentScaleFactor {
    r0 = self;
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)setContentScaleFactor:(double)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    asm { fcvt       s1, d0 };
    *(int32_t *)0x1011ac268 = s1;
    if (*(int8_t *)byte_1011d471c != 0x1) {
            r8 = 0x1011d4000;
            s0 = *(int32_t *)(r8 + 0x720);
            asm { fdiv       s0, s0, s1 };
            asm { fdiv       s1, s2, s1 };
            *(int32_t *)(r8 + 0x728) = s0;
            *(int32_t *)(r8 + 0x72c) = s1;
    }
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    *(int128_t *)(r19 + 0x18) = d0;
    *(int128_t *)(r19 + 0x20) = d1;
    [[CCDirectorMC sharedDirector] reshapeProjection:r2];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 depthFormat:(unsigned int)arg4 preserveBackbuffer:(bool)arg5 sharegroup:(void *)arg6 multiSampling:(bool)arg7 numberOfSamples:(unsigned int)arg8 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x140;
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
    r20 = r7;
    r21 = r6;
    r22 = r5;
    r23 = r4;
    r24 = r3;
    r25 = r2;
    r0 = [[&var_128 super] init];
    r19 = r0;
    if (r0 == 0x0) goto loc_10031d464;

loc_10031d204:
    *(r19 + 0x8) = r25;
    *(int32_t *)(r19 + 0x10) = r24;
    *(int8_t *)(r19 + 0x30) = r21;
    *(int8_t *)(r19 + 0x14) = r23;
    *(r19 + 0x18) = d9;
    *(r19 + 0x20) = d8;
    sub_100434dbc(&var_98);
    r0 = &var_98;
    if (&var_98 == r0) goto loc_10031d254;

loc_10031d244:
    if (r0 == 0x0) goto loc_10031d260;

loc_10031d248:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10031d25c;

loc_10031d25c:
    (r8)();
    goto loc_10031d260;

loc_10031d260:
    sub_100434dcc(&var_B8);
    r0 = &var_B8;
    if (&var_B8 == r0) goto loc_10031d298;

loc_10031d288:
    if (r0 == 0x0) goto loc_10031d2a4;

loc_10031d28c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10031d2a0;

loc_10031d2a0:
    (r8)();
    goto loc_10031d2a4;

loc_10031d2a4:
    sub_100434e70(&var_D8);
    r0 = &var_D8;
    if (&var_D8 == r0) goto loc_10031d2dc;

loc_10031d2cc:
    if (r0 == 0x0) goto loc_10031d2e8;

loc_10031d2d0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10031d2e4;

loc_10031d2e4:
    (r8)();
    goto loc_10031d2e8;

loc_10031d2e8:
    if (*0x1011d46f8 == 0x0) {
            *0x1011d46f8 = [[MCEvent alloc] init];
    }
    if (*0x1011d4700 == 0x0) {
            r0 = operator new();
            *(r0 + 0x10) = 0x0;
            *(r0 + 0x8) = 0x0;
            *r0 = r0 + 0x8;
            *0x1011d4700 = r0;
    }
    sub_10042e82c(&var_F8);
    r0 = &var_F8;
    if (&var_F8 == r0) goto loc_10031d374;

loc_10031d364:
    if (r0 == 0x0) goto loc_10031d380;

loc_10031d368:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10031d37c;

loc_10031d37c:
    (r8)();
    goto loc_10031d380;

loc_10031d380:
    if (*0x1011d4708 == 0x0) {
            *0x1011d4708 = [[MCEvent alloc] init];
    }
    if (*0x1011d4710 == 0x0) {
            r0 = operator new();
            *(r0 + 0x10) = 0x0;
            *(r0 + 0x8) = 0x0;
            *r0 = r0 + 0x8;
            *0x1011d4710 = r0;
    }
    sub_10042e71c(&var_118);
    r0 = &var_118;
    if (&var_118 == r0) goto loc_10031d40c;

loc_10031d3fc:
    if (r0 == 0x0) goto loc_10031d418;

loc_10031d400:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10031d414;

loc_10031d414:
    (r8)();
    goto loc_10031d418;

loc_10031d418:
    asm { fcvt       s0, d11 };
    asm { fcvt       s1, d10 };
    asm { fcvt       s2, d9 };
    asm { fcvt       s3, d8 };
    sub_1004349dc(r25, r24, r23, r22, r21, r20);
    [[CCConfiguration sharedConfiguration] supportsDiscardFramebuffer];
    goto loc_10031d464;

loc_10031d464:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10031d40c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10031d414;

loc_10031d374:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10031d37c;

loc_10031d2dc:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10031d2e4;

loc_10031d298:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10031d2a0;

loc_10031d254:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10031d25c;
}

-(struct CGSize)virtualSize {
    r0 = self;
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    return r0;
}

-(void)setVirtualSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = 0x1011d4000;
    *(int8_t *)(r8 + 0x71c) = 0x1;
    asm { fcvt       s0, d0 };
    asm { fcvt       s1, d1 };
    *(int32_t *)(r8 + 0x728) = s0;
    *(int32_t *)(r8 + 0x72c) = s1;
    [[CCDirectorMC sharedDirector] reshapeProjection:r2];
    return;
}

-(void)lockOpenGLContext {
    return;
}

-(void)unlockOpenGLContext {
    return;
}

-(struct CGPoint)convertPointFromViewToSurface:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = self;
    r0 = [self bounds];
    asm { fdiv       d0, d0, d2 };
    asm { fdiv       d1, d1, d3 };
    return r0;
}

-(struct CGRect)convertRectFromViewToSurface:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = self;
    r0 = [self bounds];
    asm { fdiv       d0, d0, d2 };
    asm { fdiv       d1, d1, d3 };
    asm { fdiv       d2, d9, d2 };
    asm { fdiv       d3, d8, d3 };
    return r0;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            [r0 touchesBegan:r2 withEvent:r3];
    }
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            [r0 touchesMoved:r2 withEvent:r3];
    }
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            [r0 touchesEnded:r2 withEvent:r3];
    }
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            [r0 touchesCancelled:r2 withEvent:r3];
    }
    return;
}

-(struct CGSize)surfaceSize {
    r0 = self;
    return r0;
}

-(unsigned int)depthFormat {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

-(void *)pixelFormat {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)touchDelegate {
    r0 = *(self + 0x28);
    return r0;
}

-(bool)multiSampling {
    r0 = *(int8_t *)(self + 0x30);
    return r0;
}

-(void)setTouchDelegate:(void *)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(void)setMultiSampling:(bool)arg2 {
    *(int8_t *)(self + 0x30) = arg2;
    return;
}

@end
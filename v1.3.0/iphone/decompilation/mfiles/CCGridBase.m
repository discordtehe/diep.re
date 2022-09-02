@implementation CCGridBase

+(void *)gridWithSize:(struct CGSize)arg2 texture:(void *)arg3 flippedTexture:(bool)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithSize:r2 texture:r3 flippedTexture:r4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)gridWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithSize:r2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithSize:(struct CGSize)arg2 texture:(void *)arg3 flippedTexture:(bool)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r3;
    r22 = r2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            *(int8_t *)(r19 + 0x8) = 0x0;
            *(int32_t *)(r19 + 0xc) = 0x0;
            *(int128_t *)(r19 + 0x10) = d9;
            *(int128_t *)(r19 + 0x18) = d8;
            [r19 setTexture:r22];
            *(int8_t *)(r19 + 0x40) = r21;
            [*(r19 + 0x20) contentSize];
            asm { fdiv       d0, d0, d2 };
            asm { fdiv       d1, d1, d3 };
            *(int128_t *)(r19 + 0x28) = d0;
            *(int128_t *)(r19 + 0x30) = d1;
            r0 = [CCGrabber alloc];
            r0 = objc_msgSend(r0, r20);
            *(r19 + 0x38) = r0;
            [r0 grab:*(r19 + 0x20)];
            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTexture"]];
            [r19 calculateVertexPoints];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x20) release];
    [*(self + 0x38) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    r23 = &@class(MCConfigurationData);
    r0 = *(r23 + 0x10);
    r22 = @selector(sharedDirector);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 winSizeInPixels];
    v10 = v0;
    v11 = v1;
    asm { fcvtzu     x0, d0 };
    r0 = sub_10031457c(r0);
    r20 = r0;
    asm { fcvtzu     x0, d11 };
    r21 = sub_10031457c(r0);
    r0 = *(r23 + 0x10);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 view];
    r0 = [r0 pixelFormat];
    r0 = [r0 isEqualToString:**_kEAGLColorFormatRGB565];
    r23 = r0;
    r8 = r21 * r20;
    r9 = 0x4;
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r9 = 0x4;
            }
            else {
                    r9 = 0x2;
            }
    }
    r0 = calloc(r8 * r9, 0x1);
    if (r0 != 0x0) {
            r22 = r0;
            if (r23 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r23 = 0x0;
                    }
                    else {
                            r23 = 0x3;
                    }
            }
            r20 = [[CCTexture2D alloc] initWithData:r22 pixelFormat:r23 pixelsWide:r20 pixelsHigh:r21 contentSize:r6];
            free(r22);
            if (r20 != 0x0) {
                    r19 = [r19 initWithSize:r20 texture:0x0 flippedTexture:r4];
                    [r20 release];
                    r0 = r19;
            }
            else {
                    [r19 release];
                    r0 = 0x0;
            }
    }
    else {
            [r19 release];
            r0 = 0x0;
    }
    return r0;
}

-(void *)description {
    r20 = @class(NSString);
    objc_msgSend(self, *0x1011374e0);
    asm { fcvtzs     x8, d0 };
    asm { fcvtzs     x9, d1 };
    r0 = [r20 stringWithFormat:r2];
    return r0;
}

-(bool)active {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(bool)isTextureFlipped {
    r0 = *(int8_t *)(self + 0x40);
    return r0;
}

-(void)setActive:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(self + 0x8) = arg2;
    if ((arg2 & 0x1) == 0x0) {
            r0 = [CCDirector sharedDirector];
            [r0 projection];
            [r0 setProjection:r2];
    }
    return;
}

-(void)setIsTextureFlipped:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x40) != r2) {
            *(int8_t *)(r0 + 0x40) = r2;
            [r0 calculateVertexPoints];
    }
    return;
}

-(void)set2DProjection {
    [[CCDirector sharedDirector] winSizeInPixels];
    asm { fcvtzs     w2, d0 };
    asm { fcvtzs     w3, d1 };
    glViewport(0x0, 0x0, r2, r3);
    sub_100357598(0x1701);
    sub_100357630();
    asm { fcvt       s1, d8 };
    asm { fcvt       s3, d9 };
    sub_10035b8b0(&stack[-96]);
    sub_100357694(&stack[-96]);
    sub_100357598(0x1700);
    sub_100357630();
    sub_10031a7a8();
    return;
}

-(void)afterDraw:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [*(self + 0x38) afterRender:*(r19 + 0x20)];
    [[CCDirector sharedDirector] setProjection:*(int32_t *)(r19 + 0x50)];
    if ([[r20 camera] dirty] != 0x0) {
            [r20 anchorPointInPoints];
            asm { fcvt       s8, d0 };
            asm { fcvt       s9, d1 };
            sub_10035771c();
            [objc_msgSend(r20, r21) locate];
            sub_10035771c();
    }
    [*(r19 + 0x20) bind];
    [r19 blit];
    return;
}

-(void)beforeDraw {
    *(int32_t *)(self + 0x50) = [[CCDirector sharedDirector] projection];
    [self set2DProjection];
    [*(self + 0x38) beforeRender:*(self + 0x20)];
    return;
}

-(void)blit {
    [NSException raise:@"GridBase" format:@"Abstract class needs implementation"];
    return;
}

-(void)reuse {
    [NSException raise:@"GridBase" format:@"Abstract class needs implementation"];
    return;
}

-(void)calculateVertexPoints {
    [NSException raise:@"GridBase" format:@"Abstract class needs implementation"];
    return;
}

-(int)reuseGrid {
    r0 = *(int32_t *)(self + 0xc);
    return r0;
}

-(void)setReuseGrid:(int)arg2 {
    *(int32_t *)(self + 0xc) = arg2;
    return;
}

-(void *)texture {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)grabber {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setTexture:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setGrabber:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(struct CGSize)gridSize {
    r0 = self;
    return r0;
}

-(void)setStep:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x28) = d0;
    *(self + 0x30) = d1;
    return;
}

-(struct CGPoint)step {
    r0 = self;
    return r0;
}

-(void *)shaderProgram {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setShaderProgram:(void *)arg2 {
    *(self + 0x48) = arg2;
    return;
}

@end
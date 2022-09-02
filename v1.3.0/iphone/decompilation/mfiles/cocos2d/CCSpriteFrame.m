@implementation CCSpriteFrame

+(void *)frameWithTexture:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2 rect:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)frameWithTextureFilename:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithTextureFilename:arg2 rect:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)frameWithTexture:(void *)arg2 rectInPixels:(struct CGRect)arg3 rotated:(bool)arg4 offset:(struct CGPoint)arg5 originalSize:(struct CGSize)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2 rectInPixels:r3 rotated:r4 offset:r5 originalSize:r6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)frameWithTextureFilename:(void *)arg2 rectInPixels:(struct CGRect)arg3 rotated:(bool)arg4 offset:(struct CGPoint)arg5 originalSize:(struct CGSize)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithTextureFilename:arg2 rectInPixels:r3 rotated:r4 offset:r5 originalSize:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTexture:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    asm { fcvt       d4, s4 };
    r0 = [r0 initWithTexture:r2 rectInPixels:0x0 rotated:r4 offset:r5 originalSize:r6];
    return r0;
}

-(void *)initWithTextureFilename:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    asm { fcvt       d4, s4 };
    r0 = [r0 initWithTextureFilename:r2 rectInPixels:0x0 rotated:r4 offset:r5 originalSize:r6];
    return r0;
}

-(void *)initWithTexture:(void *)arg2 rectInPixels:(struct CGRect)arg3 rotated:(bool)arg4 offset:(struct CGPoint)arg5 originalSize:(struct CGSize)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r3, &arg3, 0x8);
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
    r19 = r3;
    r21 = arg2;
    r0 = [[&var_70 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setTexture:r21];
            *(int128_t *)(r20 + 0x28) = d15;
            *(int128_t *)(r20 + 0x30) = d14;
            *(int128_t *)(r20 + 0x38) = d13;
            *(int128_t *)(r20 + 0x40) = d12;
            asm { fcvt       d0, s0 };
            asm { fdiv       d1, d15, d0 };
            asm { fdiv       d2, d14, d0 };
            asm { fdiv       d3, d13, d0 };
            asm { fdiv       d4, d12, d0 };
            *(int128_t *)(r20 + 0x8) = d1;
            *(int128_t *)(r20 + 0x10) = d2;
            *(int128_t *)(r20 + 0x18) = d3;
            *(int128_t *)(r20 + 0x20) = d4;
            *(int128_t *)(r20 + 0x60) = d11;
            *(int128_t *)(r20 + 0x68) = d10;
            asm { fdiv       d1, d11, d0 };
            asm { fdiv       d2, d10, d0 };
            *(int128_t *)(r20 + 0x50) = d1;
            *(int128_t *)(r20 + 0x58) = d2;
            *(int128_t *)(r20 + 0x80) = d9;
            *(int128_t *)(r20 + 0x88) = d8;
            asm { fdiv       d1, d9, d0 };
            asm { fdiv       d0, d8, d0 };
            *(int128_t *)(r20 + 0x70) = d1;
            *(int128_t *)(r20 + 0x78) = d0;
            *(int8_t *)(r20 + 0x48) = r19;
    }
    r0 = r20;
    return r0;
}

-(void *)initWithTextureFilename:(void *)arg2 rectInPixels:(struct CGRect)arg3 rotated:(bool)arg4 offset:(struct CGPoint)arg5 originalSize:(struct CGSize)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r3, &arg3, 0x8);
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
    r19 = r3;
    r21 = arg2;
    r0 = [[&var_70 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0xa0) = 0x0;
            *(r20 + 0xa8) = [r21 copy];
            *(int128_t *)(r20 + 0x28) = d15;
            *(int128_t *)(r20 + 0x30) = d14;
            *(int128_t *)(r20 + 0x38) = d13;
            *(int128_t *)(r20 + 0x40) = d12;
            asm { fcvt       d0, s0 };
            asm { fdiv       d1, d15, d0 };
            asm { fdiv       d2, d14, d0 };
            asm { fdiv       d3, d13, d0 };
            asm { fdiv       d4, d12, d0 };
            *(int128_t *)(r20 + 0x8) = d1;
            *(int128_t *)(r20 + 0x10) = d2;
            *(int128_t *)(r20 + 0x18) = d3;
            *(int128_t *)(r20 + 0x20) = d4;
            *(int128_t *)(r20 + 0x60) = d11;
            *(int128_t *)(r20 + 0x68) = d10;
            asm { fdiv       d1, d11, d0 };
            asm { fdiv       d2, d10, d0 };
            *(int128_t *)(r20 + 0x50) = d1;
            *(int128_t *)(r20 + 0x58) = d2;
            *(int128_t *)(r20 + 0x80) = d9;
            *(int128_t *)(r20 + 0x88) = d8;
            asm { fdiv       d1, d9, d0 };
            asm { fdiv       d0, d8, d0 };
            *(int128_t *)(r20 + 0x70) = d1;
            *(int128_t *)(r20 + 0x78) = d0;
            *(int8_t *)(r20 + 0x48) = r19;
    }
    r0 = r20;
    return r0;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [*(self + 0xa0) release];
    [*(self + 0xa8) release];
    [[&var_20 super] dealloc];
    return;
}

-(struct CGRect)rect {
    r0 = self;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithTextureFilename:*(self + 0xa8) rectInPixels:*(int8_t *)(self + 0x48) rotated:r4 offset:r5 originalSize:r6];
    [r0 setTexture:r2];
    r0 = r19;
    return r0;
}

-(struct CGRect)rectInPixels {
    r0 = self;
    return r0;
}

-(void)setRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    *(r0 + 0x8) = d0;
    *(r0 + 0x10) = d1;
    *(r0 + 0x18) = d2;
    *(r0 + 0x20) = d3;
    asm { fcvt       d4, s4 };
    *(r0 + 0x28) = d0 * d4;
    *(r0 + 0x30) = d1 * d4;
    *(r0 + 0x38) = d2 * d4;
    *(r0 + 0x40) = d3 * d4;
    return;
}

-(void)setRectInPixels:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    *(int128_t *)(r0 + 0x28) = d0;
    *(int128_t *)(r0 + 0x30) = d1;
    *(int128_t *)(r0 + 0x38) = d2;
    *(int128_t *)(r0 + 0x40) = d3;
    asm { fcvt       d4, s4 };
    asm { fdiv       d0, d0, d4 };
    asm { fdiv       d1, d1, d4 };
    asm { fdiv       d2, d2, d4 };
    *(int128_t *)(r0 + 0x8) = d0;
    *(int128_t *)(r0 + 0x10) = d1;
    asm { fdiv       d0, d3, d4 };
    *(int128_t *)(r0 + 0x18) = d2;
    *(int128_t *)(r0 + 0x20) = d0;
    return;
}

-(void)setOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    *(r0 + 0x50) = d0;
    *(r0 + 0x58) = d1;
    asm { fcvt       d2, s2 };
    *(r0 + 0x60) = d0 * d2;
    *(r0 + 0x68) = d1 * d2;
    return;
}

-(void)setOffsetInPixels:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    *(int128_t *)(r0 + 0x60) = d0;
    *(int128_t *)(r0 + 0x68) = d1;
    asm { fcvt       d2, s2 };
    asm { fdiv       d0, d0, d2 };
    asm { fdiv       d1, d1, d2 };
    *(int128_t *)(r0 + 0x50) = d0;
    *(int128_t *)(r0 + 0x58) = d1;
    return;
}

-(void)setTexture:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0xa0);
    if (r0 != r2) {
            [r0 release];
            *(r19 + 0xa0) = [r2 retain];
    }
    return;
}

-(void *)texture {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0xa0);
    if (r0 == 0x0) {
            if (*(r19 + 0xa8) != 0x0) {
                    r0 = [CCTextureCache sharedTextureCache];
                    r0 = [r0 addImage:*(r19 + 0xa8)];
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(struct CGPoint)offsetInPixels {
    r0 = self;
    return r0;
}

-(struct CGPoint)offset {
    r0 = self;
    return r0;
}

-(struct CGSize)originalSize {
    r0 = self;
    return r0;
}

-(struct CGSize)originalSizeInPixels {
    r0 = self;
    return r0;
}

-(void)setOriginalSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x70) = d0;
    *(self + 0x78) = d1;
    return;
}

-(void)setOriginalSizeInPixels:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x80) = d0;
    *(self + 0x88) = d1;
    return;
}

-(bool)rotated {
    r0 = *(int8_t *)(self + 0x48);
    return r0;
}

-(void *)textureFilename {
    r0 = *(self + 0xa8);
    return r0;
}

-(void)setRotated:(bool)arg2 {
    *(int8_t *)(self + 0x48) = arg2;
    return;
}

-(struct CGSize)spritesheetSize {
    r0 = self;
    return r0;
}

-(void)setSpritesheetSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x90) = d0;
    *(self + 0x98) = d1;
    return;
}

@end
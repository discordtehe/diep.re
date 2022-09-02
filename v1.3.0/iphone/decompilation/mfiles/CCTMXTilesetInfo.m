@implementation CCTMXTilesetInfo

-(void)setTileOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    *(int128_t *)(r0 + 0x30) = d0;
    *(int128_t *)(r0 + 0x38) = d1;
    asm { fdiv       v0.2d, v0.2d, v2.2d };
    asm { fcvtn      v0.2s, v0.2d };
    asm { fcvtl      v0.2d, v0.2s };
    *(int128_t *)(r0 + 0x40) = q0;
    return;
}

-(void)dealloc {
    [*(self + 0x50) release];
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(struct CGRect)rectForGID:(unsigned int)arg2 {
    r0 = self;
    d2 = *(int128_t *)(r0 + 0x18);
    r8 = arg2 & 0x1fffffff;
    asm { ucvtf      d0, w10 };
    r10 = *(int32_t *)(r0 + 0x10);
    d1 = *(r0 + 0x58);
    d0 = d1 - d0;
    asm { ucvtf      d1, d1 };
    d0 = d0 + d1;
    d4 = d2 + d1;
    asm { fdiv       d0, d0, d4 };
    asm { fcvtzs     w11, d0 };
    asm { udiv       w10, w8, w11 };
    asm { ucvtf      d0, w8 };
    asm { ucvtf      d4, w9 };
    asm { ucvtf      d5, w10 };
    return r0;
}

-(void *)name {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(unsigned int)firstGid {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

-(void)setFirstGid:(unsigned int)arg2 {
    *(int32_t *)(self + 0x10) = arg2;
    return;
}

-(struct CGSize)tileSize {
    r0 = self;
    return r0;
}

-(void)setTileSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x18) = d0;
    *(self + 0x20) = d1;
    return;
}

-(unsigned int)spacing {
    r0 = *(int32_t *)(self + 0x28);
    return r0;
}

-(void)setSpacing:(unsigned int)arg2 {
    *(int32_t *)(self + 0x28) = arg2;
    return;
}

-(unsigned int)margin {
    r0 = *(int32_t *)(self + 0x2c);
    return r0;
}

-(void)setMargin:(unsigned int)arg2 {
    *(int32_t *)(self + 0x2c) = arg2;
    return;
}

-(void *)sourceImage {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setSourceImage:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(struct CGSize)imageSize {
    r0 = self;
    return r0;
}

-(void)setImageSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x58) = d0;
    *(self + 0x60) = d1;
    return;
}

-(struct CGPoint)tileOffset {
    r0 = self;
    return r0;
}

-(struct CGPoint)tileAnchorPoint {
    r0 = self;
    return r0;
}

@end
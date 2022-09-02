@implementation MCFSProcessedValues

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int128_t *)(r0 + 0x68) = q0;
            *(int128_t *)(r0 + 0x58) = q0;
            *(int128_t *)(r0 + 0x48) = q0;
            *(int128_t *)(r0 + 0x38) = q0;
            *(int128_t *)(r0 + 0x28) = q0;
            *(int128_t *)(r0 + 0x18) = q0;
            *(int128_t *)(r0 + 0x8) = q0;
    }
    return r0;
}

-(float)leftMargin {
    r0 = self;
    return r0;
}

-(void)setLeftMargin:(float)arg2 {
    *(int32_t *)(self + 0x8) = s0;
    return;
}

-(float)rightMargin {
    r0 = self;
    return r0;
}

-(void)setRightMargin:(float)arg2 {
    *(int32_t *)(self + 0xc) = s0;
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x50);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x50) = 0x0;
    }
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    r0 = *(r19 + 0x60);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x60) = 0x0;
    }
    r0 = *(r19 + 0x68);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x68) = 0x0;
    }
    r0 = *(r19 + 0x70);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x70) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(float)bottomMargin {
    r0 = self;
    return r0;
}

-(void)setBottomMargin:(float)arg2 {
    *(int32_t *)(self + 0x10) = s0;
    return;
}

-(float)topMargin {
    r0 = self;
    return r0;
}

-(void)setTopMargin:(float)arg2 {
    *(int32_t *)(self + 0x14) = s0;
    return;
}

-(void)setSpriteSheet:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)spriteSheet {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setTextureName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)textureName {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)sourceFrame {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setSourceFrame:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setBottomLeft:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)bottomLeft {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setBottomMid:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)bottomMid {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)bottomRight {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setBottomRight:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setMiddleLeft:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)middleLeft {
    r0 = *(self + 0x48);
    return r0;
}

-(void *)middleMid {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setMiddleMid:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)middleRight {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setMiddleRight:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)topLeft {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setTopLeft:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setTopMid:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)topMid {
    r0 = *(self + 0x68);
    return r0;
}

-(void *)topRight {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setTopRight:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end
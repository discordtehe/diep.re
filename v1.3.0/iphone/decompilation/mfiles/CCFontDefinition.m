@implementation CCFontDefinition

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setFontName:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFontName:(void *)arg2 fontSize:(int)arg3 {
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
            *(r21 + 0x8) = [r20 copy];
            *(int32_t *)(r21 + 0x10) = r19;
    }
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)enableShadow:(bool)arg2 {
    *(int8_t *)(self + 0x38) = arg2;
    return;
}

-(bool)shadowEnabled {
    r0 = *(int8_t *)(self + 0x38);
    return r0;
}

-(void)setShadowOffset:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x40) = d0;
    *(self + 0x48) = d1;
    return;
}

-(struct CGSize)shadowOffset {
    r0 = self;
    return r0;
}

-(void)setShadowBlur:(float)arg2 {
    *(int32_t *)(self + 0x50) = s0;
    return;
}

-(float)shadowBlur {
    r0 = self;
    return r0;
}

-(void)setShadowOpacity:(float)arg2 {
    *(int32_t *)(self + 0x54) = s0;
    return;
}

-(float)shadowOpacity {
    r0 = self;
    return r0;
}

-(void)setShadowColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(self + 0x58) = r2;
    return;
}

-(struct _ccColorThreeB)shadowColor {
    r0 = *(int32_t *)(self + 0x58);
    return r0;
}

-(void)enableStroke:(bool)arg2 {
    *(int8_t *)(self + 0x60) = arg2;
    return;
}

-(bool)strokeEnabled {
    r0 = *(int8_t *)(self + 0x60);
    return r0;
}

-(void)setStrokeSize:(double)arg2 {
    r0 = self;
    asm { fcvt       s0, d0 };
    *(int32_t *)(r0 + 0x68) = s0;
    return;
}

-(double)strokeSize {
    r0 = self;
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)setStrokeColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(self + 0x61) = r2;
    return;
}

-(struct _ccColorThreeB)strokeColor {
    r0 = *(int32_t *)(self + 0x61);
    return r0;
}

-(void *)fontName {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void)setFontName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(int)fontSize {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

-(void)setFontSize:(int)arg2 {
    *(int32_t *)(self + 0x10) = arg2;
    return;
}

-(int)alignment {
    r0 = *(int32_t *)(self + 0x14);
    return r0;
}

-(void)setAlignment:(int)arg2 {
    *(int32_t *)(self + 0x14) = arg2;
    return;
}

-(int)vertAlignment {
    r0 = *(int32_t *)(self + 0x18);
    return r0;
}

-(struct CGSize)dimensions {
    r0 = self;
    return r0;
}

-(int)lineBreakMode {
    r0 = *(int32_t *)(self + 0x1c);
    return r0;
}

-(void)setVertAlignment:(int)arg2 {
    *(int32_t *)(self + 0x18) = arg2;
    return;
}

-(void)setLineBreakMode:(int)arg2 {
    *(int32_t *)(self + 0x1c) = arg2;
    return;
}

-(void)setDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x20) = d0;
    *(self + 0x28) = d1;
    return;
}

-(void)setFontFillColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(self + 0x30) = r2;
    return;
}

-(struct _ccColorThreeB)fontFillColor {
    r0 = *(int32_t *)(self + 0x30);
    return r0;
}

@end
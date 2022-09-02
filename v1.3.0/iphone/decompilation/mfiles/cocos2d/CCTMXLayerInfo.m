@implementation CCTMXLayerInfo

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(r19 + 0x2a) = 0x1;
            *(r19 + 0x2c) = *0x100ba62b0;
            [r19 setName:0x0];
            *(r19 + 0x20) = 0x0;
            *(int128_t *)(r19 + 0x40) = *(int128_t *)*_CGPointZero;
            [r19 setProperties:[NSMutableDictionary dictionaryWithCapacity:0x5]];
    }
    r0 = r19;
    return r0;
}

-(void *)name {
    r0 = *(self + 0x8);
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x8) release];
    [*(r19 + 0x38) release];
    if (*(int8_t *)(r19 + 0x2a) != 0x0) {
            r0 = *(r19 + 0x20);
            if (r0 != 0x0) {
                    free(r0);
                    *(r19 + 0x20) = 0x0;
            }
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(struct CGSize)layerSize {
    r0 = self;
    return r0;
}

-(unsigned int *)tiles {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setLayerSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x10) = d0;
    *(self + 0x18) = d1;
    return;
}

-(void)setTiles:(unsigned int *)arg2 {
    *(self + 0x20) = arg2;
    return;
}

-(bool)visible {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

-(void)setVisible:(bool)arg2 {
    *(int8_t *)(self + 0x28) = arg2;
    return;
}

-(unsigned char)opacity {
    r0 = *(int8_t *)(self + 0x29);
    return r0;
}

-(void)setOpacity:(unsigned char)arg2 {
    *(int8_t *)(self + 0x29) = arg2;
    return;
}

-(bool)ownTiles {
    r0 = *(int8_t *)(self + 0x2a);
    return r0;
}

-(unsigned int)minGID {
    r0 = *(int32_t *)(self + 0x2c);
    return r0;
}

-(void)setOwnTiles:(bool)arg2 {
    *(int8_t *)(self + 0x2a) = arg2;
    return;
}

-(void)setMinGID:(unsigned int)arg2 {
    *(int32_t *)(self + 0x2c) = arg2;
    return;
}

-(unsigned int)maxGID {
    r0 = *(int32_t *)(self + 0x30);
    return r0;
}

-(void)setMaxGID:(unsigned int)arg2 {
    *(int32_t *)(self + 0x30) = arg2;
    return;
}

-(void *)properties {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setProperties:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(struct CGPoint)offset {
    r0 = self;
    return r0;
}

-(void)setOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x40) = d0;
    *(self + 0x48) = d1;
    return;
}

@end
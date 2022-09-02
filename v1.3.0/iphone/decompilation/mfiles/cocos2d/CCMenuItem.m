@implementation CCMenuItem

-(void)activate {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r0 = r0->_block;
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
            }
    }
    return;
}

+(void *)itemWithTarget:(void *)arg2 selector:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 selector:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithBlock:0x0];
    return r0;
}

+(void *)itemWithBlock:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithBlock:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 {
    r20 = sub_100330078(arg2);
    r19 = [self initWithBlock:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithBlock:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if (r21 != 0x0) {
                    r19->_block = [r21 copy];
            }
            r20 = @selector(init);
            [r19 setAnchorPoint:r2];
            *(int8_t *)(int64_t *)&r19->_isEnabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_isSelected = 0x0;
            *(int8_t *)(int64_t *)&r19->_releaseBlockAtCleanup = 0x0;
            r19->_pickingAreas = objc_msgSend([NSMutableArray alloc], r20);
    }
    r0 = r19;
    return r0;
}

-(void)cleanup {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_releaseBlockAtCleanup != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_block));
            [*(r19 + r20) release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] cleanup];
    return;
}

-(void)dealloc {
    [self->_block release];
    [self->_pickingAreas release];
    [[&var_20 super] dealloc];
    return;
}

-(void)selected {
    *(int8_t *)(int64_t *)&self->_isSelected = 0x1;
    [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3];
    return;
}

-(void)unselected {
    *(int8_t *)(int64_t *)&self->_isSelected = 0x0;
    return;
}

-(void)focus {
    *(int8_t *)(int64_t *)&self->_isFocused = 0x1;
    return;
}

-(void)activate {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r0 = r0->_block;
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
            }
    }
    return;
}

-(void)unfocus {
    *(int8_t *)(int64_t *)&self->_isFocused = 0x0;
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isEnabled = arg2;
    return;
}

-(bool)isEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isEnabled;
    return r0;
}

-(void)setBlock:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_block));
    [*(self + r21) release];
    *(self + r21) = [arg2 copy];
    return;
}

-(bool)isClickable {
    r0 = self;
    if (r0->_block != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setTarget:(void *)arg2 selector:(void *)arg3 {
    r20 = sub_100330078(arg2);
    [self setBlock:r20];
    [r20 release];
    return;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_30 super] setContentSize:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_activeArea));
    *(int128_t *)(self + r8) = 0x0;
    *(int128_t *)(0x8 + self + r8) = 0x0;
    *(int128_t *)(0x10 + self + r8) = d9;
    *(int128_t *)(0x18 + self + r8) = d8;
    return;
}

-(bool)isPointOver:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    [self convertToNodeSpace:r2];
    v8 = v0;
    v9 = v1;
    r0 = [r21 pickingAreas];
    r19 = r0;
    if ([r0 count] == 0x0) goto loc_1002d28c0;

loc_1002d2858:
    if ([r19 count] == 0x0) goto loc_1002d28e8;

loc_1002d2868:
    r21 = 0x0;
    goto loc_1002d287c;

loc_1002d287c:
    if ((CGRectContainsPoint([[r19 objectAtIndex:r21] CGRectValue], @selector(CGRectValue)) & 0x1) != 0x0) goto loc_1002d28e0;

loc_1002d28a4:
    r21 = r21 + 0x1;
    if ([r19 count] > r21) goto loc_1002d287c;

loc_1002d28e8:
    r0 = 0x0;
    return r0;

loc_1002d28e0:
    r0 = 0x1;
    return r0;

loc_1002d28c0:
    if ((CGRectContainsPoint([r21 activeArea], @selector(activeArea)) & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isSelected {
    r0 = *(int8_t *)(int64_t *)&self->_isSelected;
    return r0;
}

-(bool)isFocused {
    r0 = *(int8_t *)(int64_t *)&self->_isFocused;
    return r0;
}

-(bool)releaseBlockAtCleanup {
    r0 = *(int8_t *)(int64_t *)&self->_releaseBlockAtCleanup;
    return r0;
}

-(struct CGRect)activeArea {
    r0 = self;
    return r0;
}

-(void)setReleaseBlockAtCleanup:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_releaseBlockAtCleanup = arg2;
    return;
}

-(void)setActiveArea:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_activeArea));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(void *)pickingAreas {
    r0 = self->_pickingAreas;
    return r0;
}

-(void)setPickingAreas:(void *)arg2 {
    self->_pickingAreas = arg2;
    return;
}

-(struct CGRect)rect {
    r0 = self;
    return r0;
}

-(void)setRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    return;
}

@end
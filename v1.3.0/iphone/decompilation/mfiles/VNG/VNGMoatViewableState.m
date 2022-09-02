@implementation VNGMoatViewableState

-(float)getVisiblePercent {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self viewRect];
    [r19 viewRect];
    asm { fcvt       s10, d0 };
    [r19 visibleRect];
    [r19 visibleRect];
    r0 = [r19 coveredPercent];
    if (s10 > 0x0) {
            asm { fcvt       s1, d1 };
            asm { fdiv       s1, s0, s10 };
    }
    return r0;
}

-(void *)toJSON {
    r20 = [[self toDict] retain];
    r19 = [[VNGMoatJSONUtil toJSONRecursive:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isAttached {
    r0 = *(int8_t *)(int64_t *)&self->_isAttached & 0x1;
    return r0;
}

-(void)setIsAttached:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAttached = arg2;
    return;
}

+(void *)getRectAsJsonDict:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_50 = d11;
    stack[-88] = d10;
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
    var_58 = **___stack_chk_guard;
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4];
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isFocused {
    r0 = *(int8_t *)(int64_t *)&self->_isFocused & 0x1;
    return r0;
}

-(bool)exceedsMaxLayerCount {
    r0 = *(int8_t *)(int64_t *)&self->_exceedsMaxLayerCount & 0x1;
    return r0;
}

-(void)setExceedsMaxLayerCount:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_exceedsMaxLayerCount = arg2;
    return;
}

-(void *)toDict {
    r31 = r31 - 0x140;
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
    var_58 = **___stack_chk_guard;
    r20 = @class(VNGMoatViewableState);
    [self screenRect];
    var_110 = [[r20 getRectAsJsonDict:r2] retain];
    r20 = @class(VNGMoatViewableState);
    [self viewRect];
    var_118 = [[r20 getRectAsJsonDict:r2] retain];
    r22 = @class(VNGMoatViewableState);
    [self visibleRect];
    var_120 = [[r22 getRectAsJsonDict:r2] retain];
    var_128 = [[NSNumber numberWithBool:[self isFocused]] retain];
    r24 = [[NSNumber numberWithBool:[self isAttached]] retain];
    r26 = [[NSNumber numberWithBool:[self isHidden]] retain];
    r19 = @class(NSNumber);
    r2 = [self isCoveredByVC];
    r27 = [[r19 numberWithBool:r2] retain];
    r19 = @class(NSNumber);
    [self opacity];
    r28 = [[r19 numberWithFloat:r2] retain];
    r19 = @class(NSNumber);
    [self coveredPercent];
    r19 = [[r19 numberWithFloat:r2] retain];
    r22 = @class(NSNumber);
    [self getVisiblePercent];
    r20 = [[r22 numberWithFloat:r2] retain];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithBool:[self exceedsMaxLayerCount]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_B0 forKeys:&var_108 count:0xb];
    r21 = [r0 retain];
    [r22 release];
    [r20 release];
    [r19 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [var_128 release];
    [var_120 release];
    [var_118 release];
    [var_110 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isHidden {
    r0 = *(int8_t *)(int64_t *)&self->_isHidden & 0x1;
    return r0;
}

-(bool)isCoveredByVC {
    r0 = *(int8_t *)(int64_t *)&self->_isCoveredByVC & 0x1;
    return r0;
}

-(void)setIsFocused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isFocused = arg2;
    return;
}

-(void)setIsCoveredByVC:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isCoveredByVC = arg2;
    return;
}

-(void)setIsHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isHidden = arg2;
    return;
}

-(float)opacity {
    r0 = self;
    return r0;
}

-(void)setOpacity:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_opacity = s0;
    return;
}

-(float)coveredPercent {
    r0 = self;
    return r0;
}

-(void)setCoveredPercent:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_coveredPercent = s0;
    return;
}

-(struct CGRect)screenRect {
    r0 = objc_copyStruct(&var_20, (int64_t *)&self->_screenRect, 0x20, 0x1, 0x0);
    return r0;
}

-(void)setScreenRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_screenRect, &var_20, 0x20, 0x1, 0x0);
    return;
}

-(struct CGRect)viewRect {
    r0 = objc_copyStruct(&var_20, (int64_t *)&self->_viewRect, 0x20, 0x1, 0x0);
    return r0;
}

-(void)setViewRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_viewRect, &var_20, 0x20, 0x1, 0x0);
    return;
}

-(struct CGRect)visibleRect {
    r0 = objc_copyStruct(&var_20, (int64_t *)&self->_visibleRect, 0x20, 0x1, 0x0);
    return r0;
}

-(void)setVisibleRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_visibleRect, &var_20, 0x20, 0x1, 0x0);
    return;
}

@end
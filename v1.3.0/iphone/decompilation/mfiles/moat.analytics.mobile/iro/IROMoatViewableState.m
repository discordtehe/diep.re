@implementation IROMoatViewableState

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
            asm { fdiv       s0, s0, s10 };
    }
    return r0;
}

-(void *)toJSON {
    r20 = [[self toDict] retain];
    r19 = [[IROMoatJSONUtil toJSONRecursive:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isAttached {
    r0 = *(int8_t *)(int64_t *)&self->_isAttached & 0x1;
    return r0;
}

+(void *)getRectAsJsonDict:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d11;
    stack[-88] = d10;
    r24 = *___stack_chk_guard;
    r24 = *r24;
    var_58 = r24;
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    var_70 = r20;
    r22 = [[NSNumber numberWithDouble:r2] retain];
    var_68 = r22;
    r23 = [[NSNumber numberWithDouble:r2] retain];
    var_60 = r23;
    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (r24 == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setIsAttached:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAttached = arg2;
    return;
}

-(bool)isFocused {
    r0 = *(int8_t *)(int64_t *)&self->_isFocused & 0x1;
    return r0;
}

-(void *)toDict {
    var_58 = **___stack_chk_guard;
    r19 = @class(IROMoatViewableState);
    [self screenRect];
    var_100 = [[r19 getRectAsJsonDict:r2] retain];
    r20 = @class(IROMoatViewableState);
    [self viewRect];
    var_108 = [[r20 getRectAsJsonDict:r2] retain];
    r23 = @class(IROMoatViewableState);
    [self visibleRect];
    r22 = [[r23 getRectAsJsonDict:r2] retain];
    r23 = @class(NSNumber);
    r23 = [[r23 numberWithBool:[self isFocused]] retain];
    r24 = @class(NSNumber);
    r24 = [[r24 numberWithBool:[self isAttached]] retain];
    r25 = @class(NSNumber);
    r25 = [[r25 numberWithBool:[self isHidden]] retain];
    r27 = @class(NSNumber);
    r2 = [self isCoveredByVC];
    r26 = [[r27 numberWithBool:r2] retain];
    r27 = @class(NSNumber);
    [self opacity];
    r27 = [[r27 numberWithFloat:r2] retain];
    r19 = @class(NSNumber);
    [self coveredPercent];
    r19 = [[r19 numberWithFloat:r2] retain];
    r20 = @class(NSNumber);
    [self getVisiblePercent];
    r20 = [[r20 numberWithFloat:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_A8 forKeys:&var_F8 count:0xa];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    [r19 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [var_108 release];
    [var_100 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setIsFocused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isFocused = arg2;
    return;
}

-(bool)isHidden {
    r0 = *(int8_t *)(int64_t *)&self->_isHidden & 0x1;
    return r0;
}

-(void)setIsHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isHidden = arg2;
    return;
}

-(bool)isCoveredByVC {
    r0 = *(int8_t *)(int64_t *)&self->_isCoveredByVC & 0x1;
    return r0;
}

-(void)setIsCoveredByVC:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isCoveredByVC = arg2;
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
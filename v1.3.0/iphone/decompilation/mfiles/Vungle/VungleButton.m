@implementation VungleButton

-(struct UIEdgeInsets)hitTestEdgeInsets {
    r0 = self;
    return r0;
}

-(void)setHitTestEdgeInsets:(struct UIEdgeInsets)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hitTestEdgeInsets));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(void *)expandWidthConstraint {
    r0 = self->_expandWidthConstraint;
    return r0;
}

-(void *)hitTest:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r20 = self;
    r19 = [r2 retain];
    [r20 hitTestEdgeInsets];
    if (d1 != *(*_UIEdgeInsetsZero + 0x8)) goto loc_10064a988;

loc_10064a970:
    d1 = *(int128_t *)(*_UIEdgeInsetsZero + 0x10);
    if (d2 == d1) {
            asm { fccmp      d3, d4, #0x0, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fccmp      d0, d5, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_10064a9b0;

loc_10064a988:
    if ([r20 isEnabled] == 0x0 || [r20 isHidden] != 0x0) goto loc_10064a9b0;

loc_10064aa0c:
    [r20 frame];
    objc_msgSend(r20, r22);
    if (CGRectContainsPoint([r20 hitTestEdgeInsets], @selector(hitTestEdgeInsets)) == 0x0) goto loc_10064aa84;

loc_10064aa78:
    r0 = [r20 retain];
    goto loc_10064a9e0;

loc_10064a9e0:
    r20 = r0;
    goto loc_10064a9e4;

loc_10064a9e4:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_10064aa84:
    r20 = 0x0;
    goto loc_10064a9e4;

loc_10064a9b0:
    r0 = [[&var_50 super] hitTest:r19 withEvent:r3];
    r0 = [r0 retain];
    goto loc_10064a9e0;
}

-(void)setExpandWidthConstraint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_expandWidthConstraint, arg2);
    return;
}

-(void *)compressWidthConstraint {
    r0 = self->_compressWidthConstraint;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_compressWidthConstraint, 0x0);
    objc_storeStrong((int64_t *)&self->_expandWidthConstraint, 0x0);
    return;
}

-(void)setCompressWidthConstraint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_compressWidthConstraint, arg2);
    return;
}

@end
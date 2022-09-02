@implementation MCMenuItemToggleSwipe

-(void *)initWithItems:(void *)arg2 block:(void *)arg3 {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] initWithItems:arg2 block:arg3];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->mHasTouch = 0x0;
            *(int8_t *)(int64_t *)&r0->mSwipeMode = 0x0;
            *(int8_t *)(int64_t *)&r0->mCanActivate = 0x0;
    }
    return r0;
}

-(void)onEnter {
    [[&var_20 super] onEnter];
    [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self priority:0xffffffff80000001 swallowsTouches:0x0];
    return;
}

-(void)onTouched:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    return;
}

-(void)onExit {
    [[&var_20 super] onExit];
    [[[CCDirector sharedDirector] touchDispatcher] removeDelegate:self];
    return;
}

-(void)onRelease {
    return;
}

-(void)onMoved:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    return;
}

-(void)activate {
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mCanActivate));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(mSwipeMode));
                    if (*(int8_t *)(r19 + r21) != 0x0) {
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_selectedIndex));
                            r23 = *(r19 + r22) + 0x1;
                            r0 = r19->_subItems;
                            r8 = 0x101137000;
                            r0 = objc_msgSend(r0, *(r8 + 0x410));
                            asm { udiv       x8, x23, x0 };
                            *(r19 + r22) = r23 - r8 * r0;
                    }
                    [[&var_40 super] activate];
                    *(int8_t *)(r19 + r20) = 0x0;
                    *(int8_t *)(r19 + r21) = 0x0;
            }
    }
    return;
}

-(struct CGRect)activeArea {
    r0 = self;
    var_40 = d13;
    stack[-72] = d12;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r0->mSwipeMode != 0x0) {
            [r19 contentSize];
            objc_msgSend(r19, r20);
            objc_msgSend(r19, r20);
            r0 = objc_msgSend(r19, r20);
    }
    return r0;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mHasTouch));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = 0x0;
            r20 = r0->mInitialState;
            r0 = [r0 selectedIndex];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mSwipeMode));
            r8 = *(int8_t *)(r19 + r8);
            if (r20 == r0) {
                    if (r8 == 0x0) {
                            *(int8_t *)(int64_t *)&r19->mCanActivate = 0x1;
                    }
            }
            else {
                    if (r8 != 0x0) {
                            *(int8_t *)(int64_t *)&r19->mCanActivate = 0x1;
                            [[r19 parent] selectItem:r19];
                    }
                    else {
                            *(int8_t *)(int64_t *)&r19->mCanActivate = 0x1;
                    }
            }
    }
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    if (*(int8_t *)(int64_t *)&r0->_visible == 0x0) goto loc_100339db8;

loc_100339c5c:
    r20 = r2;
    r19 = r0;
    if ([r0 isEnabled] == 0x0) goto loc_100339db8;

loc_100339c74:
    r0 = [r19 parent];
    if (r0 == 0x0) goto loc_100339d08;

loc_100339c8c:
    r22 = r0;
    goto loc_100339cb4;

loc_100339cb4:
    if ([r22 visible] == 0x0 || [r22 isKindOfClass:[CCMenu class]] != 0x0 && [r22 enabled] == 0x0) goto loc_100339db8;

loc_100339cf4:
    r0 = [r22 parent];
    r22 = r0;
    if (r0 != 0x0) goto loc_100339cb4;

loc_100339d08:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mHasTouch));
    if (*(int8_t *)(r19 + r21) == 0x0) {
            [r19 activeArea];
            if ([r19 touchOverLapsRect:r20 area:r3] != 0x0) {
                    [r20 locationInView:[r20 view]];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mInitialPoint));
                    *(r19 + r8) = d0;
                    *(0x8 + r19 + r8) = d1;
                    r20 = 0x1;
                    *(int8_t *)(r19 + r21) = r20;
                    r19->mInitialState = [r19 selectedIndex];
                    *(int8_t *)(int64_t *)&r19->mSwipeMode = 0x0;
                    *(int8_t *)(int64_t *)&r19->mCanActivate = r20;
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    goto loc_100339dbc;

loc_100339dbc:
    r0 = r20;
    return r0;

loc_100339db8:
    r20 = 0x0;
    goto loc_100339dbc;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    *(int8_t *)(int64_t *)&self->mCanActivate = 0x0;
    *(int8_t *)(int64_t *)&self->mSwipeMode = 0x0;
    *(int8_t *)(int64_t *)&self->mHasTouch = 0x0;
    return;
}

-(void)revertToInitalState {
    [self setSelectedIndex:self->mInitialState];
    *(int8_t *)(int64_t *)&self->mHasTouch = 0x0;
    *(int8_t *)(int64_t *)&self->mSwipeMode = 0x0;
    *(int8_t *)(int64_t *)&self->mCanActivate = 0x0;
    return;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->mHasTouch == 0x0) goto .l3;

loc_100339edc:
    r20 = r2;
    r19 = r0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mSwipeMode));
    if (*(int8_t *)(r0 + r21) == 0x0) goto loc_100339f1c;

loc_100339ef4:
    [r19 activeArea];
    if (([r19 touchOverLapsRect:r20 area:r3] & 0x1) == 0x0) goto loc_100339fbc;

loc_100339f1c:
    [r20 locationInView:[r20 view]];
    r20 = (int64_t *)&r19->mInitialPoint;
    d0 = *r20;
    d0 = d0 - d8;
    if (d0 < 0x0) {
            asm { fcsel      d10, d1, d0, mi };
    }
    sub_10035ec68();
    asm { fcvt       d0, s0 };
    if (d10 < d0) goto .l3;

loc_100339f90:
    d0 = *r20;
    if (d8 <= d0 || r19->_selectedIndex != 0x1) goto loc_100339fe0;

loc_100339fb4:
    r2 = 0x0;
    goto loc_10033a000;

loc_10033a000:
    [r19 setSelectedIndex:r2];
    *r20 = d8;
    *(r20 + 0x8) = d9;
    *(int8_t *)(r19 + r21) = 0x1;
    *(int8_t *)(int64_t *)&r19->mCanActivate = 0x0;
    return;

.l3:
    return;

loc_100339fe0:
    if (d8 >= d0 || r19->_selectedIndex != 0x0) goto .l3;

loc_100339ffc:
    r2 = 0x1;
    goto loc_10033a000;

loc_100339fbc:
    [r19 revertToInitalState];
    return;
}

-(bool)touchOverLapsRect:(void *)arg2 area:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = [arg2 view];
    [arg2 locationInView:r2];
    [[CCDirector sharedDirector] convertToGL:r2];
    r0 = [self convertToNodeSpace:r2];
    r0 = CGRectContainsPoint(r0, @selector(convertToNodeSpace:));
    return r0;
}

@end
@implementation CCMenuInputForwarder

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(int32_t *)(r0 + r24) == 0x0) goto loc_1005d48e8;

loc_1005d48d0:
    r0 = 0x0;
    return r0;

.l1:
    return r0;

loc_1005d48e8:
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r0->_visible == 0x0) goto loc_1005d48d0;

loc_1005d4900:
    r20 = r2;
    *(int8_t *)(int64_t *)&r19->mReleasedTouch = 0x0;
    r0 = [r19 parent];
    if (r0 == 0x0) goto loc_1005d4958;

loc_1005d4928:
    r22 = r0;
    goto loc_1005d4934;

loc_1005d4934:
    r0 = [r22 visible];
    if (r0 == 0x0) goto .l1;

loc_1005d4944:
    r0 = [r22 parent];
    r22 = r0;
    if (r0 != 0x0) goto loc_1005d4934;

loc_1005d4958:
    r0 = [r19 itemForTouch:r20];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    *(r19 + r20) = r0;
    [r0 selected];
    if (*(r19 + r20) != 0x0) {
            r0 = 0x1;
            *(int32_t *)(r19 + r24) = r0;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mReleasedTouch));
    if (*(int8_t *)(self + r22) == 0x0) goto loc_1005d4800;

loc_1005d47e4:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mForwardTarget));
    r0 = *(r21 + r23);
    if (r0 == 0x0) goto .l2;

loc_1005d47f4:
    r22 = @selector(ccTouchMoved:withEvent:);
    goto loc_1005d485c;

loc_1005d485c:
    if ([r0 respondsToSelector:r2] != 0x0) {
            objc_msgSend(*(r21 + r23), r22);
    }
    return;

.l2:
    return;

loc_1005d4800:
    r8 = [r21 itemForTouch:r20];
    r0 = r21->_selectedItem;
    if (r8 == r0) goto .l2;

loc_1005d4830:
    [r0 unselected];
    *(int8_t *)(r21 + r22) = 0x1;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mForwardTarget));
    r0 = *(r21 + r23);
    if (r0 == 0x0) goto .l2;

loc_1005d4854:
    r22 = @selector(ccTouchBegan:withEvent:);
    goto loc_1005d485c;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->mReleasedTouch != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mForwardTarget));
            r0 = *(r19 + r23);
            if (r0 != 0x0) {
                    r20 = r3;
                    r21 = r2;
                    if ([r0 respondsToSelector:r2] != 0x0) {
                            [*(r19 + r23) ccTouchEnded:r2 withEvent:r3];
                    }
            }
    }
    else {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
            [*(r19 + r20) unselected];
            [*(r19 + r20) activate];
    }
    *(int32_t *)(int64_t *)&r19->_state = 0x0;
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->mReleasedTouch != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mForwardTarget));
            r0 = *(r19 + r23);
            if (r0 != 0x0) {
                    r20 = r3;
                    r21 = r2;
                    if ([r0 respondsToSelector:@selector(ccTouchCancelled:withEvent:), r3] != 0x0) {
                            [*(r19 + r23) ccTouchCancelled:r21 withEvent:r20];
                    }
            }
    }
    else {
            [r19->_selectedItem unselected];
    }
    *(int32_t *)(int64_t *)&r19->_state = 0x0;
    return;
}

-(void *)forwardTarget {
    r0 = self->mForwardTarget;
    return r0;
}

-(bool)releasedTouch {
    r0 = *(int8_t *)(int64_t *)&self->mReleasedTouch;
    return r0;
}

-(void)setForwardTarget:(void *)arg2 {
    self->mForwardTarget = arg2;
    return;
}

@end
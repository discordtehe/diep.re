@implementation CCMenuItemLabelExtendedInput

+(void *)itemWithLabel:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithLabel:arg2 target:0x0 selector:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithLabel:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithLabel:arg2 target:arg3 selector:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithLabel:(void *)arg2 block:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithLabel:arg2 block:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithLabel:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithLabel:arg2 target:arg3 selector:arg4];
    r19 = r0;
    if (r0 != 0x0) {
            r19->mTouchBeganCallback = [Callback new];
            r19->mTouchEndedCallback = [Callback new];
            r19->mTouchCancelledCallback = [Callback new];
            r19->mTouchMovedCallback = [Callback new];
    }
    r0 = r19;
    return r0;
}

-(void)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchBeganCallback));
    [*(self + r21) setParameter:arg2];
    [*(self + r21) execute];
    [*(self + r21) setParameter:0x0];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchBeganCallback));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchEndedCallback));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchCancelledCallback));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchMovedCallback));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchEndedCallback));
    [*(self + r21) setParameter:arg2];
    [*(self + r21) execute];
    [*(self + r21) setParameter:0x0];
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchCancelledCallback));
    [*(self + r21) setParameter:arg2];
    [*(self + r21) execute];
    [*(self + r21) setParameter:0x0];
    return;
}

-(void *)touchBeganCallback {
    r0 = self->mTouchBeganCallback;
    return r0;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchMovedCallback));
    [*(self + r21) setParameter:arg2];
    [*(self + r21) execute];
    [*(self + r21) setParameter:0x0];
    return;
}

-(void *)touchMovedCallback {
    r0 = self->mTouchMovedCallback;
    return r0;
}

-(void *)touchEndedCallback {
    r0 = self->mTouchEndedCallback;
    return r0;
}

-(void *)touchCancelledCallback {
    r0 = self->mTouchCancelledCallback;
    return r0;
}

@end
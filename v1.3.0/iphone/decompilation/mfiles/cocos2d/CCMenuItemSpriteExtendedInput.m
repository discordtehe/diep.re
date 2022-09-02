@implementation CCMenuItemSpriteExtendedInput

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 target:arg4 selector:arg5];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 target:0x0 selector:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 block:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 block:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 target:arg5 selector:arg6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 target:arg5 selector:arg6];
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

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 block:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 block:arg5];
    r0 = [r0 autorelease];
    return r0;
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

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchMovedCallback));
    [*(self + r21) setParameter:arg2];
    [*(self + r21) execute];
    [*(self + r21) setParameter:0x0];
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchEndedCallback));
    [*(self + r21) setParameter:arg2];
    [*(self + r21) execute];
    [*(self + r21) setParameter:0x0];
    return;
}

-(void *)touchBeganCallback {
    r0 = self->mTouchBeganCallback;
    return r0;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchCancelledCallback));
    [*(self + r21) setParameter:arg2];
    [*(self + r21) execute];
    [*(self + r21) setParameter:0x0];
    return;
}

-(void *)touchEndedCallback {
    r0 = self->mTouchEndedCallback;
    return r0;
}

-(void *)touchCancelledCallback {
    r0 = self->mTouchCancelledCallback;
    return r0;
}

-(void *)touchMovedCallback {
    r0 = self->mTouchMovedCallback;
    return r0;
}

@end
@implementation InputBlocker

+(void *)inputBlocker {
    r0 = [InputBlocker alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)inputBlockerWithCallback:(void *)arg2 isCallbackEnabled:(bool)arg3 priority:(int)arg4 {
    r0 = [InputBlocker alloc];
    r0 = [r0 initWithCallback:arg2 isCallbackEnabled:arg3 priority:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)inputBlockerWithCallback:(void *)arg2 isCallbackEnabled:(bool)arg3 {
    r0 = [InputBlocker inputBlockerWithCallback:arg2 isCallbackEnabled:arg3 priority:0xffffffffffffff80];
    return r0;
}

-(void *)init {
    r0 = [self initWithCallback:0x0 isCallbackEnabled:0x0 priority:0xffffffffffffff80];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mCallback));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithCallback:(void *)arg2 isCallbackEnabled:(bool)arg3 priority:(int)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r22 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            if (r22 != 0x0) {
                    r21->mCallback = [r22 retain];
            }
            else {
                    r20 = 0x0;
                    r21->mCallback = 0x0;
            }
            *(int8_t *)(int64_t *)&r21->mIsCallbackEnabled = r20;
            *(int8_t *)(int64_t *)&r21->mRegistered = 0x0;
            *(int32_t *)(int64_t *)&r21->mPriority = r19;
    }
    r0 = r21;
    return r0;
}

-(void)setCallback:(void *)arg2 isCallbackEnabled:(bool)arg3 {
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
    r21 = arg2;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mCallback));
    r0 = *(self + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r20 + r22) = 0x0;
            *(int8_t *)(int64_t *)&r20->mIsCallbackEnabled = 0x0;
    }
    if (r21 != 0x0) {
            *(r20 + r22) = [r21 retain];
            *(int8_t *)(int64_t *)&r20->mIsCallbackEnabled = r19;
    }
    return;
}

-(void)disableCallback {
    *(int8_t *)(int64_t *)&self->mIsCallbackEnabled = 0x0;
    return;
}

-(void)enableCallback {
    *(int8_t *)(int64_t *)&self->mIsCallbackEnabled = 0x1;
    return;
}

-(void)enableInput {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isTouchEnabled] & 0x1) == 0x0) {
            [r19 setTouchEnabled:r2];
    }
    return;
}

-(void)onEnter {
    [self enableInput];
    [[&var_20 super] onEnter];
    return;
}

-(void)disableInput {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isTouchEnabled] != 0x0) {
            [r19 setTouchEnabled:r2];
    }
    return;
}

-(void)onExit {
    [self disableInput];
    [[&var_20 super] onExit];
    return;
}

-(void)registerWithTouchDispatcher {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mRegistered));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:r0 priority:sign_extend_64(*(int32_t *)(int64_t *)&r0->mPriority) swallowsTouches:0x1];
            *(int8_t *)(r0 + r20) = 0x1;
    }
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = self;
    r0 = self->mCallback;
    if (r0 != 0x0 && *(int8_t *)(int64_t *)&r8->mIsCallbackEnabled != 0x0) {
            [r0 execute];
    }
    return 0x1;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    return;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    return;
}

-(void)ccTouchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    return;
}

@end
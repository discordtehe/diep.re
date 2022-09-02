@implementation CCLayer

-(void)setIsTouchEnabled:(bool)arg2 {
    [self setTouchEnabled:r2];
    return;
}

-(void)setIsAccelerometerEnabled:(bool)arg2 {
    [self setAccelerometerEnabled:arg2];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [[CCDirector sharedDirector] winSize];
            *(int128_t *)(int64_t *)&r19->_anchorPoint = q2;
            [r19 setContentSize:r2];
            [r19 setIgnoreAnchorPointForPosition:0x1];
            *(int8_t *)(int64_t *)&r19->_touchEnabled = 0x0;
            r19->_touchPriority = 0x0;
            *(int8_t *)(int64_t *)&r19->_touchMode = 0x0;
            *(int8_t *)(int64_t *)&r19->_touchSwallow = 0x1;
            *(int8_t *)(int64_t *)&r19->_accelerometerEnabled = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)registerWithTouchDispatcher {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [CCDirector sharedDirector];
    r20 = *(int8_t *)(int64_t *)&r19->_touchMode;
    r0 = [r0 touchDispatcher];
    r3 = r19->_touchPriority;
    if (r20 != 0x0) {
            [r0 addTargetedDelegate:r19 priority:r3 swallowsTouches:*(int8_t *)(int64_t *)&r19->_touchSwallow];
    }
    else {
            [r0 addStandardDelegate:r19 priority:r3];
    }
    return;
}

-(bool)isAccelerometerEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_accelerometerEnabled;
    return r0;
}

-(void)setAccelerometerEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_accelerometerEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            r20 = r2;
            r19 = r0;
            *(int8_t *)(r0 + r8) = r2;
            if (*(int8_t *)(int64_t *)&r0->_isRunning != 0x0) {
                    r0 = [UIAccelerometer sharedAccelerometer];
                    [r0 setDelegate:r2];
            }
    }
    return;
}

-(void)setAccelerometerInterval:(float)arg2 {
    r2 = arg2;
    r0 = [UIAccelerometer sharedAccelerometer];
    asm { fcvt       d0, s8 };
    [r0 setUpdateInterval:r2];
    return;
}

-(bool)isTouchEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_touchEnabled;
    return r0;
}

-(long long)touchPriority {
    r0 = self->_touchPriority;
    return r0;
}

-(void)setTouchEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_touchEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = r2;
            if (*(int8_t *)(int64_t *)&r0->_isRunning != 0x0) {
                    if (r2 != 0x0) {
                            [r19 registerWithTouchDispatcher];
                    }
                    else {
                            [[[CCDirector sharedDirector] touchDispatcher] removeDelegate:r19];
                    }
            }
    }
    return;
}

-(int)touchMode {
    r0 = *(int8_t *)(int64_t *)&self->_touchMode;
    return r0;
}

-(void)setTouchPriority:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_touchPriority));
    if (*(r0 + r8) != r2) {
            r19 = r0;
            *(r0 + r8) = r2;
            if (*(int8_t *)(int64_t *)&r0->_touchEnabled != 0x0) {
                    [r19 setTouchEnabled:r2];
                    objc_msgSend(r19, r20);
            }
    }
    return;
}

-(bool)touchSwallow {
    r0 = *(int8_t *)(int64_t *)&self->_touchSwallow;
    return r0;
}

-(void)setTouchMode:(int)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_touchMode));
    r9 = *(int8_t *)(r0 + r8);
    if (r9 != r2) {
            r19 = r0;
            if (r2 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            *(int8_t *)(r0 + r8) = r9;
            if (*(int8_t *)(int64_t *)&r0->_touchEnabled != 0x0) {
                    [r19 setTouchEnabled:r2];
                    objc_msgSend(r19, r20);
            }
    }
    return;
}

-(void)setTouchSwallow:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_touchSwallow));
    if (*(int8_t *)(r0 + r8) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = r2;
            if (*(int8_t *)(int64_t *)&r0->_touchEnabled != 0x0) {
                    [r19 setTouchEnabled:r2];
                    objc_msgSend(r19, r20);
            }
    }
    return;
}

-(void)onEnter {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_touchEnabled != 0x0) {
            [r19 registerWithTouchDispatcher];
    }
    [[&var_20 super] onEnter];
    return;
}

-(void)onEnterTransitionDidFinish {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_accelerometerEnabled != 0x0) {
            [[UIAccelerometer sharedAccelerometer] setDelegate:r19];
    }
    [[&var_20 super] onEnterTransitionDidFinish];
    return;
}

-(void)onExit {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [CCDirector sharedDirector];
    if (*(int8_t *)(int64_t *)&r19->_touchEnabled != 0x0) {
            [[r0 touchDispatcher] removeDelegate:r19];
    }
    if (*(int8_t *)(int64_t *)&r19->_accelerometerEnabled != 0x0) {
            [[UIAccelerometer sharedAccelerometer] setDelegate:0x0];
    }
    [[&var_20 super] onExit];
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    return 0x1;
}

@end
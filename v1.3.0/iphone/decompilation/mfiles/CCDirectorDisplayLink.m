@implementation CCDirectorDisplayLink

-(void)mainLoop:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0->_displayLink != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isRunningOnMessenger != 0x0 || [[UIApplication sharedApplication] applicationState] != 0x2) {
                    [r19 drawScene];
            }
    }
    return;
}

-(void)setAnimationInterval:(double)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0->_animationInterval = d0;
    if (r0->_displayLink != 0x0) {
            [r0 stopAnimation];
            [r0 startAnimation];
    }
    return;
}

-(void)startAnimation {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] startAnimation];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isAnimating));
    if (*(int8_t *)(r19 + r21) == 0x0) {
            gettimeofday((int64_t *)&r19->_lastUpdate, 0x0);
            asm { fcvtms     w20, d0 };
            r2 = r19;
            r0 = [CADisplayLink displayLinkWithTarget:r2 selector:@selector(mainLoop:)];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
            *(r19 + r22) = r0;
            asm { sxtw       x2, w20 };
            [r0 setFrameInterval:r2];
            [*(r19 + r22) addToRunLoop:[NSRunLoop currentRunLoop] forMode:**_NSDefaultRunLoopMode];
            *(int8_t *)(r19 + r21) = 0x1;
    }
    return;
}

-(void)stopAnimation {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_isAnimating));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
            [*(r0 + r21) invalidate];
            *(r0 + r21) = 0x0;
            *(int8_t *)(r0 + r20) = 0x0;
    }
    return;
}

-(void)calculateDeltaTime {
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nextDeltaTimeZero));
    if (*(int8_t *)(self + r8) == 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_lastDisplayTime));
            d0 = *(r19 + r23);
            if (d0 == 0x0) {
                    r19->_dt = 0x0;
                    *(int8_t *)(r19 + r8) = 0x0;
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
            }
            else {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
                    [*(r19 + r22) timestamp];
                    d0 = d0 - *(r19 + r23);
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dt));
                    asm { fmax       d0, d0, d1 };
                    *(r19 + r8) = d0;
            }
    }
    else {
            r19->_dt = 0x0;
            *(int8_t *)(r19 + r8) = 0x0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
    }
    [*(r19 + r22) timestamp];
    r19->_lastDisplayTime = d0;
    if (*(int8_t *)(int64_t *)&r19->_displayStats != 0x0) {
            gettimeofday((int64_t *)&r19->_lastUpdate, 0x0);
    }
    return;
}

-(void)threadMainLoop {
    r20 = [[NSAutoreleasePool alloc] init];
    [self->_displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:**_NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
    [r20 release];
    return;
}

-(void)dealloc {
    [self->_displayLink release];
    [[&var_20 super] dealloc];
    return;
}

@end
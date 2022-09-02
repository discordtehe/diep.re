@implementation CCDirectorDisplayLink_MCPlatform

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x18) = 0x3f91111111111111;
    }
    return r0;
}

-(void)startAnimation {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(r0 + 0x21) = 0x1;
    if (*(int8_t *)(r0 + 0x20) == 0x0) {
            r21 = 0x1;
            r19 = r0;
            asm { fcvtms     w20, d0 };
            r2 = r19;
            r0 = [CADisplayLink displayLinkWithTarget:r2 selector:@selector(mainLoop:)];
            *(r19 + 0x8) = r0;
            asm { sxtw       x2, w20 };
            [r0 setFrameInterval:r2];
            [*(r19 + 0x8) addToRunLoop:[NSRunLoop currentRunLoop] forMode:**_NSDefaultRunLoopMode];
            *(int8_t *)(r19 + 0x20) = r21;
    }
    return;
}

-(void)stopAnimation {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x20) != 0x0) {
            [*(r0 + 0x8) invalidate];
            *(r0 + 0x8) = 0x0;
            *(int8_t *)(r0 + 0x20) = 0x0;
    }
    return;
}

-(void)calculateDeltaTime {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x21) == 0x0) {
            d0 = *(r19 + 0x10);
            if (d0 == 0x0) {
                    *(r19 + 0x28) = 0x0;
                    *(int8_t *)(r19 + 0x21) = 0x0;
            }
            else {
                    [*(r19 + 0x8) timestamp];
                    d0 = d0 - *(r19 + 0x10);
                    asm { fmax       d0, d0, d1 };
                    *(r19 + 0x28) = d0;
            }
    }
    else {
            *(r19 + 0x28) = 0x0;
            *(int8_t *)(r19 + 0x21) = 0x0;
    }
    [*(r19 + 0x8) timestamp];
    *(r19 + 0x10) = d0;
    return;
}

-(void)threadMainLoop {
    r20 = [[NSAutoreleasePool alloc] init];
    [*(self + 0x8) addToRunLoop:[NSRunLoop currentRunLoop] forMode:**_NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
    [r20 release];
    return;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)mainLoop:(void *)arg2 {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x8) != 0x0) {
            [r0 calculateDeltaTime];
            if (*0x1011e34b0 != 0x0) {
                    (*(**0x1011e34b0 + 0x30))();
            }
            else {
                    sub_1004353e8();
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
    *(r0 + 0x18) = d0;
    if (*(r0 + 0x8) != 0x0) {
            [r0 stopAnimation];
            [r0 startAnimation];
    }
    return;
}

@end
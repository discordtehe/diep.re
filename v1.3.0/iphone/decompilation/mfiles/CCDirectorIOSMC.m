@implementation CCDirectorIOSMC

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            *(int32_t *)0x1011bcc00 = 0x3f800000;
            *(int8_t *)(int64_t *)&r19->_isContentScaleSupported = 0x0;
            r19->_touchDispatcher = objc_msgSend([CCTouchDispatcher alloc], r20);
            r19->_runningThread = [NSThread currentThread];
            *(int8_t *)(int64_t *)&r19->_isRunningOnMessenger = 0x0;
            r19->_t0 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self->_touchDispatcher release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setViewport {
    sub_100434f58(&stack[-36], &var_18);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    [r19 orientSize:r2];
    asm { fcvtzs     w2, d0 };
    asm { fcvtzs     w3, d1 };
    glViewport(0x0, 0x0, r2, r3);
    return;
}

-(void)drawScene {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self calculateDeltaTime];
    r0 = [r19 view];
    r20 = r0;
    [EAGLContext setCurrentContext:[r0 context]];
    if (*(int8_t *)(int64_t *)&r19->_isPaused == 0x0) {
            [r19->_scheduler update:r2];
    }
    glClear(0x4100);
    if (r19->_nextScene != 0x0) {
            [r19 setNextScene];
    }
    sub_1003575dc();
    [r19->_runningScene visit];
    r0 = r19->_notificationNode;
    r1 = @selector(visit);
    r0 = objc_msgSend(r0, r1);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_displayStats));
    if (*(int8_t *)(r19 + r21) != 0x0) {
            r1 = @selector(showStats);
            r0 = objc_msgSend(r19, r1);
    }
    loc_100357620(r0, r1);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalFrames));
    *(r19 + r8) = *(r19 + r8) + 0x1;
    [r20 swapBuffers];
    if (*(int8_t *)(r19 + r21) != 0x0) {
            [r19 calculateMPF];
    }
    return;
}

-(void)runWithScene:(void *)arg2 {
    [self pushScene:arg2];
    [self performSelector:@selector(drawSceneOnThread) onThread:[self runningThread] withObject:0x0 waitUntilDone:0x1];
    return;
}

-(void)setProjection:(int)arg2 {
    r31 = r31 - 0x120;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSizeInPoints));
    d9 = *(int128_t *)(self + r8);
    d10 = *(int128_t *)(0x8 + self + r8);
    [self setViewport];
    if (r19 != 0x2) {
            if (r19 != 0x1) {
                    if (r19 == 0x0) {
                            sub_100357598(0x1701);
                            sub_100357630();
                            asm { fcvt       d0, s0 };
                            asm { fdiv       d1, d12, d0 };
                            asm { fcvt       s1, d1 };
                            asm { fdiv       d0, d11, d0 };
                            asm { fcvt       s3, d0 };
                            sub_10035b8b0(&stack[-176]);
                            sub_100357694(&stack[-176]);
                            sub_100357598(0x1700);
                            sub_100357630();
                    }
            }
            else {
                    [r20 getZEye];
                    sub_100357598(0x1701);
                    sub_100357630();
                    asm { fcvt       s0, d12 };
                    asm { fcvt       d0, s0 };
                    asm { fdiv       d0, d0, d11 };
                    asm { fcvt       s1, d0 };
                    sub_10035b7d4(&stack[-176]);
                    sub_100357694(&stack[-176]);
                    sub_100357598(0x1700);
                    sub_100357630();
                    asm { fcvt       s9, d1 };
                    asm { fcvt       s10, d0 };
                    sub_10035d73c(&stack[-256]);
                    sub_10035d73c(&stack[-272]);
                    sub_10035d73c(&stack[-288]);
                    sub_10035b920(&stack[-240], &stack[-256], &stack[-272], &stack[-288]);
                    sub_100357694(&stack[-240]);
            }
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
            if ([*(r20 + r22) respondsToSelector:r2] != 0x0) {
                    [*(r20 + r22) updateProjection];
            }
    }
    *(int32_t *)(int64_t *)&r20->_projection = r19;
    sub_10031a7a8();
    return;
}

-(void)drawSceneOnThread {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isRunningOnMessenger != 0x0 || [[UIApplication sharedApplication] applicationState] != 0x2) {
            [r19 drawScene];
    }
    return;
}

-(void *)touchDispatcher {
    r0 = self->_touchDispatcher;
    return r0;
}

-(void)setTouchDispatcher:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_touchDispatcher));
    r0 = *(self + r21);
    if (r0 != r2) {
            [r0 release];
            *(r19 + r21) = [r2 retain];
    }
    return;
}

-(double)contentScaleFactor {
    r0 = self;
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)updateContentScaleFactor {
    r19 = self;
    r0 = self->__view;
    asm { fcvt       d0, s0 };
    [r0 setContentScaleFactor:r2];
    *(int8_t *)(int64_t *)&r19->_isContentScaleSupported = 0x1;
    return;
}

-(void)setContentScaleFactor:(double)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    asm { fcvt       d1, s1 };
    if (d1 != d0) {
            s1 = *(int32_t *)0x1011bcc00;
            r8 = 0x1011bc000;
            r19 = r0;
            asm { fcvt       s1, d0 };
            *(int32_t *)(r8 + 0xc00) = s1;
            *(int128_t *)(int64_t *)&r0->_winSizeInPixels = q0;
            if (r0->__view != 0x0) {
                    [r19 updateContentScaleFactor];
            }
            [r19 setProjection:r2];
    }
    return;
}

-(void)reshapeProjection:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->__view;
    if (r0 != 0x0) {
            [r0 bounds];
            [r19 orientSize:r2];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSizeInPoints));
            *(int128_t *)(r19 + r8) = d0;
            *(int128_t *)(0x8 + r19 + r8) = d1;
            asm { fcvt       d2, s2 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSizeInPixels));
            *(int128_t *)(r19 + r8) = d0 * d2;
            *(int128_t *)(0x8 + r19 + r8) = d1 * d2;
            [r19 setProjection:*(int32_t *)(int64_t *)&r19->_projection];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
            if ([*(r19 + r21) respondsToSelector:@selector(directorDidReshapeProjection:)] != 0x0) {
                    [*(r19 + r21) directorDidReshapeProjection:r19];
            }
    }
    return;
}

-(bool)enableRetinaDisplay:(bool)arg2 {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if (arg2 == 0x0) goto loc_10033b558;

loc_10033b540:
    if (*(int32_t *)0x1011bcc00 != 0x4000000000000000) {
            asm { fccmp      s0, s1, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_10033b564;

loc_10033b668:
    r0 = 0x1;
    return r0;

.l9:
    return r0;

loc_10033b564:
    r0 = r19->__view;
    r0 = [r0 respondsToSelector:@selector(setContentScaleFactor:)];
    if (r0 == 0x0) goto .l9;

loc_10033b590:
    [[UIScreen mainScreen] scale];
    if (d0 != 0x3ff0000000000000) goto loc_10033b5cc;

loc_10033b5c4:
    r0 = 0x0;
    return r0;

loc_10033b5cc:
    [[UIScreen mainScreen] scale];
    asm { fcvt       s9, d0 };
    if (s9 > 0x4000000000000000) {
            [[UIScreen mainScreen] bounds];
            if (d2 > d3) {
                    asm { fcsel      d0, d2, d3, gt };
            }
            if (d0 < *0x100bc2710) {
                    asm { fcsel      s9, s10, s9, mi };
            }
    }
    asm { fcvt       d0, s9 };
    if (r20 != 0x0) {
            asm { fcsel      d0, d0, d8, ne };
    }
    [r19 setContentScaleFactor:r2];
    [[CCFileUtils sharedFileUtils] buildSearchResolutionsOrder];
    [r19 createStatsLabel];
    goto loc_10033b668;

loc_10033b558:
    if (*(int32_t *)0x1011bcc00 == 0x3ff0000000000000) goto loc_10033b668;
}

-(struct CGPoint)convertToGL:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_10033b860(&stack[-128]);
    sub_10035b064(&stack[-192], &stack[-128]);
    r8 = 0x10116c000;
    asm { fdiv       s10, s0, s1 };
    [*(r19 + sign_extend_64(*(int32_t *)(r8 + 0x910))) bounds];
    [r19 orientSize:r2];
    asm { fdiv       d0, d2, d0 };
    asm { fcvt       s0, d0 };
    asm { fdiv       d1, d2, d1 };
    asm { fcvt       s1, d1 };
    r0 = sub_10035d844(&var_D0, &var_C0, &stack[-192]);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    return r0;
}

-(struct CGPoint)convertTouchToGL:(void *)arg2 {
    [arg2 locationInView:[arg2 view]];
    r0 = [self convertToGL:r2];
    return r0;
}

-(struct CGPoint)convertToUI:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_10033b860(&stack[-112]);
    asm { fcvt       s0, d9 };
    asm { fcvt       s1, d8 };
    sub_10035d844(&var_70, &var_80, &stack[-112]);
    [r19->__view bounds];
    r0 = [r19 orientSize:r2];
    asm { fcvt       d2, s2 };
    asm { fcvt       d2, s3 };
    return r0;
}

-(void)end {
    [self->_touchDispatcher removeAllDelegates];
    [[&var_20 super] end];
    return;
}

-(void)setView:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0->__view != r2) {
            r20 = r2;
            r19 = r0;
            [[&var_30 super] setView:r2];
            if (r20 != 0x0) {
                    s0 = *(int32_t *)0x1011bcc00;
                    asm { fcvt       d1, s0 };
                    *(int128_t *)(int64_t *)&r19->_winSizeInPixels = q1;
                    if (s0 != 0x3ff0000000000000) {
                            [r19 updateContentScaleFactor];
                    }
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_touchDispatcher));
                    [r20 setTouchDelegate:*(r19 + r21)];
                    [*(r19 + r21) setDispatchEvents:0x1];
            }
    }
    return;
}

-(void)getFPSImageData:(char * *)arg2 length:(unsigned long long *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [CCConfiguration sharedConfiguration];
    r0 = [r0 runningDevice];
    if (r0 == 0x7) {
            *r20 = 0x1011b112b;
            r0 = sub_10032603c();
    }
    else {
            if ((r0 | 0x2) == 0x3) {
                    *r20 = 0x1011ad525;
                    r0 = sub_100326034();
            }
            else {
                    if (r0 != 0x5) {
                            if (r0 == 0x4) {
                                    [[UIScreen mainScreen] scale];
                                    if (d0 == 0x4008000000000000) {
                                            *r20 = 0x1011b4d31;
                                            r0 = sub_100326044();
                                    }
                                    else {
                                            *r20 = 0x1011ad525;
                                            r0 = sub_100326034();
                                    }
                            }
                            else {
                                    *r20 = 0x1011ac330;
                                    r0 = sub_10032602c();
                            }
                    }
                    else {
                            *r20 = 0x1011b4d31;
                            r0 = sub_100326044();
                    }
            }
    }
    *r19 = r0;
    return;
}

-(bool)isRunningOnMessenger {
    r0 = *(int8_t *)(int64_t *)&self->_isRunningOnMessenger;
    return r0;
}

-(void)setIsRunningOnMessenger:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isRunningOnMessenger = arg2;
    return;
}

@end
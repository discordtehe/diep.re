@implementation CCAnimate

+(void *)actionWithAnimation:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithAnimation:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAnimation:(void *)arg2 {
    r31 = r31 - 0x180;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = arg2;
    [arg2 duration];
    [r20 loops];
    asm { ucvtf      s0, x0 };
    asm { fcvt       d0, s0 };
    r0 = [[&var_110 super] initWithDuration:r2];
    var_158 = r0;
    if (r0 != 0x0) {
            var_158->_nextFrame = 0x0;
            [var_158 setAnimation:r20];
            var_158->_origFrame = 0x0;
            var_158->_executedLoops = 0x0;
            r0 = [[NSMutableArray alloc] initWithCapacity:[[r20 frames] count]];
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_splitTimes));
            *(var_158 + r28) = r0;
            [r20 totalDelayUnits];
            var_140 = q0;
            r0 = [r20 frames];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_168 = r1;
            var_160 = r0;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r22 = r0;
                    r21 = *var_140;
                    s10 = 0x0;
                    asm { fdiv       s9, s8, s9 };
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_140 != r21) {
                                            objc_enumerationMutation(var_160);
                                    }
                                    r24 = @selector(delayUnits);
                                    r23 = @selector(numberWithFloat:);
                                    r26 = *(var_148 + r19 * 0x8);
                                    r0 = @class(NSNumber);
                                    asm { fdiv       s0, s0, s8 };
                                    objc_msgSend(r0, r23);
                                    objc_msgSend(r26, r24);
                                    s10 = s10 + s0;
                                    objc_msgSend(*(var_158 + r28), r25);
                                    r19 = r19 + 0x1;
                            } while (r19 < r22);
                            r0 = objc_msgSend(var_160, var_168);
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_158;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAnimation:[[self->_animation copy] autorelease]];
    return r0;
}

-(void)dealloc {
    [self->_splitTimes release];
    [self->_animation release];
    [self->_origFrame release];
    [[&var_20 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] startWithTarget:arg2];
    r20 = r19->_target;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_origFrame));
    [*(r19 + r21) release];
    if ([r19->_animation restoreOriginalFrame] != 0x0) {
            *(r19 + r21) = [[r20 displayFrame] retain];
    }
    r19->_nextFrame = 0x0;
    r19->_executedLoops = 0x0;
    return;
}

-(void)stop {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self->_animation restoreOriginalFrame] != 0x0) {
            [r19->_target setDisplayFrame:r19->_origFrame];
    }
    [[&var_20 super] stop];
    return;
}

-(void *)animation {
    r0 = self->_animation;
    return r0;
}

-(void)update:(double)arg2 {
    r31 = r31 - 0xa0;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_animation));
    d0 = 0x3ff0000000000000;
    if (d8 < d0) {
            d0 = 0x3ff0000000000000;
            r0 = *(r19 + r21);
            r0 = [r0 loops];
            asm { ucvtf      d0, x0 };
            d0 = d0 * d8;
            asm { fcvtzu     x9, d0 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_executedLoops));
            if (*(r19 + r8) < r9) {
                    r19->_nextFrame = 0x0;
                    *(r19 + r8) = *(r19 + r8) + 0x1;
            }
            r1 = @selector(loops);
            asm { fcvt       s0, d0 };
            fmodf(r0, r1);
            asm { fcvt       d8, s0 };
    }
    r0 = *(r19 + r21);
    r0 = [r0 frames];
    var_68 = r0;
    r0 = [r0 count];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_nextFrame));
    r22 = *(r19 + r20);
    if (r22 < r0) {
            r21 = r0;
            var_70 = sign_extend_64(*(int32_t *)ivar_offset(_splitTimes));
            do {
                    [[*(r19 + var_70) objectAtIndex:r22] floatValue];
                    asm { fcvt       d0, s0 };
                    if (d8 < d0) {
                        break;
                    }
                    r0 = [var_68 objectAtIndex:r22];
                    r2 = [r0 spriteFrame];
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_target));
                    [*(r19 + r25) setDisplayFrame:r2];
                    r0 = [r0 userInfo];
                    if (r0 != 0x0) {
                            [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3 userInfo:r4];
                    }
                    r22 = r22 + 0x1;
                    *(r19 + r20) = r22;
            } while (r21 != r22);
    }
    return;
}

-(void)setAnimation:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)reverse {
    r31 = r31 - 0x150;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_animation));
    var_140 = r8;
    stack[-328] = self;
    r0 = *(self + r8);
    r0 = [r0 frames];
    r20 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r0 = [r0 reverseObjectEnumerator];
    r21 = r0;
    var_120 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_120;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_120 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            [[*(var_128 + r19 * 0x8) copy] autorelease];
                            objc_msgSend(r20, r26);
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [*(stack[-328] + var_140) delayPerUnit];
    r20 = [CCAnimation animationWithAnimationFrames:r20 delayPerUnit:[*(stack[-328] + var_140) loops] loops:0x10];
    [r20 setRestoreOriginalFrame:[*(stack[-328] + var_140) restoreOriginalFrame]];
    r0 = [stack[-328] class];
    r0 = [r0 actionWithAnimation:r20];
    if (**___stack_chk_guard != var_70) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)actionWithAnimation:(void *)arg2 restoreOriginalFrame:(bool)arg3 {
    r0 = [arg2 copy];
    r0 = [r0 autorelease];
    r22 = r0;
    [r0 setRestoreOriginalFrame:arg3];
    r0 = [self alloc];
    r0 = [r0 initWithAnimation:r22];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)actionWithDuration:(double)arg2 animation:(void *)arg3 restoreOriginalFrame:(bool)arg4 {
    r21 = self;
    r0 = [arg2 copy];
    r22 = @selector(autorelease);
    r0 = objc_msgSend(r0, r22);
    r23 = r0;
    r2 = arg3;
    [r0 setRestoreOriginalFrame:r2];
    [[arg2 frames] count];
    asm { ucvtf      d0, x0 };
    asm { fdiv       d0, d8, d0 };
    asm { fcvt       s0, d0 };
    [r23 setDelayPerUnit:r2];
    r0 = [r21 alloc];
    r0 = [r0 initWithAnimation:r23];
    r0 = objc_msgSend(r0, r22);
    return r0;
}

-(void *)initWithAnimation:(void *)arg2 restoreOriginalFrame:(bool)arg3 {
    r0 = [arg2 copy];
    r0 = [r0 autorelease];
    [r0 setRestoreOriginalFrame:arg3];
    r0 = [self initWithAnimation:r0];
    return r0;
}

-(void *)initWithDuration:(double)arg2 animation:(void *)arg3 restoreOriginalFrame:(bool)arg4 {
    r21 = self;
    r0 = [arg2 copy];
    r0 = [r0 autorelease];
    r22 = r0;
    r2 = arg3;
    [r0 setRestoreOriginalFrame:r2];
    [[arg2 frames] count];
    asm { ucvtf      d0, x0 };
    asm { fdiv       d0, d8, d0 };
    asm { fcvt       s0, d0 };
    [r22 setDelayPerUnit:r2];
    r0 = [r21 initWithAnimation:r22];
    return r0;
}

@end
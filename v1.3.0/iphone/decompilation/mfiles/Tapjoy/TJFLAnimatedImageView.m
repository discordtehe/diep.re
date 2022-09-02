@implementation TJFLAnimatedImageView

-(void *)initWithImage:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithImage:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithImage:(void *)arg2 highlightedImage:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [[&var_30 super] initWithImage:r21 highlightedImage:arg3];
    r19 = r0;
    [r21 release];
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self->_displayLink invalidate];
    [[&var_20 super] dealloc];
    return;
}

-(void)commonInit {
    r20 = [[[self class] defaultRunLoopMode] retain];
    [self setRunLoopMode:r20];
    [r20 release];
    return;
}

-(void)didMoveToSuperview {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] didMoveToSuperview];
    [r19 updateShouldAnimate];
    if ([r19 shouldAnimate] != 0x0) {
            r1 = @selector(startAnimating);
    }
    else {
            r1 = @selector(stopAnimating);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void)setAnimatedImage:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    r22 = (int64_t *)&r20->_animatedImage;
    if (([*r22 isEqual:r2] & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    [[&var_40 super] setImage:0x0];
                    [[&var_50 super] setHighlighted:0x0];
                    r1 = @selector(invalidateIntrinsicContentSize);
            }
            else {
                    r1 = @selector(stopAnimating);
            }
            objc_msgSend(r20, r1);
            objc_storeStrong(r22, r21);
            r0 = [r19 posterImage];
            r29 = r29;
            r21 = [r0 retain];
            [r20 setCurrentFrame:r21];
            [r21 release];
            [r20 setCurrentFrameIndex:0x0];
            if ([r19 loopCount] != 0x0) {
                    r2 = [r19 loopCount];
            }
            else {
                    r2 = 0xffffffffffffffff;
            }
            [r20 setLoopCountdown:r2];
            [r20 setAccumulator:r2];
            [r20 updateShouldAnimate];
            if ([r20 shouldAnimate] != 0x0) {
                    [r20 startAnimating];
            }
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setNeedsDisplay];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)didMoveToWindow {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] didMoveToWindow];
    [r19 updateShouldAnimate];
    if ([r19 shouldAnimate] != 0x0) {
            r1 = @selector(startAnimating);
    }
    else {
            r1 = @selector(stopAnimating);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void)setAlpha:(double)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setAlpha:arg2];
    [r19 updateShouldAnimate];
    if ([r19 shouldAnimate] != 0x0) {
            r1 = @selector(startAnimating);
    }
    else {
            r1 = @selector(stopAnimating);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void)setHidden:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setHidden:arg2];
    [r19 updateShouldAnimate];
    if ([r19 shouldAnimate] != 0x0) {
            r1 = @selector(startAnimating);
    }
    else {
            r1 = @selector(stopAnimating);
    }
    objc_msgSend(r19, r1);
    return;
}

-(struct CGSize)intrinsicContentSize {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] intrinsicContentSize];
    v8 = v0;
    v9 = v1;
    r0 = [r19 animatedImage];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 release];
    if (r20 != 0x0) {
            r0 = [r19 image];
            r0 = [r0 retain];
            [r0 size];
            v8 = v0;
            v9 = v1;
            r0 = [r19 release];
    }
    return r0;
}

-(void *)image {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self animatedImage];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 currentFrame];
    }
    else {
            r0 = [[&var_20 super] image];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setImage:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            [r20 setAnimatedImage:0x0];
    }
    [[&var_20 super] setImage:r2];
    [r19 release];
    return;
}

-(void)startAnimating {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self animatedImage];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 displayLink];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            [r0 release];
            if (r21 == 0x0) {
                    r21 = [[TJFLWeakProxy weakProxyForObject:r19] retain];
                    r22 = [[CADisplayLink displayLinkWithTarget:r21 selector:@selector(displayDidRefresh:)] retain];
                    [r19 setDisplayLink:r22];
                    [r22 release];
                    r22 = [[r19 displayLink] retain];
                    r23 = [[NSRunLoop mainRunLoop] retain];
                    r0 = [r19 runLoopMode];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r22 addToRunLoop:r23 forMode:r24];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    [r21 release];
            }
            r20 = @selector(displayLink);
            [r19 frameDelayGreatestCommonDivisor];
            asm { fmax       d0, d0, d1 };
            asm { fcvtzs     x21, d0 };
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [r0 setFrameInterval:r21];
            [r0 release];
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [r0 setPaused:0x0];
            [r0 release];
    }
    else {
            [[&var_40 super] startAnimating];
    }
    return;
}

-(void)stopAnimating {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self animatedImage];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 displayLink];
            r0 = [r0 retain];
            [r0 setPaused:0x1];
            [r0 release];
    }
    else {
            [[&var_20 super] stopAnimating];
    }
    return;
}

-(double)frameDelayGreatestCommonDivisor {
    r0 = self;
    r31 = r31 - 0x130;
    var_50 = d9;
    stack[-88] = d8;
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
    d0 = *0x100bf4990;
    asm { fdiv       d8, d1, d0 };
    r0 = [r0 animatedImage];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 delayTimesForIndexes];
    r0 = [r0 retain];
    r21 = [[r0 allValues] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 firstObject];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 floatValue];
    asm { fcvt       d0, s0 };
    d0 = d8 * d0;
    r19 = lrint(r0);
    [r22 release];
    var_108 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            r24 = *var_108;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_108 != r24) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_110 + r25 * 0x8);
                            r0 = [r0 floatValue];
                            asm { fcvt       d0, s0 };
                            d0 = d8 * d0;
                            r0 = lrint(r0);
                            do {
                                    r8 = r19;
                                    r19 = r0;
                                    r0 = r8;
                            } while (r19 < r8);
                            if (!CPU_FLAGS & E) {
                                    r9 = r19;
                                    do {
                                            r19 = r8;
                                            asm { udiv       x8, x9, x19 };
                                            r8 = r9 - r8 * r19;
                                            r9 = r19;
                                    } while (r8 != 0x0);
                            }
                            r25 = r25 + 0x1;
                    } while (r25 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r0 = [r21 release];
    if (**___stack_chk_guard == var_58) {
            asm { ucvtf      d0, x19 };
            asm { fdiv       d0, d0, d8 };
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setRunLoopMode:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r21 = _cmd;
    r20 = self;
    r19 = [r22 retain];
    r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 containsObject:r2];
    [r0 release];
    if ((r24 & 0x1) != 0x0) {
            objc_storeStrong((int64_t *)&r20->_runLoopMode, r22);
    }
    else {
            r0 = [NSString stringWithUTF8String:"/Users/mtang/Workspace/plugins/tapjoyconnectlibrary/source/TJExtensions/FLAnimatedImage/FLAnimatedImage/FLAnimatedImageView.m"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r22 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r22;
                    }
                    else {
                            r0 = @"<Unknown File>";
                    }
            }
            r23 = [r0 retain];
            [r22 release];
            r0 = [NSAssertionHandler currentHandler];
            r0 = [r0 retain];
            [r0 handleFailureInMethod:r21 object:r20 file:r23 lineNumber:0x136 description:@"Invalid run loop mode: %@"];
            [r23 release];
            [r0 release];
            r0 = [r20 class];
            r0 = [r0 defaultRunLoopMode];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_runLoopMode));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isAnimating {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self animatedImage];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 displayLink];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [r19 displayLink];
                    r0 = [r0 retain];
                    r19 = [r0 isPaused] ^ 0x1;
                    [r0 release];
            }
            else {
                    r19 = 0x0;
            }
            [r20 release];
    }
    else {
            r0 = [[&var_30 super] isAnimating];
            r19 = r0;
    }
    r0 = r19;
    return r0;
}

-(void)setHighlighted:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self animatedImage];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [[&var_30 super] setHighlighted:r19];
    }
    return;
}

-(void)updateShouldAnimate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self window];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 superview];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0 && ([r19 isHidden] & 0x1) == 0x0) {
                    [r19 alpha];
                    if (d0 > 0x0) {
                            if (CPU_FLAGS & G) {
                                    r22 = 0x1;
                            }
                    }
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    r8 = &@selector(platformType);
    r20 = [objc_msgSend(r19, *(r8 + 0x4c0)) retain];
    if (r20 != 0x0) {
            r8 = &@selector(platformType);
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    [r19 setShouldAnimate:r22 & r8];
    [r20 release];
    return;
}

-(void)displayDidRefresh:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r29 = &saved_fp;
    r20 = self;
    r21 = [arg2 retain];
    if (([r20 shouldAnimate] & 0x1) == 0x0) goto loc_100910664;

loc_100910298:
    r0 = [r20 animatedImage];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [[r0 delayTimesForIndexes] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:[r20 currentFrameIndex]] retain];
    r0 = [r22 objectForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [r24 release];
    [r22 release];
    [r19 release];
    if (r25 == 0x0) goto loc_1009106b4;

loc_100910348:
    [r25 floatValue];
    r19 = [[r20 animatedImage] retain];
    r0 = [r19 imageLazilyCachedAtIndex:[r20 currentFrameIndex]];
    r29 = r29;
    r22 = [r0 retain];
    [r19 release];
    var_108 = r25;
    stack[-272] = r21;
    var_110 = r22;
    if (r22 == 0x0) goto loc_1009106d8;

loc_1009103b4:
    asm { fcvt       d9, s8 };
    [TJFLAnimatedImage logStringFromBlock:&var_B0 withLevel:0x5];
    [r20 setCurrentFrame:r22];
    if ([r20 needsDisplayWhenImageBecomesAvailable] != 0x0) {
            r0 = [r20 layer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setNeedsDisplay];
            [r0 release];
            [r20 setNeedsDisplayWhenImageBecomesAvailable:0x0];
    }
    d0 = *0x100b9b490;
    [r21 duration];
    [r21 frameInterval];
    asm { scvtf      d0, x0 };
    [r20 accumulator];
    d0 = d0 + d8 * d0;
    [r20 setAccumulator:r2];
    [r20 accumulator];
    if (d0 < d9) goto loc_100910738;

loc_1009104dc:
    r28 = @selector(animatedImage);
    goto loc_10091051c;

loc_10091051c:
    [r20 accumulator];
    d0 = d0 - d9;
    [r20 setAccumulator:r2];
    [r20 setCurrentFrameIndex:[r20 currentFrameIndex] + 0x1];
    r21 = [r20 currentFrameIndex];
    r24 = r28;
    r0 = objc_msgSend(r20, r28);
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 frameCount];
    [r0 release];
    if (r21 < r28) goto loc_100910638;

loc_10091059c:
    [r20 loopCountdown] - 0x1;
    [r20 setLoopCountdown:r2];
    r21 = @selector(loopCompletionBlock);
    r0 = objc_msgSend(r20, r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_msgSend(r20, r21);
            r29 = r29;
            r19 = [r0 retain];
            (*(r19 + 0x10))(r19, [r20 loopCountdown]);
            [r19 release];
    }
    if ([r20 loopCountdown] == 0x0) goto loc_100910728;

loc_100910628:
    [r20 setCurrentFrameIndex:0x0];
    goto loc_100910638;

loc_100910638:
    [r20 setNeedsDisplayWhenImageBecomesAvailable:0x1];
    [r20 accumulator];
    r28 = r24;
    if (d0 >= d9) goto loc_10091051c;

loc_100910738:
    [var_110 release];
    r25 = var_108;
    r21 = stack[-272];
    goto loc_100910744;

loc_100910744:
    [r25 release];
    goto loc_10091074c;

loc_10091074c:
    [r21 release];
    return;

loc_100910728:
    [r20 stopAnimating];
    goto loc_100910738;

loc_1009106d8:
    [TJFLAnimatedImage logStringFromBlock:&var_D8 withLevel:0x4];
    goto loc_100910738;

loc_1009106b4:
    [r20 setCurrentFrameIndex:[r20 currentFrameIndex] + 0x1];
    goto loc_100910744;

loc_100910664:
    [TJFLAnimatedImage logStringFromBlock:r29 - 0x88 withLevel:0x2];
    goto loc_10091074c;
}

+(void *)defaultRunLoopMode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 activeProcessorCount];
    r8 = *_NSRunLoopCommonModes;
    if (r0 > 0x1) {
            if (!CPU_FLAGS & A) {
                    r8 = *_NSDefaultRunLoopMode;
            }
            else {
                    r8 = *_NSRunLoopCommonModes;
                    r8 = r8;
            }
    }
    r20 = objc_retainAutoreleaseReturnValue(*r8);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)displayLayer:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self image];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [arg2 setContents:[r0 CGImage]];
    [r22 release];
    [r0 release];
    return;
}

-(void *)runLoopMode {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_runLoopMode)), 0x0);
    return r0;
}

-(void *)animatedImage {
    r0 = self->_animatedImage;
    return r0;
}

-(void *)loopCompletionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_loopCompletionBlock)), 0x0);
    return r0;
}

-(void *)currentFrame {
    r0 = self->_currentFrame;
    return r0;
}

-(void)setLoopCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setCurrentFrame:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentFrame, arg2);
    return;
}

-(unsigned long long)currentFrameIndex {
    r0 = self->_currentFrameIndex;
    return r0;
}

-(void)setCurrentFrameIndex:(unsigned long long)arg2 {
    self->_currentFrameIndex = arg2;
    return;
}

-(unsigned long long)loopCountdown {
    r0 = self->_loopCountdown;
    return r0;
}

-(void)setLoopCountdown:(unsigned long long)arg2 {
    self->_loopCountdown = arg2;
    return;
}

-(double)accumulator {
    r0 = self;
    return r0;
}

-(void)setAccumulator:(double)arg2 {
    self->_accumulator = d0;
    return;
}

-(void *)displayLink {
    r0 = self->_displayLink;
    return r0;
}

-(void)setDisplayLink:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_displayLink, arg2);
    return;
}

-(bool)shouldAnimate {
    r0 = *(int8_t *)(int64_t *)&self->_shouldAnimate;
    return r0;
}

-(bool)needsDisplayWhenImageBecomesAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_needsDisplayWhenImageBecomesAvailable;
    return r0;
}

-(void)setShouldAnimate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldAnimate = arg2;
    return;
}

-(void)setNeedsDisplayWhenImageBecomesAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_needsDisplayWhenImageBecomesAvailable = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_displayLink, 0x0);
    objc_storeStrong((int64_t *)&self->_currentFrame, 0x0);
    objc_storeStrong((int64_t *)&self->_loopCompletionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_animatedImage, 0x0);
    objc_storeStrong((int64_t *)&self->_runLoopMode, 0x0);
    return;
}

@end
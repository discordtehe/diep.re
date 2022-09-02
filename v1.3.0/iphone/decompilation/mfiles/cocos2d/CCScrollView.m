@implementation CCScrollView

+(void *)viewWithViewSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithViewSize:r2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)viewWithViewSize:(struct CGSize)arg2 container:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithViewSize:r2 container:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithViewSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithViewSize:0x0 container:r3];
    return r0;
}

-(void *)init {
    r0 = [self initWithViewSize:0x0 container:r3];
    return r0;
}

-(void *)initWithViewSize:(struct CGSize)arg2 container:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    v8 = v1;
    v9 = v0;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setContainer_:r20];
            [r19 setViewSize:r20];
            if ([r19 container_] == 0x0) {
                    [r19 setContainer_:[CCLayer node]];
            }
            [r19 setTouchEnabled:0x1];
            r19->touches_ = [NSMutableArray new];
            r19->delegate_ = 0x0;
            *(int8_t *)(int64_t *)&r19->bounces_ = 0x1;
            *(int8_t *)(int64_t *)&r19->clipsToBounds_ = 0x1;
            *(int32_t *)(int64_t *)&r19->direction_ = 0x2;
            [[r19 container_] setPosition:0x1];
            r19->touchLength_ = 0x0;
            [r19 addChild:[r19 container_]];
            r19->maxScale_ = 0x3ff0000000000000;
            r19->minScale_ = 0x3ff0000000000000;
            *(int8_t *)(int64_t *)&r19->_abortDeacceleration = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->clipsToBounds_ != 0x0) {
            [[CCDirector sharedDirector] winSize];
            [[CCDirector sharedDirector] contentScaleFactor];
            asm { fcvtzs     w8, d8 };
            asm { scvtf      s1, w8 };
            asm { fcvt       s0, d0 };
            asm { fcvtzs     w2, s1 };
            asm { fcvtzs     w8, d9 };
            asm { scvtf      s1, w8 };
            asm { fcvtzs     w3, s0 };
            glScissor(0x0, 0x0, r2, r3);
            glDisable(0xc11);
    }
    [r19 setContainer_:0x0];
    [r19 setContainer:0x0];
    [r19->touches_ release];
    [[&var_40 super] dealloc];
    return;
}

-(void)registerWithTouchDispatcher {
    [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self priority:0x0 swallowsTouches:0x0];
    return;
}

-(bool)isNodeVisible:(void *)arg2 {
    r19 = arg2;
    [self contentOffset];
    [self viewSize];
    [self zoomScale];
    asm { fcvt       s0, d0 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d8, d1, d0 };
    asm { fdiv       d9, d1, d0 };
    asm { fdiv       d10, d10, d0 };
    r1 = @selector(boundingBox);
    asm { fdiv       d11, d11, d0 };
    r0 = objc_msgSend(r19, r1);
    r0 = CGRectIntersectsRect(r0, r1);
    return r0;
}

-(void)pause:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [[self container_] pauseSchedulerAndActions];
    if ([[r20 container_] children] != 0x0 && **([[r20 container_] children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r24 = *(*(objc_msgSend([r20 container_], r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = *(*(objc_msgSend([r20 container_], r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = r25 + **(objc_msgSend([r20 container_], r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r25) {
                    do {
                            r21 = @selector(respondsToSelector:);
                            r23 = *r24;
                            if (objc_msgSend(r23, r21, @selector(pause:)) != 0x0) {
                                    [r23 performSelector:@selector(pause:) withObject:r3];
                            }
                            r24 = r24 + 0x8;
                    } while (r24 < r25);
            }
    }
    return;
}

-(void)setIsTouchEnabled:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setTouchEnabled:r2];
    if ((arg2 & 0x1) == 0x0) {
            *(int8_t *)(int64_t *)&r19->isDragging_ = 0x0;
            *(int8_t *)(int64_t *)&r19->touchMoved_ = 0x0;
            [r19->touches_ removeAllObjects];
    }
    return;
}

-(void)resume:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = arg2;
    r19 = self;
    if ([[self container_] children] != 0x0 && **([[r19 container_] children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r26 = *(*(objc_msgSend([r19 container_], r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r27 = *(*(objc_msgSend([r19 container_], r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend([r19 container_], r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r26 <= r27) {
                    do {
                            r23 = @selector(respondsToSelector:);
                            r25 = *r26;
                            if (objc_msgSend(r25, r23, @selector(resume:)) != 0x0) {
                                    [r25 performSelector:@selector(resume:) withObject:r3];
                            }
                            r26 = r26 + 0x8;
                    } while (r26 < r27);
            }
    }
    [[r19 container_] resumeSchedulerAndActions];
    return;
}

-(void)setContentOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setContentOffset:0x0 animated:r3];
    return;
}

-(struct CGPoint)contentOffset {
    r0 = [self container_];
    r0 = [r0 position];
    return r0;
}

-(void)setContentOffset:(struct CGPoint)arg2 animatedInDuration:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r20 = [CCMoveTo actionWithDuration:r2 position:r3];
    [CCCallFunc actionWithTarget:self selector:@selector(stoppedAnimatedScroll:)];
    [[self container_] runAction:[CCSequence actions:r20]];
    [self schedule:@selector(performedAnimatedScroll:)];
    return;
}

-(void)setContentOffset:(struct CGPoint)arg2 animated:(bool)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    if (r2 != 0x0) {
            [r19 setContentOffset:r2 animatedInDuration:r3];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->bounces_ == 0x0) {
                    [r19 minContainerOffset];
                    [r19 maxContainerOffset];
                    if (d0 < d9) {
                            asm { fcsel      d0, d0, d9, mi };
                    }
                    if (d10 > d0) {
                            asm { fcsel      d9, d10, d0, gt };
                    }
                    if (d1 < d8) {
                            asm { fcsel      d0, d1, d8, mi };
                    }
                    if (d11 > d0) {
                            asm { fcsel      d8, d11, d0, gt };
                    }
            }
            [[r19 container_] setPosition:r2];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(delegate_));
            if ([*(r19 + r21) respondsToSelector:@selector(scrollViewDidScroll:)] != 0x0) {
                    [*(r19 + r21) scrollViewDidScroll:r19];
            }
    }
    return;
}

-(void)setZoomScale:(double)arg2 {
    r2 = arg2;
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    [[self container_] scale];
    asm { fcvt       d0, s0 };
    if (d0 != d8) {
            if (r19->touchLength_ == 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(viewSize_));
                    d2 = *(int128_t *)(0x8 + r19 + r8);
                    [r19 convertToWorldSpace:r2];
                    v9 = v0;
                    v10 = v1;
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(touchPoint_));
                    d9 = *(int128_t *)(r19 + r8);
                    d10 = *(int128_t *)(0x8 + r19 + r8);
            }
            [[r19 container_] convertToNodeSpace:r2];
            v11 = v9;
            v12 = v10;
            d0 = r19->minScale_;
            d1 = r19->maxScale_;
            if (d1 < d8) {
                    asm { fcsel      d2, d1, d8, mi };
            }
            if (d0 > d2) {
                    asm { fcsel      d3, d0, d8, gt };
            }
            if (d1 < d8) {
                    asm { fccmp      d0, d2, #0x0, mi };
            }
            if (CPU_FLAGS & G) {
                    asm { fcsel      d0, d3, d1, gt };
            }
            r21 = @selector(convertToWorldSpace:);
            r20 = @selector(container_);
            asm { fcvt       s8, d0 };
            [objc_msgSend(r19, r20) setScale:r2];
            objc_msgSend(objc_msgSend(r19, r20), r21);
            d8 = d9 - d0;
            d9 = d10 - d1;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(delegate_));
            if ([*(r19 + r22) respondsToSelector:@selector(scrollViewDidZoom:)] != 0x0) {
                    [*(r19 + r22) scrollViewDidZoom:r19];
            }
            [[r19 container_] position];
            [r19 setContentOffset:r2];
    }
    return;
}

-(void)setZoomScale:(float)arg2 animated:(bool)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 != 0x0) {
            [r0 setZoomScale:r2 animatedInDuration:r3];
    }
    else {
            asm { fcvt       d0, s0 };
            [r0 setZoomScale:r2];
    }
    return;
}

-(double)zoomScale {
    r0 = [self container_];
    r0 = [r0 scale];
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)setZoomScale:(float)arg2 animatedInDuration:(double)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    if (d1 > 0x0) {
            v9 = v1;
            [[r19 container_] scale];
            if (s0 != s8) {
                    [[r19 container_] scale];
                    [CCActionTween actionWithDuration:@"zoomScale" key:r3 from:r4 to:r5];
                    [r19 runAction:r2];
            }
    }
    else {
            asm { fcvt       d0, s8 };
            [r19 setZoomScale:r2];
    }
    return;
}

-(void *)container {
    r0 = [self container_];
    return r0;
}

-(void)setViewSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->viewSize_ = d0;
    *((int64_t *)&self->viewSize_ + 0x8) = d1;
    [self maxContainerOffset];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(maxInset_));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    d0 = d0 + *(int128_t *)(int64_t *)&self->viewSize_ * *0x100b9b050;
    d1 = d1 + *(int128_t *)((int64_t *)&self->viewSize_ + 0x8) * *0x100b9b050;
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    [self minContainerOffset];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(minInset_));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    d2 = *(int128_t *)(int64_t *)&self->viewSize_;
    d3 = *(int128_t *)((int64_t *)&self->viewSize_ + 0x8);
    *(self + r8) = d0 - d2 * *0x100b9b050;
    *(0x8 + self + r8) = d1 - d3 * *0x100b9b050;
    [[&var_40 super] setContentSize:r2];
    return;
}

-(struct CGPoint)maxContainerOffset {
    r0 = self;
    return r0;
}

-(void)setContainer:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [self removeAllChildrenWithCleanup:0x1];
    [r19 setContainer_:r20];
    if (r20 != 0x0) {
            [r20 setIgnoreAnchorPointForPosition:0x0];
            [r20 setAnchorPoint:0x0];
            [r19 addChild:r20];
            [r19 setViewSize:r20];
    }
    return;
}

-(void)relocateContainer:(bool)arg2 {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [self minContainerOffset];
    [r20 maxContainerOffset];
    [[r20 container_] position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(direction_));
    r8 = *(int32_t *)(r20 + r8);
    r9 = r8 | 0x2;
    if (d0 < d10) {
            asm { fcsel      d0, d0, d10, mi };
    }
    if (d0 > d8) {
            asm { fcsel      d0, d0, d8, gt };
    }
    if (r9 == 0x2) {
            asm { fcsel      d0, d0, d2, eq };
    }
    r8 = r8 - 0x1;
    if (d1 < d11) {
            asm { fcsel      d1, d1, d11, mi };
    }
    if (d1 > d9) {
            asm { fcsel      d1, d1, d9, gt };
    }
    if (r8 < 0x2) {
            asm { fcsel      d1, d1, d3, lo };
    }
    if (d1 == d3) {
            asm { fccmp      d0, d2, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r20 setContentOffset:r19 animated:r3];
    }
    return;
}

-(struct CGPoint)minContainerOffset {
    [[self container_] contentSize];
    [objc_msgSend(r19, r20) scaleX];
    asm { fcvt       d0, s0 };
    objc_msgSend(objc_msgSend(r19, r20), r21);
    r0 = objc_msgSend(r19, r20);
    r0 = [r0 scaleY];
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)stoppedAnimatedScroll:(void *)arg2 {
    [self unschedule:@selector(performedAnimatedScroll:)];
    return;
}

-(void)performedAnimatedScroll:(double)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->isDragging_ == 0x0) goto loc_1002f6260;

loc_1002f6248:
    r1 = @selector(unschedule:);
    r0 = r19;
    goto loc_1002f6294;

loc_1002f6294:
    objc_msgSend(r0, r1);
    return;

.l1:
    return;

loc_1002f6260:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(delegate_));
    if ([*(r19 + r21) respondsToSelector:@selector(scrollViewDidScroll:)] == 0x0) goto .l1;

loc_1002f6288:
    r0 = *(r19 + r21);
    r1 = @selector(scrollViewDidScroll:);
    goto loc_1002f6294;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setViewSize:r2];
    return;
}

-(void)beforeDraw {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->clipsToBounds_ != 0x0) {
            [[r0 parent] position];
            [r0 convertToWorldSpace:r2];
            r0 = glEnable(0xc11);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(viewSize_));
            asm { fcvt       d2, s2 };
            asm { fcvtzs     w0, d3 };
            asm { fcvtzs     w1, d4 };
            asm { fcvtzs     w2, d0 };
            asm { fcvtzs     w3, d1 };
            glScissor(r0, r1, r2, r3);
    }
    return;
}

-(void)deaccelerateScrolling:(double)arg2 {
    r2 = arg2;
    r31 = r31 - 0x90;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
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
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->isDragging_ != 0x0) {
            [r19 unschedule:@selector(deaccelerateScrolling:)];
    }
    else {
            [[r19 container_] position];
            r23 = (int64_t *)&r19->scrollDistance_;
            d8 = d0 + *(int128_t *)r23;
            d9 = d1 + *(int128_t *)(r23 + 0x8);
            r0 = [r19 container_];
            v0 = v8;
            v1 = v9;
            [r0 setPosition:r2];
            if (*(int8_t *)(int64_t *)&r19->bounces_ != 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(maxInset_));
                    d8 = *(int128_t *)(r19 + r8);
                    d9 = *(int128_t *)(0x8 + r19 + r8);
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(minInset_));
                    d10 = *(int128_t *)(r19 + r8);
                    d11 = *(int128_t *)(0x8 + r19 + r8);
            }
            else {
                    [r19 maxContainerOffset];
                    v9 = v1;
                    [r19 minContainerOffset];
            }
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_abortDeacceleration));
            var_78 = d8;
            if (*(int8_t *)(r19 + r24) != 0x0) {
                    [[r19 container] position];
                    v12 = v0;
                    [[r19 container] position];
                    v13 = v1;
            }
            else {
                    [[r19 container_] position];
                    if (d0 < d8) {
                            [[r19 container_] position];
                    }
                    if (d8 > d10) {
                            asm { fcsel      d12, d8, d10, gt };
                    }
                    [[r19 container_] position];
                    if (d1 < d9) {
                            [[r19 container_] position];
                    }
                    if (d1 > d11) {
                            asm { fcsel      d13, d1, d11, gt };
                    }
            }
            d14 = *(int128_t *)r23;
            d15 = *(int128_t *)(r23 + 0x8);
            [[r19 container_] position];
            [[r19 container_] position];
            *(int128_t *)r23 = ((d14 - d12) + d0) * *0x100b9af28;
            *(int128_t *)(r23 + 0x8) = ((d15 - d13) + d1) * *0x100b9af28;
            [r19 setContentOffset:r2];
            asm { fcvt       s0, d0 };
            s1 = Abs(s0);
            if (s1 >= 0x3ff0000000000000) {
                    if (d12 == d10 || d12 == var_78 || d13 == d11 || d13 == d9) {
                            [r19 unschedule:@selector(deaccelerateScrolling:)];
                            if (*(int8_t *)(r19 + r24) != 0x0) {
                                    *(int8_t *)(r19 + r24) = 0x0;
                            }
                            else {
                                    [r19 relocateContainer:0x1];
                            }
                    }
            }
            else {
                    if (d12 != d10 && d13 != d11 && d13 != d9) {
                            if (d12 != var_78) {
                                    s0 = 0x3ff0000000000000;
                                    asm { fcvt       s1, d1 };
                                    if (Abs(s1) <= s0) {
                                            [r19 unschedule:@selector(deaccelerateScrolling:)];
                                            if (*(int8_t *)(r19 + r24) != 0x0) {
                                                    *(int8_t *)(r19 + r24) = 0x0;
                                            }
                                            else {
                                                    [r19 relocateContainer:0x1];
                                            }
                                    }
                            }
                            else {
                                    [r19 unschedule:@selector(deaccelerateScrolling:)];
                                    if (*(int8_t *)(r19 + r24) != 0x0) {
                                            *(int8_t *)(r19 + r24) = 0x0;
                                    }
                                    else {
                                            [r19 relocateContainer:0x1];
                                    }
                            }
                    }
                    else {
                            [r19 unschedule:@selector(deaccelerateScrolling:)];
                            if (*(int8_t *)(r19 + r24) != 0x0) {
                                    *(int8_t *)(r19 + r24) = 0x0;
                            }
                            else {
                                    [r19 relocateContainer:0x1];
                            }
                    }
            }
    }
    return;
}

-(void)afterDraw {
    if (*(int8_t *)(int64_t *)&self->clipsToBounds_ != 0x0) {
            glDisable(0xc11);
    }
    return;
}

-(void)visit {
    r0 = self;
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    if (*(int8_t *)(int64_t *)&r0->_visible != 0x0) {
            r19 = r0;
            sub_1003575dc();
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_grid));
            r0 = *(r19 + r23);
            if (r0 != 0x0 && [r0 active] != 0x0) {
                    [*(r19 + r23) beforeDraw];
                    [r19 transformAncestors];
            }
            [r19 transform];
            [r19 beforeDraw];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
            r8 = *(r19 + r8);
            if (r8 != 0x0) {
                    r25 = r8->data;
                    r26 = 0x0;
                    if (*r25 != 0x0) {
                            r26 = 0x0;
                            do {
                                    r20 = @selector(zOrder);
                                    r22 = *(*(r25 + 0x10) + r26 * 0x8);
                                    if ((objc_msgSend(r22, r20) & 0xffffffff80000000) == 0x0) {
                                        break;
                                    }
                                    [r22 visit];
                                    r26 = r26 + 0x1;
                            } while (r26 < *r25);
                    }
                    [r19 draw];
                    if (r26 < *r25) {
                            do {
                                    [*(*(r25 + 0x10) + r26 * 0x8) visit];
                                    r26 = r26 + 0x1;
                            } while (r26 < *r25);
                    }
            }
            else {
                    [r19 draw];
            }
            r1 = @selector(afterDraw);
            objc_msgSend(r19, r1);
            r0 = *(r19 + r23);
            if (r0 != 0x0) {
                    r1 = @selector(active);
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r0 = *(r19 + r23);
                            r1 = @selector(afterDraw:);
                            r0 = objc_msgSend(r0, r1);
                    }
            }
            loc_100357620(r0, r1);
    }
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r22 = arg2;
    r19 = self;
    if ([self visible] != 0x0) {
            [r19 position];
            v8 = v0;
            [r19 position];
            v9 = v1;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(touches_));
            if ([*(r19 + r25) count] <= 0x2) {
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(touchMoved_));
                    if (*(int8_t *)(r19 + r26) == 0x0) {
                            r24 = [r19 container_];
                            [[r19 container_] convertTouchToNodeSpace:r22];
                            r1 = @selector(convertToWorldSpace:);
                            r0 = objc_msgSend(r24, r1);
                            v0 = v8;
                            v1 = v9;
                            if (CGRectContainsPoint(r0, r1) != 0x0) {
                                    if (([*(r19 + r25) containsObject:r2] & 0x1) == 0x0) {
                                            [*(r19 + r25) addObject:r2];
                                    }
                                    if ([*(r19 + r25) count] == 0x1) {
                                            [r19 convertTouchToNodeSpace:r22];
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(touchPoint_));
                                            *(int128_t *)(r19 + r8) = d0;
                                            *(int128_t *)(0x8 + r19 + r8) = d1;
                                            *(int8_t *)(r19 + r26) = 0x0;
                                            r22 = 0x1;
                                            *(int8_t *)(int64_t *)&r19->isDragging_ = r22;
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(scrollDistance_));
                                            *(int128_t *)(r19 + r8) = 0x0;
                                            *(int128_t *)(0x8 + r19 + r8) = 0x0;
                                            r19->touchLength_ = 0x0;
                                    }
                                    else {
                                            if ([*(r19 + r25) count] == 0x2) {
                                                    [r19 convertTouchToNodeSpace:[*(r19 + r25) objectAtIndex:0x0]];
                                                    r22 = 0x1;
                                                    [r19 convertTouchToNodeSpace:[*(r19 + r25) objectAtIndex:0x1]];
                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(touchPoint_));
                                                    *(int128_t *)(r19 + r8) = (d8 + d0) * 0x3fe0000000000000;
                                                    *(int128_t *)(0x8 + r19 + r8) = (d9 + d1) * 0x3fe0000000000000;
                                                    [[r19 container_] convertTouchToNodeSpace:[*(r19 + r25) objectAtIndex:0x0]];
                                                    [[r19 container_] convertTouchToNodeSpace:[*(r19 + r25) objectAtIndex:0x1]];
                                                    sub_1003115c4();
                                                    r19->touchLength_ = (d8 + d0) * 0x3fe0000000000000;
                                                    *(int8_t *)(int64_t *)&r19->isDragging_ = 0x0;
                                            }
                                            else {
                                                    r22 = 0x1;
                                            }
                                    }
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = 0x0;
    }
    r0 = r22;
    return r0;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self visible] != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(touches_));
            [*(r19 + r21) removeObject:r20];
            if ([*(r19 + r21) count] == 0x0) {
                    *(int8_t *)(int64_t *)&r19->isDragging_ = 0x0;
                    *(int8_t *)(int64_t *)&r19->touchMoved_ = 0x0;
            }
    }
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self visible] != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(touches_));
            if (([*(r19 + r22) containsObject:r2] & 0x1) != 0x0) {
                    if ([*(r19 + r22) count] == 0x1 && *(int8_t *)(int64_t *)&r19->touchMoved_ != 0x0) {
                            [r19 schedule:@selector(deaccelerateScrolling:)];
                    }
                    [*(r19 + r22) removeObject:r20];
            }
            if ([*(r19 + r22) count] == 0x0) {
                    *(int8_t *)(int64_t *)&r19->isDragging_ = 0x0;
                    *(int8_t *)(int64_t *)&r19->touchMoved_ = 0x0;
            }
    }
    return;
}

-(void)containerSizeChanged {
    [self setViewSize:r2];
    return;
}

-(struct CGPoint)minInset {
    r0 = self;
    return r0;
}

-(struct CGSize)clippingSize {
    r0 = self;
    return r0;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    var_70 = d15;
    stack[-120] = d14;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
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
    if ([self visible] != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(touches_));
            r2 = r20;
            if ([*(r19 + r24) containsObject:r2] != 0x0) {
                    if ([*(r19 + r24) count] == 0x1 && *(int8_t *)(int64_t *)&r19->isDragging_ != 0x0) {
                            *(int8_t *)(int64_t *)&r19->touchMoved_ = 0x1;
                            [r19 position];
                            [r19 position];
                            [r19 convertTouchToNodeSpace:[*(r19 + r24) objectAtIndex:0x0]];
                            v8 = v0;
                            v9 = v1;
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(touchPoint_));
                            d14 = *(int128_t *)(r19 + r8);
                            d15 = *(int128_t *)(0x8 + r19 + r8);
                            *(int128_t *)(r19 + r8) = d0;
                            *(int128_t *)(0x8 + r19 + r8) = d1;
                            r1 = @selector(convertToWorldSpace:);
                            if (CGRectContainsPoint(objc_msgSend(r19, r1), r1) != 0x0) {
                                    d0 = d8 - d14;
                                    d1 = d9 - d15;
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(direction_));
                                    r8 = *(int32_t *)(r19 + r8);
                                    if (r8 != 0x1) {
                                            asm { fcsel      d3, d0, d2, ne };
                                    }
                                    if (r8 == 0x0) {
                                            asm { fcsel      d10, d0, d3, eq };
                                    }
                                    if (CPU_FLAGS & E) {
                                            asm { fcsel      d11, d2, d1, eq };
                                    }
                                    [[r19 container_] position];
                                    d8 = d10 + d0;
                                    d9 = d11 + d1;
                                    r0 = [r19 container_];
                                    v0 = v8;
                                    v1 = v9;
                                    [r0 setPosition:r2];
                                    if (*(int8_t *)(int64_t *)&r19->_abortDeacceleration != 0x0) {
                                            [[r19 container] position];
                                            v8 = v0;
                                            [[r19 container] position];
                                            v9 = v1;
                                    }
                                    else {
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(maxInset_));
                                            d8 = *(int128_t *)(r19 + r8);
                                            d9 = *(int128_t *)(0x8 + r19 + r8);
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(minInset_));
                                            d13 = *(int128_t *)(r19 + r8);
                                            d12 = *(int128_t *)(0x8 + r19 + r8);
                                            [[r19 container_] position];
                                            if (d0 < d8) {
                                                    [[r19 container_] position];
                                                    v8 = v0;
                                            }
                                            if (d8 > d13) {
                                                    asm { fcsel      d8, d8, d13, gt };
                                            }
                                            [[r19 container_] position];
                                            if (d1 < d9) {
                                                    [[r19 container_] position];
                                                    v9 = v1;
                                            }
                                            if (d9 > d12) {
                                                    asm { fcsel      d9, d9, d12, gt };
                                            }
                                    }
                                    [[r19 container_] position];
                                    [[r19 container_] position];
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(scrollDistance_));
                                    *(int128_t *)(r19 + r8) = (d10 - d8) + d0;
                                    *(int128_t *)(0x8 + r19 + r8) = (d11 - d9) + d1;
                                    [r19 setContentOffset:r2];
                            }
                    }
                    else {
                            if ([*(r19 + r24) count] == 0x2 && *(int8_t *)(int64_t *)&r19->isDragging_ == 0x0) {
                                    [[r19 container_] convertTouchToNodeSpace:[*(r19 + r24) objectAtIndex:0x0]];
                                    [[r19 container_] convertTouchToNodeSpace:[*(r19 + r24) objectAtIndex:0x1]];
                                    sub_1003115c4();
                                    [r19 zoomScale];
                                    asm { fdiv       d0, d0, d1 };
                                    [r19 setZoomScale:r2];
                            }
                    }
            }
    }
    return;
}

-(void)abortDeacceleration {
    *(int8_t *)(int64_t *)&self->_abortDeacceleration = 0x1;
    return;
}

-(struct CGRect)activeArea {
    [[self parent] position];
    r0 = [self convertToWorldSpace:r2];
    return r0;
}

-(int)direction {
    r0 = *(int32_t *)(int64_t *)&self->direction_;
    return r0;
}

-(void)setDirection:(int)arg2 {
    *(int32_t *)(int64_t *)&self->direction_ = arg2;
    return;
}

-(bool)clipsToBounds {
    r0 = *(int8_t *)(int64_t *)&self->clipsToBounds_;
    return r0;
}

-(struct CGSize)viewSize {
    r0 = self;
    return r0;
}

-(void)setClipsToBounds:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->clipsToBounds_ = arg2;
    return;
}

-(void)setBounces:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->bounces_ = arg2;
    return;
}

-(bool)bounces {
    r0 = *(int8_t *)(int64_t *)&self->bounces_;
    return r0;
}

-(bool)isDragging {
    r0 = *(int8_t *)(int64_t *)&self->isDragging_;
    return r0;
}

-(void *)delegate {
    r0 = self->delegate_;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    self->delegate_ = arg2;
    return;
}

-(struct CGPoint)touchPoint_ {
    r0 = self;
    return r0;
}

-(void)setTouchPoint_:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(touchPoint_));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(bool)touchMoved_ {
    r0 = *(int8_t *)(int64_t *)&self->touchMoved_;
    return r0;
}

-(void)setTouchMoved_:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->touchMoved_ = arg2;
    return;
}

-(void *)container_ {
    r0 = self->container_;
    return r0;
}

-(void)setContainer_:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(double)maxZoomScale {
    r0 = self;
    return r0;
}

-(void)setMaxZoomScale:(double)arg2 {
    self->maxScale_ = d0;
    return;
}

-(double)minZoomScale {
    r0 = self;
    return r0;
}

-(void)setMinZoomScale:(double)arg2 {
    self->minScale_ = d0;
    return;
}

@end
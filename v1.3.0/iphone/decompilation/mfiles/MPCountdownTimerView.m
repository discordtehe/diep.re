@implementation MPCountdownTimerView

-(void)dealloc {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_completionBlock));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [self stopAndSignalCompletion:0x0];
    [[&var_20 super] dealloc];
    return;
}

+(double)intrinsicContentDimension {
    r0 = self;
    return r0;
}

-(struct CGSize)intrinsicContentSize {
    [MPCountdownTimerView intrinsicContentDimension];
    r0 = @class(MPCountdownTimerView);
    r0 = [r0 intrinsicContentDimension];
    return r0;
}

-(bool)hasStarted {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self timer];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)stopAndSignalCompletion:(bool)arg2 {
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
    r29 = &saved_fp;
    r24 = arg2;
    r19 = self;
    if (([self hasStarted] & 0x1) != 0x0) {
            r0 = [r19 timer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            r0 = [MPLogEvent eventWithMessage:[[NSString stringWithFormat:@"MPCountdownTimerView stopped"] retain] level:0x1e];
            r29 = r29;
            [r0 retain];
            [r19 class];
            [MPLogging logEvent:r2 source:r3 fromClass:r4];
            [r27 release];
            [r26 release];
            if (r24 != 0x0) {
                    r0 = [r19 completionBlock];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 release];
                    if (r25 != 0x0) {
                            [r19 remainingSeconds];
                            if (d0 < 0x0) {
                                    if (CPU_FLAGS & BE) {
                                            r25 = 0x1;
                                    }
                            }
                            r0 = [r19 completionBlock];
                            r0 = [r0 retain];
                            (*(r0 + 0x10))();
                            [r24 release];
                            [[MPLogEvent eventWithMessage:[[NSString stringWithFormat:@"MPCountdownTimerView completion block notified"] retain] level:0x1e] retain];
                            [r19 class];
                            [MPLogging logEvent:r2 source:r3 fromClass:r4];
                            [r21 release];
                            [r20 release];
                    }
            }
            [r19 setCompletionBlock:0x0];
    }
    else {
            r22 = [[NSString stringWithFormat:@"MPCountdownTimerView cannot stop since it has not started yet"] retain];
            r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
            [r22 release];
    }
    return;
}

-(void)pause {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasStarted] & 0x1) != 0x0) {
            r0 = [r19 timer];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isCountdownActive];
            [r0 release];
            if ((r22 & 0x1) != 0x0) {
                    r0 = [r19 timer];
                    r0 = [r0 retain];
                    [r0 pause];
                    [r0 release];
                    [[r19 animatingRingLayer] retain];
                    CACurrentMediaTime();
                    [r21 convertTime:0x0 fromLayer:r3];
                    [r21 release];
                    r0 = [r19 animatingRingLayer];
                    r0 = [r0 retain];
                    [r0 setSpeed:0x0];
                    [r0 release];
                    r0 = [r19 animatingRingLayer];
                    r0 = [r0 retain];
                    [r0 setTimeOffset:0x0];
                    [r0 release];
                    r0 = [NSString stringWithFormat:r2];
            }
            else {
                    r0 = [NSString stringWithFormat:r2];
            }
            r21 = [r0 retain];
    }
    else {
            r21 = [[NSString stringWithFormat:@"MPCountdownTimerView cannot pause since it has not started yet"] retain];
    }
    r22 = [[MPLogEvent eventWithMessage:r2 level:r3] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    [r22 release];
    [r21 release];
    return;
}

-(void)start {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self hasStarted] != 0x0) {
            r20 = [[NSString stringWithFormat:@"MPCountdownTimerView cannot start again since it has started"] retain];
            r21 = [[MPLogEvent eventWithMessage:r20 level:0x14] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    }
    else {
            r0 = [r19 notificationCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(pause) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = [r19 notificationCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(resume) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r20 = [[CABasicAnimation animationWithKeyPath:@"strokeEnd"] retain];
            r22 = [@(0x1) retain];
            [r20 setFromValue:r22];
            [r22 release];
            r21 = [@(0x0) retain];
            [r20 setToValue:r21];
            [r21 release];
            [r19 remainingSeconds];
            [r20 setDuration:r21];
            [r20 setFillMode:**_kCAFillModeForwards];
            [r20 setRemovedOnCompletion:0x0];
            r0 = [r19 animatingRingLayer];
            r0 = [r0 retain];
            [r0 addAnimation:r20 forKey:@"Timer"];
            [r0 release];
            r21 = [[MPTimer timerWithTimeInterval:r19 target:@selector(onTimerUpdate:) selector:0x1 repeats:0x0] retain];
            [r19 setTimer:r21];
            [r21 release];
            r0 = [r19 timer];
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
            r21 = [[NSString stringWithFormat:@"MPCountdownTimerView started"] retain];
            r23 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void *)initWithDuration:(double)arg2 timerCompletion:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0xf0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r23 = [arg2 retain];
    d0 = *(int128_t *)*_CGRectZero;
    r0 = [[&var_A0 super] initWithFrame:r2];
    r20 = r0;
    if (r0 == 0x0) goto loc_1004d54d8;

loc_1004d4fb0:
    if (d8 < 0x0) goto loc_1004d54e8;

loc_1004d4fb8:
    r0 = objc_retainBlock(r23);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionBlock));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r20->_remainingSeconds = d8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
    r0 = *(r20 + r8);
    *(r20 + r8) = 0x0;
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_notificationCenter));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [MPCountdownTimerView intrinsicContentDimension];
    [MPCountdownTimerView intrinsicContentDimension];
    r19 = [[UIBezierPath bezierPathWithArcCenter:0x0 radius:r3 startAngle:r4 endAngle:r5 clockwise:r6] retain];
    r0 = [CAShapeLayer new];
    var_A8 = r23;
    r23 = r0;
    r0 = [UIColor clearColor];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r2 = [r0 CGColor];
    [r23 setFillColor:r2];
    [r0 release];
    [r23 setLineWidth:r2];
    r0 = objc_retainAutorelease(r19);
    r21 = r0;
    r2 = [r0 CGPath];
    [r23 setPath:r2];
    r0 = @class(UIColor);
    r0 = [r0 whiteColor];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 colorWithAlphaComponent:r2];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r23 setStrokeColor:[r0 CGColor]];
    [r0 release];
    [r26 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundRingLayer));
    var_C0 = r8;
    r0 = *(r20 + r8);
    *(r20 + r8) = r23;
    [r0 release];
    r23 = [CAShapeLayer new];
    r0 = @class(UIColor);
    r0 = [r0 clearColor];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r2 = [r0 CGColor];
    [r23 setFillColor:r2];
    [r0 release];
    [r23 setLineWidth:r2];
    r0 = objc_retainAutorelease(r21);
    r21 = r0;
    [r23 setPath:[r0 CGPath]];
    r0 = @class(UIColor);
    r26 = &@class(MCConfigurationData);
    r27 = @selector(whiteColor);
    r0 = objc_msgSend(r0, r27);
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r2 = [r0 CGColor];
    [r23 setStrokeColor:r2];
    [r0 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_animatingRingLayer));
    r0 = *(r20 + r24);
    *(r20 + r24) = r23;
    [r0 release];
    r19 = objc_alloc();
    [MPCountdownTimerView intrinsicContentDimension];
    [MPCountdownTimerView intrinsicContentDimension];
    r0 = [r19 initWithFrame:r2];
    r19 = r0;
    [r0 setCenter:r2];
    r0 = [UIFont systemFontOfSize:r2 weight:r3];
    r22 = [r0 retain];
    [r19 setFont:r22];
    [r22 release];
    r0 = @class(NSString);
    asm { frintp     d0, d8 };
    r22 = [[r0 stringWithFormat:@"%.0f"] retain];
    [r19 setText:r22];
    [r22 release];
    [r19 setTextAlignment:0x1];
    r22 = [objc_msgSend(*(r26 + 0x700), r27) retain];
    [r19 setTextColor:r22];
    [r22 release];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_countdownLabel));
    r0 = *(r20 + r25);
    *(r20 + r25) = r19;
    [r0 release];
    r0 = [r20 layer];
    r0 = [r0 retain];
    [r0 addSublayer:*(r20 + var_C0)];
    [r0 release];
    r0 = [r20 layer];
    r0 = [r0 retain];
    r23 = var_A8;
    [r0 addSublayer:*(r20 + r24)];
    [r0 release];
    [r20 addSubview:*(r20 + r25)];
    [r20 setUserInteractionEnabled:0x0];
    [r21 release];
    goto loc_1004d54d8;

loc_1004d54d8:
    r19 = [r20 retain];
    goto loc_1004d5584;

loc_1004d5584:
    [r23 release];
    [r20 release];
    r0 = r19;
    return r0;

loc_1004d54e8:
    r22 = [[NSString stringWithFormat:@"Attempted to initialize MPCountdownTimerView with a non-positive duration. No timer will be created."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r20 class]];
    [r21 release];
    [r22 release];
    r19 = 0x0;
    goto loc_1004d5584;
}

-(void)onTimerUpdate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self remainingSeconds];
    [r19 setRemainingSeconds:arg2];
    objc_msgSend(r19, r20);
    asm { frintp     d0, d0 };
    r21 = [[r21 stringWithFormat:@"%.0f"] retain];
    r0 = [r19 countdownLabel];
    r0 = [r0 retain];
    [r0 setText:r21];
    [r0 release];
    [r21 release];
    objc_msgSend(r19, r20);
    if (d0 < 0x0) {
            [r19 stopAndSignalCompletion:0x1];
    }
    return;
}

-(void *)completionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionBlock)), 0x0);
    return r0;
}

-(void)resume {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasStarted] & 0x1) != 0x0) {
            r0 = [r19 timer];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isCountdownActive];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [NSString stringWithFormat:r2];
            }
            else {
                    r0 = [r19 timer];
                    r0 = [r0 retain];
                    [r0 resume];
                    [r0 release];
                    r0 = [r19 animatingRingLayer];
                    r0 = [r0 retain];
                    [r0 timeOffset];
                    [r0 release];
                    r0 = [r19 animatingRingLayer];
                    r0 = [r0 retain];
                    [r0 setSpeed:r2];
                    [r0 release];
                    r0 = [r19 animatingRingLayer];
                    r0 = [r0 retain];
                    [r0 setTimeOffset:r2];
                    [r0 release];
                    r0 = [r19 animatingRingLayer];
                    r0 = [r0 retain];
                    [r0 setBeginTime:r2];
                    [r0 release];
                    [[r19 animatingRingLayer] retain];
                    CACurrentMediaTime();
                    [r21 convertTime:0x0 fromLayer:r3];
                    [r21 release];
                    r0 = [r19 animatingRingLayer];
                    r0 = [r0 retain];
                    [r0 setBeginTime:0x0];
                    [r0 release];
                    r0 = [NSString stringWithFormat:r2];
            }
            r21 = [r0 retain];
    }
    else {
            r21 = [[NSString stringWithFormat:@"MPCountdownTimerView cannot resume since it has not started yet"] retain];
    }
    r22 = [[MPLogEvent eventWithMessage:r2 level:r3] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    [r22 release];
    [r21 release];
    return;
}

-(void)setCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)remainingSeconds {
    r0 = self;
    return r0;
}

-(void)setRemainingSeconds:(double)arg2 {
    self->_remainingSeconds = d0;
    return;
}

-(void *)timer {
    r0 = self->_timer;
    return r0;
}

-(void)setTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_timer, arg2);
    return;
}

-(void *)backgroundRingLayer {
    r0 = self->_backgroundRingLayer;
    return r0;
}

-(void)setBackgroundRingLayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundRingLayer, arg2);
    return;
}

-(void *)animatingRingLayer {
    r0 = self->_animatingRingLayer;
    return r0;
}

-(void)setAnimatingRingLayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_animatingRingLayer, arg2);
    return;
}

-(void)setCountdownLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countdownLabel, arg2);
    return;
}

-(void *)countdownLabel {
    r0 = self->_countdownLabel;
    return r0;
}

-(void *)notificationCenter {
    r0 = self->_notificationCenter;
    return r0;
}

-(void)setNotificationCenter:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_notificationCenter, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_notificationCenter, 0x0);
    objc_storeStrong((int64_t *)&self->_countdownLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_animatingRingLayer, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundRingLayer, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_completionBlock, 0x0);
    return;
}

@end
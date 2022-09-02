@implementation FBAdViewabilityValidator

-(void *)initWithView:(void *)arg2 withMinViewability:(long long)arg3 shouldObserveNotifications:(bool)arg4 {
    r0 = [self initWithView:arg2 withInterval:arg3 withInitialDelay:0x1 withMinViewability:arg4 withTickDuration:r6 shouldObserveNotifications:r7];
    return r0;
}

-(void *)initWithView:(void *)arg2 withInterval:(double)arg3 withInitialDelay:(double)arg4 withMinViewability:(long long)arg5 withTickDuration:(long long)arg6 shouldObserveNotifications:(bool)arg7 {
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    r20 = arg5;
    r21 = arg4;
    r23 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [[&var_50 super] init];
            r22 = r0;
            if (r0 != 0x0) {
                    objc_storeWeak((int64_t *)&r22->_view, r19);
                    r22->_minViewabilityPercentage = r23;
                    r0 = [NSMutableDictionary dictionaryWithCapacity:0xd];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewabilityHistory));
                    r8 = *(r22 + r9);
                    *(r22 + r9) = r0;
                    [r8 release];
                    r22->_tickDuration = r21;
                    r22->_checkInterval = d9;
                    r22->_initialDelay = d8;
                    if (r20 != 0x0) {
                            [r22 startObservingNotifications];
                    }
            }
            r0 = [r22 retain];
            r22 = r0;
            r20 = r0;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    [r22 release];
    r0 = r20;
    return r0;
}

-(void *)viewabilityHistory {
    std::__1::recursive_mutex::lock();
    [self->_viewabilityHistory copy];
    std::__1::recursive_mutex::unlock();
    r0 = [r20 autorelease];
    return r0;
}

-(void)addHistoryEvent:(long long)arg2 {
    std::__1::recursive_mutex::lock();
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:arg2];
    r0 = [r0 retain];
    r21 = [[r0 stringValue] retain];
    [r0 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_viewabilityHistory));
    r0 = *(self + r24);
    r0 = [r0 numberForKeyOrNil:r21];
    r0 = [r0 retain];
    r23 = [[NSNumber numberWithLong:[r0 integerValue] + 0x1] retain];
    [*(self + r24) setObject:r23 forKeyedSubscript:r21];
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:0x7c format:@"Viewability history %@ changed value for %@ from %@ to %@"];
    [r23 release];
    [r0 release];
    [r21 release];
    std::__1::recursive_mutex::unlock();
    return;
}

-(void)dealloc {
    [self stopViewabilityCheck];
    [[&var_20 super] dealloc];
    return;
}

-(void *)viewabilityHistoryJSON {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_historyLock;
    std::__1::recursive_mutex::lock();
    r0 = [FBAdUtility getJSONStringFromObject:self->_viewabilityHistory];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r21 = @"{}";
            [r21 retain];
    }
    [r20 release];
    std::__1::recursive_mutex::unlock();
    r0 = [r21 autorelease];
    return r0;
}

-(void)checkViewability {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isviewOnScreenNotificationFinished] != 0x0) {
            [r19 invalidateTimer];
    }
    else {
            [r19 isViewOnScreenWithBlock:&var_38];
    }
    return;
}

-(void)updateCurrentStatus:(long long)arg2 {
    [self setCurrentStatus:r2];
    [self addHistoryEvent:arg2];
    [self sendViewNotification:arg2];
    return;
}

-(void)sendViewNotification:(long long)arg2 {
    dispatch_async(*__dispatch_main_q, &var_30);
    return;
}

-(bool)isValid {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self checkViewabilityTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 checkViewabilityTimer];
            r0 = [r0 retain];
            r20 = [r0 isValid];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)scheduleViewabilityCheck {
    [self checkInterval];
    [self initialDelay];
    [self scheduleViewabilityCheckWithInterval:r2 withInitialDelay:r3];
    return;
}

-(void *)logSuccess:(bool)arg2 withStatus:(long long)arg3 withViewabilityPercentage:(double)arg4 {
    r31 = r31 - 0x80;
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
    r25 = arg3;
    r26 = arg2;
    r20 = self;
    r0 = [self view];
    r0 = [r0 retain];
    r19 = r0;
    r22 = @class(NSString);
    r23 = [NSStringFromClass([r0 class]) retain];
    r0 = [r22 stringWithFormat:@"<%@: %p>"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r26 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r26 = @"failed";
            }
            else {
                    r26 = @"success";
            }
    }
    if (r25 <= 0x6) goto loc_100abf7ec;

loc_100abf7c0:
    if (r25 > 0xc) goto loc_100abf818;

loc_100abf7c8:
    if (r25 > 0x9) goto loc_100abf85c;

loc_100abf7d0:
    if (r25 == 0x7) goto loc_100abf8b0;

loc_100abf7d8:
    r24 = 0x0;
    if (r25 != 0x9) goto loc_100abf914;

loc_100abf7e0:
    r24 = @"View is not fully on screen horizontally.";
    goto loc_100abf90c;

loc_100abf90c:
    [r24 retain];
    goto loc_100abf914;

loc_100abf914:
    r20 = [[NSString stringWithFormat:@"%@ check %@ %@: - %@"] retain];
    [r24 release];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100abf8b0:
    r24 = @"View (or superview) has alpha set below minimum.";
    goto loc_100abf90c;

loc_100abf85c:
    if (r25 == 0xa) goto loc_100abf8ec;

loc_100abf864:
    r24 = 0x0;
    if (r25 != 0xb) goto loc_100abf914;

loc_100abf86c:
    r24 = @"View's bottom is too far offscreen.";
    goto loc_100abf90c;

loc_100abf8ec:
    r24 = @"View's top is too far offscreen.";
    goto loc_100abf90c;

loc_100abf818:
    if (r25 > 0x10) goto loc_100abf894;

loc_100abf820:
    if (r25 == 0xd) goto loc_100abf8c8;

loc_100abf828:
    r24 = 0x0;
    if (r25 != 0xe) goto loc_100abf914;

loc_100abf830:
    r24 = @"View has not been visible for the required amount of time.";
    goto loc_100abf90c;

loc_100abf8c8:
    r24 = @"View is not fully on screen.";
    goto loc_100abf90c;

loc_100abf894:
    if (r25 == 0x11) goto loc_100abf904;

loc_100abf89c:
    r24 = 0x0;
    if (r25 != 0x12) goto loc_100abf914;

loc_100abf8a4:
    r24 = @"Application is inactive";
    goto loc_100abf90c;

loc_100abf904:
    r24 = @"Application is backgrounded";
    goto loc_100abf90c;

loc_100abf7ec:
    if (r25 <= 0x2) goto loc_100abf83c;

loc_100abf7f4:
    if (r25 > 0x4) goto loc_100abf878;

loc_100abf7fc:
    if (r25 == 0x3) goto loc_100abf8bc;

loc_100abf804:
    r24 = 0x0;
    if (r25 != 0x4) goto loc_100abf914;

loc_100abf80c:
    r24 = @"View not in a window.";
    goto loc_100abf90c;

loc_100abf8bc:
    r24 = @"View has no superview.";
    goto loc_100abf90c;

loc_100abf878:
    if (r25 == 0x5) goto loc_100abf8f8;

loc_100abf880:
    r24 = 0x0;
    if (r25 != 0x6) goto loc_100abf914;

loc_100abf888:
    r24 = @"View's frame is empty or null.";
    goto loc_100abf90c;

loc_100abf8f8:
    r24 = @"View (or superview) hidden.";
    goto loc_100abf90c;

loc_100abf83c:
    if (r25 == 0x0) goto loc_100abf8d4;

loc_100abf840:
    if (r25 == 0x1) goto loc_100abf8e0;

loc_100abf848:
    r24 = 0x0;
    if (r25 != 0x2) goto loc_100abf914;

loc_100abf850:
    r24 = @"View is nil (most likely dealloc'd), destroying self.";
    goto loc_100abf90c;

loc_100abf8e0:
    r24 = @"View is viewable.";
    goto loc_100abf90c;

loc_100abf8d4:
    r24 = @"Unknown.";
    goto loc_100abf90c;
}

-(void)scheduleViewabilityCheckWithInterval:(double)arg2 withInitialDelay:(double)arg3 {
    r1 = _cmd;
    r31 = r31 - 0x60;
    asm { fcvtzs     x1, d0 };
    dispatch_after(dispatch_time(0x0, r1), *__dispatch_main_q, &var_50);
    return;
}

-(void)stopViewabilityCheck {
    [self stopViewabilityCheckAndStopObservingNotifications:0x1];
    return;
}

-(void)resumeTimer {
    [self invalidateTimer];
    [self scheduleViewabilityCheck];
    return;
}

-(void)invalidateTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self checkViewabilityTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 checkViewabilityTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setCheckViewabilityTimer:0x0];
    }
    return;
}

-(void)stopViewabilityCheckAndStopObservingNotifications:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((arg2 & 0x1) != 0x0) {
            [r19 stopObservingNotifications];
    }
    [r19 invalidateTimer];
    return;
}

-(void)isViewOnScreenWithBlock:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [FBAdBackgroundStateManagerFactory backgroundStateManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 applicationState];
    [r0 release];
    if (r20 == 0x1) goto loc_100abfa90;

loc_100abf9ec:
    if (r20 != 0x2) goto loc_100abfb30;

loc_100abf9f4:
    [r21 stopViewabilityCheckAndStopObservingNotifications:0x0];
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x11 withViewabilityPercentage:r4] retain];
    r4 = 0x9c;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x11;
    goto loc_100abfb28;

loc_100abfb28:
    (r8)(r0, r1, 0x5, "ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm", r4);
    goto loc_100abfff4;

loc_100abfff4:
    [r19 release];
    return;

loc_100abfb30:
    r0 = [r21 view];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100abfbf0;

loc_100abfb50:
    if (CGRectIsEmpty([r20 frame]) == 0x0) goto loc_100abfc88;

loc_100abfb68:
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x6 withViewabilityPercentage:r4] retain];
    r4 = 0xac;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x6;
    goto loc_100abffe8;

loc_100abffe8:
    (r8)(r0, r1, 0x5, "ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm", r4);
    goto loc_100abffec;

loc_100abffec:
    [r20 release];
    goto loc_100abfff4;

loc_100abfc88:
    if ([r20 isHidden] == 0x0) goto loc_100abfd28;

loc_100abfca0:
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x5 withViewabilityPercentage:r4] retain];
    r4 = 0xb1;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x5;
    goto loc_100abffe8;

loc_100abfd28:
    [r20 alpha];
    if (d0 >= *0x100b9b330) goto loc_100abfdd4;

loc_100abfd4c:
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x7 withViewabilityPercentage:r4] retain];
    r4 = 0xb6;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x7;
    goto loc_100abffe8;

loc_100abfdd4:
    r0 = [r20 superview];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100abff64;

loc_100abfdf4:
    r23 = r0;
    r0 = [r20 window];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_100ac001c;

loc_100abfe18:
    if ([r23 isHidden] != 0x0) goto loc_100ac00a4;

loc_100abfe28:
    [r23 alpha];
    if (d0 < *0x100b9b330) goto loc_100ac012c;

loc_100abfe3c:
    r0 = [r23 superview];
    r29 = r29;
    r27 = [r0 retain];
    [r23 release];
    r23 = r27;
    if (r27 != 0x0) goto loc_100abfe18;

loc_100abfe64:
    r25 = @selector(alpha);
    r24 = [r21 minViewabilityPercentage];
    r0 = [FBAdQualityViewabilityMeasurement alloc];
    r2 = r20;
    r0 = [r0 initWithTargetView:r2];
    r23 = r0;
    [r0 viewableRatio];
    asm { fcvt       d0, s0 };
    [r21 setLastViewabilityPercentage:r2];
    asm { fcvtzs     x25, s0 };
    if (r24 > r25) {
            [r21 setCurrentTickCount:0x0];
            r24 = @class(FBAdLogger);
            asm { scvtf      d0, x25 };
            r21 = [[r21 logSuccess:0x1 withStatus:0xd withViewabilityPercentage:r4] retain];
            r4 = 0xd5;
            [r24 logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
            [r21 release];
            r8 = *(r19 + 0x10);
            r0 = r19;
            r1 = 0xd;
    }
    else {
            if ([r21 currentTickCount] + 0x1 < [r21 tickDuration]) {
                    [r21 setCurrentTickCount:[r21 currentTickCount] + 0x1];
                    r24 = @class(FBAdLogger);
                    asm { scvtf      d0, x25 };
                    r21 = [[r21 logSuccess:0x1 withStatus:0xe withViewabilityPercentage:r4] retain];
                    r4 = 0xdb;
                    [r24 logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
                    [r21 release];
                    r8 = *(r19 + 0x10);
                    r0 = r19;
                    r1 = 0xe;
            }
            else {
                    r24 = @class(FBAdLogger);
                    asm { scvtf      d0, x25 };
                    r21 = [[r21 logSuccess:0x1 withStatus:0x1 withViewabilityPercentage:r4] retain];
                    r4 = 0xde;
                    [r24 logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
                    [r21 release];
                    r8 = *(r19 + 0x10);
                    r0 = r19;
                    r1 = 0x1;
            }
    }
    goto loc_100ac02e8;

loc_100ac02e8:
    (r8)(r0, r1, 0x5, "ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm", r4);
    [r23 release];
    [r22 release];
    goto loc_100abffec;

loc_100ac012c:
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x7 withViewabilityPercentage:r4] retain];
    r4 = 0xc8;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x7;
    goto loc_100ac02e8;

loc_100ac00a4:
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x5 withViewabilityPercentage:r4] retain];
    r4 = 0xc5;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x5;
    goto loc_100ac02e8;

loc_100ac001c:
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x4 withViewabilityPercentage:r4] retain];
    r4 = 0xc0;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x4;
    goto loc_100ac02e8;

loc_100abff64:
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x3 withViewabilityPercentage:r4] retain];
    r4 = 0xbb;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x3;
    goto loc_100abffe8;

loc_100abfbf0:
    [r21 stopViewabilityCheck];
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x2 withViewabilityPercentage:r4] retain];
    r4 = 0xa7;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x2;
    goto loc_100abffe8;

loc_100abfa90:
    [r21 stopViewabilityCheckAndStopObservingNotifications:0x0];
    [r21 setCurrentTickCount:0x0];
    r21 = [[r21 logSuccess:0x1 withStatus:0x12 withViewabilityPercentage:r4] retain];
    r4 = 0xa1;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/FBAdViewabilityValidator.mm" lineNumber:r4 format:@"%@"];
    [r21 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x12;
    goto loc_100abfb28;
}

-(void)onApplicationBackgrounded {
    [self invalidateTimer];
    return;
}

-(void)onApplicationForegrounded {
    [self resumeTimer];
    return;
}

-(void)startObservingNotifications {
    r31 = r31 - 0xb0;
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
    r29 = &saved_fp;
    r20 = self;
    if (([self isObservingNotifications] & 0x1) == 0x0) {
            objc_initWeak(r29 - 0x48, r20);
            objc_copyWeak(&var_70 + 0x20, r29 - 0x48);
            objc_copyWeak(&var_98 + 0x20, r29 - 0x48);
            [FBAdUtility startObservingBackgroundNotifications:r20 usingBackgroundBlock:&var_70 usingForegroundBlock:&var_98];
            [r20 setObservingNotifications:0x1];
            objc_destroyWeak(&var_98 + 0x20);
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(r29 - 0x48);
    }
    return;
}

-(void)stopObservingNotifications {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isObservingNotifications] != 0x0) {
            [FBAdUtility stopObservingBackgroundNotifications:r19];
            [r19 setObservingNotifications:0x0];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewabilityHistory, 0x0);
    objc_destroyWeak((int64_t *)&self->_view);
    objc_storeStrong((int64_t *)&self->_checkViewabilityTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    std::__1::recursive_mutex::~recursive_mutex();
    return;
}

-(void *).cxx_construct {
    std::__1::recursive_mutex::recursive_mutex();
    r0 = self;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(long long)currentStatus {
    r0 = self->_currentStatus;
    return r0;
}

-(void)setCurrentStatus:(long long)arg2 {
    self->_currentStatus = arg2;
    return;
}

-(double)lastViewabilityPercentage {
    r0 = self;
    return r0;
}

-(void)setLastViewabilityPercentage:(double)arg2 {
    self->_lastViewabilityPercentage = d0;
    return;
}

-(void *)checkViewabilityTimer {
    r0 = self->_checkViewabilityTimer;
    return r0;
}

-(void)setCheckViewabilityTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_checkViewabilityTimer, arg2);
    return;
}

-(void *)view {
    r0 = objc_loadWeakRetained((int64_t *)&self->_view);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_view, arg2);
    return;
}

-(bool)isviewOnScreenNotificationFinished {
    r0 = *(int8_t *)(int64_t *)&self->_viewOnScreenNotificationFinished;
    return r0;
}

-(void)setViewOnScreenNotificationFinished:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_viewOnScreenNotificationFinished = arg2;
    return;
}

-(bool)isObservingNotifications {
    r0 = *(int8_t *)(int64_t *)&self->_observingNotifications;
    return r0;
}

-(void)setObservingNotifications:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_observingNotifications = arg2;
    return;
}

-(long long)minViewabilityPercentage {
    r0 = self->_minViewabilityPercentage;
    return r0;
}

-(long long)tickDuration {
    r0 = self->_tickDuration;
    return r0;
}

-(void)setMinViewabilityPercentage:(long long)arg2 {
    self->_minViewabilityPercentage = arg2;
    return;
}

-(void)setTickDuration:(long long)arg2 {
    self->_tickDuration = arg2;
    return;
}

-(long long)currentTickCount {
    r0 = self->_currentTickCount;
    return r0;
}

-(void)setCurrentTickCount:(long long)arg2 {
    self->_currentTickCount = arg2;
    return;
}

-(double)initialDelay {
    r0 = self;
    return r0;
}

-(void)setInitialDelay:(double)arg2 {
    self->_initialDelay = d0;
    return;
}

-(double)checkInterval {
    r0 = self;
    return r0;
}

-(void)setCheckInterval:(double)arg2 {
    self->_checkInterval = d0;
    return;
}

-(void)setViewabilityHistory:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityHistory, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdViewabilityValidator");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end
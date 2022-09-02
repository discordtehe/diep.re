@implementation MPAdImpressionTimer

-(void *)initWithRequiredSecondsForImpression:(double)arg2 requiredViewVisibilityPixels:(double)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [MPTimer timerWithTimeInterval:r19 target:@selector(tick:) selector:0x1 repeats:**_NSRunLoopCommonModes runLoopMode:r6];
            r0 = [r0 retain];
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
            *(r19 + 0x38) = d9;
            *(r19 + 0x28) = d8;
            *(r19 + 0x20) = 0xbff0000000000000;
    }
    r0 = r19;
    return r0;
}

-(void *)initWithRequiredSecondsForImpression:(double)arg2 requiredViewVisibilityPercentage:(double)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x28) = 0x10000000000000;
            r0 = [MPTimer timerWithTimeInterval:r19 target:@selector(tick:) selector:0x1 repeats:**_NSRunLoopCommonModes runLoopMode:r6];
            r0 = [r0 retain];
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
            *(r19 + 0x38) = d9;
            *(r19 + 0x30) = d8;
            *(r19 + 0x20) = 0xbff0000000000000;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x18) invalidate];
    objc_storeWeak(self + 0x8, 0x0);
    r0 = *(self + 0x18);
    *(self + 0x18) = 0x0;
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)startTrackingView:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_1004b7258;

loc_1004b71c4:
    r0 = [r20 viewVisibilityTimer];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isCountdownActive];
    [r0 release];
    if (r23 == 0x0) goto loc_1004b72f4;

loc_1004b7200:
    r23 = [[NSString stringWithFormat:@"viewVisibilityTimer is already started."] retain];
    r0 = [MPLogEvent eventWithMessage:r23 level:0x1e];
    goto loc_1004b72ac;

loc_1004b72ac:
    r22 = [r0 retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
    [r22 release];
    [r23 release];
    goto loc_1004b7334;

loc_1004b7334:
    [r19 release];
    return;

loc_1004b72f4:
    r0 = [r20 viewVisibilityTimer];
    r0 = [r0 retain];
    [r0 scheduleNow];
    [r0 release];
    [r20 setAdView:r19];
    goto loc_1004b7334;

loc_1004b7258:
    r23 = [[NSString stringWithFormat:@"Cannot track empty view"] retain];
    r0 = [MPLogEvent eventWithMessage:r23 level:0x1e];
    goto loc_1004b72ac;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)adView {
    r0 = *(self + 0x10);
    return r0;
}

-(void)tick:(void *)arg2 {
    r2 = arg2;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adView];
    r0 = [r0 retain];
    CGRectGetWidth([r0 bounds]);
    r0 = [r19 adView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    CGRectGetHeight([r0 bounds]);
    [r23 release];
    [r21 release];
    if (d8 * d0 != 0x0) goto loc_1004b7488;

loc_1004b73dc:
    r22 = [[NSString stringWithFormat:@"ad view area cannot be 0"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    [r21 release];
    r0 = r22;
    goto loc_1004b7470;

loc_1004b7470:
    [r0 release];
    return;

.l1:
    return;

loc_1004b7488:
    [r19 pixelsRequiredForViewVisibility];
    if (d0 != 0x10000000000000) {
            [r19 pixelsRequiredForViewVisibility];
            [r19 pixelsRequiredForViewVisibility];
            d0 = d8 * d0;
            r1 = @selector(setPercentageRequiredForViewVisibility:);
            asm { fdiv       d0, d0, d9 };
            objc_msgSend(r19, r1);
    }
    r0 = [r19 adView];
    r29 = r29;
    r21 = [r0 retain];
    if (sub_1004af3b4() == 0x0) goto loc_1004b75f4;

loc_1004b7500:
    r0 = [r19 adView];
    r29 = r29;
    r22 = [r0 retain];
    [r19 percentageRequiredForViewVisibility];
    if ((sub_1004af650() & 0x1) == 0x0) goto loc_1004b75ec;

loc_1004b7534:
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 applicationState];
    [r0 release];
    [r22 release];
    [r21 release];
    if (r24 != 0x0) goto loc_1004b75fc;

loc_1004b7580:
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSinceReferenceDate];
    v8 = v0;
    [r0 release];
    [r19 firstVisibilityTimestamp];
    if (d0 != 0xbff0000000000000) goto loc_1004b7624;

loc_1004b75d8:
    r0 = r19;
    goto loc_1004b760c;

loc_1004b760c:
    [r0 setFirstVisibilityTimestamp:r2];
    return;

loc_1004b7624:
    [r19 firstVisibilityTimestamp];
    [r19 requiredSecondsForImpression];
    if (d8 - d0 >= d0) goto loc_1004b7664;
    goto .l1;

loc_1004b7664:
    [r19 setFirstVisibilityTimestamp:r2];
    r0 = [r19 viewVisibilityTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [r19 setViewVisibilityTimer:0x0];
    r21 = [[r19 delegate] retain];
    r19 = [[r19 adView] retain];
    [r21 adViewWillLogImpression:r19];
    [r19 release];
    r0 = r21;
    goto loc_1004b7470;

loc_1004b75fc:
    r0 = r19;
    goto loc_1004b760c;

loc_1004b75ec:
    [r22 release];
    goto loc_1004b75f4;

loc_1004b75f4:
    [r21 release];
    goto loc_1004b75fc;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)viewVisibilityTimer {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setViewVisibilityTimer:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(double)firstVisibilityTimestamp {
    r0 = self;
    return r0;
}

-(void)setFirstVisibilityTimestamp:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(double)pixelsRequiredForViewVisibility {
    r0 = self;
    return r0;
}

-(double)percentageRequiredForViewVisibility {
    r0 = self;
    return r0;
}

-(void)setPixelsRequiredForViewVisibility:(double)arg2 {
    *(self + 0x28) = d0;
    return;
}

-(void)setPercentageRequiredForViewVisibility:(double)arg2 {
    *(self + 0x30) = d0;
    return;
}

-(double)requiredSecondsForImpression {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

-(void)setRequiredSecondsForImpression:(double)arg2 {
    *(self + 0x38) = d0;
    return;
}

@end
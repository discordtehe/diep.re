@implementation FBAdTouchRecordingView

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setup];
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
    if (r0 != 0x0) {
            [r19 setup];
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
    if (r0 != 0x0) {
            [r19 setup];
    }
    r0 = r19;
    return r0;
}

-(void)setup {
    [self setFirstTimeVisible:r2];
    r0 = [FBAdTouchGestureRecognizer new];
    [r0 setDelegate:self];
    [self addGestureRecognizer:r0];
    [r0 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 beganWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19 logTouch:0x0];
    [r19 release];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 movedWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    r21 = [arg3 retain];
    [self updateTouchDataWithTouches:r21 andEvent:arg4 logTouch:0x0];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 endedWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19 logTouch:0x1];
    [r19 release];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 cancelledWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19 logTouch:0x0];
    [r19 release];
    [r21 release];
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x0;
}

-(void)gestureRecognizerTapped:(void *)arg2 {
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_touchRecordingViewDelegate);
    objc_storeStrong((int64_t *)&self->_lastTouchData, 0x0);
    return;
}

-(struct CGPoint)lastTouchStartLocation {
    r0 = self;
    return r0;
}

-(struct CGPoint)lastTouchCurrentLocation {
    r0 = self;
    return r0;
}

-(void)setLastTouchStartLocation:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchStartLocation));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)updateTouchDataWithTouches:(void *)arg2 andEvent:(void *)arg3 logTouch:(bool)arg4 {
    r31 = r31 - 0xc0;
    var_A0 = d15;
    stack[-152] = d14;
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
    r20 = self;
    r21 = [arg2 retain];
    [arg3 retain];
    r19 = [[r21 allObjects] retain];
    [r21 release];
    r21 = [[r19 firstObject] retain];
    r22 = [[r19 lastObject] retain];
    r26 = [[r21 view] retain];
    [r21 locationInView:r26];
    [r26 release];
    r0 = [r22 view];
    r29 = &var_10;
    r25 = [r0 retain];
    [r22 locationInView:r25];
    [r25 release];
    [r20 setLastTouchStartLocation:r25];
    v1 = v1;
    [r20 setLastTouchCurrentLocation:r25];
    sub_100aabd58();
    [r24 release];
    v0 = v10;
    [r20 setLastTouchCurrentTimestamp:r25];
    [r22 majorRadius];
    [r20 setLastTouchRadius:r25];
    [r22 force];
    [r20 setLastTouchPressure:r25];
    if (arg4 != 0x0) {
            [r20 firstTimeVisible];
            if (d0 != 0xbff0000000000000) {
                    [NSDate timeIntervalSinceReferenceDate];
                    [r20 firstTimeVisible];
                    r0 = [NSNumber numberWithDouble:r2];
                    r29 = r29;
            }
            else {
                    r0 = [NSNumber numberWithDouble:r2];
                    r29 = r29;
            }
            r23 = [r0 retain];
            r25 = @class(FBAdUtility);
            [r20 lastTouchStartLocation];
            [r20 lastTouchCurrentLocation];
            [r20 lastTouchCurrentLocation];
            [r20 lastTouchStartTimestamp];
            [r20 lastTouchCurrentTimestamp];
            r26 = @class(NSNumber);
            [r20 lastTouchPressure];
            r26 = [[r26 numberWithDouble:r2] retain];
            r27 = @class(NSNumber);
            [r20 lastTouchRadius];
            r27 = [[r27 numberWithDouble:r2] retain];
            r24 = [[r25 touchDictionaryWithStartLocation:r26 currentLocation:r27 endLocation:r23 startTime:r5 endTime:r6 touchForce:r7 touchRadius:stack[-192] delayTime:var_B8] retain];
            [r27 release];
            [r26 release];
            r0 = @class(FBAdUtility);
            r0 = [r0 getJSONStringFromObject:r24];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    r0 = [r25 retain];
                    r26 = [[NSDictionary dictionaryWithObjects:&var_B0 forKeys:r3 count:0x1] retain];
                    [r0 release];
                    [r20 setLastTouchData:r26];
                    r0 = [r20 touchRecordingViewDelegate];
                    r0 = [r0 retain];
                    r27 = r0;
                    if ([r0 respondsToSelector:@selector(touchRecordingView:didUpdateLastTouchData:), &var_B8] != 0x0) {
                            [r27 touchRecordingView:r20 didUpdateLastTouchData:r26];
                    }
                    [r27 release];
                    [r26 release];
            }
            [r25 release];
            [r24 release];
            [r23 release];
    }
    var_A8 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_A8) {
            __stack_chk_fail();
    }
    return;
}

-(void)setLastTouchCurrentLocation:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchCurrentLocation));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setLastTouchStartTimestamp:(double)arg2 {
    self->_lastTouchStartTimestamp = d0;
    return;
}

-(double)lastTouchStartTimestamp {
    r0 = self;
    return r0;
}

-(double)lastTouchCurrentTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastTouchCurrentTimestamp:(double)arg2 {
    self->_lastTouchCurrentTimestamp = d0;
    return;
}

-(double)lastTouchPressure {
    r0 = self;
    return r0;
}

-(double)lastTouchRadius {
    r0 = self;
    return r0;
}

-(void)setLastTouchRadius:(double)arg2 {
    self->_lastTouchRadius = d0;
    return;
}

-(void)setLastTouchPressure:(double)arg2 {
    self->_lastTouchPressure = d0;
    return;
}

-(void *)lastTouchData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_lastTouchData)), 0x0);
    return r0;
}

-(void)setLastTouchData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)firstTimeVisible {
    r0 = self;
    return r0;
}

-(void)setFirstTimeVisible:(double)arg2 {
    self->_firstTimeVisible = d0;
    return;
}

-(void)setTouchRecordingViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_touchRecordingViewDelegate, arg2);
    return;
}

-(void *)touchRecordingViewDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_touchRecordingViewDelegate);
    r0 = [r0 autorelease];
    return r0;
}

@end
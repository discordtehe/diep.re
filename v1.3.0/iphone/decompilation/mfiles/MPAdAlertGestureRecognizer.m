@implementation MPAdAlertGestureRecognizer

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithTarget:(void *)arg2 action:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithTarget:arg2 action:arg3];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void)setMinTrackedDistanceForZigZag:(double)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_minTrackedDistanceForZigZag));
    if (*(r0 + r8) != d0) {
            asm { fminnm     d0, d0, d1 };
            *(r0 + r8) = d0;
    }
    return;
}

-(void)commonInit {
    [self setMinTrackedDistanceForZigZag:r2];
    [self setNumZigZagsForRecognition:0x4];
    [self resetToInitialState];
    return;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [[&var_40 super] touchesBegan:r19 withEvent:arg3];
    if ([r19 count] == 0x1) {
            r21 = [[r19 anyObject] retain];
            r22 = [[r20 view] retain];
            [r21 locationInView:r22];
            [r22 release];
            [r21 release];
            [r20 setInflectionPoint:r22];
            [r20 setStartingPoint:r22];
    }
    else {
            [r20 setState:0x5];
    }
    [r19 release];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [[&var_30 super] touchesMoved:r19 withEvent:arg3];
    if ([r20 state] != 0x5) {
            [r20 updateAlertGestureStateWithTouches:r19];
    }
    [r19 release];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    [[&var_30 super] touchesEnded:r21 withEvent:arg3];
    [r21 release];
    if ([r19 state] == 0x0 && [r19 currentAlertGestureState] == 0x2) {
            [r19 setState:0x3];
    }
    [r19 resetToInitialState];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesCancelled:r21 withEvent:arg3];
    [r21 release];
    [self resetToInitialState];
    [self setState:0x5];
    return;
}

-(void)reset {
    [[&var_20 super] reset];
    [self resetToInitialState];
    return;
}

-(void)resetToInitialState {
    [self setCurrentAlertGestureState:0x0];
    [self setInflectionPoint:0x0];
    [self setStartingPoint:0x0];
    [self setThresholdReached:0x0];
    [self setCurNumZigZags:0x0];
    return;
}

-(bool)validYAxisMovementForTouches:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[arg2 anyObject] retain];
    r21 = [[self view] retain];
    [r20 locationInView:r21];
    [r21 release];
    [r20 release];
    r0 = [self startingPoint];
    asm { fabd       d0, d8, d1 };
    if (d0 < 0x4049000000000000) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)updateAlertGestureStateWithTouches:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 touchIsWithinBoundsForTouches:r19] & 0x1) != 0x0 || [r20 currentAlertGestureState] == 0x2) goto loc_1004cc41c;

loc_1004cc440:
    r1 = @selector(setState:);
    r0 = r20;
    goto loc_1004cc464;

loc_1004cc464:
    objc_msgSend(r0, r1);
    goto loc_1004cc468;

loc_1004cc468:
    [r19 release];
    return;

loc_1004cc41c:
    r0 = [r20 currentAlertGestureState];
    if (r0 == 0x1) goto loc_1004cc454;

loc_1004cc430:
    if (r0 != 0x0) goto loc_1004cc468;

loc_1004cc434:
    r1 = @selector(handleZigRightGestureStateWithTouches:);
    goto loc_1004cc45c;

loc_1004cc45c:
    r0 = r20;
    goto loc_1004cc464;

loc_1004cc454:
    r1 = @selector(handleZagLeftGestureStateWithTouches:);
    goto loc_1004cc45c;
}

-(void)handleZigRightGestureStateWithTouches:(void *)arg2 {
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
    r19 = self;
    r0 = [arg2 retain];
    r22 = [[r0 anyObject] retain];
    r24 = [[r19 view] retain];
    [r22 locationInView:r24];
    v8 = v0;
    v9 = v1;
    [r24 release];
    [r22 release];
    r20 = [[r0 anyObject] retain];
    [r0 release];
    r21 = [[r19 view] retain];
    [r20 previousLocationInView:r21];
    [r21 release];
    [r20 release];
    if (d8 <= d10) goto loc_1004cc06c;

loc_1004cc040:
    [r19 inflectionPoint];
    [r19 minTrackedDistanceForZigZag];
    if (d8 - d0 >= d0) goto loc_1004cc0e4;

loc_1004cc06c:
    if (d8 >= d10) goto .l1;

loc_1004cc074:
    if ([r19 thresholdReached] == 0x0) goto loc_1004cc110;

loc_1004cc088:
    [r19 setInflectionPoint:r2];
    [r19 setCurrentAlertGestureState:0x1];
    r0 = r19;
    goto loc_1004cc0f4;

loc_1004cc0f4:
    [r0 setThresholdReached:r2];
    return;

.l1:
    return;

loc_1004cc110:
    [r19 setState:0x5];
    return;

loc_1004cc0e4:
    r0 = r19;
    goto loc_1004cc0f4;
}

-(void)handleZagLeftGestureStateWithTouches:(void *)arg2 {
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
    r19 = self;
    r0 = [arg2 retain];
    r22 = [[r0 anyObject] retain];
    r24 = [[r19 view] retain];
    [r22 locationInView:r24];
    v8 = v0;
    v9 = v1;
    [r24 release];
    [r22 release];
    r20 = [[r0 anyObject] retain];
    [r0 release];
    r21 = [[r19 view] retain];
    [r20 previousLocationInView:r21];
    [r21 release];
    [r20 release];
    if (d8 >= d10) goto loc_1004cc264;

loc_1004cc238:
    [r19 inflectionPoint];
    [r19 minTrackedDistanceForZigZag];
    if (d0 - d8 >= d0) goto loc_1004cc2c0;

loc_1004cc264:
    if (d8 <= d10) goto .l1;

loc_1004cc26c:
    if ([r19 thresholdReached] == 0x0) goto loc_1004cc370;

loc_1004cc280:
    [r19 setInflectionPoint:r2];
    [r19 setCurrentAlertGestureState:0x0];
    r1 = @selector(setThresholdReached:);
    r0 = r19;
    goto loc_1004cc3ac;

loc_1004cc3ac:
    objc_msgSend(r0, r1);
    return;

.l1:
    return;

loc_1004cc370:
    [r19 setState:0x5];
    return;

loc_1004cc2c0:
    r21 = [r19 thresholdReached];
    [r19 setThresholdReached:0x1];
    if ((r21 ^ [r19 thresholdReached]) == 0x1) {
            [r19 setCurNumZigZags:[r19 curNumZigZags] + 0x1];
    }
    if ([r19 curNumZigZags] >= [r19 numZigZagsForRecognition]) goto loc_1004cc39c;
    goto .l1;

loc_1004cc39c:
    r1 = @selector(setCurrentAlertGestureState:);
    r0 = r19;
    goto loc_1004cc3ac;
}

-(void)setNumZigZagsForRecognition:(long long)arg2 {
    self->_numZigZagsForRecognition = arg2;
    return;
}

-(double)minTrackedDistanceForZigZag {
    r0 = self;
    return r0;
}

-(bool)touchIsWithinBoundsForTouches:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [[r0 anyObject] retain];
    r23 = [[r20 view] retain];
    [r21 locationInView:r23];
    [r23 release];
    [r21 release];
    r0 = [r20 view];
    r0 = [r0 retain];
    r21 = r0;
    if (CGRectContainsPoint([r0 bounds], @selector(bounds)) != 0x0) {
            r20 = [r20 validYAxisMovementForTouches:r19];
    }
    else {
            r20 = 0x0;
    }
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)numZigZagsForRecognition {
    r0 = self->_numZigZagsForRecognition;
    return r0;
}

-(int)currentAlertGestureState {
    r0 = *(int32_t *)(int64_t *)&self->_currentAlertGestureState;
    return r0;
}

-(void)setInflectionPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inflectionPoint));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setCurrentAlertGestureState:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_currentAlertGestureState = arg2;
    return;
}

-(struct CGPoint)inflectionPoint {
    r0 = self;
    return r0;
}

-(bool)thresholdReached {
    r0 = *(int8_t *)(int64_t *)&self->_thresholdReached;
    return r0;
}

-(void)setThresholdReached:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_thresholdReached = arg2;
    return;
}

-(long long)curNumZigZags {
    r0 = self->_curNumZigZags;
    return r0;
}

-(void)setCurNumZigZags:(long long)arg2 {
    self->_curNumZigZags = arg2;
    return;
}

-(struct CGPoint)startingPoint {
    r0 = self;
    return r0;
}

-(void)setStartingPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startingPoint));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

@end
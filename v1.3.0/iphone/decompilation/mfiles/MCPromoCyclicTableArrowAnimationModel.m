@implementation MCPromoCyclicTableArrowAnimationModel

+(void *)animationWithAnimationSequence:(void *)arg2 clickAnimation:(void *)arg3 pulseAnimation:(void *)arg4 pulsePeriod:(float)arg5 {
    r0 = [MCPromoCyclicTableArrowAnimationModel alloc];
    r0 = [r0 initWithAnimationSequence:arg2 clickAnimation:arg3 pulseAnimation:arg4 pulsePeriod:arg5];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)animationWithAnimationSequence:(void *)arg2 pulseAnimation:(void *)arg3 pulsePeriod:(float)arg4 {
    r0 = [MCPromoCyclicTableArrowAnimationModel alloc];
    r0 = [r0 initWithAnimationSequence:arg2 clickAnimation:0x0 pulseAnimation:arg3 pulsePeriod:r5];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)animationWithAnimationSequence:(void *)arg2 clickAnimation:(void *)arg3 {
    r0 = [MCPromoCyclicTableArrowAnimationModel alloc];
    r0 = [r0 initWithAnimationSequence:arg2 clickAnimation:arg3 pulseAnimation:0x0 pulsePeriod:r5];
    r0 = [r0 autorelease];
    return r0;
}

-(void)resetLastPulseTime {
    [sub_1005d4bd0() timeIntervalSinceReferenceDate];
    *(self + 0x18) = d0;
    return;
}

-(void)startAnimation:(void *)arg2 onTrack:(int)arg3 onNode:(void *)arg4 {
    [arg4 setSpineAnimationInNodeAnimationName:arg2 toTrack:arg3 onLoop:0x0];
    return;
}

-(void *)initWithAnimationSequence:(void *)arg2 clickAnimation:(void *)arg3 pulseAnimation:(void *)arg4 pulsePeriod:(float)arg5 {
    r31 = r31 - 0x70;
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
    r22 = arg4;
    r21 = arg3;
    r20 = arg2;
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if (r22 != 0x0 && s8 > 0x0) {
                    if (([r22 isEqualToString:r2] & 0x1) != 0x0) {
                            *(int32_t *)(r19 + 0x10) = 0xffffffffbf800000;
                            *(r19 + 0x20) = 0x0;
                    }
                    else {
                            *(int32_t *)(r19 + 0x10) = s8;
                            *(r19 + 0x20) = [r22 retain];
                    }
            }
            else {
                    *(int32_t *)(r19 + 0x10) = 0xffffffffbf800000;
                    *(r19 + 0x20) = 0x0;
            }
            [sub_1005d4bd0() timeIntervalSinceReferenceDate];
            *(r19 + 0x18) = d0;
            if (r21 != 0x0 && [r21 isEqualToString:r2] == 0x0) {
                    *(r19 + 0x28) = [r21 retain];
                    if (r20 != 0x0) {
                            if ([r20 count] != 0x0) {
                                    if ([r20 count] == 0x1) {
                                            [r20 firstObject];
                                            [r20 firstObject];
                                            r0 = [NSArray arrayWithObjects:r2];
                                    }
                                    else {
                                            r0 = r20;
                                    }
                            }
                            else {
                                    r0 = [NSArray array];
                            }
                    }
                    else {
                            r0 = [NSArray array];
                    }
            }
            else {
                    *(r19 + 0x28) = 0x0;
                    if (r20 == 0x0) {
                            r0 = [NSArray array];
                    }
                    else {
                            if ([r20 count] != 0x0) {
                                    if ([r20 count] == 0x1) {
                                            [r20 firstObject];
                                            [r20 firstObject];
                                            r0 = [NSArray arrayWithObjects:r2];
                                    }
                                    else {
                                            r0 = r20;
                                    }
                            }
                            else {
                                    r0 = [NSArray array];
                            }
                    }
            }
            *(r19 + 0x8) = [r0 retain];
    }
    r0 = r19;
    return r0;
}

-(void)startFirstAnimationFromSequenceOnNode:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x8) count] != 0x0) {
            [r20 startAnimation:[*(r20 + 0x8) firstObject] onTrack:0x0 onNode:r19];
    }
    return;
}

-(void)startAnimationPulseOnNode:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *(r0 + 0x20);
    if (r20 != 0x0) {
            [r0 startAnimation:r20 onTrack:[*(r0 + 0x8) count] + 0x1 onNode:r2];
    }
    return;
}

-(void)startAnimationClickOnNode:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *(r0 + 0x28);
    if (r20 != 0x0) {
            [r0 startAnimation:r20 onTrack:[*(r0 + 0x8) count] onNode:r2];
    }
    return;
}

-(void)animationFinishedForNode:(void *)arg2 withNotification:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [r0 resetLastPulseTime];
            [r0 startFirstAnimationFromSequenceOnNode:r2];
    }
    return;
}

-(void)animationNodeUpdate:(void *)arg2 delta:(double)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(r0 + 0x10) != 0xbff0000000000000) {
            r19 = r2;
            r20 = r0;
            r0 = sub_1005d4bd0();
            r21 = r0;
            [r0 timeIntervalSinceReferenceDate];
            d1 = *(r20 + 0x18);
            d0 = d0 - d1;
            asm { fcvt       d1, s1 };
            if (d0 > d1) {
                    [r21 timeIntervalSinceReferenceDate];
                    *(r20 + 0x18) = d0;
                    [r20 startAnimationPulseOnNode:r19];
            }
    }
    return;
}

-(void)setTransitionAnimationListeners:(void *)arg2 {
    [arg2 setEndListener:&var_A0];
    _Block_object_dispose(&var_70, 0x8);
    _Block_object_dispose(&saved_fp - 0x40, 0x8);
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

@end
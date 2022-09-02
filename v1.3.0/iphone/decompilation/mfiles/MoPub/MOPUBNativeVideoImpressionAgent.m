@implementation MOPUBNativeVideoImpressionAgent

-(void *)initWithVideoView:(void *)arg2 requiredVisibilityPercentage:(double)arg3 requiredPlaybackDuration:(double)arg4 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x28, r19);
            *(r20 + 0x10) = d9;
            *(r20 + 0x18) = d8;
            *(r20 + 0x20) = 0xbff0000000000000;
            *(int8_t *)(r20 + 0x8) = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldTrackImpressionWithCurrentPlaybackTime:(double)arg2 {
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
    r29 = &saved_fp;
    v8 = v0;
    r19 = self;
    if (([self requirementsSatisfied] & 0x1) == 0x0) {
            r21 = [[r19 measuredVideoView] retain];
            [r19 requiredVisiblePercentage];
            r22 = sub_1004af650();
            [r21 release];
            if (r22 != 0x0) {
                    [r19 visibilitySatisfiedPlaybackTime];
                    if (d0 != 0xbff0000000000000) {
                            [r19 visibilitySatisfiedPlaybackTime];
                            if (d0 > d8) {
                                    [r19 setVisibilitySatisfiedPlaybackTime:r2];
                            }
                    }
                    else {
                            [r19 setVisibilitySatisfiedPlaybackTime:r2];
                    }
                    [r19 visibilitySatisfiedPlaybackTime];
                    [r19 requiredPlaybackDuration];
                    if (d8 - d0 >= d0) {
                            [r19 setRequirementsSatisfied:0x1];
                    }
            }
            else {
                    [r19 setVisibilitySatisfiedPlaybackTime:r2];
            }
    }
    r0 = [r19 requirementsSatisfied];
    return r0;
}

-(double)requiredVisiblePercentage {
    r0 = self;
    return r0;
}

-(void)setRequiredVisiblePercentage:(double)arg2 {
    *(self + 0x10) = d0;
    return;
}

-(double)requiredPlaybackDuration {
    r0 = self;
    return r0;
}

-(void)setRequiredPlaybackDuration:(double)arg2 {
    *(self + 0x18) = d0;
    return;
}

-(double)visibilitySatisfiedPlaybackTime {
    r0 = self;
    return r0;
}

-(void)setVisibilitySatisfiedPlaybackTime:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(void *)measuredVideoView {
    r0 = objc_loadWeakRetained(self + 0x28);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setMeasuredVideoView:(void *)arg2 {
    objc_storeWeak(self + 0x28, arg2);
    return;
}

-(bool)requirementsSatisfied {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setRequirementsSatisfied:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x28);
    return;
}

@end
@implementation FBAdQualityMetric

-(void *)initWithEligibleThreshold:(float)arg2 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_eligibleThreshold = s8;
            [r19 resetMetricsAndContinuity];
    }
    r0 = r19;
    return r0;
}

-(void *)init {
    r0 = [self initWithEligibleThreshold:r2];
    return r0;
}

-(void)registerProgress:(double)arg2 value:(float)arg3 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_measurementCount));
    r9 = *(r0 + r8);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_min));
    if (r9 != 0x0) {
            s2 = *(int32_t *)(r0 + r10);
            asm { fminnm     s2, s2, s1 };
            *(int32_t *)(r0 + r10) = s2;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_max));
            s2 = *(int32_t *)(r0 + r10);
            asm { fmaxnm     s2, s2, s1 };
            *(int32_t *)(r0 + r10) = s2;
    }
    else {
            *(int32_t *)(r0 + r10) = s1;
            *(int32_t *)(int64_t *)&r0->_max = s1;
    }
    *(r0 + r8) = r9 + 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_measurementSeconds));
    *(r0 + r8) = *(r0 + r8) + d0;
    *(int32_t *)(int64_t *)&r0->_current = s1;
    asm { fcvt       d3, s1 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_sum));
    asm { fcvt       d4, s4 };
    asm { fcvt       s3, d3 };
    *(int32_t *)(r0 + r8) = s3;
    asm { fcvt       d3, s3 };
    asm { fdiv       d2, d3, d2 };
    asm { fcvt       s2, d2 };
    *(int32_t *)(int64_t *)&r0->_avg = s2;
    if (*(int32_t *)(int64_t *)&r0->_eligibleThreshold >= s1) {
            r0->_continuousEligibleSeconds = 0x0;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_eligibleSeconds));
            *(r0 + r8) = *(r0 + r8) + d0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_continuousEligibleSeconds));
            d0 = *(r0 + r8) + d0;
            *(r0 + r8) = d0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_maxContinuousEligibleSeconds));
            asm { fmaxnm     d0, d1, d0 };
            *(r0 + r8) = d0;
    }
    return;
}

-(void)resetMetrics {
    *(int32_t *)(int64_t *)&self->_avg = 0x0;
    *(int32_t *)(int64_t *)&self->_current = 0x0;
    self->_eligibleSeconds = 0x0;
    *(int32_t *)(int64_t *)&self->_max = 0x0;
    self->_measurementCount = 0x0;
    self->_measurementSeconds = 0x0;
    *(int32_t *)(int64_t *)&self->_min = 0x0;
    *(int32_t *)(int64_t *)&self->_sum = 0x0;
    return;
}

-(void)resetMetricsAndContinuity {
    [self resetMetrics];
    self->_continuousEligibleSeconds = 0x0;
    return;
}

-(float)avg {
    r0 = self;
    return r0;
}

-(double)continuousEligibleSeconds {
    r0 = self;
    return r0;
}

-(float)current {
    r0 = self;
    return r0;
}

-(double)eligibleSeconds {
    r0 = self;
    return r0;
}

-(float)max {
    r0 = self;
    return r0;
}

-(float)eligibleThreshold {
    r0 = self;
    return r0;
}

-(double)maxContinuousEligibleSeconds {
    r0 = self;
    return r0;
}

-(long long)measurementCount {
    r0 = self->_measurementCount;
    return r0;
}

-(float)sum {
    r0 = self;
    return r0;
}

-(float)min {
    r0 = self;
    return r0;
}

-(double)measurementSeconds {
    r0 = self;
    return r0;
}

-(void)setSum:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_sum = s0;
    return;
}

+(void *)metricWithEligibleThreshold:(float)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithEligibleThreshold:arg2];
    [r0 autorelease];
    r0 = r0;
    return r0;
}

@end
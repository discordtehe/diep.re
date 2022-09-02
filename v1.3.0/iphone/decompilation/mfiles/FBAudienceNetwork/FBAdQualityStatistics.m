@implementation FBAdQualityStatistics

-(void *)initWithViewableThreshold:(float)arg2 audibleThreshold:(float)arg3 {
    r2 = arg2;
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
    v8 = v1;
    v9 = v0;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = @class(FBAdQualityMetric);
            r0 = [r0 metricWithEligibleThreshold:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewabilityStatistics));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(FBAdQualityMetric);
            r0 = [r0 metricWithEligibleThreshold:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_audibilityStatistics));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithViewableThreshold:(float)arg2 {
    r0 = [self initWithViewableThreshold:arg2 audibleThreshold:r3];
    return r0;
}

-(void)registerAudibilityProgress:(double)arg2 volume:(float)arg3 {
    r0 = [self audibilityStatistics];
    r0 = [r0 retain];
    [r0 registerProgress:arg2 value:arg3];
    [r0 release];
    return;
}

-(void *)init {
    r0 = [self initWithViewableThreshold:r2 audibleThreshold:r3];
    return r0;
}

-(void)registerViewabilityProgress:(double)arg2 viewableRatio:(float)arg3 {
    r0 = [self viewabilityStatistics];
    r0 = [r0 retain];
    [r0 registerProgress:arg2 value:arg3];
    [r0 release];
    return;
}

-(void)resetStatistics {
    r0 = [self audibilityStatistics];
    r0 = [r0 retain];
    [r0 resetMetrics];
    [r0 release];
    r0 = [self viewabilityStatistics];
    r0 = [r0 retain];
    [r0 resetMetrics];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewabilityStatistics, 0x0);
    objc_storeStrong((int64_t *)&self->_audibilityStatistics, 0x0);
    return;
}

-(void)resetStatisticsAndContinuity {
    r0 = [self audibilityStatistics];
    r0 = [r0 retain];
    [r0 resetMetricsAndContinuity];
    [r0 release];
    r0 = [self viewabilityStatistics];
    r0 = [r0 retain];
    [r0 resetMetricsAndContinuity];
    [r0 release];
    return;
}

-(void *)audibilityStatistics {
    r0 = self->_audibilityStatistics;
    return r0;
}

-(void *)viewabilityStatistics {
    r0 = self->_viewabilityStatistics;
    return r0;
}

+(void *)statisticsWithViewableThreshold:(float)arg2 {
    r0 = [self statisticsWithViewableThreshold:arg2 audibleThreshold:r3];
    return r0;
}

+(void *)statisticsWithViewableThreshold:(float)arg2 audibleThreshold:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithViewableThreshold:arg2 audibleThreshold:arg3];
    r0 = [r0 autorelease];
    return r0;
}

@end
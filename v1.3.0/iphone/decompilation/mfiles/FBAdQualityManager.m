@implementation FBAdQualityManager

-(void *)initWithTargetView:(void *)arg2 rules:(void *)arg3 {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[r29 - 0x40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [FBAdQualityStatistics new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_statistics));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_targetView, r22);
            var_48 = [NSMutableArray new];
            [r20 enumerateObjectsUsingBlock:&var_98];
            [r21 setTests:*(&var_70 + 0x28)];
            r22 = [[FBAdQualityViewabilityMeasurement measurementWithTargetView:r19] retain];
            [r21 setViewabilityMeasurement:r22];
            [r22 release];
            _Block_object_dispose(&var_70, 0x8);
            [var_48 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setTargetView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_targetView, arg2);
    r19 = [arg2 retain];
    r0 = [self viewabilityMeasurement];
    r0 = [r0 retain];
    [r0 setTargetView:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void *)init {
    r20 = [UIView new];
    r19 = [self initWithTargetView:r20 rules:0x0];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)resetStatistics {
    r0 = [self statistics];
    r0 = [r0 retain];
    [r0 resetStatistics];
    [r0 release];
    return;
}

-(void)resetStatisticsAndContinuity {
    r0 = [self statistics];
    r0 = [r0 retain];
    [r0 resetStatisticsAndContinuity];
    [r0 release];
    r0 = [self tests];
    r0 = [r0 retain];
    [r0 enumerateObjectsUsingBlock:0x100eaab10];
    [r0 release];
    return;
}

-(void)registerProgress:(double)arg2 volume:(float)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r19 = self;
    if (s1 >= 0x0) {
            r0 = [r19 statistics];
            r29 = r29;
            r0 = [r0 retain];
            v0 = v8;
            [r0 registerAudibilityProgress:r2 volume:r3];
            [r0 release];
    }
    r0 = [r19 viewabilityMeasurement];
    r0 = [r0 retain];
    [r0 viewableRatio];
    [r0 release];
    r0 = [r19 statistics];
    r0 = [r0 retain];
    [r0 registerViewabilityProgress:r2 viewableRatio:r3];
    [r0 release];
    r0 = [r19 tests];
    r0 = [r0 retain];
    [r0 enumerateObjectsUsingBlock:&var_60];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewabilityMeasurement, 0x0);
    objc_storeStrong((int64_t *)&self->_tests, 0x0);
    objc_storeStrong((int64_t *)&self->_targetView, 0x0);
    objc_storeStrong((int64_t *)&self->_statistics, 0x0);
    return;
}

-(void *)statistics {
    r0 = self->_statistics;
    return r0;
}

-(void *)targetView {
    r0 = self->_targetView;
    return r0;
}

-(void)setTests:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tests, arg2);
    return;
}

-(void *)tests {
    r0 = self->_tests;
    return r0;
}

-(void *)viewabilityMeasurement {
    r0 = self->_viewabilityMeasurement;
    return r0;
}

-(void)setViewabilityMeasurement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityMeasurement, arg2);
    return;
}

+(void *)managerWithTargetView:(void *)arg2 rules:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self alloc] initWithTargetView:r21 rules:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

@end
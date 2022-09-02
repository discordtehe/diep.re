@implementation FBAdQualityTest

-(void *)initWithRule:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_rule, r21);
            r21 = [FBAdQualityStatistics alloc];
            [r19 viewableRatio];
            r21 = [r21 initWithViewableThreshold:r2];
            [r20 setTestStatistics:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)registerEnd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self ended] & 0x1) == 0x0) {
            [r19 onEnd];
    }
    return;
}

-(void)resetContinuity {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self rule];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isContinuous];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 testStatistics];
            r0 = [r0 retain];
            [r0 resetStatisticsAndContinuity];
            [r0 release];
    }
    return;
}

-(void)registerProgress:(double)arg2 viewableRatio:(float)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r19 = self;
    if (([self ended] & 0x1) != 0x0) goto .l1;

loc_100a7a540:
    r0 = [r19 testStatistics];
    r0 = [r0 retain];
    v0 = v9;
    [r0 registerViewabilityProgress:r2 viewableRatio:r3];
    [r0 release];
    r0 = [r19 testStatistics];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 viewabilityStatistics];
    r0 = [r0 retain];
    [r0 eligibleSeconds];
    [r0 release];
    [r21 release];
    r0 = [r19 rule];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isContinuous] == 0x0) goto loc_100a7a660;

loc_100a7a5fc:
    r0 = [r19 rule];
    r29 = r29;
    r0 = [r0 retain];
    [r0 viewableRatio];
    [r0 release];
    [r22 release];
    if (s10 <= s8) goto loc_100a7a668;

loc_100a7a63c:
    r0 = [r19 testStatistics];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 resetStatisticsAndContinuity];
    goto loc_100a7a660;

loc_100a7a660:
    [r22 release];
    goto loc_100a7a668;

loc_100a7a668:
    r0 = [r19 rule];
    r0 = [r0 retain];
    [r0 viewableSeconds];
    [r0 release];
    if (d9 >= d8) {
            [r19 onPassed];
    }
    return;

.l1:
    return;
}

-(void)onPassed {
    [self setPassed:0x1];
    [self onComplete];
    return;
}

-(void)onComplete {
    [self setComplete:0x1];
    [self onEnd];
    return;
}

-(void)onEnd {
    [self setEnded:0x1];
    r0 = [self rule];
    r0 = [r0 retain];
    r21 = [[r0 endCallback] retain];
    (*(r21 + 0x10))(r21, [self complete], [self passed]);
    [r21 release];
    [r20 release];
    return;
}

-(void *)testStatistics {
    r0 = self->_testStatistics;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rule, 0x0);
    objc_storeStrong((int64_t *)&self->_testStatistics, 0x0);
    return;
}

-(void)setTestStatistics:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_testStatistics, arg2);
    return;
}

-(void *)rule {
    r0 = self->_rule;
    return r0;
}

-(bool)ended {
    r0 = *(int8_t *)(int64_t *)&self->_ended;
    return r0;
}

-(void)setEnded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ended = arg2;
    return;
}

-(bool)passed {
    r0 = *(int8_t *)(int64_t *)&self->_passed;
    return r0;
}

-(void)setPassed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_passed = arg2;
    return;
}

-(bool)complete {
    r0 = *(int8_t *)(int64_t *)&self->_complete;
    return r0;
}

-(void)setComplete:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_complete = arg2;
    return;
}

+(void *)testWithRule:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithRule:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

@end
@implementation APMEventAggregates

-(void *)initWithName:(void *)arg2 lifetimeCount:(int)arg3 currentBundleCount:(int)arg4 lastFireTimestamp:(double)arg5 {
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
    r21 = arg4;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [APMDataTypeValidator isValidInternalEventName:r19 failureCode:0x0];
    r23 = 0x0;
    if (r0 != 0x0) {
            if (((r21 | r22) & 0xffffffff80000000) == 0x0) {
                    r0 = [[&var_50 super] init];
                    r20 = r0;
                    if (r20 != 0x0) {
                            r0 = [r19 copy];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
                            r8 = *(r20 + r9);
                            *(r20 + r9) = r0;
                            [r8 release];
                            *(int32_t *)(int64_t *)&r20->_lifetimeCount = r22;
                            *(int32_t *)(int64_t *)&r20->_currentBundleCount = r21;
                            r20->_lastFireTimestamp = d8;
                            r20->_lastBundledTimestamp = 0x0;
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastSampledComplexEventID));
                            r0 = *(r20 + r8);
                            *(r20 + r8) = 0x0;
                            [r0 release];
                            *(int32_t *)(int64_t *)&r20->_lastSamplingRate = 0x1;
                            *(int8_t *)(int64_t *)&r20->_lastExemptFromSampling = 0x0;
                    }
                    r20 = [r20 retain];
                    r23 = r20;
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x4268 message:@"Failed to create event aggregates object. Received negative count."];
                    [r0 release];
                    r23 = 0x0;
            }
    }
    [r19 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void)incrementLifetimeCount {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lifetimeCount));
    r8 = *(int32_t *)(r19 + r21);
    if (r8 == 0x7fffffff) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x4269 message:@"Lifetime count overflow. Lifetime count reset to 0."];
            [r0 release];
            r8 = 0x0;
    }
    else {
            r8 = r8 + 0x1;
    }
    *(int32_t *)(r19 + r21) = r8;
    return;
}

-(void)incrementCurrentBundleCount {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentBundleCount));
    r8 = *(int32_t *)(r19 + r21);
    if (r8 == 0x7fffffff) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x426a message:@"Bundle count overflow. Bundle count reset to 0."];
            [r0 release];
            r8 = 0x0;
    }
    else {
            r8 = r8 + 0x1;
    }
    *(int32_t *)(r19 + r21) = r8;
    return;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(int)lifetimeCount {
    r0 = *(int32_t *)(int64_t *)&self->_lifetimeCount;
    return r0;
}

-(int)currentBundleCount {
    r0 = *(int32_t *)(int64_t *)&self->_currentBundleCount;
    return r0;
}

-(double)lastFireTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastFireTimestamp:(double)arg2 {
    self->_lastFireTimestamp = d0;
    return;
}

-(double)lastBundledTimestamp {
    r0 = self;
    return r0;
}

-(void *)lastSampledComplexEventID {
    r0 = self->_lastSampledComplexEventID;
    return r0;
}

-(void)setLastBundledTimestamp:(double)arg2 {
    self->_lastBundledTimestamp = d0;
    return;
}

-(void)setLastSampledComplexEventID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lastSampledComplexEventID, arg2);
    return;
}

-(int)lastSamplingRate {
    r0 = *(int32_t *)(int64_t *)&self->_lastSamplingRate;
    return r0;
}

-(void)setLastSamplingRate:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_lastSamplingRate = arg2;
    return;
}

-(bool)lastExemptFromSampling {
    r0 = *(int8_t *)(int64_t *)&self->_lastExemptFromSampling;
    return r0;
}

-(void)setLastExemptFromSampling:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_lastExemptFromSampling = arg2;
    return;
}

-(int)lastBundledDay {
    r0 = *(int32_t *)(int64_t *)&self->_lastBundledDay;
    return r0;
}

-(void)setLastBundledDay:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_lastBundledDay = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lastSampledComplexEventID, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end